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
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <fstream>
#include <iostream>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct UndefinedTACIdentifier final {
    String identifier;
    friend void operator<<(std::ostream& out, const UndefinedTACIdentifier& err) {
        out << "Undefined identifier \"" << err.identifier << '"' << std::endl;
    }
};

void loadTAC(Module& module, const std::string& path) {
    const auto i32 = IntegerType::get(32);
    const auto i32ptr = PointerType::get(i32);
    const auto read = make<Function>(String::get("read"), make<FunctionType>(i32, Vector<const Type*>{}));
    read->attr().addAttr(FunctionAttribute::NoMemoryRead);
    const auto write = make<Function>(String::get("write"), make<FunctionType>(VoidType::get(), Vector<const Type*>{ i32 }));
    write->attr().addAttr(FunctionAttribute::NoMemoryRead);
    module.add(read);
    module.add(write);

    std::ifstream in{ path };
    if(!in.is_open()) {
        DiagnosticsContext::get().attach<Reason>("invalid path").reportFatal();
    }

    in.seekg(0, std::ios::end);
    size_t size = in.tellg();
    in.seekg(0, std::ios::beg);

    std::vector<char> input(size);
    in.read(input.data(), size);
    if(input.empty() || input.back() != '\n')
        input.push_back('\n');
    input.push_back('\x7f');
    auto iter = tac_from_buffer(input.data());

    IRBuilder builder;
    std::unordered_map<String, Function*, StringHasher> callables;

    std::unordered_map<String, Value*, StringHasher> identifierMap;
    std::unordered_map<int, Block*> blockMap;
    Vector<Value*> paramStack;
    std::vector<std::tuple<tac_node*, Block*, Block*>> postTerminator;

    auto getLValue = [&](tac_opd* operand, bool required) -> Value* {
        if(operand->kind == OP_VARIABLE || operand->kind == OP_POINTER) {
            const auto identifier = String::get(operand->char_val);
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

    auto getRValue = [&](tac_opd* operand) -> Value* {
        switch(operand->kind) {
            case OP_VARIABLE:
                [[fallthrough]];
            case OP_POINTER: {
                const auto addr = getLValue(operand, true);
                return builder.makeOp<LoadInst>(addr);
            }
            case OP_CONSTANT:
                return make<ConstantInteger>(i32, operand->int_val);
            default:
                reportUnreachable();
        }
    };

    const auto makeConditionalBranch = [&](CompareOp op, tac_opd* lhs, tac_opd* rhs, int target, Block* nextBlock) {
        const auto ret = builder.makeOp<CompareInst>(InstructionID::SCmp, op, getRValue(lhs), getRValue(rhs));
        const auto targetBlock = blockMap.find(target)->second;
        builder.makeOp<ConditionalBranchInst>(ret, BranchTarget{ targetBlock }, BranchTarget{ nextBlock });
    };

    const auto fixFunction = [&] {
        const auto func = builder.getCurrentFunction();
        if(!func)
            return;
        for(auto [node, block, next] : postTerminator) {
            builder.setCurrentBlock(block);

            switch(node->code.kind) {
                case GOTO: {
                    builder.makeOp<ConditionalBranchInst>(
                        BranchTarget{ blockMap.find(node->code.goto_.labelno->int_val)->second });
                    break;
                }
#define CMMC_COND_BRANCH(TAC_OP, FIELD, CMP_OP)                                                                               \
    case TAC_OP: {                                                                                                            \
        makeConditionalBranch(CompareOp::CMP_OP, node->code.FIELD.c1, node->code.FIELD.c2, node->code.FIELD.labelno->int_val, \
                              next);                                                                                          \
        break;                                                                                                                \
    }

                    CMMC_COND_BRANCH(IFLT, iflt, LessThan);
                    CMMC_COND_BRANCH(IFLE, ifle, LessEqual);
                    CMMC_COND_BRANCH(IFGT, ifgt, GreaterThan);
                    CMMC_COND_BRANCH(IFGE, ifge, GreaterEqual);
                    CMMC_COND_BRANCH(IFNE, ifne, NotEqual);
                    CMMC_COND_BRANCH(IFEQ, ifeq, Equal);

#undef CMMC_COND_BRANCH
                default:
                    reportUnreachable();
            }
        }
        postTerminator.clear();
        blockMap.clear();
        identifierMap.clear();

        func->dump(std::cerr);

        // insert unreachables
        for(auto block : func->blocks()) {
            if(block->instructions().empty() || !block->instructions().back()->isTerminator()) {
                builder.setCurrentBlock(block);
                builder.makeOp<UnreachableInst>();
            }
        }

        blockArgPropagation(*func);
    };

    const auto makeBinaryOp = [&](InstructionID id, tac_opd* lhs, tac_opd* rhs, tac_opd* dst) {
        const auto dest = getLValue(dst, false);
        const auto lhsVal = getRValue(lhs);
        const auto rhsVal = getRValue(rhs);
        const auto res = builder.makeOp<BinaryInst>(id, i32, lhsVal, rhsVal);
        builder.makeOp<StoreInst>(dest, res);
    };

    while(iter) {
        switch(iter->code.kind) {
            case LABEL: {
                const auto nextBlock = builder.addBlock();
                builder.makeOp<ConditionalBranchInst>(BranchTarget{ nextBlock });
                builder.setCurrentBlock(nextBlock);
                blockMap.emplace(iter->code.label.labelno->int_val, nextBlock);
                break;
            }
            case FUNCTION: {
                fixFunction();
                auto symbol = String::get(iter->code.function.funcname);

                std::vector<String> argNames;
                Vector<const Type*> args;

                auto arg = iter->next;
                while(arg && arg->code.kind == PARAM) {
                    assert(arg->code.param.p->kind == OP_VARIABLE);
                    auto name = String::get(arg->code.param.p->char_val);
                    argNames.push_back(name);
                    args.push_back(i32);
                    arg = arg->next;
                }
                iter = arg->prev;

                auto funcType = make<FunctionType>(i32, args);
                auto func = make<Function>(symbol, funcType);
                module.add(func);
                callables.emplace(symbol, func);

                builder.setCurrentFunction(func);
                auto entryBlock = builder.addBlock();
                builder.setCurrentBlock(entryBlock);
                entryBlock->setLabel(String::get("entry"));
                size_t idx = 0;
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
                break;
            }
            case ASSIGN: {
                const auto lvalue = getLValue(iter->code.assign.left, false);
                const auto rvalue = getRValue(iter->code.assign.right);
                builder.makeOp<StoreInst>(lvalue, rvalue);
                break;
            }
#define CMMC_BINARY(TAC_OP, FIELD, IR_OP)                                                                    \
    case TAC_OP: {                                                                                           \
        makeBinaryOp(InstructionID::IR_OP, iter->code.FIELD.r1, iter->code.FIELD.r2, iter->code.FIELD.left); \
        break;                                                                                               \
    }
                CMMC_BINARY(ADD, add, Add);
                CMMC_BINARY(SUB, sub, Sub);
                CMMC_BINARY(MUL, mul, Mul);
                CMMC_BINARY(DIV, div, SDiv);
#undef CMMC_BINARY
            case ADDR: {
                const auto ptr = builder.makeOp<PtrToIntInst>(getLValue(iter->code.addr.right, true), i32);
                const auto base = getLValue(iter->code.addr.left, false);
                builder.makeOp<StoreInst>(base, ptr);
                break;
            }
            case FETCH: {
                const auto ptr = builder.makeOp<IntToPtrInst>(getRValue(iter->code.fetch.raddr), i32ptr);
                const auto base = getLValue(iter->code.fetch.left, false);
                builder.makeOp<StoreInst>(base, builder.makeOp<LoadInst>(ptr));
                break;
            }
            case DEREF: {
                const auto val = getRValue(iter->code.deref.right);
                const auto base = getRValue(iter->code.deref.laddr);
                const auto ptr = builder.makeOp<IntToPtrInst>(base, i32ptr);
                builder.makeOp<StoreInst>(ptr, val);
                break;
            }
            case GOTO:
                [[fallthrough]];
            case IFLT:
                [[fallthrough]];
            case IFLE:
                [[fallthrough]];
            case IFGT:
                [[fallthrough]];
            case IFGE:
                [[fallthrough]];
            case IFNE:
                [[fallthrough]];
            case IFEQ: {
                const auto nextBlock = builder.addBlock();
                postTerminator.emplace_back(iter, builder.getCurrentBlock(), nextBlock);
                builder.setCurrentBlock(nextBlock);
                break;
            }
            case RETURN: {
                builder.makeOp<ReturnInst>(getRValue(iter->code.return_.var));
                const auto nextBlock = builder.addBlock();
                builder.setCurrentBlock(nextBlock);
                break;
            }
            case DEC: {
                const auto size = static_cast<uint32_t>(iter->code.dec.size);
                assert(size % 4 == 0);
                const auto type = make<ArrayType>(i32, size / 4);
                const auto ptr = builder.makeOp<StackAllocInst>(type);
                const auto intPtr = builder.makeOp<PtrToIntInst>(ptr, i32);
                const auto ptrStorage = builder.makeOp<StackAllocInst>(i32);
                builder.makeOp<StoreInst>(ptrStorage, intPtr);
                identifierMap.emplace(String::get(iter->code.dec.var->char_val), ptrStorage);
                break;
            }
            case ARG: {
                paramStack.push_back(getRValue(iter->code.arg.var));
                break;
            }
            case CALL: {
                const auto symbol = String::get(iter->code.call.funcname);
                const auto func = callables.find(symbol);
                if(func == callables.cend())
                    DiagnosticsContext::get().attach<Reason>("missing function").reportFatal();
                const auto ret = builder.makeOp<FunctionCallInst>(func->second, paramStack);
                paramStack.clear();
                const auto dst = getLValue(iter->code.call.ret, false);
                builder.makeOp<StoreInst>(dst, ret);
                break;
            }
            case READ: {
                const auto dst = getLValue(iter->code.read.p, false);
                const auto ret = builder.makeOp<FunctionCallInst>(read, Vector<Value*>{});
                builder.makeOp<StoreInst>(dst, ret);
                break;
            }
            case WRITE: {
                const auto val = getRValue(iter->code.write.p);
                builder.makeOp<FunctionCallInst>(write, Vector<Value*>{ val });
                break;
            }
            case NONE: {
                break;
            }
            default:
                reportUnreachable();
        }

        iter = iter->next;
    }

    fixFunction();
}

CMMC_NAMESPACE_END
