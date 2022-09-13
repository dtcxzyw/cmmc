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
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class ExternalFunctionDeclaration final : public GlobalValue {
public:
    void dump(std::ostream& out) const override;
};

class Function final : public GlobalValue {
    List<Block*> mBlocks;

public:
    Block* entryBlock() const noexcept {
        return mBlocks.front();
    }
    List<Block*>& blocks() noexcept {
        return mBlocks;
    }
    void dump(std::ostream& out) const override;
};

CMMC_NAMESPACE_END
