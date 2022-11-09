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

#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/Target.hpp>

CMMC_NAMESPACE_BEGIN

static void simpleAllocate(GMIRFunction& mfunc, Function& func, const Target& target) {
    // auto& frameInfo = target.getTargetFrameInfo();
    // auto usage =
    //    frameInfo.emitPrologue(mfunc.basicblocks.front(), func.getType()->as<FunctionType>(), func.getCallingConvention());
    CMMC_UNUSED(mfunc);
    CMMC_UNUSED(func);
    CMMC_UNUSED(target);
}

CMMC_REGISTER_ALLOCATOR("simple", simpleAllocate);

CMMC_NAMESPACE_END
