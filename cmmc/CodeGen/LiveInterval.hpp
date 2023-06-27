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

#pragma once
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cstdint>
#include <deque>
#include <ostream>
#include <unordered_map>
#include <unordered_set>

CMMC_MIR_NAMESPACE_BEGIN

using RegNum = uint32_t;
using InstNum = uint64_t;
constexpr uint64_t defaultIncrement = 4;
static_assert(defaultIncrement >= 2 && (defaultIncrement % 2) == 0);

// instnum i: use i+1: def
// i in [beg, end): this register should be available just before issuing instruction $i$.
struct LiveSegment final {
    InstNum beg, end;

    bool operator<(const LiveSegment& rhs) const {
        return beg < rhs.beg;
    }
};

struct LiveInterval final {
    std::deque<LiveSegment> segments;  // ordered

    void appendSegment(const LiveSegment& segment);
    void insertSegment(const LiveSegment& segment);
    void optimize();
    void dump(std::ostream& out) const;
    [[nodiscard]] bool verify() const;
    [[nodiscard]] InstNum nextUse(InstNum beg) const;
    [[nodiscard]] bool intersectWith(const LiveInterval& rhs) const;
};

struct LiveVariablesBlockInfo final {
    std::unordered_set<RegNum> uses;
    std::unordered_set<RegNum> defs;
    std::unordered_set<RegNum> ins;
    std::unordered_set<RegNum> outs;
};

struct LiveVariablesInfo final {
    std::unordered_map<MIRInst*, InstNum> instNum;
    std::unordered_map<MIRBasicBlock*, LiveVariablesBlockInfo> blockInfo;
    std::unordered_map<RegNum, LiveInterval> interval;
};

inline RegNum regNum(const MIROperand& operand) {
    assert(isOperandVRegOrISAReg(operand));
    return static_cast<RegNum>(operand.reg());
}

LiveVariablesInfo calcLiveIntervals(MIRFunction& mfunc, const CodeGenContext& ctx);
void cleanupRegFlags(MIRFunction& mfunc, const CodeGenContext& ctx);

CMMC_MIR_NAMESPACE_END
