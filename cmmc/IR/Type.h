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
#include "cmmc/Frontend/SourceLocation.h"
#include "cmmc/Support/List.h"
#include <stdbool.h>
#include <stdint.h>

struct Type;

struct TypeVTable {
    uint32_t (*size)(const struct Type* type);
};

struct Type {
    struct TypeVTable vptr;
};

struct VoidType {
    struct Type base;
};

struct PointerType {
    struct Type base;
    struct Type* pointee;
};

struct IntegerType {
    struct Type base;
    uint32_t bitWidth;
    bool isSigned;
};

struct FloatingPointType {
    struct Type base;
    uint32_t bitWidth;
};

struct StructField {
    struct SourceLocation loc;
    struct Type* type;

    // uint32_t alignment;
};

LIST_NODE_DECL(StructField, struct StructField);

struct StructType {
    struct Type base;
    LIST_NODE(StructField) fields;
};
