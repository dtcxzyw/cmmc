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
#include <cmmc/Config.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Arena.hpp>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class Module;
class Block;

class Value {
    Type* mType;

public:
    static constexpr auto arenaSource = Arena::Source::IR;

    explicit Value(Type* type);
    Value(const Value&) = delete;
    Value(Value&&) = delete;
    Value& operator=(const Value&) = delete;
    Value& operator=(Value&&) = delete;
    virtual ~Value() = default;

    virtual void dump(std::ostream& out) const = 0;
    void dumpPrefix(std::ostream& out) const;
    virtual void dumpAsOperand(std::ostream& out) const;
    Type* getType() const noexcept {
        return mType;
    }
    virtual bool isGlobal() const noexcept {
        return false;
    }
    virtual bool isConstant() const noexcept {
        return false;
    }
    virtual bool isInstruction() const noexcept {
        return false;
    }
    virtual Block* getBlock() const noexcept {
        return nullptr;
    }

    template <typename T>
    T* as() {
        static_assert(std::is_base_of_v<Value, T>);
        const auto ptr = dynamic_cast<T*>(this);
        assert(ptr);
        return ptr;
    }

    template <typename T>
    bool is() const {
        static_assert(std::is_base_of_v<Value, T>);
        return dynamic_cast<const T*>(this);
    }
};

CMMC_NAMESPACE_END
