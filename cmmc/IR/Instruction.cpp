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

#include "cmmc/IR/Instruction.hpp"
#include "cmmc/Support/Diagnostics.hpp"

CMMC_NAMESPACE_BEGIN

void BinaryInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void IntegerCompareInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void FloatingPointCompareInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void UnaryInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void LoadInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void StoreInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void ConditionalBranchInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void ReturnInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void UnreachableInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void FunctionCallInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void SelectInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

void StackAllocInst::dump(std::ostream& out) const {
    reportNotImplemented();
}

CMMC_NAMESPACE_END
