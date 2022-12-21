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
#include <cmmc/IR/Type.hpp>

CMMC_NAMESPACE_BEGIN

enum class Endian { Big, Little };

class DataLayout {
public:
    virtual ~DataLayout() = default;

    [[nodiscard]] virtual Endian getEndian() const noexcept = 0;
    virtual size_t getBuiltinAlignment(const Type* type) const noexcept = 0;
    [[nodiscard]] virtual size_t getPointerSize() const noexcept = 0;
    [[nodiscard]] virtual size_t getCodeAlignment() const noexcept = 0;
};

CMMC_NAMESPACE_END
