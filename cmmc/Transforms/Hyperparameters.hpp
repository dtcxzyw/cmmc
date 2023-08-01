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
#include <cmmc/Config.hpp>

CMMC_NAMESPACE_BEGIN

// constants for heuristics
constexpr double defaultIfThenProb = 0.5;
constexpr double defaultShortCircuitProb = 0.5;
constexpr double defaultSelectProb = 0.5;
constexpr uint32_t estimatedLoopTripCount = 64U;
constexpr double defaultLoopProb =
    static_cast<double>(estimatedLoopTripCount) / (static_cast<double>(estimatedLoopTripCount) + 1.0);
constexpr double coldBlockThreshold = 0.05;
constexpr double primaryPathThreshold = 8.0;
constexpr double significantBlockTripCountDifference = 0.05;
constexpr intmax_t maxStep = 65536;

CMMC_NAMESPACE_END
