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
#include "cmmc/Frontend/SourceLocation.hpp"
#include "cmmc/Support/Arena.hpp"

CMMC_NAMESPACE_BEGIN

class Type {
public:
};

class VoidType final : public Type {};

class PointerType final : public Type {
    struct Type* pointee;
};

class IntegerOptType final : public Type {
    uint32_t bitWidth;
    bool isSigned;
};

class FloatingPointType final : public Type {
    uint32_t bitWidth;
};

struct StructField {
    SourceLocation loc;
    Type* type;

    // uint32_t alignment;
};

struct StructType {
    List<StructField> fields;
};

CMMC_NAMESPACE_END
