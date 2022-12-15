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
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Value.hpp>
#include <ostream>
#include <string_view>

CMMC_NAMESPACE_BEGIN

template <typename T>
struct Attachment final {
    std::string_view desc;
    const T* val;
    friend void operator<<(std::ostream& out, const Attachment<T>& attachment) {
        out << attachment.desc << ": "sv;
        if(attachment.val)
            attachment.val->dump(out);
        else
            out << " invalid"sv;
        out << std::endl;
    }
};

using TypeAttachment = Attachment<Type>;
using ValueAttachment = Attachment<Value>;
using BlockAttachment = Attachment<Block>;
using FuncAttachment = Attachment<Function>;
using ModuleAttachment = Attachment<Module>;

struct CFGAttachment final {
    std::string_view desc;
    const Function* val;
    friend void operator<<(std::ostream& out, const CFGAttachment& attachment) {
        out << attachment.desc << ": "sv;
        if(attachment.val)
            attachment.val->dumpCFG(out);
        else
            out << " invalid"sv;
        out << std::endl;
    }
};

CMMC_NAMESPACE_END
