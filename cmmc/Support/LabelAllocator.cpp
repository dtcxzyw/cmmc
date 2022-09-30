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

#include <cctype>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

static void emitID(std::string& str, uint32_t idx) {
    if(idx >= 10)
        emitID(str, idx / 10);
    str.push_back('0' + idx % 10);
}

std::string LabelAllocator::allocate(const std::string& base) {
    uint32_t end = 0;
    while(end != base.size()) {
        if(isdigit(base[end]))
            break;
        ++end;
    }
    auto prefix = base.substr(0, end);
    const auto id = mBase[prefix]++;
    if(id != 0 || prefix.empty())
        emitID(prefix, id);
    return prefix;
}

CMMC_NAMESPACE_END
