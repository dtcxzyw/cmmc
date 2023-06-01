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

/*
Reference:
Braun, M., Buchwald, S., Hack, S., Leißa, R., Mallon, C., Zwinkau, A. (2013).
Simple and Efficient Construction of Static Single Assignment Form.
In: Jhala, R., De Bosschere, K. (eds) Compiler Construction. CC 2013. Lecture Notes in Computer Science, vol 7791. Springer,
Berlin, Heidelberg. https://doi.org/10.1007/978-3-642-37051-9_6
*/

#include <algorithm>
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <unordered_map>
#include <unordered_set>
#include <vector>

// TODO: expand select alloc before Mem2Reg

CMMC_NAMESPACE_BEGIN

class ScalarMem2RegContext final {
    Function& mFunc;
    const CFGAnalysisResult& mCFG;
    const DominateAnalysisResult& mDom;
    std::unordered_map<Value*, std::unordered_map<Block*, Value*>> mCurrentDef;
    std::unordered_set<Block*> mSealedBlocks;
    std::unordered_map<Block*, std::vector<std::pair<Value*, PhiInst*>>> mIncompletePhis;

    void defVar(Value* var, Block* block, Value* value) {
        mCurrentDef[var][block] = value;
    }
    Value* useVar(Value* var, Block* block) {
        auto& local = mCurrentDef[var];
        if(auto iter = local.find(block); iter != local.end())
            return iter->second;
        return useVarRecursive(var, block);
    }
    Value* tryRemoveTrivalPhi(PhiInst* phi) {
        Value* common = nullptr;
        for(auto val : phi->operands()) {
            if(val == common || val == phi)
                continue;
            if(!common)
                return phi;
            common = val;
        }
        if(common == nullptr)
            common = make<UndefinedValue>(phi->getType());
        for(auto iter = phi->users().begin(); iter != phi->users().end();) {
            auto next = std::next(iter);
            auto ref = iter.ref();
            if(ref->user != phi) {
                ref->resetValue(common);
                if(ref->user->getInstID() == InstructionID::Phi)
                    tryRemoveTrivalPhi(ref->user->as<PhiInst>());
            }
            next = iter;
        }
        return common;
    }
    Value* addPhiOperands(Value* var, const std::vector<Block*>& pred, PhiInst* phi) {
        for(auto predBlock : pred) {
            phi->addIncoming(predBlock, useVar(var, predBlock));
        }
        return tryRemoveTrivalPhi(phi);
    }
    static PhiInst* createPhi(Value* var) {
        return make<PhiInst>(var->getType()->as<PointerType>()->getPointee());
    }
    Value* useVarRecursive(Value* var, Block* block) {
        Value* val = nullptr;
        if(!mSealedBlocks.count(block)) {
            const auto phi = createPhi(var);
            phi->insertBefore(block, block->instructions().begin());
            val = phi;
            mIncompletePhis[block].emplace_back(var, phi);
        } else {
            auto& pred = mCFG.predecessors(block);
            if(pred.size() == 1) {
                val = useVar(var, pred.front());
            } else {
                auto phi = createPhi(var);
                phi->insertBefore(block, block->instructions().begin());
                defVar(var, block, phi);
                val = addPhiOperands(var, pred, phi);
            }
        }
        defVar(var, block, val);
        return val;
    }
    void sealBlock(Block* block) {
        if(auto iter = mIncompletePhis.find(block); iter != mIncompletePhis.end()) {
            auto& pred = mCFG.predecessors(block);
            for(auto [var, phi] : iter->second) {
                addPhiOperands(var, pred, phi);
            }
            mIncompletePhis.erase(iter);
        }
        mSealedBlocks.insert(block);
    }

public:
    ScalarMem2RegContext(Function& func, const CFGAnalysisResult& cfg, const DominateAnalysisResult& dom)
        : mFunc(func), mCFG(cfg), mDom{ dom } {}
    void runOnFunction(const std::unordered_set<Value*>& insts) {
        std::unordered_map<Block*, size_t> degree;
        for(auto block : mFunc.blocks())
            degree[block] = mCFG.predecessors(block).size();
        auto tryMarkSealed = [&](Block* block) {
            if(degree[block] == 0 && !mSealedBlocks.count(block))
                sealBlock(block);
        };
        std::vector<Block*> order;
        order.reserve(mFunc.blocks().size());
        order.insert(order.begin(), mDom.blocks().begin(), mDom.blocks().end());
        for(auto block : mFunc.blocks())
            if(!mDom.reachable(block))
                order.push_back(block);

        for(auto block : order) {
            auto& instructions = block->instructions();
            for(auto iter = instructions.begin(); iter != instructions.end();) {
                auto next = std::next(iter);
                auto& inst = *iter;
                switch(inst.getInstID()) {
                    case InstructionID::Load: {
                        auto ptr = inst.getOperand(0);
                        if(insts.count(ptr))
                            inst.replaceWith(useVar(ptr, block));
                        break;
                    }
                    case InstructionID::Store: {
                        auto ptr = inst.getOperand(0);
                        if(insts.count(ptr)) {
                            auto val = inst.getOperand(1);
                            defVar(ptr, block, val);
                        }
                        break;
                    }
                    default:
                        break;
                }
                iter = next;
            }

            tryMarkSealed(block);
            for(auto succBlock : mCFG.successors(block)) {
                --degree[succBlock];
                tryMarkSealed(succBlock);
            }
        }
        assert(mSealedBlocks.size() == order.size());
    }
};

class ScalarMem2Reg final : public TransformPass<Function> {
    void filterPromotable(Function& func, std::unordered_set<Value*>& interested) const {
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                switch(inst.getInstID()) {
                    case InstructionID::Store: {
                        interested.erase(inst.getOperand(1));  // use as value
                        break;
                    }
                    case InstructionID::Select: {
                        interested.erase(inst.getOperand(1));
                        interested.erase(inst.getOperand(2));
                        break;
                    }
                    case InstructionID::PtrToInt:
                        [[fallthrough]];
                    case InstructionID::PtrCast: {
                        interested.erase(inst.getOperand(0));
                        break;
                    }
                    case InstructionID::Call: {
                        for(auto operand : inst.operands())
                            interested.erase(operand);
                        break;
                    }
                    default:
                        break;
                }
            }
        }
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        const auto& cfg = analysis.get<CFGAnalysis>(func);
        const auto& dom = analysis.get<DominateAnalysis>(func);

        std::unordered_set<Value*> interested;
        for(auto& inst : func.entryBlock()->instructions()) {
            if(inst.getInstID() == InstructionID::Alloc) {
                auto alloc = inst.as<StackAllocInst>();
                if(alloc->getType()->as<PointerType>()->getPointee()->isPrimitive()) {
                    interested.insert(alloc);
                }
            } else
                break;
        }

        filterPromotable(func, interested);
        if(interested.empty())
            return false;

        ScalarMem2RegContext ctx{ func, cfg, dom };
        ctx.runOnFunction(interested);
        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ScalarMem2Reg"sv;
    }
};

CMMC_TRANSFORM_PASS(ScalarMem2Reg);

CMMC_NAMESPACE_END
