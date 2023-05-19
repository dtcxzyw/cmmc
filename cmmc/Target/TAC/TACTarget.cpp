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

// Three-Address Code

#include <TAC/ISelInfoDecl.hpp>
#include <TAC/InstInfoDecl.hpp>
#include <TAC/ScheduleModelDecl.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <memory>

CMMC_MIR_NAMESPACE_BEGIN

extern StringOpt targetMachine;  // NOLINT

class TACDataLayout final : public DataLayout {
public:
    [[nodiscard]] Endian getEndian() const noexcept override {
        return Endian::Little;
    }
    size_t getBuiltinAlignment(const Type* type) const noexcept override {
        assert(type->isPrimitive());
        if(type->isPointer())
            return getPointerSize();
        return type->getFixedSize();
    }
    [[nodiscard]] size_t getPointerSize() const noexcept override {
        return 4;
    }
    [[nodiscard]] size_t getCodeAlignment() const noexcept override {
        return 0;
    }
};

class TACTarget final : public Target {
    TACDataLayout mDataLayout;

public:
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    void emitPrologue(LoweringContext& ctx, MIRFunction& mfunc) const override {
        CMMC_UNUSED(ctx);
        CMMC_UNUSED(mfunc);
    }
    [[nodiscard]] const TargetScheduleModel& getScheduleModel() const noexcept override {
        return TAC::getTACScheduleModel();
    }
    [[nodiscard]] const TargetInstInfo& getInstInfo() const noexcept override {
        return TAC::getTACInstInfo();
    }
    [[nodiscard]] const TargetISelInfo& getISelInfo() const noexcept override {
        return TAC::getTACISelInfo();
    }
    bool builtinRA(MIRFunction& mfunc, CodeGenContext& ctx) const override {
        CMMC_UNUSED(mfunc);
        CMMC_UNUSED(ctx);
        return true;
    }
    bool builtinSA(MIRFunction& mfunc, CodeGenContext& ctx) const override {
        CMMC_UNUSED(mfunc);
        CMMC_UNUSED(ctx);
        return true;
    }
    void emitAssembly(const MIRModule& module, std::ostream& out) const override;
    [[nodiscard]] bool isNativeSupported(InstructionID inst) const noexcept override {
        switch(inst) {
            case InstructionID::UDiv:
                [[fallthrough]];
            case InstructionID::URem:
                [[fallthrough]];
            case InstructionID::Neg:
                [[fallthrough]];
            case InstructionID::And:
                [[fallthrough]];
            case InstructionID::Or:
                [[fallthrough]];
            case InstructionID::Xor:
                [[fallthrough]];
            case InstructionID::Shl:
                [[fallthrough]];
            case InstructionID::LShr:
                [[fallthrough]];
            case InstructionID::AShr:
                [[fallthrough]];
            case InstructionID::FAdd:
                [[fallthrough]];
            case InstructionID::FSub:
                [[fallthrough]];
            case InstructionID::FMul:
                [[fallthrough]];
            case InstructionID::FDiv:
                [[fallthrough]];
            case InstructionID::FNeg:
                [[fallthrough]];
            case InstructionID::FFma:
                [[fallthrough]];
            case InstructionID::SExt:
                [[fallthrough]];
            case InstructionID::ZExt:
                [[fallthrough]];
            case InstructionID::Trunc:
                [[fallthrough]];
            case InstructionID::Bitcast:
                [[fallthrough]];
            case InstructionID::F2U:
                [[fallthrough]];
            case InstructionID::F2S:
                [[fallthrough]];
            case InstructionID::U2F:
                [[fallthrough]];
            case InstructionID::S2F:
                [[fallthrough]];
            case InstructionID::FCast:
                [[fallthrough]];
            case InstructionID::Select:
                [[fallthrough]];
            case InstructionID::SCmp:
                [[fallthrough]];
            case InstructionID::UCmp:
                [[fallthrough]];
            case InstructionID::FCmp:
                return false;
            default:
                return true;
        }
    }
};

CMMC_TARGET("tac", TACTarget);

void TACTarget::emitAssembly(const MIRModule& module, std::ostream& out) const {
    auto label = String::get("label");

    for(auto& global : module.globals()) {
        if(!global->reloc->isFunc())
            reportUnreachable(CMMC_LOCATION());
        auto& mfunc = dynamic_cast<MIRFunction&>(*global->reloc);
        // runtime func
        if(mfunc.blocks().empty())
            continue;
        out << "FUNCTION "sv << mfunc.symbol() << " :\n"sv;
        {
            auto& params = mfunc.args();
            for(auto& param : params) {
                out << "PARAM v"sv << (param.reg() ^ virtualRegBegin) << '\n';
            }
        }
        {
            auto& stackObjects = mfunc.stackObjects();
            for(auto& [ref, stackObject] : stackObjects) {
                out << "DEC x"sv << (ref.reg() ^ stackObjectBegin) << ' ' << stackObject.size << '\n';
            }

            for(auto& block : mfunc.blocks()) {
                if(&block != &mfunc.blocks().front()) {
                    out << "LABEL "sv << label.withID(block->symbol().id()) << " :\n"sv;
                }

                for(auto& inst : block->instructions()) {
                    auto& instInfo = getInstInfo().getInstInfo(inst.opcode());
                    instInfo.print(out, inst, false);
                    out << '\n';
                }
            }
        }
    }
}

CMMC_MIR_NAMESPACE_END
