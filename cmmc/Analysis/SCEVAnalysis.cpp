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

#include <cmmc/Analysis/LoopAnalysis.hpp>
#include <cmmc/Analysis/SCEVAnalysis.hpp>
#include <cmmc/Analysis/SCEVExpr.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <iostream>
#include <memory>
#include <ostream>
#include <vector>

CMMC_NAMESPACE_BEGIN
SCEV* SCEVAnalysisResult::addSCEV(Value* val, std::unique_ptr<SCEV> scev) const {
    auto ptr = scev.get();
    mPool.push_back(std::move(scev));
    if(val)
        mStorage.emplace(val, ptr);
    return ptr;
}
SCEV* SCEVAnalysisResult::query(Value* value) const {
    if(auto iter = mStorage.find(value); iter != mStorage.end())
        return iter->second;
    if(value->is<ConstantInteger>()) {
        auto constant = value->as<ConstantInteger>();
        auto scev = std::make_unique<SCEV>();
        scev->instID = SCEVInstID::Constant;
        scev->constant = constant->getStorage();
        return addSCEV(constant, std::move(scev));
    }
    return nullptr;
}
static void dumpSCEV(SCEV* scev, std::ostream& out) {
    switch(scev->instID) {
        case SCEVInstID::Constant:
            out << scev->constant;
            break;
        case SCEVInstID::AddRec: {
            out << '{';
            bool first = true;
            for(auto operand : scev->operands) {
                if(first)
                    first = false;
                else
                    out << ", ";
                dumpSCEV(operand, out);
            }
            out << '}';
            break;
        }
        default:
            reportNotImplemented(CMMC_LOCATION());
    }
}
void SCEVAnalysisResult::dumpSystem(std::ostream& out) const {
    for(auto [k, v] : mStorage) {
        if(k->isConstant())
            continue;
        k->dumpAsOperand(out);
        out << " -> ";
        dumpSCEV(v, out);
        if(v->loop) {
            out << " in loop ";
            v->loop->header->dumpAsTarget(out);
        }
        out << '\n';
    }
}

static intmax_t getBinomialCoefficient(uint32_t n, uint32_t k) {
    if(k > n)
        return 0;
    if(k == 0 || k == n)
        return 1;

    static std::vector<std::vector<intmax_t>> coeff;
    while(coeff.size() <= n) {
        const auto n1 = coeff.size();
        if(n1 == 0) {
            coeff.push_back({ 1 });
            continue;
        }

        std::vector<intmax_t> res;
        auto& last = coeff.back();
        res.reserve(n1 + 1);
        res.push_back(1);
        for(uint32_t idx = 1; idx < n1; ++idx)
            res.push_back(last[idx - 1] + last[idx]);
        res.push_back(1);
        coeff.push_back(std::move(res));
    }

    // std::cerr << "C(" << n << ", " << k << ") = " << coeff[n][k] << std::endl;
    return coeff[n][k];
}

static std::unique_ptr<SCEV> foldAdd(SCEVAnalysisResult& res, SCEV* lhs, SCEV* rhs) {
    if(!(lhs && rhs))
        return nullptr;

    if(lhs->instID == SCEVInstID::Constant && rhs->instID == SCEVInstID::Constant) {
        auto scev = std::make_unique<SCEV>();
        scev->instID = SCEVInstID::Constant;
        scev->constant = lhs->constant + rhs->constant;
        return scev;
    }
    if(lhs->instID == SCEVInstID::AddRec && rhs->instID == SCEVInstID::Constant) {
        auto base = lhs->operands.front();
        auto newBase = foldAdd(res, base, rhs);
        if(newBase) {
            auto ret = std::make_unique<SCEV>(*lhs);
            ret->operands.front() = newBase.get();
            res.addSCEV(nullptr, std::move(newBase));
            return ret;
        }
    }
    if(lhs->instID == SCEVInstID::AddRec && rhs->instID == SCEVInstID::AddRec) {
        std::vector<SCEV*> operands;
        const auto endSize = std::max(lhs->operands.size(), rhs->operands.size());
        operands.reserve(endSize);
        for(size_t idx = 0; idx < endSize; ++idx) {
            auto lhsOperand = idx < lhs->operands.size() ? lhs->operands[idx] : nullptr;
            auto rhsOperand = idx < rhs->operands.size() ? rhs->operands[idx] : nullptr;
            if(lhsOperand && rhsOperand) {
                auto newOperand = foldAdd(res, lhsOperand, rhsOperand);
                if(newOperand) {
                    operands.push_back(newOperand.get());
                    res.addSCEV(nullptr, std::move(newOperand));
                } else
                    return nullptr;
            } else if(lhsOperand)
                operands.push_back(lhsOperand);
            else
                operands.push_back(rhsOperand);
        }
        auto ret = std::make_unique<SCEV>();
        ret->instID = SCEVInstID::AddRec;
        ret->operands = std::move(operands);
        return ret;
    }
    return nullptr;
}
static std::unique_ptr<SCEV> foldMul(const SCEVAnalysisResult& res, SCEV* lhs, SCEV* rhs) {
    if(!(lhs && rhs))
        return nullptr;

    if(lhs->instID == SCEVInstID::Constant && rhs->instID == SCEVInstID::Constant) {
        auto scev = std::make_unique<SCEV>();
        scev->instID = SCEVInstID::Constant;
        scev->constant = lhs->constant * rhs->constant;
        return scev;
    }
    if(lhs->instID == SCEVInstID::AddRec && rhs->instID == SCEVInstID::Constant) {
        std::vector<SCEV*> operands;
        operands.reserve(lhs->operands.size());
        for(auto operand : lhs->operands) {
            auto newOperand = foldMul(res, operand, rhs);
            if(newOperand) {
                operands.push_back(newOperand.get());
                res.addSCEV(nullptr, std::move(newOperand));
            } else
                return nullptr;
        }
        auto scev = std::make_unique<SCEV>();
        scev->instID = SCEVInstID::AddRec;
        scev->operands = std::move(operands);
        return scev;
    }
    if(lhs->instID == SCEVInstID::AddRec && rhs->instID == SCEVInstID::AddRec) {
        std::vector<SCEV*> operands;
        const auto n = lhs->operands.size() + rhs->operands.size() - 1;
        operands.reserve(n);
        for(intmax_t i = 0; i < static_cast<intmax_t>(n); ++i) {
            intmax_t sum = 0;
            for(intmax_t j = i; j <= 2 * i; ++j) {
                const auto coeff1 = getBinomialCoefficient(static_cast<uint32_t>(i), static_cast<uint32_t>(2 * i - j));
                for(intmax_t k = std::max(j - i, j - static_cast<intmax_t>(lhs->operands.size()) + 1);
                    k < std::min(i + 1, static_cast<intmax_t>(rhs->operands.size())); ++k) {
                    const auto coeff2 = getBinomialCoefficient(static_cast<uint32_t>(2 * i - j), static_cast<uint32_t>(i - k));
                    const auto coeff = coeff1 * coeff2;
                    const auto lhsTerm = lhs->operands[static_cast<size_t>(j - k)];
                    const auto rhsTerm = rhs->operands[static_cast<size_t>(k)];
                    if(lhsTerm->instID == SCEVInstID::Constant && rhsTerm->instID == SCEVInstID::Constant) {
                        sum += coeff * lhsTerm->constant * rhsTerm->constant;
                    } else
                        return nullptr;
                }
            }
            auto scev = std::make_unique<SCEV>();
            scev->instID = SCEVInstID::Constant;
            scev->constant = sum;
            operands.push_back(res.addSCEV(nullptr, std::move(scev)));
        }
        auto scev = std::make_unique<SCEV>();
        scev->instID = SCEVInstID::AddRec;
        scev->operands = std::move(operands);
        return scev;
    }
    return nullptr;
}

SCEVAnalysisResult SCEVAnalysis::run(Function& func, AnalysisPassManager& analysis) {
    auto& loopInfo = analysis.get<LoopAnalysis>(func);
    SCEVAnalysisResult res;

    auto findLoop = [&](Block* block) -> const Loop* {
        for(auto& loop : loopInfo.loops)
            if(loop.header == block)
                return &loop;
        return nullptr;
    };

    // analysis BIV
    for(auto block : func.blocks()) {
        auto loop = findLoop(block);
        for(auto& phi : block->instructions()) {
            if(phi.getInstID() == InstructionID::Phi) {
                auto phiInst = phi.as<PhiInst>();
                if(phiInst->incomings().size() == 2) {
                    auto initial = phiInst->incomings().begin()->second;
                    auto next = std::next(phiInst->incomings().begin())->second;
                    intmax_t i1;
                    Value* c1;
                    auto tryMatch = [&] {
                        Value* indVar = phiInst;
                        if(add(exactly(indVar), capture(int_(i1), c1))(MatchContext<Value>{ next->value })) {
                            auto initialSCEV = res.query(initial->value);
                            auto incSCEV = res.query(c1);
                            if(initialSCEV && incSCEV) {
                                auto scev = std::make_unique<SCEV>();
                                scev->instID = SCEVInstID::AddRec;
                                scev->operands = { initialSCEV, incSCEV };
                                scev->loop = loop;
                                res.addSCEV(phiInst, std::move(scev));
                                return true;
                            }
                        }
                        return false;
                    };
                    if(!tryMatch()) {
                        std::swap(initial, next);
                        tryMatch();
                    }
                }
            } else
                break;
        }
    }

    // analysis GIV
    for(auto block : func.blocks()) {
        for(auto& inst : block->instructions()) {
            switch(inst.getInstID()) {
                case InstructionID::Add: {
                    if(auto scev = foldAdd(res, res.query(inst.getOperand(0)), res.query(inst.getOperand(1)))) {
                        res.addSCEV(&inst, std::move(scev));
                    }
                    break;
                }
                case InstructionID::Mul: {
                    if(auto scev = foldMul(res, res.query(inst.getOperand(0)), res.query(inst.getOperand(1)))) {
                        res.addSCEV(&inst, std::move(scev));
                    }
                    break;
                }
                default:
                    break;
            }
        }
    }

    // res.dumpSystem(std::cerr);
    return res;
}

CMMC_NAMESPACE_END
