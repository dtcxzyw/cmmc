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

#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <queue>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

void schedule(MachineFunction& func, const Target& target) {
    std::unordered_map<Register, std::vector<MachineInst*>> writers;
    std::unordered_set<Register> used;
    std::unordered_set<MachineInst*> usedInst;
    std::queue<MachineInst*> q;

    auto& instInfo = target.getTargetInstInfo();

    for(auto block : func.basicblocks) {
        for(auto& inst : block->instructions) {
            if(instInfo.hasSideEffect(inst))
                q.push(&inst);

            if(const auto reg = inst.getWriteReg(); reg != invalidReg)
                writers[reg].push_back(&inst);
        }
    }

    while(!q.empty()) {
        const auto inst = q.front();
        usedInst.insert(inst);
        q.pop();

        const auto addRef = [&](Register reg) {
            if(used.insert(reg).second) {
                assert(writers.count(reg));
                for(auto writer : writers[reg])
                    q.push(writer);
            }
        };

        for(uint32_t idx = 0; idx < MachineInst::regSize; ++idx) {
            if(const auto reg = inst->getReg(idx); reg != invalidReg) {
                addRef(reg);
            }
        }

        const auto& addr = inst->getAddr();
        if(auto regAddr = std::get_if<RegBase>(&addr.base))
            addRef(regAddr->reg);
    }

    for(auto block : func.basicblocks) {
        auto& insts = block->instructions;
        std::vector<uint32_t> deferred;
        for(uint32_t idx = 0; idx < insts.size(); ++idx) {
            auto& inst = insts[idx];
            if(!usedInst.count(&inst)) {
                deferred.push_back(idx);
            }
        }

        for(auto iter = deferred.rbegin(); iter != deferred.rend(); ++iter)
            insts.erase(insts.cbegin() + *iter);
    }

    // TODO: schedule by port utilization estimation
}

CMMC_NAMESPACE_END
