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

#ifdef CMMC_WITH_LLVM_SUPPORT

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/Analysis/CFGAnalysis.hpp>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Conversion/LLVM.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cstdint>
#include <iostream>
#include <llvm/ADT/APInt.h>
#include <llvm/ADT/DenseMap.h>
#include <llvm/ADT/SmallVector.h>
#include <llvm/ADT/StringRef.h>
#include <llvm/Bitcode/BitcodeWriter.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constant.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/GlobalValue.h>
#include <llvm/IR/GlobalVariable.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Intrinsics.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Value.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Support/Alignment.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/FileSystem.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Support/ToolOutputFile.h>
#include <llvm/Support/raw_ostream.h>
#include <system_error>
#include <variant>

CMMC_NAMESPACE_BEGIN

class LLVMConversionContext final {
    llvm::LLVMContext& mContext;
    llvm::Module& mModule;
    llvm::SmallDenseMap<const Type*, llvm::Type*> mTypeMap;

    llvm::Type* getType(const Type* type) {
        if(auto iter = mTypeMap.find(type); iter != mTypeMap.end())
            return iter->second;

        const auto llvmType = [&]() -> llvm::Type* {
            if(type->isVoid()) {
                return llvm::Type::getVoidTy(mContext);
            }
            if(type->isInteger()) {
                return llvm::Type::getIntNTy(mContext, type->as<IntegerType>()->getBitwidth());
            }
            if(type->isFloatingPoint()) {
                return type->getFixedSize() == sizeof(float) ? llvm::Type::getFloatTy(mContext) :
                                                               llvm::Type::getDoubleTy(mContext);
            }
            if(type->isArray()) {
                const auto arrayType = type->as<ArrayType>();
                return llvm::ArrayType::get(getType(arrayType->getElementType()), arrayType->getElementCount());
            }
            if(type->isPointer()) {
                const auto pointer = type->as<PointerType>();
                return llvm::PointerType::get(getType(pointer->getPointee()), 0);
            }
            if(type->isStruct()) {
                const auto structType = type->as<StructType>();
                llvm::SmallVector<llvm::Type*, 4> elements;
                for(auto fields : structType->fields())
                    elements.push_back(getType(fields.type));  // NOTICE: No opaque types

                return llvm::StructType::get(mContext, elements);
            }
            if(type->isFunction()) {
                const auto funcProto = type->as<FunctionType>();
                const auto retType = getType(funcProto->getRetType());
                llvm::SmallVector<llvm::Type*, 4> params;
                for(auto param : funcProto->getArgTypes())
                    params.push_back(getType(param));
                return llvm::FunctionType::get(retType, params, false);
            }
            reportUnreachable(CMMC_LOCATION());
        }();

        mTypeMap.insert({ type, llvmType });
        return llvmType;
    }
    static llvm::StringRef convertStr(const String& str) {
        return str.prefix();
    }
    llvm::Constant* convertConstant(const Value* value) {
        if(value->isUndefined()) {
            return llvm::UndefValue::get(getType(value->getType()));
        }
        if(value->getType()->isInteger()) {
            return llvm::ConstantInt::get(getType(value->getType()),
                                          static_cast<uint64_t>(value->as<ConstantInteger>()->getSignExtended()), true);
        }
        if(value->getType()->isFloatingPoint()) {
            return llvm::ConstantFP::get(getType(value->getType()), value->as<ConstantFloatingPoint>()->getValue());
        }
        if(value->getType()->isArray()) {
            const auto arrayType = value->getType()->as<ArrayType>();
            llvm::SmallVector<llvm::Constant*, 4> elements;
            const auto& values = value->as<ConstantArray>()->values();
            for(auto val : values) {
                elements.push_back(convertConstant(val));
            }
            const auto elementType = getType(arrayType->getElementType());
            while(elements.size() != arrayType->getElementCount()) {
                elements.push_back(llvm::ConstantAggregateZero::get(elementType));
            }
            return llvm::ConstantArray::get(llvm::ArrayType::get(elementType, arrayType->getElementCount()), elements);
        }
        reportUnreachable(CMMC_LOCATION());
    }
    llvm::Value* convertValue(Value* value, const llvm::SmallDenseMap<Value*, llvm::Value*>& valueMap) {
        if(value->isConstant()) {
            return convertConstant(value);
        }
        if(value->isGlobal()) {
            if(value->is<GlobalVariable>()) {
                const auto globalVar = value->as<GlobalVariable>();
                return mModule.getOrInsertGlobal(convertStr(globalVar->getSymbol()),
                                                 getType(value->getType()->as<PointerType>()->getPointee()));
            }
            reportUnreachable(CMMC_LOCATION());
        }
        if(auto ret = valueMap.lookup(value))
            return ret;

        std::cerr << "Invalid value: ";
        value->dump(std::cerr, Noop{});
        reportUnreachable(CMMC_LOCATION());
    }

    llvm::Value* convertInst(llvm::IRBuilder<>& builder, Instruction& inst, const DataLayout& dataLayout,
                             const llvm::SmallDenseMap<Value*, llvm::Value*>& valueMap,
                             const llvm::SmallDenseMap<Block*, llvm::BasicBlock*>& blockMap) {
        const auto getInstType = [&] { return getType(inst.getType()); };
        const auto getOperand = [&](uint32_t idx) {
            const auto value = inst.getOperand(idx);
            return convertValue(value, valueMap);
        };
        switch(inst.getInstID()) {
            case InstructionID::Ret: {
                if(inst.operands().empty())
                    return builder.CreateRetVoid();
                return builder.CreateRet(getOperand(0));
            }
            case InstructionID::Branch: {
                const auto& target = inst.as<BranchInst>()->getTrueTarget();
                return builder.CreateBr(blockMap.lookup(target));
            }
            case InstructionID::ConditionalBranch: {
                const auto branch = inst.as<BranchInst>();
                const auto trueTarget = branch->getTrueTarget();
                const auto falseTarget = branch->getFalseTarget();
                if(trueTarget == falseTarget)
                    return builder.CreateBr(blockMap.lookup(trueTarget));
                return builder.CreateCondBr(getOperand(0), blockMap.lookup(trueTarget), blockMap.lookup(falseTarget));
            }
            case InstructionID::Unreachable: {
                builder.CreateIntrinsic(llvm::Intrinsic::trap, {}, {});
                return builder.CreateUnreachable();
            }
            case InstructionID::Load:
                return builder.CreateAlignedLoad(getType(inst.getType()), getOperand(0),
                                                 llvm::MaybeAlign{ inst.getType()->getAlignment(dataLayout) });
            case InstructionID::Store:
                return builder.CreateAlignedStore(getOperand(1), getOperand(0),
                                                  llvm::MaybeAlign{ inst.getOperand(1)->getType()->getAlignment(dataLayout) });
            case InstructionID::Add:
                return builder.CreateAdd(getOperand(0), getOperand(1));
            case InstructionID::Sub:
                return builder.CreateSub(getOperand(0), getOperand(1));
            case InstructionID::Mul:
                return builder.CreateMul(getOperand(0), getOperand(1));
            case InstructionID::SDiv:
                return builder.CreateSDiv(getOperand(0), getOperand(1));
            case InstructionID::UDiv:
                return builder.CreateUDiv(getOperand(0), getOperand(1));
            case InstructionID::SRem:
                return builder.CreateSRem(getOperand(0), getOperand(1));
            case InstructionID::URem:
                return builder.CreateURem(getOperand(0), getOperand(1));
            case InstructionID::Neg:
                return builder.CreateNeg(getOperand(0));
            case InstructionID::Abs:
                return builder.CreateBinaryIntrinsic(llvm::Intrinsic::abs, getOperand(0), builder.getFalse());
            case InstructionID::And:
                return builder.CreateAnd(getOperand(0), getOperand(1));
            case InstructionID::Or:
                return builder.CreateOr(getOperand(0), getOperand(1));
            case InstructionID::Xor:
                return builder.CreateXor(getOperand(0), getOperand(1));
            case InstructionID::Shl:
                return builder.CreateShl(getOperand(0), getOperand(1));
            case InstructionID::LShr:
                return builder.CreateLShr(getOperand(0), getOperand(1));
            case InstructionID::AShr:
                return builder.CreateAShr(getOperand(0), getOperand(1));
            case InstructionID::SMin:
                return builder.CreateBinaryIntrinsic(llvm::Intrinsic::smin, getOperand(0), getOperand(1));
            case InstructionID::SMax:
                return builder.CreateBinaryIntrinsic(llvm::Intrinsic::smax, getOperand(0), getOperand(1));
            case InstructionID::FAdd:
                return builder.CreateFAdd(getOperand(0), getOperand(1));
            case InstructionID::FSub:
                return builder.CreateFSub(getOperand(0), getOperand(1));
            case InstructionID::FMul:
                return builder.CreateFMul(getOperand(0), getOperand(1));
            case InstructionID::FDiv:
                return builder.CreateFDiv(getOperand(0), getOperand(1));
            case InstructionID::FNeg:
                return builder.CreateFNeg(getOperand(0));
            case InstructionID::FFma: {
                const auto type = getType(inst.getType());
                return builder.CreateIntrinsic(llvm::Intrinsic::fma, { type, type, type },
                                               { getOperand(0), getOperand(1), getOperand(2) });
            }
            case InstructionID::ICmp: {
                const auto getPred = [](CompareOp op) {
                    switch(op) {
                        case CompareOp::ICmpEqual:
                            return llvm::CmpInst::ICMP_EQ;
                        case CompareOp::ICmpNotEqual:
                            return llvm::CmpInst::ICMP_NE;
                        case CompareOp::ICmpSignedLessThan:
                            return llvm::CmpInst::ICMP_SLT;
                        case CompareOp::ICmpSignedLessEqual:
                            return llvm::CmpInst::ICMP_SLE;
                        case CompareOp::ICmpSignedGreaterThan:
                            return llvm::CmpInst::ICMP_SGT;
                        case CompareOp::ICmpSignedGreaterEqual:
                            return llvm::CmpInst::ICMP_SGE;
                        case CompareOp::ICmpUnsignedLessThan:
                            return llvm::CmpInst::ICMP_ULT;
                        case CompareOp::ICmpUnsignedLessEqual:
                            return llvm::CmpInst::ICMP_ULE;
                        case CompareOp::ICmpUnsignedGreaterThan:
                            return llvm::CmpInst::ICMP_UGT;
                        case CompareOp::ICmpUnsignedGreaterEqual:
                            return llvm::CmpInst::ICMP_UGE;
                        default:
                            reportUnreachable(CMMC_LOCATION());
                    }
                };

                return builder.CreateICmp(getPred(inst.as<CompareInst>()->getOp()), getOperand(0), getOperand(1));
            }
            case InstructionID::FCmp: {
                const auto getPred = [](CompareOp op) {
                    switch(op) {
                        case CompareOp::FCmpOrderedEqual:
                            return llvm::CmpInst::FCMP_OEQ;
                        case CompareOp::FCmpOrderedNotEqual:
                            return llvm::CmpInst::FCMP_ONE;
                        case CompareOp::FCmpOrderedLessThan:
                            return llvm::CmpInst::FCMP_OLT;
                        case CompareOp::FCmpOrderedLessEqual:
                            return llvm::CmpInst::FCMP_OLE;
                        case CompareOp::FCmpOrderedGreaterThan:
                            return llvm::CmpInst::FCMP_OGT;
                        case CompareOp::FCmpOrderedGreaterEqual:
                            return llvm::CmpInst::FCMP_OGE;
                        case CompareOp::FCmpUnorderedEqual:
                            return llvm::CmpInst::FCMP_UEQ;
                        case CompareOp::FCmpUnorderedNotEqual:
                            return llvm::CmpInst::FCMP_UNE;
                        case CompareOp::FCmpUnorderedLessThan:
                            return llvm::CmpInst::FCMP_ULT;
                        case CompareOp::FCmpUnorderedLessEqual:
                            return llvm::CmpInst::FCMP_ULE;
                        case CompareOp::FCmpUnorderedGreaterThan:
                            return llvm::CmpInst::FCMP_UGT;
                        case CompareOp::FCmpUnorderedGreaterEqual:
                            return llvm::CmpInst::FCMP_UGE;
                        default:
                            reportUnreachable(CMMC_LOCATION());
                    }
                };
                return builder.CreateFCmp(getPred(inst.as<CompareInst>()->getOp()), getOperand(0), getOperand(1));
            }
            case InstructionID::SExt:
                return builder.CreateSExt(getOperand(0), getInstType());
            case InstructionID::ZExt:
                return builder.CreateZExt(getOperand(0), getInstType());
            case InstructionID::UnsignedTrunc:
                [[fallthrough]];
            case InstructionID::SignedTrunc:
                return builder.CreateTrunc(getOperand(0), getInstType());
            case InstructionID::Bitcast:
                return builder.CreateBitCast(getOperand(0), getInstType());
            case InstructionID::F2U:
                return builder.CreateFPToUI(getOperand(0), getInstType());
            case InstructionID::F2S:
                return builder.CreateFPToSI(getOperand(0), getInstType());
            case InstructionID::U2F:
                return builder.CreateUIToFP(getOperand(0), getInstType());
            case InstructionID::S2F:
                return builder.CreateSIToFP(getOperand(0), getInstType());
            case InstructionID::FCast:
                return builder.CreateFPCast(getOperand(0), getInstType());
            case InstructionID::Alloc: {
                const auto pointee = inst.getType()->as<PointerType>()->getPointee();
                const auto alloca = builder.CreateAlloca(getType(pointee));
                return alloca;
            }
            case InstructionID::GetElementPtr: {
                const auto& operands = inst.operands();
                llvm::SmallVector<llvm::Value*, 4> indices;
                llvm::Value* ptr = nullptr;
                for(uint32_t idx = 0; idx < operands.size(); ++idx) {
                    if(idx + 1 == operands.size()) {
                        ptr = getOperand(idx);
                    } else
                        indices.push_back(getOperand(idx));
                }
                const auto destTy = getType(operands.back()->getType()->as<PointerType>()->getPointee());
                return builder.CreateInBoundsGEP(destTy, ptr, indices);
            }
            case InstructionID::PtrCast:
                return builder.CreatePointerCast(getOperand(0), getInstType());
            case InstructionID::PtrToInt:
                return builder.CreatePtrToInt(getOperand(0), getInstType());
            case InstructionID::IntToPtr:
                return builder.CreateIntToPtr(getOperand(0), getInstType());
            case InstructionID::Select:
                return builder.CreateSelect(getOperand(0), getOperand(1), getOperand(2));
            case InstructionID::Call: {
                const auto callee = inst.lastOperand()->as<Function>();

                switch(callee->getIntrinsic()) {
                    case Intrinsic::none: {
                        auto func = mModule.getOrInsertFunction(convertStr(callee->getSymbol()),
                                                                llvm::dyn_cast<llvm::FunctionType>(getType(callee->getType())));

                        llvm::SmallVector<llvm::Value*, 4> args;
                        for(uint32_t idx = 0; idx + 1 < inst.operands().size(); ++idx) {
                            args.push_back(getOperand(idx));
                        }

                        const auto call = builder.CreateCall(func, args);
                        call->setTailCall();
                        return call;
                    }
                    case Intrinsic::memset:
                        return builder.CreateMemSet(
                            getOperand(0), builder.getInt8(0),
                            builder.CreateMul(
                                getOperand(1),
                                llvm::ConstantInt::get(
                                    builder.getInt64Ty(),
                                    static_cast<uint64_t>(
                                        inst.getOperand(0)->getType()->as<PointerType>()->getPointee()->getFixedSize()))),
                            llvm::MaybeAlign{
                                inst.getOperand(0)->getType()->as<PointerType>()->getPointee()->getAlignment(dataLayout) });
                    case Intrinsic::memcpy:
                        return builder.CreateMemCpy(
                            getOperand(0),
                            llvm::MaybeAlign{
                                inst.getOperand(0)->getType()->as<PointerType>()->getPointee()->getAlignment(dataLayout) },
                            getOperand(1),
                            llvm::MaybeAlign{
                                inst.getOperand(1)->getType()->as<PointerType>()->getPointee()->getAlignment(dataLayout) },
                            getOperand(2));
                    default:
                        reportNotImplemented(CMMC_LOCATION());
                }
            }
            case InstructionID::Phi: {
                return builder.CreatePHI(getInstType(), inst.as<PhiInst>()->incomings().size());
            }
            default:
                reportNotImplemented(CMMC_LOCATION());
        }
    }

    llvm::GlobalValue* convertFunc(Function& func, AnalysisPassManager& analysis) {
        auto callee = mModule.getOrInsertFunction(convertStr(func.getSymbol()),
                                                  llvm::dyn_cast<llvm::FunctionType>(getType(func.getType())));

        const auto llvmFunc = llvm::dyn_cast<llvm::Function>(callee.getCallee());
        if(func.blocks().empty())
            return llvmFunc;

        analysis.invalidateFunc(func);
        const auto& dom = analysis.get<DominateAnalysis>(func);

        llvm::SmallDenseMap<Block*, llvm::BasicBlock*> blockMap;
        for(auto block : dom.blocks()) {
            const auto llvmBlock = llvm::BasicBlock::Create(mContext, convertStr(block->getLabel()), llvmFunc);
            blockMap.insert({ block, llvmBlock });
        }

        llvm::SmallDenseMap<Value*, llvm::Value*> valueMap;
        const auto& dataLayout = analysis.module().getTarget().getDataLayout();

        {
            uint32_t idx = 0;
            for(auto arg : func.args()) {
                valueMap.insert({ arg, llvmFunc->getArg(idx) });
                ++idx;
            }
        }

        for(auto block : dom.blocks()) {
            const auto llvmBlock = blockMap.lookup(block);

            llvm::IRBuilder<> builder{ llvmBlock };
            for(auto& inst : block->instructions()) {
                const auto val = convertInst(builder, inst, dataLayout, valueMap, blockMap);
                if(inst.canbeOperand())
                    valueMap.insert({ &inst, val });
            }
        }

        // fix phi nodes
        for(auto block : dom.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() == InstructionID::Phi) {
                    const auto phi = inst.as<PhiInst>();
                    const auto phiNode = llvm::dyn_cast<llvm::PHINode>(valueMap.lookup(phi));
                    for(auto [srcBlock, val] : phi->incomings()) {
                        if(dom.reachable(srcBlock)) {
                            auto value = val->value;
                            phiNode->addIncoming(value->isInstruction() ? valueMap.lookup(value) : convertValue(value, valueMap),
                                                 blockMap.lookup(srcBlock));
                        }
                    }
                } else
                    break;
            }
        }

        return llvmFunc;
    }
    llvm::GlobalValue* convertGlobalVar(GlobalVariable& globalVar) {
        const auto type = getType(globalVar.getType()->as<PointerType>()->getPointee());
        const auto global =
            llvm::dyn_cast<llvm::GlobalVariable>(mModule.getOrInsertGlobal(convertStr(globalVar.getSymbol()), type));
        if(const auto initValue = globalVar.initialValue()) {
            global->setInitializer(convertConstant(initValue));
        } else
            global->setInitializer(llvm::ConstantAggregateZero::get(type));
        global->setAlignment(llvm::MaybeAlign{ mModule.getDataLayout().getPrefTypeAlignment(type) });
        return global;
    }

public:
    LLVMConversionContext(llvm::LLVMContext& ctx, llvm::Module& module) : mContext{ ctx }, mModule{ module } {}
    void convert(Module& module) {
        AnalysisPassManager analysis{ &module };

        for(auto global : module.globals()) {
            llvm::GlobalValue* gv;
            if(global->isFunction()) {
                gv = convertFunc(*global->as<Function>(), analysis);
            } else {
                gv = convertGlobalVar(*global->as<GlobalVariable>());
            }
            if(global->getLinkage() == Linkage::Internal && !(global->isFunction() && global->as<Function>()->blocks().empty()))
                gv->setLinkage(llvm::GlobalValue::InternalLinkage);
        }
    }
};

void llvmTranslate(Module& module, llvm::Module& llvmMod) {
    LLVMConversionContext conversionContext{ llvmMod.getContext(), llvmMod };
    conversionContext.convert(module);
}

void llvmCodeGen(Module& module, const std::string& srcPath, const std::string& output) {
    llvm::InitializeAllTargets();
    llvm::InitializeAllAsmPrinters();

    llvm::LLVMContext context;
    llvm::Module llvmMod{ "CMMC IR Module", context };
    llvmMod.setSourceFileName(srcPath);
    llvmTranslate(module, llvmMod);

    std::error_code ec;
    llvm::ToolOutputFile file{ output, ec, llvm::sys::fs::OF_Text };

    if(output.size() >= 3 && output.substr(output.size() - 3) == ".bc") {
        llvm::WriteBitcodeToFile(llvmMod, file.os());
    } else
        llvmMod.print(file.os(), nullptr);

    if(llvm::verifyModule(llvmMod, &llvm::errs())) {
        llvmMod.print(llvm::errs(), nullptr);
        llvm::errs().flush();
        DiagnosticsContext::get().attach<ModuleAttachment>("cmmc IR", &module).reportFatal();
    } else
        file.keep();
}

CMMC_NAMESPACE_END
#endif
