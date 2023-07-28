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

#include <algorithm>
#include <cassert>
#include <cmmc/CodeGen/MultiplyByConstant.hpp>
#include <limits>
#include <memory>
#include <unordered_map>

// Reference:
// Bernstein, Robert. "Multiplication by Integer Constants." Software—Practice and Experience 16, 7 (July 1986), 641–652.

CMMC_MIR_NAMESPACE_BEGIN

struct ShiftArithNode {
    enum class ArtihType {
        ADD,
        SUB,
        NOP,
    };
    enum class RhsType {
        CHAIN,
        ORIGIN,
    };

    int32_t cost;
    int32_t shamt;
    ArtihType arithmetic;
    RhsType rhs;
    std::shared_ptr<ShiftArithNode> parent;

    ShiftArithNode(int32_t shamtVal, ArtihType arithmeticVal, RhsType rhsVal, std::shared_ptr<ShiftArithNode> parentVal)
        : shamt(shamtVal), arithmetic(arithmeticVal), rhs(rhsVal), parent(std::move(parentVal)) {
        cost = (parent ? parent->cost : 0) + (arithmetic != ArtihType::NOP) + (shamt > 0);
    }

    bool operator<(const ShiftArithNode& other) const {
        if(cost == other.cost)
            return arithmetic < other.arithmetic;  // prefer add
        return cost < other.cost;
    }
};

static std::unordered_map<intmax_t, std::shared_ptr<ShiftArithNode>> memo[12];

static std::shared_ptr<ShiftArithNode> minPlan(const std::shared_ptr<ShiftArithNode>& lhs,
                                               const std::shared_ptr<ShiftArithNode>& rhs) {
    if(!lhs)
        return rhs;
    if(!rhs)
        return lhs;
    return *lhs < *rhs ? lhs : rhs;
}

static std::shared_ptr<ShiftArithNode> findMultiplyPlan(intmax_t n, int32_t upper);
static std::shared_ptr<ShiftArithNode> findMultiplyPlanOdd(intmax_t n, int32_t upper) {
    if(upper < 0)
        return nullptr;
    if(auto it = memo[upper].find(n); it != memo[upper].end())
        return it->second;

    assert(n > 1 && n % 2 == 1);

    std::shared_ptr<ShiftArithNode> plan = nullptr;
    const auto currentUpper = [&]() { return plan ? std::min(upper, plan->cost) : upper; };
    const auto tryUpdatePlan = [&](std::shared_ptr<ShiftArithNode> newPlan, int32_t shamt, ShiftArithNode::ArtihType arithmetic,
                                   ShiftArithNode::RhsType rhs) {
        if(!newPlan)
            return;
        newPlan = std::make_shared<ShiftArithNode>(shamt, arithmetic, rhs, newPlan);
        plan = minPlan(plan, newPlan);
    };

    tryUpdatePlan(findMultiplyPlan(n - 1, currentUpper() - 1), 0, ShiftArithNode::ArtihType::ADD,
                  ShiftArithNode::RhsType::ORIGIN);
    tryUpdatePlan(findMultiplyPlan(n + 1, currentUpper() - 1), 0, ShiftArithNode::ArtihType::SUB,
                  ShiftArithNode::RhsType::ORIGIN);
    for(int32_t i = 1; (static_cast<intmax_t>(1) << i) <= n; i++) {
        intmax_t p1 = (static_cast<intmax_t>(1) << i) + 1;
        intmax_t p2 = (static_cast<intmax_t>(1) << i) - 1;
        if(n % p1 == 0)
            tryUpdatePlan(findMultiplyPlan(n / p1, currentUpper() - 2), i, ShiftArithNode::ArtihType::ADD,
                          ShiftArithNode::RhsType::CHAIN);
        if(n % p2 == 0)
            tryUpdatePlan(findMultiplyPlan(n / p2, currentUpper() - 2), i, ShiftArithNode::ArtihType::SUB,
                          ShiftArithNode::RhsType::CHAIN);
    }

    if(plan)
        memo[upper][n] = plan;

    return plan;
}

static std::shared_ptr<ShiftArithNode> findMultiplyPlan(intmax_t n, int32_t upper) {
    assert(upper < static_cast<int32_t>(sizeof(memo) / sizeof(memo[0])) && "Please increase the size of memo");

    if(upper < 0)
        return nullptr;
    if(auto it = memo[upper].find(n); it != memo[upper].end())
        return it->second;

    intmax_t m = n;
    int32_t shamt = 0;
    while(m % 2 == 0) {
        m >>= 1;
        shamt++;
    }

    if(m == 1)
        return memo[upper][n] = std::make_shared<ShiftArithNode>(shamt, ShiftArithNode::ArtihType::NOP,
                                                                 ShiftArithNode::RhsType::ORIGIN, nullptr);

    auto plan = findMultiplyPlanOdd(m, upper - (shamt > 0));
    if(!plan)
        return nullptr;
    if(shamt > 0)
        plan = std::make_shared<ShiftArithNode>(shamt, ShiftArithNode::ArtihType::NOP, ShiftArithNode::RhsType::ORIGIN, plan);

    return memo[upper][n] = plan;
}

static bool expandMulWithConstantImpl(MIRInstList& instructions, CodeGenContext& codeGenCtx, MIRInstList::iterator iter,
                                      uint32_t maxCost) {
    auto& inst = *iter;
    if(inst.opcode() != InstMul)
        return false;

    const auto dst = inst.getOperand(0);
    const auto type = dst.type();
    const auto lhs = inst.getOperand(1);
    auto expand = [&](auto&& self, const auto& plan) -> MIROperand {
        if(!plan)
            return lhs;

        const MIROperand v = self(self, plan->parent);
        auto ret = v;
        if(plan->shamt > 0) {
            const auto res = MIROperand::asVReg(codeGenCtx.nextId(), type);
            instructions.insert(
                iter, MIRInst{ InstShl }.setOperand<0>(res).setOperand<1>(v).setOperand<2>(MIROperand::asImm(plan->shamt, type)));
            ret = res;
        }

        auto rhs = plan->rhs == ShiftArithNode::RhsType::CHAIN ? v : lhs;
        if(plan->arithmetic != ShiftArithNode::ArtihType::NOP) {
            const auto res = MIROperand::asVReg(codeGenCtx.nextId(), type);
            instructions.insert(iter,
                                MIRInst{ plan->arithmetic == ShiftArithNode::ArtihType::ADD ? InstAdd : InstSub }
                                    .setOperand<0>(res)
                                    .setOperand<1>(ret)
                                    .setOperand<2>(rhs));
            ret = res;
        }

        return ret;
    };

    const auto rhs = inst.getOperand(2);
    if(!rhs.isImm() || rhs.imm() == 0 || rhs.imm() == std::numeric_limits<intmax_t>::min())
        return false;
    const auto v2 = rhs.imm();
    const auto plan = findMultiplyPlan(std::abs(v2), static_cast<int32_t>(maxCost));
    if(!plan)
        return false;

    auto ret = expand(expand, plan);
    if(v2 < 0) {
        *iter = MIRInst{ InstSub }.setOperand<0>(dst).setOperand<1>(MIROperand::asImm(0, type)).setOperand<2>(ret);
    } else {
        *iter = MIRInst{ InstCopy }.setOperand<0>(dst).setOperand<1>(ret);
    }
    return true;
}

bool expandMulWithConstant(MIRFunction& func, CodeGenContext& codeGenCtx, uint32_t maxCost) {
    if(!codeGenCtx.flags.inSSAForm)
        return false;

    bool modified = false;
    for(auto& block : func.blocks()) {
        auto& instructions = block->instructions();
        for(auto iter = instructions.begin(); iter != instructions.end(); iter++) {
            if(expandMulWithConstantImpl(instructions, codeGenCtx, iter, maxCost))
                modified = true;
        }
    }
    return modified;
}
CMMC_MIR_NAMESPACE_END
