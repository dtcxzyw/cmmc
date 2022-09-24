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

#define MAKE_VERSION(MAJOR, MINOR, PATCH) #MAJOR "." #MINOR "." #PATCH
#define CMMC_VERSION MAKE_VERSION(0, 1, 0)

#define CMMC_NAMESPACE_BEGIN namespace cmmc {
#define CMMC_NAMESPACE_END }

#define CMMC_UNUSED(VAR) (void)(VAR)

#ifndef __GNUC__
#error "Unsupported compiler"
#endif
