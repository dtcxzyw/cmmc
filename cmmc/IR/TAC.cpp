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

#include <cmmc/IR/Block.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/IRBuilder.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/TAC.hpp>
#include <cmmc/IR/TACImpl.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <cstdint>
#include <fstream>
#include <unordered_map>
#include <variant>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct UndefinedTACIdentifier final {
    String identifier;
    friend void operator<<(std::ostream& out, const UndefinedTACIdentifier& err) {
        out << "Undefined identifier \""sv << err.identifier << '"' << std::endl;
    }
};

void loadTAC(Module& module, const std::string& path) {
    const auto i32 = IntegerType::get(32);
    const auto i32ptr = PointerType::get(i32);
    const auto read = make<Function>(String::get("read"), make<FunctionType>(i32, Vector<const Type*>{}));
    read->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);
    const auto write = make<Function>(String::get("write"), make<FunctionType>(VoidType::get(), Vector<const Type*>{ i32 }));
    write->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);
    module.add(read);
    module.add(write);

    std::ifstream in{ path };
    if(!in.is_open()) {
        DiagnosticsContext::get().attach<Reason>("invalid path").reportFatal();
    }

    const auto seq = readTACSeq(in);

    IRBuilder builder;
    std::unordered_map<String, Function*, StringHasher> callables;

    std::unordered_map<String, Value*, StringHasher> identifierMap;
    std::unordered_map<int, Block*> blockMap;
    Vector<Value*> paramStack;
    std::vector<std::tuple<const TACInstStorage*, Block*, Block*>> postTerminator;

    auto getLValue = [&](const TACOperand& operand, bool required) -> Value* {
        if(operand.kind == TACOperandType::Variable || operand.kind == TACOperandType::Pointer) {
            const auto identifier = std::get<String>(operand.val);
            if(auto iter = identifierMap.find(identifier); iter != identifierMap.cend()) {
                return iter->second;
            }
            if(required)
                DiagnosticsContext::get().attach<UndefinedTACIdentifier>(identifier).reportFatal();
            else {
                const auto oldBlock = builder.getCurrentBlock();
                const auto allocateBlock = builder.getCurrentFunction()->entryBlock();
                builder.setCurrentBlock(allocateBlock);
                auto inst = make<StackAllocInst>(i32);
                auto& insts = allocateBlock->instructions();
                insts.insert(std::prev(insts.cend()), inst);
                inst->setBlock(allocateBlock);
                inst->setLabel(identifier);
                builder.setCurrentBlock(oldBlock);
                identifierMap.emplace(identifier, inst);
                return inst;
            }
        }
        reportUnreachable();
    };

    auto getRValue = [&](const TACOperand& operand) -> Value* {
        switch(operand.kind) {
            case TACOperandType::Variable: {
                const auto addr = getLValue(operand, true);
                return builder.makeOp<LoadInst>(addr);
            }
            case TACOperandType::Pointer: {
                const auto addr = getLValue(operand, true);
                return builder.makeOp<PtrToIntInst>(addr, i32);
            }
            case TACOperandType::Constant:
                return ConstantInteger::get(i32, std::get<int>(operand.val));
            default:
                reportUnreachable();
        }
    };

    const auto fixFunction = [&] {
        const auto func = builder.getCurrentFunction();
        if(!func)
            return;
        for(auto [node, block, next] : postTerminator) {
            builder.setCurrentBlock(block);

            if(std::holds_alternative<TACGoto>(*node)) {
                builder.makeOp<ConditionalBranchInst>(
                    BranchTarget{ blockMap.find(std::get<int>(std::get<TACGoto>(*node).label.val))->second });
            } else if(std::holds_alternative<TACConditionalGoto>(*node)) {
                auto& branch = std::get<TACConditionalGoto>(*node);
                const auto ret =
                    builder.makeOp<CompareInst>(InstructionID::SCmp, branch.cmp, getRValue(branch.lhs), getRValue(branch.rhs));
                const auto targetBlock = blockMap.find(std::get<int>(branch.label.val))->second;
                builder.makeOp<ConditionalBranchInst>(ret, BranchTarget{ targetBlock }, BranchTarget{ next });
            } else {
                reportUnreachable();
            }
        }
        postTerminator.clear();
        blockMap.clear();
        identifierMap.clear();

        // insert unreachables
        for(auto block : func->blocks()) {
            if(block->instructions().empty() || !block->instructions().back()->isTerminator()) {
                builder.setCurrentBlock(block);
                builder.makeOp<UnreachableInst>();
            }
        }

        blockArgPropagation(*func);
    };

    for(uint32_t k = 0; k < seq.size(); ++k) {
        auto& inst = seq[k];

        std::visit(Overload{ [&](auto&&) {
                                if(std::holds_alternative<TACGoto>(inst) || std::holds_alternative<TACConditionalGoto>(inst)) {
                                    const auto nextBlock = builder.addBlock();
                                    postTerminator.emplace_back(&inst, builder.getCurrentBlock(), nextBlock);
                                    builder.setCurrentBlock(nextBlock);
                                } else
                                    reportUnreachable();
                            },
                             [&](const TACLabel& label) {
                                 const auto nextBlock = builder.addBlock();
                                 builder.makeOp<ConditionalBranchInst>(BranchTarget{ nextBlock });
                                 builder.setCurrentBlock(nextBlock);
                                 blockMap.emplace(std::get<int>(label.label.val), nextBlock);
                             },
                             [&](const TACFunctionDecl& function) {
                                 fixFunction();

                                 std::vector<String> argNames;
                                 Vector<const Type*> args;

                                 uint32_t idx = k + 1;
                                 for(; idx < seq.size() && std::holds_alternative<TACParam>(seq[idx]); ++idx) {
                                     auto& arg = std::get<TACParam>(seq[idx]);
                                     assert(arg.name.kind == TACOperandType::Variable);
                                     auto name = std::get<String>(arg.name.val);
                                     argNames.push_back(name);
                                     args.push_back(i32);
                                 }
                                 k = idx - 1;

                                 auto funcType = make<FunctionType>(i32, args);
                                 auto func = make<Function>(function.symbol, funcType);
                                 module.add(func);
                                 callables.emplace(function.symbol, func);

                                 builder.setCurrentFunction(func);
                                 auto entryBlock = builder.addBlock();
                                 builder.setCurrentBlock(entryBlock);
                                 entryBlock->setLabel(String::get("entry"));

                                 idx = 0;
                                 for(auto arg : args) {
                                     const auto val = entryBlock->addArg(arg);
                                     const auto storage = builder.makeOp<StackAllocInst>(val->getType());
                                     builder.makeOp<StoreInst>(storage, val);
                                     identifierMap.emplace(argNames[idx], storage);
                                     ++idx;
                                 }

                                 const auto codeBlock = builder.addBlock();
                                 builder.setCurrentBlock(entryBlock);
                                 builder.makeOp<ConditionalBranchInst>(BranchTarget{ codeBlock });
                                 builder.setCurrentBlock(codeBlock);
                             },
                             [&](const TACAssign& assign) {
                                 const auto lvalue = getLValue(assign.lhs, false);
                                 const auto rvalue = getRValue(assign.rhs);
                                 builder.makeOp<StoreInst>(lvalue, rvalue);
                             },
                             [&](const TACBinary& binary) {
                                 const auto dest = getLValue(binary.result, false);
                                 const auto lhsVal = getRValue(binary.lhs);
                                 const auto rhsVal = getRValue(binary.rhs);
                                 const auto res = builder.makeOp<BinaryInst>(binary.instruction, i32, lhsVal, rhsVal);
                                 builder.makeOp<StoreInst>(dest, res);
                             },
                             [&](const TACAddr& addr) {
                                 const auto ptr = builder.makeOp<PtrToIntInst>(getLValue(addr.rhs, true), i32);
                                 const auto base = getLValue(addr.lhs, false);
                                 builder.makeOp<StoreInst>(base, ptr);
                             },
                             [&](const TACFetch& fetch) {
                                 const auto ptr = builder.makeOp<IntToPtrInst>(getRValue(fetch.rhsAddr), i32ptr);
                                 const auto base = getLValue(fetch.lhs, false);
                                 builder.makeOp<StoreInst>(base, builder.makeOp<LoadInst>(ptr));
                             },
                             [&](const TACDeref& deref) {
                                 const auto val = getRValue(deref.rhs);
                                 const auto base = getRValue(deref.lhsAddr);
                                 const auto ptr = builder.makeOp<IntToPtrInst>(base, i32ptr);
                                 builder.makeOp<StoreInst>(ptr, val);
                             },
                             [&](const TACReturn& ret) {
                                 builder.makeOp<ReturnInst>(getRValue(ret.val));
                                 const auto nextBlock = builder.addBlock();
                                 builder.setCurrentBlock(nextBlock);
                             },
                             [&](const TACLocalDecl& dec) {
                                 const auto size = static_cast<uint32_t>(dec.size);
                                 assert(size % 4 == 0);
                                 const auto type = make<ArrayType>(i32, size / 4);
                                 const auto ptr = builder.makeOp<StackAllocInst>(type);
                                 identifierMap.emplace(std::get<String>(dec.var.val), ptr);
                             },
                             [&](const TACArg& arg) { paramStack.push_back(getRValue(arg.val)); },
                             [&](const TACCall& call) {
                                 const auto func = callables.find(call.callee);
                                 if(func == callables.cend())
                                     DiagnosticsContext::get().attach<Reason>("missing function").reportFatal();
                                 const auto ret = builder.makeOp<FunctionCallInst>(func->second, paramStack);
                                 paramStack.clear();
                                 const auto dst = getLValue(call.ret, false);
                                 builder.makeOp<StoreInst>(dst, ret);
                             },
                             [&](const TACRead& readInst) {
                                 const auto dst = getLValue(readInst.var, false);
                                 const auto ret = builder.makeOp<FunctionCallInst>(read, Vector<Value*>{});
                                 builder.makeOp<StoreInst>(dst, ret);
                             },
                             [&](const TACWrite& writeInst) {
                                 const auto val = getRValue(writeInst.val);
                                 builder.makeOp<FunctionCallInst>(write, Vector<Value*>{ val });
                             },
                             [&](std::monostate) {} },
                   inst);
    }

    fixFunction();
}

CMMC_NAMESPACE_END
