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

#include <cmmc/Analysis/IntegerRange.hpp>
#include <cmmc/Config.hpp>
#include <cstdint>
#include <gtest/gtest.h>
#include <limits>
#include <ostream>
#include <random>

CMMC_NAMESPACE_BEGIN

enum MatchRequirement {
    MatchNone = 0,
    MatchSigned = 1 << 0,
    MatchUnsigned = 1 << 1,
    MatchBits = 1 << 2,
    MatchAll = MatchSigned | MatchUnsigned | MatchBits
};

struct RealRange final {
    int64_t minSignedValue = std::numeric_limits<int64_t>::max(), maxSignedValue = std::numeric_limits<int64_t>::min();
    uint64_t minUnsignedValue = std::numeric_limits<uint64_t>::max(), maxUnsignedValue = 0;
    uint32_t knownZeros = std::numeric_limits<uint32_t>::max(), knownOnes = std::numeric_limits<uint32_t>::max();

    void update(int32_t val) {
        const int64_t sval = val;
        minSignedValue = std::min(minSignedValue, sval);
        maxSignedValue = std::max(maxSignedValue, sval);
        const uint64_t zval = static_cast<uint32_t>(val);
        minUnsignedValue = std::min(minUnsignedValue, zval);
        maxUnsignedValue = std::max(maxUnsignedValue, zval);
        knownZeros &= ~val;
        knownOnes &= val;
    }
    bool empty() const {
        return minSignedValue > maxSignedValue;
    }
    [[nodiscard]] bool within(const IntegerRange& rhs) const {
        return rhs.minSignedValue() <= minSignedValue && maxSignedValue <= rhs.maxSignedValue() &&
            rhs.minUnsignedValue() <= minUnsignedValue && maxUnsignedValue <= rhs.maxUnsignedValue() &&
            (knownZeros & rhs.knownZeros()) == rhs.knownZeros() && (knownOnes & rhs.knownOnes()) == rhs.knownOnes();
    }
    IntegerRange toRange() const {
        IntegerRange range;
        range.setSignedRange(minSignedValue, maxSignedValue);
        range.setUnsignedRange(minUnsignedValue, maxUnsignedValue);
        range.setKnownBits(knownZeros, knownOnes);
        return range;
    }
    void print(std::ostream& out) const {
        toRange().print(out);
    }
    bool match(const IntegerRange& rhs, uint32_t matchReq) const {
        if(matchReq & MatchSigned) {
            if(!(minSignedValue == rhs.minSignedValue() && maxSignedValue == rhs.maxSignedValue()))
                return false;
        }
        if(matchReq & MatchUnsigned) {
            if(!(minUnsignedValue == rhs.minUnsignedValue() && maxUnsignedValue == rhs.maxUnsignedValue()))
                return false;
        }
        if(matchReq & MatchBits) {
            if(!(knownOnes == rhs.knownOnes() && knownZeros == rhs.knownZeros()))
                return false;
        }
        return true;
    }
};

static std::ostream& operator<<(std::ostream& out, const RealRange& range) {
    range.print(out);
    return out;
}

static std::ostream& operator<<(std::ostream& out, const IntegerRange& range) {
    range.print(out);
    return out;
}

constexpr uint32_t seed = 998244353;
constexpr uint32_t testCnt = 1 << 20;
constexpr uint32_t randCnt = 2;

template <typename C1, typename C2>
void testUnary(C1 eval, C2 rangeEval, uint32_t matchReq = MatchAll) {
    int64_t beg = -128, end = 128;
    // op [i, i]
    for(int64_t i = beg; i < end; ++i) {
        RealRange real;
        if(std::optional<int64_t> res = eval(i))
            real.update(static_cast<int32_t>(*res));
        IntegerRange valRange{ i };
        const auto evalRange = rangeEval(valRange);
        ASSERT_TRUE(real.within(evalRange) && real.match(evalRange, matchReq)) << "op " << i << '\n'
                                                                               << "val:\n"
                                                                               << valRange << "expected:\n"
                                                                               << real << "result:\n"
                                                                               << evalRange;
    }
    // op [i, j]
    for(int64_t i = beg; i < end; ++i) {
        for(int64_t j = i; j < end; ++j) {
            RealRange val, real;
            for(int64_t x = i; x <= j; ++x)
                val.update(x);
            for(int64_t x = i; x <= j; ++x) {
                if(std::optional<int64_t> res = eval(x))
                    real.update(static_cast<int32_t>(*res));
            }
            if(real.empty())
                continue;
            IntegerRange valRange = val.toRange();
            const auto evalRange = rangeEval(valRange);
            ASSERT_TRUE(real.within(evalRange) && real.match(evalRange, matchReq)) << "op [" << i << ", " << j << "]\n"
                                                                                   << "val:\n"
                                                                                   << valRange << "expected:\n"
                                                                                   << real << "result:\n"
                                                                                   << evalRange;
        }
    }

    std::minstd_rand gen(seed);
    for(uint32_t idx = 0; idx < testCnt; ++idx) {
        RealRange val, real;
        for(int64_t x = 0; x <= randCnt; ++x) {
            auto v = gen();
            val.update(v);
            if(std::optional<int64_t> res = eval(v))
                real.update(static_cast<int32_t>(*res));
        }
        if(real.empty())
            continue;
        IntegerRange valRange = val.toRange();
        const auto evalRange = rangeEval(valRange);
        ASSERT_TRUE(real.within(evalRange)) << "val:\n" << valRange << "expected:\n" << real << "result:\n" << evalRange;
    }
}

template <typename C1, typename C2>
void testBinary(C1 eval, C2 rangeEval, uint32_t matchReq = MatchAll) {
    int64_t beg = -16, end = 16;
    // [i, i] op [j, j]
    for(int64_t i = beg; i < end; ++i) {
        for(int64_t j = beg; j < end; ++j) {
            RealRange real;
            if(std::optional<int64_t> res = eval(i, j))
                real.update(static_cast<int32_t>(*res));
            if(real.empty())
                continue;
            IntegerRange lhsRange{ i };
            IntegerRange rhsRange{ j };
            const auto evalRange = rangeEval(lhsRange, rhsRange);
            ASSERT_TRUE(real.within(evalRange) && real.match(evalRange, matchReq)) << i << " op " << j << '\n'
                                                                                   << "lhs:\n"
                                                                                   << lhsRange << "rhs:\n"
                                                                                   << rhsRange << "expected:\n"
                                                                                   << real << "result:\n"
                                                                                   << evalRange;
        }
    }
    // [i, j] op [k, l]
    for(int64_t i = beg; i < end; ++i) {
        for(int64_t j = i; j < end; ++j) {
            for(int64_t k = beg; k < end; ++k) {
                for(int64_t l = k; l < end; ++l) {
                    RealRange lhs, rhs, real;
                    for(int64_t x = i; x <= j; ++x)
                        lhs.update(x);
                    for(int64_t y = k; y <= l; ++y)
                        rhs.update(y);
                    for(int64_t x = i; x <= j; ++x) {
                        for(int64_t y = k; y <= l; ++y) {
                            if(std::optional<int64_t> res = eval(x, y))
                                real.update(static_cast<int32_t>(*res));
                        }
                    }
                    if(real.empty())
                        continue;
                    IntegerRange lhsRange = lhs.toRange();
                    IntegerRange rhsRange = rhs.toRange();
                    const auto evalRange = rangeEval(lhsRange, rhsRange);
                    ASSERT_TRUE(real.within(evalRange) && real.match(evalRange, matchReq))
                        << '[' << i << ", " << j << "] op [" << k << ", " << l << "]\n"
                        << "lhs:\n"
                        << lhsRange << "rhs:\n"
                        << rhsRange << "expected:\n"
                        << real << "result:\n"
                        << evalRange;
                }
            }
        }
    }

    std::minstd_rand gen(seed);
    for(uint32_t idx = 0; idx < testCnt; ++idx) {
        RealRange lhs, rhs, real;
        for(int64_t x = 0; x <= randCnt; ++x) {
            auto v1 = gen();
            lhs.update(v1);
            auto v2 = gen();
            rhs.update(v2);
            if(std::optional<int64_t> res = eval(v1, v2)) {
                real.update(static_cast<int32_t>(*res));
            }
        }
        if(real.empty())
            continue;
        const auto evalRange = rangeEval(lhs.toRange(), rhs.toRange());
        ASSERT_TRUE(real.within(evalRange)) << "lhs:\n"
                                            << lhs.toRange() << "rhs:\n"
                                            << rhs.toRange() << "expected:\n"
                                            << real << "result:\n"
                                            << evalRange;
    }
}

TEST(IntegerRangeEval, Add) {
    testBinary([](int64_t x, int64_t y) { return x + y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs + rhs; });
}

TEST(IntegerRangeEval, Sub) {
    testBinary([](int64_t x, int64_t y) { return x - y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs - rhs; });
}

TEST(IntegerRangeEval, Mul) {
    testBinary([](int64_t x, int64_t y) { return x * y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs * rhs; }, MatchSigned);
}

TEST(IntegerRangeEval, SDiv) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(y == 0)
                return std::nullopt;
            return x / y;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.sdiv(rhs); }, MatchSigned);
}

TEST(IntegerRangeEval, UDiv) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(y == 0)
                return std::nullopt;
            return static_cast<int64_t>(static_cast<uint32_t>(x) / static_cast<uint32_t>(y));
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.udiv(rhs); }, MatchNone);
}

TEST(IntegerRangeEval, SRem) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(y == 0)
                return std::nullopt;
            return x % y;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.srem(rhs); }, MatchNone);
}

TEST(IntegerRangeEval, URem) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(y == 0)
                return std::nullopt;
            return static_cast<int64_t>(static_cast<uint32_t>(x) % static_cast<uint32_t>(y));
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.urem(rhs); }, MatchNone);
}

TEST(IntegerRangeEval, And) {
    testBinary([](int64_t x, int64_t y) { return x & y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs & rhs; }, MatchBits);

    ASSERT_TRUE((IntegerRange{} & IntegerRange{ 1 }).isNonNegative());
}

TEST(IntegerRangeEval, Or) {
    testBinary([](int64_t x, int64_t y) { return x | y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs | rhs; }, MatchBits);
}

TEST(IntegerRangeEval, Xor) {
    testBinary([](int64_t x, int64_t y) { return x ^ y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs ^ rhs; }, MatchBits);
}

TEST(IntegerRangeEval, Shl) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(0 <= y && y <= 31)
                return x << y;
            return std::nullopt;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.shl(rhs); }, MatchBits);
}

TEST(IntegerRangeEval, LShr) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(0 <= y && y <= 31)
                return static_cast<int64_t>(static_cast<uint32_t>(x) >> static_cast<uint32_t>(y));
            return std::nullopt;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.lshr(rhs); }, MatchBits);
}

TEST(IntegerRangeEval, AShr) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(0 <= y && y <= 31)
                return x >> y;
            return std::nullopt;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.ashr(rhs); }, MatchBits);
}

TEST(IntegerRangeEval, SMax) {
    testBinary([](int64_t x, int64_t y) { return std::max(x, y); },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.smax(rhs); });
}

TEST(IntegerRangeEval, SMin) {
    testBinary([](int64_t x, int64_t y) { return std::min(x, y); },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.smin(rhs); });
}

TEST(IntegerRangeEval, Abs) {
    testUnary([](int64_t x) { return std::abs(x); }, [](const IntegerRange& r) { return r.abs(); });
}

TEST(IntegerRangeEval, Neg) {
    testUnary([](int64_t x) { return -static_cast<int32_t>(x); }, [](const IntegerRange& r) { return r.neg(); });
}

CMMC_NAMESPACE_END
