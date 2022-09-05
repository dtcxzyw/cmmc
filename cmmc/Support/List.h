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

struct ListNode {
    struct ListNode* next;
};

#define LIST_NODE(TYPE) struct ListNode##TYPE*

#define LIST_NODE_DECL(TYPE, STORAGE) \
    struct ListNode##TYPE {           \
        STORAGE value;                \
        struct ListNode node;         \
    };

#define LIST_NEXT(TYPE, NODE) ((TYPE*)((NODE)->node.next))

#define LIST_ADD(NODE)

#define LIST_GET(NODE) (NODE)->value
