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

#include <cmmc/CodeGen/FrameInfo.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <vector>

CMMC_MIR_NAMESPACE_BEGIN

int32_t TargetFrameInfo::insertPrologueEpilogue(MIRFunction& mfunc,
                                                const std::unordered_set<MIROperand, MIROperandHasher>& calleeSavedRegister,
                                                CodeGenContext& ctx, bool isNonLeafFunc, const MIROperand& ra) const {
    std::vector<std::pair<MIROperand, MIROperand>> overwrited;
    if(isNonLeafFunc) {
        const auto size = getOperandSize(ra.type());
        const auto alignment = size;
        const auto storage = mfunc.addStackObject(ctx, size, alignment, 0, StackObjectUsage::CalleeSaved);
        overwrited.emplace_back(ra, storage);
    }
    for(auto op : calleeSavedRegister) {
        const auto size = getOperandSize(ctx.registerInfo->getCanonicalizedRegisterType(op.type()));
        const auto alignment = size;
        const auto storage = mfunc.addStackObject(ctx, size, alignment, 0, StackObjectUsage::CalleeSaved);
        overwrited.emplace_back(op, storage);
    }

    for(auto& block : mfunc.blocks()) {
        auto& instructions = block->instructions();
        if(&block == &mfunc.blocks().front()) {
            // backup
            for(auto [p, s] : overwrited)
                instructions.push_front(MIRInst{ InstStoreRegToStack }.setOperand<0>(p).setOperand<1>(s));
        }
        // restore
        auto& terminator = instructions.back();
        auto& instInfo = ctx.instInfo.getInstInfo(terminator);
        if(requireFlag(instInfo.getInstFlag(), InstFlagReturn)) {
            const auto pos = std::prev(instructions.end());
            for(auto [p, s] : overwrited) {
                instructions.insert(pos, MIRInst{ InstLoadRegFromStack }.setOperand<0>(p).setOperand<1>(s));
            }
        }
    }

    return 0;
}

CMMC_MIR_NAMESPACE_END
