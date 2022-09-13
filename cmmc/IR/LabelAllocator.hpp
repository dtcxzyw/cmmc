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

#pragma once
#include <cmmc/Support/Arena.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

class LabelAllocator final {
    HashTable<String<Arena::Source::IR>, uint32_t, Arena::Source::IR, StringHasher<Arena::Source::IR>> mBase;
    HashSet<String<Arena::Source::IR>, Arena::Source::IR, StringHasher<Arena::Source::IR>> mAllocated;

public:
    String<Arena::Source::IR> allocate(const String<Arena::Source::IR>& base);
};

CMMC_NAMESPACE_END
