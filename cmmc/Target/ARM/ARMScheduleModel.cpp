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

#include <ARM/InstInfoDecl.hpp>
#include <ARM/ScheduleModelImpl.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/Target/ARM/ARM.hpp>
#include <iostream>
#include <iterator>

CMMC_TARGET_NAMESPACE_BEGIN

[[maybe_unused]] static bool optimizeConditionalCopyOfComputationalInst(MIRBasicBlock& block) {
    bool modified = false;
    auto& insts = block.instructions();

    for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
        if(iter == insts.begin())
            continue;
        auto& curInst = *iter;
        if(curInst.opcode() != MOV_Cond)
            continue;
        auto dst = curInst.getOperand(1);
        auto src = curInst.getOperand(2);
        auto cc = curInst.getOperand(3);

        auto prev = std::prev(iter);
        switch(prev->opcode()) {
            case ADD:
            case SUB:
            case AND:
            case ORR:
            case EOR:
            case ORN:
            case BIC:
            case RSB: {
                auto& prevInst = *prev;
                auto dstPrev = prevInst.getOperand(0);
                auto lhs = prevInst.getOperand(1);
                auto rhs = prevInst.getOperand(2);
                if(dstPrev != src || dstPrev == lhs || dstPrev == rhs || dstPrev == dst)
                    continue;
                curInst = MIRInst{ prev->opcode() - ADD + ADD_Cond }
                              .setOperand<2>(lhs)
                              .setOperand<3>(rhs)
                              .setOperand<4>(cc)
                              .setOperand<5>(dst);
                break;
            }
            default:
                break;
        }
    }

    return modified;
}

static bool optimizeFusedCompareWithZero(MIRBasicBlock& block) {
    bool modified = false;
    auto& insts = block.instructions();

    for(auto iter = insts.begin(); iter != insts.end();) {
        auto next = std::next(iter);
        if(iter == insts.begin()) {
            iter = next;
            continue;
        }
        auto& curInst = *iter;
        if(curInst.opcode() != CMP || !isZero(curInst.getOperand(1))) {
            iter = next;
            continue;
        }
        auto src = curInst.getOperand(0);
        auto cc = curInst.getOperand(2);

        auto prev = std::prev(iter);
        switch(prev->opcode()) {
            case ADD:
            case SUB:
            case AND:
            case ORR:
            case EOR:
            case ORN:
            case BIC:
            case RSB: {
                auto& prevInst = *prev;
                auto& dst = prevInst.getOperand(0);
                if(dst == src) {
                    prevInst.setOpcode(prevInst.opcode() - ADD + ADDS);
                    prevInst.setOperand<3>(cc);
                    insts.erase(iter);
                    modified = true;
                }
                break;
            }
            default:
                break;
        }

        iter = next;
    }

    return modified;
}

bool ARMScheduleModel_cortex_a72::peepholeOpt(MIRFunction& func, const CodeGenContext& ctx) const {
    // CMMC_UNUSED(func);
    CMMC_UNUSED(ctx);
    bool modified = false;
    for(auto& block : func.blocks()) {
        // if(ctx.flags.preRA)
        //     modified |= optimizeConditionalCopyOfComputationalInst(*block);
        modified |= optimizeFusedCompareWithZero(*block);
    }
    return modified;
    return false;
}

CMMC_TARGET_NAMESPACE_END
