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

#include <cassert>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/FlyWeight.hpp>
#include <cmmc/Support/Options.hpp>

CMMC_NAMESPACE_BEGIN

Flag uniqueLabel;  // NOLINT

CMMC_INIT_OPTIONS_BEGIN
uniqueLabel.setName("uniqueid", 'u').setDesc("generate global unique label prefix");
CMMC_INIT_OPTIONS_END

Value::Value(const Type* type) : mType{ type } {
    assert(type);
}

void Value::dumpPrefix(std::ostream& out) const {
    if(uniqueLabel.get()) {
        out << this << ' ';
    }
}

void Value::dumpAsOperand(std::ostream& out) const {
    dumpPrefix(out);
    mType->dumpName(out);
    out << ' ';
    dump(out);
}

CMMC_NAMESPACE_END
