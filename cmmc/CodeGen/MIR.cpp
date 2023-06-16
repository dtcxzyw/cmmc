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
#include <cmmc/Support/StaticReflection.hpp>
#include <cstdint>
#include <optional>

CMMC_MIR_NAMESPACE_BEGIN

bool MIRBasicBlock::verify(std::ostream& out, const CodeGenContext& ctx) const {
    if(ctx.flags.endsWithTerminator) {
        if(mInsts.empty())
            return false;
        if(!requireFlag(ctx.instInfo.getInstInfo(mInsts.back()).getInstFlag(), InstFlagTerminator))
            return false;
        for(auto& inst : mInsts) {
            if(&inst != &mInsts.back() && requireFlag(ctx.instInfo.getInstInfo(inst).getInstFlag(), InstFlagTerminator)) {
                return false;
            }
        }
    }
    for(auto& inst : mInsts) {
        auto& info = ctx.instInfo.getInstInfo(inst);
        if(!info.verify(inst, ctx)) {
            out << "Invalid inst: [" << info.getUniqueName() << "]: ";
            info.print(out, inst, true);
            if(!inst.checkOperandCount(info.getOperandNum())) {
                out << " Operand count mismatch\n";
            }
            out << '\n';
            return false;
        }
    }
    return true;
}
void MIRBasicBlock::dump(std::ostream& out, const CodeGenContext& ctx) const {
    out << "  ";
    dumpAsTarget(out);
    out << ":\n";
    for(auto& inst : mInsts) {
        out << '\t';
        ctx.instInfo.getInstInfo(inst).print(out, inst, true);
        out << '\n';
    }
}
void MIRFunction::dump(std::ostream& out, const CodeGenContext& ctx) const {
    dumpAsTarget(out);
    out << ":\nstack objects:\n";
    uint32_t idx = 0;
    for(auto& [ref, obj] : mStackObjects) {
        out << "  s" << (ref.reg() ^ stackObjectBegin) << " size = " << obj.size << " align = " << obj.alignment
            << " offset = " << obj.offset << " usage = " << enumName(obj.usage) << '\n';
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
    // TODO: check vreg use-def chain
    return true;
}
bool MIRZeroStorage::verify(std::ostream&, const CodeGenContext&) const {
    return true;
}
void MIRZeroStorage::dump(std::ostream& out, const CodeGenContext&) const {
    out << "\t.zero\t" << mSize << '\n';
}
uint32_t MIRDataStorage::appendWord(uint32_t val) {
    const auto idx = static_cast<uint32_t>(mData.size());
    mData.push_back(val);
    return idx;
}
bool MIRDataStorage::verify(std::ostream&, const CodeGenContext&) const {
    return true;
}
void MIRDataStorage::dump(std::ostream& out, const CodeGenContext&) const {
    for(const auto& val : mData)
        std::visit(Overload{ [&](const uint32_t word) { out << "\t.4byte\t" << word << '\n'; },
                             [&](const size_t size) { out << "\t.zero\t" << size << '\n'; },
                             [&](const std::byte byte) { out << "\t.byte\t" << static_cast<uint32_t>(byte) << '\n'; } },
                   val);
}

MIROperand MIRFunction::addStackObject(CodeGenContext& ctx, uint32_t size, uint32_t alignment, int32_t offset,
                                       StackObjectUsage usage) {
    assert(alignment != 0);
    auto ref = MIROperand::asStackObject(ctx.nextId(), OperandType::Special);
    mStackObjects.emplace(ref, StackObject{ size, alignment, offset, usage });
    return ref;
}

void MIRRelocable::dumpAsTarget(std::ostream& out) const {
    out << mSymbol;
}

CMMC_MIR_NAMESPACE_END
