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

#include <cmmc/Config.hpp>
#include <cstdint>
#include <string_view>

CMMC_NAMESPACE_BEGIN

void initTune(const std::string_view& name, const std::string_view& target);
int32_t queryTuneOpt(const std::string_view& key, int32_t defaultValue);

CMMC_NAMESPACE_END
