/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
        http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#include <array>
#include <chrono>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Config.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <optional>
#include <queue>
#include <stack>
#include <unordered_map>
#include <variant>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

bool removeUnusedInsts(MIRFunction& func, const CodeGenContext& ctx) {
    std::unordered_map<MIROperand, std::vector<MIRInst*>, MIROperandHasher> writers;
    std::queue<MIRInst*> q;

    auto isAllocableType = [](OperandType type) { return type <= OperandType::Float32; };
    for(auto& block : func.blocks())
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            bool special = false;
            if(requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect)) {
                special = true;
            }

            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                    auto op = inst.getOperand(idx);
                    writers[op].push_back(&inst);
                    if(op.isReg() && isISAReg(op.reg()) && isAllocableType(op.type()))
                        special = true;
                }
            }

            if(special)
                q.push(&inst);
        }

    while(!q.empty()) {
        auto& inst = *q.front();
        q.pop();

        auto popSrc = [&](const MIROperand& operand) {
            if(auto iter = writers.find(operand); iter != writers.cend()) {
                for(auto writer : iter->second)
                    q.push(writer);
                writers.erase(iter);
            }
        };

        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
            if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                popSrc(inst.getOperand(idx));
            }
        }
    }

    std::unordered_set<MIRInst*> remove;
    for(auto& [op, writerList] : writers) {
        if(isISAReg(op.reg()) && isAllocableType(op.type()))
            continue;

        for(auto writer : writerList) {
            auto& instInfo = ctx.instInfo.getInstInfo(*writer);
            if(requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect | InstFlagMultiDef))
                continue;
            remove.insert(writer);
        }
    }

    for(auto& block : func.blocks())
        block->instructions().remove_if([&](auto& inst) { return remove.count(&inst); });
    return !remove.empty();
}

static bool removeIdentityCopies(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;
    for(auto& block : func.blocks()) {
        block->instructions().remove_if([&](const MIRInst& inst) {
            MIROperand dst, src;
            const auto remove = ctx.instInfo.matchCopy(inst, dst, src) && dst.reg() == src.reg();
            modified |= remove;
            return remove;
        });
    }
    return modified;
}

static bool eliminateStackLoads(MIRFunction& func, const CodeGenContext& ctx) {
    if(!ctx.registerInfo || ctx.flags.preRA)
        return false;
    // func.dump(std::cerr, ctx);
    bool modified = false;

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();

        uint32_t versionId = 0;
        std::unordered_map<MIROperand, std::pair<MIROperand, uint32_t>, MIROperandHasher>
            stack2Reg;  // stack object -> (reg, version)
        std::unordered_map<MIROperand, uint32_t, MIROperandHasher> regVersion;
        auto defReg = [&](MIROperand reg) { regVersion[reg] = ++versionId; };

        for(auto& inst : instructions) {
            if(inst.opcode() == InstStoreRegToStack) {
                auto& val = inst.getOperand(0);
                auto& obj = inst.getOperand(1);
                if(auto iter = regVersion.find(val); iter != regVersion.cend())
                    stack2Reg[obj] = { val, iter->second };
                else {
                    regVersion[val] = ++versionId;
                    stack2Reg[obj] = { val, versionId };
                }
            } else if(inst.opcode() == InstLoadRegFromStack) {
                auto& obj = inst.getOperand(1);
                if(auto iter = stack2Reg.find(obj); iter != stack2Reg.cend()) {
                    auto& [reg, ver] = iter->second;
                    if(ver == regVersion[reg]) {
                        // dst <- reg
                        inst.setOpcode(InstCopy);
                        obj = reg;
                        modified = true;
                    }
                }
            }
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                    defReg(inst.getOperand(idx));
            if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                std::vector<MIROperand> nonVReg;
                for(auto [reg, ver] : regVersion) {
                    CMMC_UNUSED(ver);
                    // TODO: use IPRA Info
                    if(isISAReg(reg.reg()))
                        nonVReg.push_back(reg);
                }
                for(auto reg : nonVReg)
                    defReg(reg);
            }
            if(inst.opcode() == InstLoadRegFromStack) {
                auto& dst = inst.getOperand(0);
                auto& obj = inst.getOperand(1);
                stack2Reg[obj] = { dst, regVersion.at(dst) };
            }
        }
    }

    return modified;
}

std::unordered_map<MIROperand, uint32_t, MIROperandHasher> collectDefCount(MIRFunction& func, const CodeGenContext& ctx) {
    std::unordered_map<MIROperand, uint32_t, MIROperandHasher> defCount;
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
                auto& dst = inst.getOperand(0);
                if(isOperandVReg(dst))
                    ++defCount[dst];
            } else {
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        auto& def = inst.getOperand(idx);
                        if(isOperandVReg(def))
                            ++defCount[def];
                    }
            }
        }
    }
    return defCount;
}

static bool applySSAPropagation(MIRFunction& func, const CodeGenContext& ctx) {
    if(!ctx.flags.inSSAForm)
        return false;
    bool modified = false;
    auto defCount = collectDefCount(func, ctx);

    std::unordered_set<MIROperand, MIROperandHasher> constants;

    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
                auto& dst = inst.getOperand(0);
                if(isOperandVReg(dst) && defCount[dst] <= 1) {
                    constants.insert(dst);
                }
            }
        }
    }

    std::unordered_map<MIROperand, MIROperand, MIROperandHasher> copy;

    for(auto& block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            MIROperand dst, src;
            if(ctx.instInfo.matchCopy(inst, dst, src) && isOperandVReg(dst) && isOperandVReg(src) && constants.count(src)) {
                if(defCount[dst] <= 1 && defCount[src] <= 1) {
                    copy[dst] = src;
                }
            }
        }
    }

    if(copy.empty())
        return false;

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    auto& op = inst.getOperand(idx);
                    if(auto iter = copy.find(op); iter != copy.cend()) {
                        op = iter->second;
                        modified = true;
                    }
                }
            }
        }
    }

    return modified;
}

static bool machineConstantHoist(MIRFunction& func, CodeGenContext& ctx) {
    if(!ctx.flags.inSSAForm)
        return false;

    // func.dump(std::cerr, ctx);
    // func.dumpCFG(std::cerr, ctx);

    const uint32_t maxCount = ctx.target.getOptHeuristic().maxConstantHoistCount;
    if(maxCount == 0)
        return false;

    uint32_t count = 0;
    for(auto& inst : func.blocks().front()->instructions()) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
            auto& dst = inst.getOperand(0);
            if(isOperandVReg(dst))
                ++count;
        }
    }

    if(count >= maxCount)
        return false;

    const auto cfg = calcCFG(func, ctx);
    const auto freq = calcFreq(func, cfg);
    auto defCount = collectDefCount(func, ctx);
    bool modified = false;

    auto& entryBlockInst = func.blocks().front()->instructions();
    std::vector<std::pair<MIRInst*, double>> constants;
    for(auto& block : func.blocks()) {
        if(&block == &func.blocks().front())
            continue;
        const auto blockFreq = freq.query(block.get());
        if(blockFreq <= primaryPathThreshold / 2.0)
            continue;

        auto& instructions = block->instructions();
        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
                auto& dst = inst.getOperand(0);
                if(isOperandVReg(dst) && defCount[dst] <= 1) {
                    constants.emplace_back(&inst, blockFreq);
                }
            }
        }
    }

    if(constants.empty())
        return false;

    std::stable_sort(constants.begin(), constants.end(),
                     [](const auto& lhs, const auto& rhs) { return lhs.second > rhs.second; });
    for(auto [inst, blockFreq] : constants) {
        CMMC_UNUSED(blockFreq);
        auto& dst = inst->getOperand(0);
        entryBlockInst.insert(std::prev(entryBlockInst.end()), *inst);
        *inst = MIRInst{ InstCopy }.setOperand<0>(MIROperand::asVReg(ctx.nextId(), dst.type())).setOperand<1>(dst);
        modified = true;
        ++count;
        if(count >= maxCount)
            break;
    }

    return modified;
}

static bool machineConstantCSE(MIRFunction& func, const CodeGenContext& ctx) {
    if(!ctx.flags.inSSAForm)
        return false;

    auto defCount = collectDefCount(func, ctx);

    auto& entryBlockInst = func.blocks().front()->instructions();
    std::unordered_map<uint32_t, std::unordered_map<MIROperand, MIROperand, MIROperandHasher>> commonConstants;
    for(auto& inst : entryBlockInst) {
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
            auto& dst = inst.getOperand(0);
            if(isOperandVReg(dst) && defCount[dst] <= 1) {
                auto& src = inst.getOperand(1);
                commonConstants[inst.opcode()].emplace(src, dst);
            }
        }
    }

    // std::cerr << "before\n";
    // func.dump(std::cerr, ctx);
    bool modified = false;
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        std::unordered_map<uint32_t, std::unordered_map<MIROperand, MIROperand, MIROperandHasher>> constants;
        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
                auto& dst = inst.getOperand(0);
                auto& src = inst.getOperand(1);
                auto& commonMap = commonConstants[inst.opcode()];
                auto& map = constants[inst.opcode()];
                if(auto it = commonMap.find(src); it != commonMap.end() && &block != &func.blocks().front()) {
                    auto& lastDef = it->second;
                    inst = MIRInst{ selectCopyOpcode(dst, lastDef) }.setOperand<0>(dst).setOperand<1>(lastDef);
                    modified = true;
                } else if(auto iter = map.find(src); iter != map.end()) {
                    auto& lastDef = iter->second;
                    inst = MIRInst{ selectCopyOpcode(dst, lastDef) }.setOperand<0>(dst).setOperand<1>(lastDef);
                    modified = true;
                } else if(!isISAReg(dst.reg()))
                    map.emplace(src, dst);
            }
        }
    }
    // if(modified) {
    //     std::cerr << "after\n";
    //     func.dump(std::cerr, ctx);
    // }
    return modified;
}

static bool machineInstCSE(MIRFunction& func, const CodeGenContext& ctx) {
    if(!ctx.flags.inSSAForm)
        return false;
    bool modified = false;
    // func.dump(std::cerr, ctx);
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        std::unordered_map<MIROperand, uint32_t, MIROperandHasher> version;
        uint32_t versionIdx = 0;
        auto getVersion = [&](const MIROperand& op) -> uint32_t {
            if(!isOperandVRegOrISAReg(op))
                return 0;
            if(auto iter = version.find(op); iter != version.cend())
                return iter->second;
            return version[op] = ++versionIdx;
        };
        using VersionArray = std::array<uint32_t, MIRInst::maxOperandCount>;
        std::unordered_map<MIRInst*, VersionArray> verArray;
        std::unordered_map<uint32_t, std::vector<MIRInst*>> lastDefine;  // opcode -> insts

        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            auto equal = [&](const MIRInst& rhs, const VersionArray& rhsVer, uint32_t defIdx, const VersionArray& ver) {
                if(inst.opcode() != rhs.opcode())
                    return false;
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    if(idx == defIdx) {
                        if(rhsVer[idx] != version.at(rhs.getOperand(idx)))
                            return false;
                        continue;
                    }
                    if(inst.getOperand(idx) != rhs.getOperand(idx) || ver[idx] != rhsVer[idx])
                        return false;
                }
                return true;
            };

            if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                // TODO: use IPRA info
                lastDefine.clear();
                continue;
            }

            if(requireOneFlag(instInfo.getInstFlag(),
                              InstFlagSideEffect | InstFlagPCRel | InstFlagMultiDef | InstFlagRegCopy | InstFlagLoadConstant)) {
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        version[inst.getOperand(idx)] = ++versionIdx;
                    }
                }
            } else {
                auto& ver = verArray[&inst];
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    ver[idx] = getVersion(inst.getOperand(idx));
                }

                auto& cache = lastDefine[inst.opcode()];
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        auto& op = inst.getOperand(idx);
                        if(isOperandVRegOrISAReg(op)) {
                            bool changed = false;
                            for(auto rhs : cache) {
                                if(equal(*rhs, verArray.at(rhs), idx, ver)) {
                                    const auto& rhsDef = rhs->getOperand(idx);
                                    if(isOperandVReg(op) && isOperandVReg(rhsDef) && op.type() == rhsDef.type()) {
                                        // instInfo.print(std::cerr, inst, true);
                                        // std::cerr << '\n';
                                        inst = MIRInst{ InstCopy }.setOperand<0>(op).setOperand<1>(rhsDef);
                                        changed = true;
                                        break;
                                    }
                                }
                            }

                            if(changed) {
                                modified = true;
                            } else {
                                cache.push_back(&inst);
                            }
                            ver[idx] = version[op] = ++versionIdx;
                        }

                        break;
                    }
                }
            }
        }
    }
    // if(modified) {
    //     std::cerr << "after\n";
    //     func.dump(std::cerr, ctx);
    // }
    return modified;
}

static bool deadInstElimination(MIRFunction& func, const CodeGenContext& ctx) {
    bool modified = false;
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        std::unordered_map<MIROperand, uint32_t, MIROperandHasher> version;
        uint32_t versionIdx = 0;
        auto getVersion = [&](const MIROperand& op) -> uint32_t {
            if(!isOperandVRegOrISAReg(op))
                return 0;
            if(auto iter = version.find(op); iter != version.cend())
                return iter->second;
            return version[op] = ++versionIdx;
        };
        using VersionArray = std::array<uint32_t, MIRInst::maxOperandCount>;
        std::unordered_map<MIROperand, std::pair<MIRInst*, VersionArray>, MIROperandHasher> lastDefine;

        instructions.remove_if([&](MIRInst& inst) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            VersionArray ver{};
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    ver[idx] = getVersion(inst.getOperand(idx));
                }
            }
            if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                // TODO: use IPRA info
                lastDefine.clear();
                return false;
            }
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                    auto& op = inst.getOperand(idx);
                    if(isOperandVRegOrISAReg(op)) {
                        if(auto it = lastDefine.find(op); it != lastDefine.cend()) {
                            if(!requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect | InstFlagPCRel | InstFlagMultiDef) &&
                               *it->second.first == inst && it->second.second == ver) {
                                return true;
                            }
                            it->second = { &inst, ver };
                        } else
                            lastDefine[op] = { &inst, ver };
                        version[op] = ++versionIdx;
                    }
                    return false;
                }
            }
            return false;
        });
    }
    return modified;
}

static bool removeIndirectCopy(MIRFunction& func, const CodeGenContext& ctx) {
    if(ctx.flags.dontForward)
        return false;

    // func.dump(std::cerr, ctx);
    bool modified = false;

    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();

        uint32_t versionId = 0;
        std::unordered_map<uint32_t, std::pair<uint32_t, uint32_t>> regValue;  // reg-><reg,version>
        std::unordered_map<uint32_t, uint32_t> version;

        const auto getVersion = [&](const uint32_t reg) {
            assert(isVirtualReg(reg) || isISAReg(reg));
            if(auto iter = version.find(reg); iter != version.cend())
                return iter->second;
            return version[reg] = ++versionId;
        };

        const auto defReg = [&](const MIROperand& reg) {
            if(!isOperandVRegOrISAReg(reg))
                return;
            version[reg.reg()] = ++versionId;
            regValue.erase(reg.reg());
        };

        const auto replaceUse = [&](MIRInst& inst, MIROperand& reg) {
            if(!isOperandVRegOrISAReg(reg))
                return;
            if(auto iter = regValue.find(reg.reg());
               iter != regValue.cend() && iter->second.second == getVersion(iter->second.first)) {
                if(ctx.flags.preRA &&
                   (!isVirtualReg(iter->second.first) &&
                    !(ctx.registerInfo && ctx.registerInfo->isZeroRegister(iter->second.first))))
                    return;  // should be handled after RA
                auto backup = reg;
                // NOTICE: Don't modify the type
                reg = MIROperand{ MIRRegister{ iter->second.first }, backup.type() };
                if(reg == backup)
                    return;
                auto backupInstOpcode = inst.opcode();
                if(inst.opcode() == InstCopy) {
                    inst.setOpcode(selectCopyOpcode(inst.getOperand(0), reg));
                }
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                if(instInfo.verify(inst, ctx)) {
                    modified = true;
                } else {
                    reg = backup;
                    inst.setOpcode(backupInstOpcode);
                }
            }
        };

        for(auto iter = instructions.begin(); iter != instructions.end();) {
            auto& inst = *iter;
            auto next = std::next(iter);

            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    auto& operand = inst.getOperand(idx);
                    replaceUse(inst, operand);
                }

            MIROperand dst, src;
            if(ctx.instInfo.matchCopy(inst, dst, src)) {
                assert(isOperandVRegOrISAReg(dst) && isOperandVRegOrISAReg(src));
                if(auto it = regValue.find(dst.reg());
                   it != regValue.cend() && it->second.first == src.reg() && it->second.second == getVersion(it->second.first)) {
                    instructions.erase(iter);
                    modified = true;
                } else {
                    defReg(dst);
                    regValue[dst.reg()] = { src.reg(), getVersion(src.reg()) };
                }
            } else {
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        defReg(inst.getOperand(idx));
                    }
                if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                    std::vector<uint32_t> nonVReg;
                    for(auto [reg, ver] : version) {
                        CMMC_UNUSED(ver);
                        // TODO: use IPRA Info
                        if(isISAReg(reg))
                            nonVReg.push_back(reg);
                    }
                    for(auto reg : nonVReg) {
                        version[reg] = ++versionId;
                        regValue.erase(reg);
                    }
                }
            }

            iter = next;
        }
    }
    // func.dump(std::cerr, ctx);
    return modified;
}

bool createIndirectCopy(MIRFunction& func, const CodeGenContext& ctx) {
    if(!ctx.flags.dontForward)
        return false;

    bool modified = false;

    // func.dump(std::cerr, ctx);
    for(auto& block : func.blocks()) {
        std::unordered_map<MIROperand, uint32_t, MIROperandHasher> valueNumber;
        std::unordered_map<uint32_t, std::stack<MIROperand>> latestVersion;
        uint32_t id = 0;

        const auto defReg = [&](const MIROperand& reg) {
            if(!isOperandVReg(reg))
                return;
            valueNumber[reg] = ++id;
            latestVersion[id].push(reg);
        };

        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    auto& op = inst.getOperand(idx);
                    if(!isOperandVReg(op))
                        continue;
                    if(auto it = valueNumber.find(op); it != valueNumber.cend())
                        if(auto iter = latestVersion.find(it->second); iter != latestVersion.cend()) {
                            auto& stack = iter->second;
                            while(!stack.empty()) {
                                if(auto num = valueNumber.find(stack.top()); num != valueNumber.cend()) {
                                    if(num->second == it->second)
                                        break;
                                }

                                stack.pop();
                            }

                            if(!stack.empty() && op != stack.top()) {
                                op = stack.top();
                                modified = true;
                            }
                        }
                }

            MIROperand dst, src;
            if(ctx.instInfo.matchCopy(inst, dst, src)) {
                if(isOperandVReg(dst) && isOperandVReg(src)) {
                    if(auto it = valueNumber.find(src); it != valueNumber.cend()) {
                        valueNumber[dst] = it->second;
                        latestVersion[it->second].push(dst);
                        continue;
                    }
                }
            }

            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx)
                if(instInfo.getOperandFlag(idx) & OperandFlagDef)
                    defReg(inst.getOperand(idx));
            if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                latestVersion.clear();
            }
        }
    }

    // func.dump(std::cerr, ctx);
    return modified;
}

static bool removeInvisibleInsts(MIRFunction& func, const CodeGenContext& ctx) {
    if(ctx.flags.preRA)
        return false;
    if(!ctx.registerInfo)
        return false;

    // func.dump(std::cerr, ctx);

    bool modified = false;
    for(auto& block : func.blocks()) {
        std::unordered_set<MIRInst*> unusedInsts;
        std::unordered_map<MIROperand, MIRInst*, MIROperandHasher> writer;

        auto use = [&](const MIROperand& op) {
            if(isOperandISAReg(op)) {
                if(auto it = writer.find(op); it != writer.cend())
                    unusedInsts.erase(it->second);
            }
        };

        auto visitAll = [&] {
            for(auto [k, v] : writer)
                unusedInsts.erase(v);
        };

        for(auto& inst : block->instructions()) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);

            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                    use(inst.getOperand(idx));
                }
            }
            if(requireOneFlag(instInfo.getInstFlag(), InstFlagBranch | InstFlagCall)) {
                visitAll();
            }
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                    auto& op = inst.getOperand(idx);
                    if(isOperandISAReg(op))
                        writer[op] = &inst;
                }
            }
            if(!requireOneFlag(instInfo.getInstFlag(), InstFlagSideEffect))
                unusedInsts.insert(&inst);
        }
        visitAll();

        if(unusedInsts.empty())
            continue;
        modified = true;

        block->instructions().remove_if([&](MIRInst& inst) { return unusedInsts.count(&inst); });
    }

    // if(modified) {
    //     std::cerr << "modified\n";
    //     func.dump(std::cerr, ctx);
    // }

    return modified;
}

bool genericPeepholeOpt(MIRFunction& func, CodeGenContext& ctx) {
    bool modified = false;
    modified |= eliminateStackLoads(func, ctx);
    modified |= removeIndirectCopy(func, ctx);
    modified |= removeIdentityCopies(func, ctx);
    modified |= removeUnusedInsts(func, ctx);
    modified |= applySSAPropagation(func, ctx);
    modified |= machineConstantCSE(func, ctx);
    modified |= machineConstantHoist(func, ctx);
    modified |= machineInstCSE(func, ctx);
    modified |= deadInstElimination(func, ctx);
    modified |= removeInvisibleInsts(func, ctx);
    modified |= ctx.scheduleModel.peepholeOpt(func, ctx);
    return modified;
}

CMMC_MIR_NAMESPACE_END
