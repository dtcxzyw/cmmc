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

#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Dispatch.hpp>

CMMC_MIR_NAMESPACE_BEGIN

bool MIRBasicBlock::verify(std::ostream& out, const CodeGenContext& ctx) const {
    if(ctx.requireOneTerminator) {
        uint32_t count = 0;
        for(auto& inst : mInsts) {
            if(ctx.instInfo.getInstInfo(inst.opcode()).getInstFlag() & InstFlagTerminator) {
                ++count;
                if(count > 1)
                    break;
            }
        }
        if(count != 1) {
            return false;
        }
    }
    for(auto& inst : mInsts)
        if(!ctx.instInfo.getInstInfo(inst.opcode()).verify(out, inst))
            return false;
    return true;
}
void MIRBasicBlock::dump(std::ostream& out, const CodeGenContext& ctx) const {
    for(auto& inst : mInsts) {
        ctx.instInfo.getInstInfo(inst.opcode()).print(out, inst);
        out << '\n';
    }
}
void MIRFunction::dump(std::ostream& out, const CodeGenContext& ctx) const {
    for(auto& block : mBlocks) {
        block->dump(out, ctx);
    }
}
bool MIRFunction::verify(std::ostream& out, const CodeGenContext& ctx) const {
    for(auto& block : mBlocks)
        if(!block->verify(out, ctx))
            return false;
    return true;
}
bool MIRZeroStorage::verify(std::ostream&, const CodeGenContext&) const {
    return true;
}
void MIRZeroStorage::dump(std::ostream& out, const CodeGenContext&) const {
    out << "\t.zero\t" << mSize << '\n';
}
bool MIRDataStorage::verify(std::ostream&, const CodeGenContext&) const {
    return true;
}
void MIRDataStorage::dump(std::ostream& out, const CodeGenContext&) const {
    for(const auto& val : mData)
        std::visit(Overload{ [&](const uint32_t word) { out << "\t.word\t" << word << '\n'; },
                             [&](const size_t size) { out << "\t.zero\t" << size << '\n'; },
                             [&](const std::byte byte) { out << "\t.byte\t" << static_cast<uint32_t>(byte) << '\n'; } },
                   val);
}

CMMC_MIR_NAMESPACE_END
