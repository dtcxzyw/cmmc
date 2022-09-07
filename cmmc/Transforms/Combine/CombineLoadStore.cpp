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

// char arr[10]; // aligned
// char a = arr[0];
// char b = arr[1];
// char c = arr[2];
// char d = arr[3];
// ==>
// uint32_t val = *reinterpret_cast<uint32_t*>(arr);
// char a = val >> 24;
// char b = (val >> 16) & 255;
// char c = (val >> 8) & 255;
// char d = val & 255;
