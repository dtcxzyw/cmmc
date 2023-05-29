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

#include <algorithm>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <variant>

CMMC_NAMESPACE_BEGIN

class ConstexprFuncEval final : public TransformPass<Function> {
    static bool isConstexprFunc(Function& func) {
        const auto& attr = func.attr();
        if(!(attr.hasAttr(FunctionAttribute::NoMemoryRead) && attr.hasAttr(FunctionAttribute::NoMemoryWrite) &&
             attr.hasAttr(FunctionAttribute::NoSideEffect) && attr.hasAttr(FunctionAttribute::Stateless) &&
             !attr.hasAttr(FunctionAttribute::NoReturn))) {
            return false;
        }

        const auto funcProto = func.getType()->as<FunctionType>();
        const auto isSupportedType = [](const Type* type) {
            return type->isInteger() || type->isVoid() || type->isFloatingPoint();
        };
        for(auto arg : funcProto->getArgTypes())
            if(!isSupportedType(arg))
                return false;
        return isSupportedType(funcProto->getRetType());
    }

    static ConstantValue* eval(Module& module, Function& func, const std::vector<ConstantValue*>& args) {
        Interpreter interpreter{ 100'000'000, 1048576, 256, false };
        const auto res = interpreter.execute(module, func, args, nullptr);
        if(std::holds_alternative<ConstantValue*>(res))
            return std::get<ConstantValue*>(res);
        return nullptr;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        auto& module = analysis.module();
        if(isConstexprFunc(func) && func.args().empty() &&
           !(func.blocks().size() == 1 && func.entryBlock()->instructions().size() == 1)) {
            const auto res = eval(module, func, {});
            if(!res)
                return false;
            func.blocks().clear();
            IRBuilder builder{ analysis.module().getTarget() };
            builder.setCurrentFunction(&func);
            const auto entry = builder.addBlock();
            builder.setCurrentBlock(entry);
            builder.makeOp<ReturnInst>(res);
            return true;
        }
        ReplaceMap replaceMap;
        for(auto block : func.blocks()) {
            for(auto& inst : block->instructions()) {
                if(inst.getInstID() != InstructionID::Call)
                    continue;
                const auto callee = inst.operands().back();
                if(!callee->is<Function>())
                    continue;
                const auto calleeFunc = callee->as<Function>();
                if(!isConstexprFunc(*calleeFunc))
                    continue;
                bool hasConstantArgs = true;
                std::vector<ConstantValue*> args;
                for(auto arg : inst.arguments()) {
                    if(!arg->isConstant()) {
                        hasConstantArgs = false;
                        break;
                    }
                    args.push_back(arg->as<ConstantValue>());
                }
                if(!hasConstantArgs)
                    continue;

                const auto res = eval(module, *calleeFunc, args);
                if(res) {
                    replaceMap.emplace(&inst, res);
                }
            }
        }
        return replaceOperands(func, replaceMap);
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "ConstexprFuncEval"sv;
    }
};

CMMC_TRANSFORM_PASS(ConstexprFuncEval);

CMMC_NAMESPACE_END
