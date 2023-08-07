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

#include <cmath>
#include <cmmc/Analysis/DominateAnalysis.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Transforms/Hyperparameters.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>

CMMC_NAMESPACE_BEGIN

class StatelessCache final : public TransformPass<Function> {
    static Function* getLookupLibFunc(Module& mod, const ArrayType* table, const Type* i32) {
        for(auto global : mod.globals()) {
            if(global->getSymbol().prefix() == "cmmcCacheLookup") {
                return global->as<Function>();
            }
        }

        const auto signature =
            make<FunctionType>(PointerType::get(i32), Vector<const Type*>{ PointerType::get(table), i32, i32 });
        const auto func = make<Function>(String::get("cmmcCacheLookup"), signature);
        func->setLinkage(Linkage::Internal);
        func->attr().addAttr(FunctionAttribute::Builtin);
        mod.add(func);
        return func;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& target = analysis.module().getTarget();
        if(!target.isLibCallSupported(mir::CMMCLibCall::cacheLookup))
            return false;
        if(!func.attr().hasAttr(FunctionAttribute::Stateless))
            return false;
        auto hasRecursive = [&] {
            uint32_t count = 0;
            for(auto block : func.blocks())
                for(auto& inst : block->instructions()) {
                    if(inst.getInstID() == InstructionID::Call) {
                        const auto callee = inst.lastOperand();
                        if(callee == &func)
                            ++count;
                        else
                            return false;
                    }
                }
            return count >= 2;
        };
        if(!hasRecursive())
            return false;
        const auto i32 = IntegerType::get(32);
        const auto f32 = FloatingPointType::get(true);
        const auto ret = func.getType()->as<FunctionType>()->getRetType();
        if(!(ret->isSame(i32) || ret->isSame(f32)))
            return false;
        std::vector<FuncArgument*> args;
        for(auto val : func.args())
            if(val->getType()->isSame(i32) || val->getType()->isSame(f32)) {
                if(args.size() >= 2)
                    return false;
                args.push_back(val);
            } else
                return false;
        if(args.empty())
            return false;
        auto& dataLyaout = target.getDataLayout();
        IRBuilder builder{ target };
        Block* evalBlock = nullptr;
        for(auto& inst : func.entryBlock()->instructions()) {
            if(inst.getInstID() != InstructionID::Alloc) {
                evalBlock = splitBlock(func.blocks(), func.blocks().begin(), std::prev(inst.asIterator()));
                break;
            }
        }
        builder.setCurrentBlock(func.entryBlock());
        constexpr uint32_t tableSize = 1021;
        const auto arrayType = make<ArrayType>(i32, tableSize * 4);
        auto lookup = getLookupLibFunc(analysis.module(), arrayType, i32);
        const auto lut = make<GlobalVariable>(String::get("lut_" + std::string(func.getSymbol().prefix())), arrayType,
                                              dataLyaout.getStorageAlignment());
        analysis.module().add(lut);
        std::vector<Value*> argVal;
        argVal.reserve(3);
        argVal.push_back(lut);
        for(auto arg : args) {
            if(arg->getType()->isSame(i32))
                argVal.push_back(arg);
            else
                argVal.push_back(builder.makeOp<CastInst>(InstructionID::Bitcast, i32, arg));
        }
        while(argVal.size() < 3)
            argVal.push_back(ConstantInteger::get(i32, 0));
        const auto ptr = builder.makeOp<FunctionCallInst>(lookup, std::move(argVal));
        Value* valPtr = builder.makeOp<GetElementPtrInst>(ptr, std::vector<Value*>{ ConstantInteger::get(i32, 2) });
        if(!valPtr->getType()->as<PointerType>()->isSame(ret))
            valPtr = builder.makeOp<PtrCastInst>(valPtr, PointerType::get(ret));
        const auto hasValPtr = builder.makeOp<GetElementPtrInst>(ptr, std::vector<Value*>{ ConstantInteger::get(i32, 3) });
        const auto hasVal = builder.makeOp<CompareInst>(InstructionID::ICmp, CompareOp::ICmpNotEqual,
                                                        builder.makeOp<LoadInst>(hasValPtr), ConstantInteger::get(i32, 0));
        const auto earlyExit = builder.addBlock();
        builder.makeOp<BranchInst>(hasVal, 0.9, earlyExit, evalBlock);
        builder.setCurrentBlock(earlyExit);
        builder.makeOp<ReturnInst>(builder.makeOp<LoadInst>(valPtr));

        for(auto block : func.blocks()) {
            if(block == earlyExit)
                continue;
            const auto terminator = block->getTerminator();
            if(terminator->is<ReturnInst>()) {
                const auto retVal = terminator->getOperand(0);
                builder.setInsertPoint(block, terminator);
                builder.makeOp<StoreInst>(hasValPtr, ConstantInteger::get(i32, 1));
                builder.makeOp<StoreInst>(valPtr, retVal);
            }
        }
        fixPhiNode(func.entryBlock(), evalBlock);

        // func.attr() = FunctionAttribute{};
        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "StatelessCache"sv;
    }
};

CMMC_TRANSFORM_PASS(StatelessCache);

CMMC_NAMESPACE_END
