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
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

String LabelAllocator::allocate(const String& base) {
    const auto key = base.withoutID();
    const auto iter = mBase.find(key);
    if(iter != mBase.cend())
        return iter->first.withID(++iter->second);
    mBase.emplace(key, 0);
    return key;
}

CMMC_NAMESPACE_END
