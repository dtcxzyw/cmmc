#include <algorithm>
#include <cassert>
#include <cmmc/CodeGen/MultiplyByConstant.hpp>
#include <unordered_map>

// Reference:
// Bernstein, Robert. "Multiplication by Integer Constants." Software—Practice and Experience 16, 7 (July 1986), 641–652.

static std::unordered_map<intmax_t, std::shared_ptr<ShiftArithNode>> memo[12];

static std::shared_ptr<ShiftArithNode> minPlan(std::shared_ptr<ShiftArithNode> lhs, std::shared_ptr<ShiftArithNode> rhs) {
    if(!lhs)
        return rhs;
    if(!rhs)
        return lhs;
    return *lhs < *rhs ? lhs : rhs;
}

static std::shared_ptr<ShiftArithNode> findMultiplyPlanOdd(const intmax_t n, const int upper) {
    if(upper < 0)
        return nullptr;
    if(auto it = memo[upper].find(n); it != memo[upper].end())
        return it->second;

    assert(n > 1 && n % 2 == 1);

    std::shared_ptr<ShiftArithNode> plan = nullptr;
    const auto currentUpper = [&]() { return plan ? std::min(upper, plan->cost) : upper; };
    const auto tryUpdatePlan = [&](std::shared_ptr<ShiftArithNode> newPlan, int shamt, ShiftArithNode::ArtihType artihmetic,
                                   ShiftArithNode::RhsType rhs) {
        if(!newPlan)
            return;
        newPlan = std::make_shared<ShiftArithNode>(shamt, artihmetic, rhs, newPlan);
        plan = minPlan(plan, newPlan);
    };

    tryUpdatePlan(findMultiplyPlan(n - 1, currentUpper() - 1), 0, ShiftArithNode::ArtihType::ADD,
                  ShiftArithNode::RhsType::ORIGIN);
    tryUpdatePlan(findMultiplyPlan(n + 1, currentUpper() - 1), 0, ShiftArithNode::ArtihType::SUB,
                  ShiftArithNode::RhsType::ORIGIN);
    for(int i = 1; (1LL << i) <= n; i++) {
        intmax_t p1 = (1LL << i) + 1;
        intmax_t p2 = (1LL << i) - 1;
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

std::shared_ptr<ShiftArithNode> findMultiplyPlan(const intmax_t n, const int upper) {
    assert(upper < sizeof(memo) / sizeof(memo[0]) && "Please increase the size of memo");

    if(upper < 0)
        return nullptr;
    if(auto it = memo[upper].find(n); it != memo[upper].end())
        return it->second;

    intmax_t m = n;
    int shamt = 0;
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
