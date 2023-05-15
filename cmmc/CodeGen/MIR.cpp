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

#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstdint>

CMMC_MIR_NAMESPACE_BEGIN

bool MIRBasicBlock::verify(std::ostream& out, const CodeGenContext& ctx) const {
    if(ctx.requireOneTerminator) {
        if(mInsts.empty())
            return false;
        if(!(ctx.instInfo.getInstInfo(mInsts.back().opcode()).getInstFlag() & InstFlagTerminator))
            return false;
        for(auto& inst : mInsts) {
            if(&inst != &mInsts.back() && (ctx.instInfo.getInstInfo(inst.opcode()).getInstFlag() & InstFlagTerminator)) {
                return false;
            }
        }
    }
    for(auto& inst : mInsts) {
        auto& info = ctx.instInfo.getInstInfo(inst.opcode());
        if(!info.verify(out, inst)) {
            out << "Invalid inst: ";
            info.print(out, inst);
            out << '\n';
            return false;
        }
    }
    return true;
}
void MIRBasicBlock::dump(std::ostream& out, const CodeGenContext& ctx) const {
    dumpAsTarget(out);
    out << ":\n";
    for(auto& inst : mInsts) {
        out << '\t';
        ctx.instInfo.getInstInfo(inst.opcode()).print(out, inst);
        out << '\n';
    }
}
void MIRFunction::dump(std::ostream& out, const CodeGenContext& ctx) const {
    dumpAsTarget(out);
    out << ":\nstack objects: ";
    uint32_t idx = 0;
    for(auto& obj : mStackObjects) {
        out << 's' << idx << " size = " << obj.size << " align = " << obj.alignment << " offset = " << obj.offset
            << (obj.fixed ? "(fixed)" : "") << '\n';
        ++idx;
    }
    out << '\n';
    for(auto& block : mBlocks) {
        block->dump(out, ctx);
    }
}
bool MIRFunction::verify(std::ostream& out, const CodeGenContext& ctx) const {
    for(auto& block : mBlocks)
        if(!block->verify(out, ctx)) {
            out << "Invalid block: ";
            block->dumpAsTarget(out);
            out << '\n';
            return false;
        }
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

MIROperand MIRFunction::addStackObject(uint32_t size, uint32_t alignment, OperandType ptrType) {
    const auto idx = static_cast<uint32_t>(mStackObjects.size());
    mStackObjects.push_back(StackObject{ size, alignment, 0, false });
    return MIROperand{ idx + stackObjectBegin, ptrType };
}

StackObject& MIRFunction::getStackObject(uint32_t idx) {
    assert(isStackObject(idx));
    return mStackObjects[idx ^ stackObjectBegin];
}

void MIRRelocable::dumpAsTarget(std::ostream& out) const {
    out << mSymbol;
}

CMMC_MIR_NAMESPACE_END
