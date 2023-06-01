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

// replace tail recursions with jumps
// TODO: sink recursive calls
// TODO: support multiple recursive calls

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class TailCallEliminate final : public TransformPass<Function> {
    static bool isRecursiveCall(Instruction& call, Function* self) {
        if(call.getInstID() != InstructionID::Call)
            return false;
        const auto callee = call.lastOperand();
        return callee == self;
    }
    static Instruction* getLastRecursiveCall(Block& block, Function* self) {
        auto& instructions = block.instructions();
        for(auto iter = instructions.rbegin(); iter != instructions.rend(); ++iter) {
            if(isRecursiveCall(*iter, self)) {
                return iter.get();
            }
        }

        return nullptr;
    }
    static ConstantValue* getIdentity(InstructionID inst, const Type* type) {
        switch(inst) {
            case InstructionID::Add:
                [[fallthrough]];
            case InstructionID::Or:
                [[fallthrough]];
            case InstructionID::Xor:
                return ConstantInteger::get(type, 0);
            case InstructionID::And:
                return ConstantInteger::get(type, -1);
            case InstructionID::Mul:
                return ConstantInteger::get(type, 1);
            case InstructionID::FAdd:
                // Only -0.0 is the additive identity.
                return make<ConstantFloatingPoint>(type, -0.0);
            case InstructionID::FMul:
                return make<ConstantFloatingPoint>(type, 1.0);
            default:
                reportUnreachable(CMMC_LOCATION());
        }
    }
    // block1:
    //   xxx1
    //   call
    //   [acc]
    //   ret
    // block2:
    //   ret
    // ->
    // new_entry:
    //   br entry
    // entry:
    //   phi args
    //   phi acc value
    // block1:
    //   xxx1
    //   [acc]
    //   br entry
    // block2:
    //   ret acc value [acc op] leaf ret
    static bool eliminateCall(Instruction* call, Function* func) {
        const auto block = call->getBlock();
        const auto retInst = block->getTerminator();

        // Stage 1: Find accumulator instruction
        Instruction* accInst = nullptr;
        for(auto iter = std::next(call->asIterator()); iter != block->instructions().end(); ++iter) {
            if(iter->isTerminator())
                break;
            if(accInst)
                return false;
            // associative & commutative
            switch(iter->getInstID()) {
                case InstructionID::Add:
                    [[fallthrough]];
                case InstructionID::And:
                    [[fallthrough]];
                case InstructionID::Or:
                    [[fallthrough]];
                case InstructionID::Xor:
                    [[fallthrough]];
                case InstructionID::Mul:
                    [[fallthrough]];
                case InstructionID::FAdd:
                    [[fallthrough]];
                case InstructionID::FMul:
                    accInst = iter.get();
                    break;
                    // TODO: max/min
                default:
                    return false;
            }
            // exactly one operand is the return value of call
            if((iter->getOperand(0) != call && iter->getOperand(1) != call) ||
               (iter->getOperand(0) == call && iter->getOperand(1) == call))
                return false;
            // only used by ret
            if(!(accInst->hasExactlyOneUse() && accInst->users().begin().ref()->user->getInstID() == InstructionID::Ret))
                return false;
        }

        /*
        block->dump(std::cerr, HighlightInst{ call });
        if(accInst) {
            std::cerr << "acc inst: ";
            accInst->dumpInst(std::cerr);
            std::cerr << '\n';
        }
        */

        // Stage 2: Create loop header
        const auto loopHeader = func->entryBlock();
        const auto newEntry = make<Block>(func);
        func->blocks().push_front(newEntry);
        std::vector<PhiInst*> arguments;
        {
            const auto branch = make<BranchInst>(loopHeader);
            branch->insertBefore(newEntry, newEntry->instructions().begin());
            arguments.reserve(func->args().size());
            for(auto argument : func->args()) {
                const auto phi = make<PhiInst>(argument->getType());
                phi->insertBefore(loopHeader, loopHeader->instructions().begin());
                argument->replaceWith(phi);
                phi->addIncoming(newEntry, argument);
                arguments.push_back(phi);
            }
        }
        PhiInst* retValue = nullptr;
        PhiInst* retValid = nullptr;
        if(!call->getType()->isVoid()) {
            retValue = make<PhiInst>(call->getType());
            retValue->insertBefore(loopHeader, loopHeader->instructions().begin());
            retValue->addIncoming(newEntry, make<UndefinedValue>(retValue->getType()));
            retValid = make<PhiInst>(IntegerType::getBoolean());
            retValid->insertBefore(loopHeader, loopHeader->instructions().begin());
            retValid->addIncoming(newEntry, ConstantInteger::getFalse());
        }

        // Stage 3: Replace call/ret with branch
        // arguments
        {
            uint32_t idx = 0;
            for(auto arg : call->arguments()) {
                arguments[idx++]->addIncoming(block, arg);
            }
        }
        // accumulate value
        PhiInst* accValue = nullptr;
        if(accInst) {
            accValue = make<PhiInst>(accInst->getType());
            accValue->insertBefore(loopHeader, loopHeader->instructions().begin());
            const auto identity = getIdentity(accInst->getInstID(), accInst->getType());
            accValue->addIncoming(newEntry, identity);

            call->users().begin().ref()->resetValue(accValue);
            assert(!call->isUsed());
        }
        // return value
        std::vector<SelectInst*> selectInsts;
        if(retValue) {
            if(call->isUsed() || accValue) {
                // ret call or ret acc
                retValue->addIncoming(block, retValue);
                retValid->addIncoming(block, retValid);
            } else {
                // ret constant
                const auto select = make<SelectInst>(retValid, retValue, retInst->getOperand(0));
                selectInsts.push_back(select);
                select->insertBefore(block, retInst->asIterator());
                retValue->addIncoming(block, select);
                retValid->addIncoming(block, ConstantInteger::getTrue());
            }
            if(accValue) {
                accValue->addIncoming(block, accInst);
            }
        }

        // replace
        {
            const auto branch = make<BranchInst>(loopHeader);
            block->instructions().pop_back();  // remove reference to call
            block->instructions().erase(call->asNode());
            branch->insertBefore(block, block->instructions().end());
        }

        // replace all leaf ret with (leaf ret [acc op] acc value)
        if(retValue) {
            if(selectInsts.empty()) {
                loopHeader->instructions().erase(retValue->asNode());
                loopHeader->instructions().erase(retValid->asNode());
                if(accValue) {
                    for(auto b : func->blocks()) {
                        const auto terminator = b->getTerminator();
                        if(terminator->getInstID() == InstructionID::Ret) {
                            const auto ret = terminator->getOperand(0);
                            const auto acc = accInst->clone();
                            acc->mutableOperands()[acc->getOperand(0) == accValue]->resetValue(ret);
                            acc->insertBefore(b, terminator->asIterator());
                            terminator->mutableOperands().front()->resetValue(acc);
                        }
                    }
                }
            } else {
                for(auto b : func->blocks()) {
                    const auto terminator = b->getTerminator();
                    if(terminator->getInstID() == InstructionID::Ret) {
                        const auto ret = terminator->getOperand(0);
                        const auto select = make<SelectInst>(retValid, retValue, ret);
                        selectInsts.push_back(select);
                        select->insertBefore(b, terminator->asIterator());
                        terminator->mutableOperands().front()->resetValue(select);
                    }
                }

                if(accValue) {
                    for(auto select : selectInsts) {
                        const auto val = select->getOperand(2);
                        const auto acc = accInst->clone();
                        acc->mutableOperands()[acc->getOperand(0) == accValue]->resetValue(val);
                        acc->insertBefore(select->getBlock(), select->asIterator());
                        select->mutableOperands().back()->resetValue(acc);
                    }
                }
            }
        }

        return true;
    }
    static bool handleBlock(Block& block, Function* self) {
        const auto termiantor = block.getTerminator();
        // case 1:
        // call
        // ret            bool modified = false;
        if(termiantor->getInstID() == InstructionID::Ret) {
            if(auto call = getLastRecursiveCall(block, self))
                return eliminateCall(call, self);
        }
        // case 2:
        // call
        // br Exit
        // Exit:
        // ret
        // ->
        // call
        // ret
        // Exit:
        // ret
        if(termiantor->getInstID() == InstructionID::Branch) {
            const auto target = termiantor->as<BranchInst>()->getTrueTarget();
            for(auto& inst : target->instructions()) {
                if(inst.getInstID() == InstructionID::Phi)
                    continue;
                if(inst.getInstID() != InstructionID::Ret)
                    break;

                if(auto call = getLastRecursiveCall(block, self)) {
                    block.instructions().pop_back();
                    const auto newRet = inst.clone();
                    newRet->insertBefore(&block, block.instructions().end());
                    // fix return phi
                    if(!newRet->operands().empty()) {
                        auto& ret = newRet->mutableOperands().front();
                        if(ret->value->getBlock() == target) {
                            assert(ret->value->is<PhiInst>());
                            ret->resetValue(ret->value->as<PhiInst>()->incomings().at(&block)->value);
                        }
                    }
                    for(auto& phiInst : target->instructions()) {
                        if(phiInst.getInstID() == InstructionID::Phi) {
                            phiInst.as<PhiInst>()->removeSource(&block);
                        } else
                            break;
                    }
                    eliminateCall(call, self);
                    return true;
                }
            }
        }

        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        // requirement: no alloc
        if(func.entryBlock()->instructions().front()->getInstID() == InstructionID::Alloc) {
            return false;
        }

        for(auto block : func.blocks()) {
            if(block == func.entryBlock())
                continue;  // TODO: mark as unreachable?
            if(handleBlock(*block, &func))
                return true;
        }

        return false;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "TailCallEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(TailCallEliminate);

CMMC_NAMESPACE_END
