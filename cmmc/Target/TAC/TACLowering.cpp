/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2022 Yingwei Zheng and Bingzhen Wang
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

#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>

CMMC_NAMESPACE_BEGIN

Operand TACLoweringVisitor::getZero() const {
    reportNotImplemented();
}

void TACLoweringVisitor::lower(ReturnInst* inst, LoweringContext& ctx) const {
    ctx.emitInst<RetMInst>(inst->operands().empty() ? getZero() : ctx.mapOperand(inst->getOperand(0)));
}
void TACLoweringVisitor::lower(FunctionCallInst* inst, LoweringContext& ctx) const {
    CMMC_UNUSED(inst);
    CMMC_UNUSED(ctx);
    reportNotImplemented();
}
void TACLoweringVisitor::lower(FMAInst*, LoweringContext&) const {
    DiagnosticsContext::get().attach<Reason>("FMA is not supported by TAC").reportFatal();
}

CMMC_NAMESPACE_END
