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

#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <iterator>

CMMC_NAMESPACE_BEGIN

bool reduceBlock(Block& block, BlockReducer reducer) {
    auto& insts = block.instructions();
    bool modified = false;
    for(auto iter = insts.begin(); iter != insts.end(); ++iter) {
        const auto inst = *iter;
        if(auto value = reducer(inst)) {
            if(value->isInstruction()) {
                insts.insert(iter, value->as<Instruction>());
                modified = true;
            }
            for(auto i2 = std::next(iter); i2 != insts.end(); ++i2)
                modified |= (*i2)->replaceOperand(inst, value);
        }
    }
    return modified;
}

CMMC_NAMESPACE_END
