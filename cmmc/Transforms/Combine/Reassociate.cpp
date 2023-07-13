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
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iterator>
#include <limits>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

// TODO: Don't emit existing instructions

class Reassociate final : public TransformPass<Function> {
    static bool runOnBlock(IRBuilder& builder, Block& block) {
        std::unordered_map<Value*, std::vector<std::pair<uint32_t, Value*>>> map;
        std::unordered_map<Value*, uint32_t> number;
        uint32_t numberCount = 0;

        for(auto& inst : block.instructions())
            number[&inst] = ++numberCount;

        auto getNumber = [&](Value* v) -> uint32_t {
            if(v->isConstant())
                return std::numeric_limits<uint32_t>::max();
            if(auto iter = number.find(v); iter != number.cend())
                return iter->second;
            return 0;
        };

        const auto ret = reduceBlock(builder, block, [&](Instruction* inst) -> Value* {
            switch(inst->getInstID()) {
                case InstructionID::Add:
                case InstructionID::Mul:
                case InstructionID::Or:
                case InstructionID::Xor:
                case InstructionID::And:
                    // TODO: max/min
                    break;
                default:
                    return nullptr;
            }

            // gather operands
            auto& args = map[inst];
            for(auto operand : inst->operands()) {
                if(operand->getBlock() == &block && operand->as<Instruction>()->getInstID() == inst->getInstID()) {
                    auto& sub = map.at(operand);
                    if(sub.size() < 512U) {
                        args.insert(args.cend(), sub.cbegin(), sub.cend());
                        continue;
                    }
                }
                args.emplace_back(1U, operand);
            }

            std::sort(args.begin(), args.end(),
                      [&](const std::pair<uint32_t, Value*>& lhs, const std::pair<uint32_t, Value*>& rhs) {
                          const auto lv = lhs.second;
                          const auto rv = rhs.second;
                          if(lv->isConstant() != rv->isConstant())
                              return lv->isConstant();
                          const auto lid = getNumber(lv);
                          const auto rid = getNumber(rv);
                          if(!lid && !rid)
                              return lv < rv;
                          return lid < rid;
                      });

            auto last = args.begin();
            for(auto iter = std::next(args.begin()); iter != args.end(); ++iter) {
                if(iter->second == last->second) {
                    last->first += iter->first;
                } else {
                    last = std::next(last);
                    *last = *iter;
                }
            }
            args.erase(std::next(last), args.end());

            const uint32_t parallelCount = 2;
            std::array<Value*, parallelCount> reductionStorage{};
            uint32_t pointer = 0;
            const auto reduce = [&](Value* val) {
                auto& ref = reductionStorage[pointer];

                if(ref) {
                    ref = builder.makeOp<BinaryInst>(inst->getInstID(), ref, val);
                } else
                    ref = val;

                if((++pointer) == parallelCount)
                    pointer = 0;
            };

            const auto pow = [&](Value* val, uint32_t c) {
                while(c) {
                    if(c & 1)
                        reduce(val);
                    c >>= 1;
                    val = builder.makeOp<BinaryInst>(InstructionID::Mul, val, val);
                }
            };

            switch(inst->getInstID()) {
                case InstructionID::Add: {
                    for(auto [c, v] : args) {
                        if(c == 1)
                            reduce(v);
                        else {
                            reduce(builder.makeOp<BinaryInst>(InstructionID::Mul, v,
                                                              ConstantInteger::get(inst->getType(), static_cast<intmax_t>(c))));
                        }
                    }
                } break;
                case InstructionID::Mul: {
                    for(auto [c, v] : args) {
                        if(c == 1) {
                            reduce(v);
                        } else {
                            pow(v, c);
                        }
                    }
                } break;
                case InstructionID::Or:
                case InstructionID::And: {
                    for(auto [c, v] : args) {
                        CMMC_UNUSED(c);
                        reduce(v);
                    }
                } break;
                case InstructionID::Xor: {
                    for(auto& [c, v] : args) {
                        CMMC_UNUSED(v);
                        if(c % 2)
                            reduce(v);
                    }
                } break;
                default:
                    reportUnreachable(CMMC_LOCATION());
            }

            Value* reduction = nullptr;

            for(auto val : reductionStorage) {
                if(!val)
                    continue;
                if(reduction) {
                    reduction = builder.makeOp<BinaryInst>(inst->getInstID(), reduction, val);
                } else
                    reduction = val;
            }

            if(!reduction && inst->getInstID() == InstructionID::Xor)
                reduction = ConstantInteger::get(inst->getType(), 0);

            assert(reduction);
            assert(reduction != inst);
            if(reduction->isInstruction() && !map.count(reduction)) {
                auto reductionInst = reduction->as<Instruction>();
                if(reductionInst->getInstID() == inst->getInstID()) {
                    map[reduction] = std::move(map[inst]);
                }
            }
            map.erase(inst);
            return reduction;
        });
        return ret;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& target = analysis.module().getTarget();
        IRBuilder builder{ target };

        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(builder, *block);
        }
        return modified;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "Reassociate"sv;
    }
};

CMMC_TRANSFORM_PASS(Reassociate);

CMMC_NAMESPACE_END
