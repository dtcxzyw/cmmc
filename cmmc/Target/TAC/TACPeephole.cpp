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

#include <cmmc/CodeGen/MachineInst.hpp>
#include <cmmc/CodeGen/MachineModule.hpp>
#include <cmmc/CodeGen/Register.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>
#include <variant>

CMMC_NAMESPACE_BEGIN

void TACSubTarget::peepholeOpt(MachineModule& module) const {
    for(auto symbol : module.symbols()) {
        if(auto func = dynamic_cast<MachineFunction*>(symbol)) {
            // TODO: move to helper functions
            std::unordered_map<Register, MachineInst*> uniqueWritter;
            for(auto& block : func->basicblocks)
                for(auto& inst : block->instructions) {
                    const auto reg = inst.getWriteReg();
                    if(reg != invalidReg) {
                        const auto iter = uniqueWritter.find(reg);
                        if(iter == uniqueWritter.cend())
                            uniqueWritter.emplace(reg, &inst);
                        else
                            iter->second = nullptr;
                    }
                }
            {
                std::vector<Register> deferred;
                for(auto& [k, v] : uniqueWritter)
                    if(!v)
                        deferred.emplace_back(k);
                for(auto k : deferred)
                    uniqueWritter.erase(k);
            }

            for(auto& block : func->basicblocks)
                for(auto& inst : block->instructions) {
                    // load/store/copy fusion

                    const auto fuseLoadCopy = [&](uint32_t idx, TACInstAttr fuseLoad, TACInstAttr fuseImm) {
                        if(inst.hasAttr(fuseLoad) || inst.hasAttr(fuseImm))
                            return;

                        const auto reg = inst.getReg(idx);
                        const auto iter = uniqueWritter.find(reg);
                        if(iter == uniqueWritter.cend())
                            return;
                        const auto srcInst = iter->second;
                        const auto instID = srcInst->getInstID<TACInst>();
                        if(instID == TACInst::Load) {
                            const auto& addr = srcInst->getAddr();
                            if(const auto regAddr = std::get_if<RegBase>(&addr.base); regAddr && addr.offset == 0) {
                                inst.setReg(idx, regAddr->reg).addAttr(fuseLoad);
                            }
                        } else if(instID == TACInst::Copy) {
                            if(srcInst->hasAttr(TACInstAttr::WithImm0)) {
                                inst.setImm(idx, srcInst->getImm(0)).addAttr(fuseImm);
                            } else {
                                inst.setReg(idx, srcInst->getReg(0));
                                if(srcInst->hasAttr(TACInstAttr::FuseLoadStore0))
                                    inst.addAttr(fuseLoad);
                            }
                        }
                    };

                    fuseLoadCopy(0, TACInstAttr::FuseLoadStore0, TACInstAttr::WithImm0);
                    fuseLoadCopy(1, TACInstAttr::FuseLoadStore1, TACInstAttr::WithImm1);
                    fuseLoadCopy(2, TACInstAttr::FuseLoadStore2, TACInstAttr::WithImm2);

                    // TODO: fuse store

                    // conditional branch fusion
                    if(inst.getInstID<TACInst>() == TACInst::BranchCompare && inst.hasAttr(TACInstAttr::CmpNotEqual) &&
                       inst.getImm(1) == 0 && inst.hasAttr(TACInstAttr::WithImm1) && !inst.hasAttr(TACInstAttr::WithImm0) &&
                       !inst.hasAttr(TACInstAttr::FloatingPointOp) && !inst.hasAttr(TACInstAttr::FuseLoadStore0)) {
                        // (a op b) != 0 ==> a op b
                        const auto reg = inst.getReg(0);
                        assert(reg != invalidReg);
                        const auto iter = uniqueWritter.find(reg);
                        if(iter != uniqueWritter.cend()) {
                            const auto& srcInst = *iter->second;
                            if(srcInst.getInstID<TACInst>() == TACInst::Compare) {
                                const auto target = inst.getImm(2);
                                inst = srcInst;
                                inst.setInstID(TACInst::BranchCompare);
                                inst.setImm(2, target);
                            }
                        }
                    }
                }
        }
    }
}

void TACSubTarget::postPeepholeOpt(MachineModule& module) const {}

CMMC_NAMESPACE_END
