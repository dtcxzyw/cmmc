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

#include <algorithm>
#include <chrono>
#include <cmath>
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/IR/Attachments.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cstdint>
#include <deque>
#include <iostream>
#include <map>
#include <unordered_map>
#include <unordered_set>
#include <vector>

CMMC_NAMESPACE_BEGIN

enum class ByteState : uint8_t { Read = 1 << 0, Write = 1 << 1, None = 0 };

constexpr ByteState operator|(ByteState lhs, ByteState rhs) {
    return static_cast<ByteState>(static_cast<uint8_t>(lhs) | static_cast<uint8_t>(rhs));
}

constexpr ByteState operator|=(ByteState& lhs, ByteState rhs) {
    return lhs = lhs | rhs;
}

constexpr ByteState operator&(ByteState lhs, ByteState rhs) {
    return static_cast<ByteState>(static_cast<uint8_t>(lhs) & static_cast<uint8_t>(rhs));
}

constexpr ByteState operator&=(ByteState& lhs, ByteState rhs) {
    return lhs = lhs & rhs;
}

constexpr ByteState operator~(ByteState x) {
    return static_cast<ByteState>(~static_cast<uint8_t>(x));
}

constexpr bool hasTag(ByteState provided, ByteState required) {
    return (provided & required) == required;
}

// Byte-level simulation
class MemoryContext final {
    using ByteStorage = std::pair<ByteState, std::byte>;
    static_assert(sizeof(ByteStorage) == 2);
    static_assert(sizeof(uintptr_t) == 8);

    static constexpr uint64_t globalOffset = 0xf000'0000'0000'0000;
    static constexpr uint64_t stackOffset = 0x1000'0000'0000'0000;
    static constexpr std::byte invalidByte{ 0xCC };
    static constexpr ByteStorage invalidByteStorage{ ByteState::None, invalidByte };

    size_t mBudget;
    const DataLayout& mDataLayout;
    bool mHasMemoryError = false;
    std::vector<ByteStorage> mGlobalStorage;
    std::unordered_map<GlobalVariable*, uintptr_t> mGlobalAlloc;
    std::vector<ByteStorage> mStackStorage;
    std::map<uintptr_t, uintptr_t> mStackAlloc;  // [begin, end)
    size_t mLoadMemFootprint = 0;
    size_t mStoreMemFootprint = 0;

    void extendTo(std::vector<ByteStorage>& storage, size_t size) {
        storage.reserve(size);
        while(storage.size() < size)
            storage.push_back(invalidByteStorage);
    }
    uintptr_t paddingTo(std::vector<ByteStorage>& storage, size_t base, size_t alignment) {
        const auto pos = (base / alignment + 1) * alignment;
        extendTo(storage, pos);
        for(size_t idx = base; idx != pos; ++idx) {
            storage[idx] = invalidByteStorage;
        }
        return pos;
    }
    void setTag(std::vector<ByteStorage>& storage, size_t base, size_t size, ByteState tag) {
        extendTo(storage, base + size);
        for(size_t idx = 0; idx != size; ++idx)
            storage[base + idx].first = tag;
    }

    void removeTag(std::vector<ByteStorage>& storage, size_t base, size_t size, ByteState tag) {
        extendTo(storage, base + size);
        for(size_t idx = 0; idx != size; ++idx)
            storage[base + idx].first &= ~tag;
    }

    std::byte load(std::vector<ByteStorage>& storage, uintptr_t ptr) {
        ++mLoadMemFootprint;

        if(ptr < storage.size()) {
            const auto val = storage[ptr];
            if(hasTag(val.first, ByteState::Read))
                return val.second;
        }
        mHasMemoryError = true;
        return invalidByte;
    }
    void store(std::vector<ByteStorage>& storage, uintptr_t ptr, std::byte val) {
        ++mStoreMemFootprint;

        if(ptr < storage.size()) {
            auto& ref = storage[ptr];
            if(hasTag(ref.first, ByteState::Write)) {
                ref.second = val;
                return;
            }
        }
        mHasMemoryError = true;
    }

public:
    MemoryContext(size_t budget, const DataLayout& dataLayout) : mBudget{ budget }, mDataLayout{ dataLayout } {
        mStackAlloc.emplace(16U, 16U);  // start
    }
    bool isExceeded() const noexcept {
        return (mGlobalStorage.size() + mStackStorage.size()) * sizeof(ByteStorage) > mBudget;
    }
    bool hasException() const noexcept {
        return mHasMemoryError;
    }
    uintptr_t getGlobalVarAddress(GlobalVariable* var) {
        const auto iter = mGlobalAlloc.find(var);
        if(iter != mGlobalAlloc.cend())
            return iter->second;
        const auto storageType = var->getType()->as<PointerType>()->getPointee();
        const auto alignment = storageType->getAlignment(mDataLayout);
        const auto size = storageType->getSize(mDataLayout);
        const auto ptr = paddingTo(mGlobalStorage, mGlobalStorage.size(), alignment);
        setTag(mGlobalStorage, ptr, size, ByteState::Read | ByteState::Write);
        if(var->initialValue()) {
            // initialize with initialValue
            storeValue(ptr + globalOffset, var->initialValue(), var->initialValue()->getType());
        }
        if(var->attr().hasAttr(GlobalVariableAttribute::ReadOnly))
            removeTag(mGlobalStorage, ptr, size, ByteState::Write);
        mGlobalAlloc.emplace(var, ptr + globalOffset);
        return ptr + globalOffset;
    }
    uintptr_t stackPush(size_t size, size_t alignment) {
        const auto [beg, end] = *mStackAlloc.rbegin();
        CMMC_UNUSED(beg);
        const auto ptr = paddingTo(mStackStorage, end, alignment);
        setTag(mStackStorage, ptr, size, ByteState::Read | ByteState::Write);
        mStackAlloc.emplace(ptr, ptr + size);
        return ptr + stackOffset;
    }
    void stackPop(uintptr_t base) {
        base -= stackOffset;
        const auto iter = mStackAlloc.find(base);
        assert(iter != mStackAlloc.cend());
        const auto [begin, end] = *iter;
        setTag(mStackStorage, begin, end - begin, ByteState::None);
        mStackAlloc.erase(iter);
    }

    std::byte load(uintptr_t ptr) {
        if(ptr >= globalOffset)
            return load(mGlobalStorage, ptr - globalOffset);
        else {
            return load(mStackStorage, ptr - stackOffset);
        }
    }
    void store(uintptr_t ptr, std::byte val) {
        if(ptr >= globalOffset)
            return store(mGlobalStorage, ptr - globalOffset, val);
        else {
            return store(mStackStorage, ptr - stackOffset, val);
        }
    }

    ConstantValue* loadValue(uintptr_t ptr, const Type* type) {
        const auto alignment = type->getAlignment(mDataLayout);
        if(ptr % alignment != 0) {
            mHasMemoryError = true;
            return nullptr;
        }

        if(type->isInteger()) {
            static_assert(sizeof(uintmax_t) >= 8);
            uintmax_t val = 0;
            const auto base = reinterpret_cast<std::byte*>(&val);
            const auto size = type->getFixedSize();
            for(uint32_t idx = 0; idx < size; ++idx)
                base[idx] = load(ptr + idx);
            return make<ConstantInteger>(type, static_cast<intmax_t>(val));
        } else if(type->isFloatingPoint()) {
            std::byte storage[sizeof(double)];
            const auto size = type->getFixedSize();
            for(uint32_t idx = 0; idx < size; ++idx)
                storage[idx] = load(ptr + idx);
            double val = 0.0;
            if(size == sizeof(float)) {
                val = *reinterpret_cast<float*>(storage);
            } else {
                val = *reinterpret_cast<double*>(storage);
            }
            return make<ConstantFloatingPoint>(type, val);
        } else if(type->isPointer()) {
            uintptr_t val;
            const auto base = reinterpret_cast<std::byte*>(&val);
            for(uint32_t idx = 0; idx < sizeof(uintptr_t); ++idx)
                base[idx] = load(ptr + idx);
            return reinterpret_cast<ConstantValue*>(val);
        } else
            reportNotImplemented();
        return nullptr;
    }

    void memReset(uintptr_t ptr, size_t size, std::byte byte) {
        for(size_t idx = 0; idx < size; ++idx)
            store(ptr + idx, byte);
    }

    void storeValue(uintptr_t ptr, ConstantValue* value, const Type* type) {
        const auto alignment = type->getAlignment(mDataLayout);
        if(ptr % alignment != 0) {
            mHasMemoryError = true;
            return;
        }

        if(type->isInteger()) {
            static_assert(sizeof(uintmax_t) >= 8);
            const uintmax_t val = value->as<ConstantInteger>()->getZeroExtended();
            const auto base = reinterpret_cast<const std::byte*>(&val);
            const auto size = type->getFixedSize();
            for(uint32_t idx = 0; idx < size; ++idx)
                store(ptr + idx, base[idx]);
        } else if(type->isFloatingPoint()) {
            const double val = value->as<ConstantFloatingPoint>()->getValue();
            std::byte storage[sizeof(double)];
            const auto size = type->getFixedSize();
            if(size == sizeof(float)) {
                *reinterpret_cast<float*>(storage) = static_cast<float>(val);
            } else {
                *reinterpret_cast<double*>(storage) = val;
            }

            for(uint32_t idx = 0; idx < size; ++idx)
                store(ptr + idx, storage[idx]);
        } else if(type->isPointer()) {
            const auto val = reinterpret_cast<uintptr_t>(value);
            const auto base = reinterpret_cast<const std::byte*>(&val);
            for(uint32_t idx = 0; idx < sizeof(uintptr_t); ++idx)
                store(ptr + idx, base[idx]);
        } else if(type->isArray()) {
            const auto arrType = type->as<ArrayType>();
            const auto subType = arrType->getElementType();
            const auto offset = subType->getSize(mDataLayout);
            const auto array = value->as<ConstantArray>();
            for(uint32_t idx = 0; idx < arrType->getElementCount(); ++idx) {
                const auto newPtr = ptr + idx * offset;
                if(idx >= array->values().size()) {
                    memReset(newPtr, offset, std::byte{ 0 });
                } else {
                    storeValue(newPtr, array->values()[idx], subType);
                }
            }
        } else
            reportNotImplemented();
    }

    size_t getTotalLoad() const noexcept {
        return mLoadMemFootprint;
    }

    size_t getTotalStore() const noexcept {
        return mStoreMemFootprint;
    }
};

Interpreter::Interpreter(size_t timeBudget, size_t memBudget, size_t maxRecursiveDepth)
    : mTimeBudget{ timeBudget }, mMemBudget{ memBudget }, mMaxRecursiveDepth{ maxRecursiveDepth } {}

std::variant<ConstantValue*, SimulationFailReason> Interpreter::execute(Module& module, Function& func,
                                                                        const std::vector<ConstantValue*>& arguments,
                                                                        SimulationIOContext& ioCtx) const {
    const auto& target = module.getTarget();
    const auto& dataLayout = target.getDataLayout();
    static_assert(sizeof(uintptr_t) == 8);

    {
        const uint16_t endianTest = 0xAABB;
        const auto base = reinterpret_cast<const uint8_t*>(&endianTest);

        if(dataLayout.getPointerSize() != 8 || dataLayout.getEndian() != Endian::Little ||
           !(base[0] == 0xBB && base[1] == 0xAA)) {
            return SimulationFailReason::UnsupportedTarget;
        }
    }

    MemoryContext memCtx{ mMemBudget, dataLayout };

    const auto type = func.getType()->as<FunctionType>();
    if(type->getArgTypes().size() != arguments.size())
        DiagnosticsContext::get().attach<Reason>("argument count mismatch").reportFatal();
    for(uint32_t idx = 0; idx < arguments.size(); ++idx)
        if(!type->getArgTypes()[idx]->isSame(arguments[idx]->getType()))
            DiagnosticsContext::get()
                .attach<Reason>("argument type mismatch")
                .attach<TypeAttachment>("required", type->getArgTypes()[idx])
                .attach<TypeAttachment>("provided", arguments[idx]->getType())
                .reportFatal();

    struct BlockContext final {
        Instruction* caller;
        Block* block;
        std::unordered_map<Value*, ConstantValue*> operands;
        List<Instruction*>::const_iterator execIter;
        std::unordered_set<uintptr_t> stackAllocs;
    };

    std::vector<BlockContext> execCtx;
    {
        if(func.blocks().empty())
            return SimulationFailReason::Undefined;

        BlockContext entry;
        entry.caller = nullptr;
        entry.block = func.entryBlock();
        entry.execIter = entry.block->instructions().cbegin();
        for(uint32_t idx = 0; idx < arguments.size(); ++idx)
            entry.operands.emplace(entry.block->getArg(idx), arguments[idx]);
        if constexpr(Config::debug) {
            entry.block->dump(std::cerr);
        }

        execCtx.push_back(std::move(entry));
    }

    const auto start = Clock::now();

    // statistics
    size_t instructionCount = 0;
    size_t branchCount = 0;
    size_t callCount = 0;
    size_t loadCount = 0;
    size_t storeCount = 0;

    auto reportStatistics = [&] {
        auto& out = std::cerr;
        const auto end = Clock::now();
        out << "{";
        out << "\"time\": " << std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count() << ",";
        out << "\"inst\": " << instructionCount << ",";
        out << "\"branch\": " << branchCount << ",";
        out << "\"call\": " << callCount << ",";
        out << "\"load\": " << loadCount << ",";
        out << "\"store\": " << storeCount << ",";
        out << "\"load_bytes\": " << memCtx.getTotalLoad() << ",";
        out << "\"store_bytes\": " << memCtx.getTotalStore() << "}" << std::endl;
    };

    while(true) {
        const auto current = Clock::now();
        if(std::chrono::duration_cast<std::chrono::nanoseconds>(current - start).count() >= static_cast<int64_t>(mTimeBudget))
            return SimulationFailReason::ExceedTimeLimit;
        if(memCtx.isExceeded())
            return SimulationFailReason::ExceedMemoryLimit;
        if(memCtx.hasException())
            return SimulationFailReason::MemoryError;

        auto& currentExecCtx = execCtx.back();
        const auto iter = currentExecCtx.execIter;
        if(iter == currentExecCtx.block->instructions().cend())
            return SimulationFailReason::UnknownError;

        const auto inst = *iter;
        ++currentExecCtx.execIter;
        ++instructionCount;

        std::vector<ConstantValue*> operands;
        for(auto operand : inst->operands()) {
            if(operand->isConstant())
                operands.push_back(operand->as<ConstantValue>());
            else if(operand->isGlobal()) {
                if(operand->getType()->isFunction()) {
                    operands.push_back(reinterpret_cast<ConstantValue*>(operand));
                } else {
                    operands.push_back(
                        reinterpret_cast<ConstantValue*>(memCtx.getGlobalVarAddress(operand->as<GlobalVariable>())));
                }
            } else if(operand->getBlock()) {
                assert(currentExecCtx.operands.count(operand));
                operands.push_back(currentExecCtx.operands.find(operand)->second);
            } else
                reportUnreachable();
        }

        const auto getInt = [&](uint32_t idx) { return operands[idx]->as<ConstantInteger>()->getSignExtended(); };
        const auto getUInt = [&](uint32_t idx) { return operands[idx]->as<ConstantInteger>()->getZeroExtended(); };
        const auto getPtr = [&](uint32_t idx) { return reinterpret_cast<uintptr_t>(operands[idx]); };
        const auto getFP = [&](uint32_t idx) { return operands[idx]->as<ConstantFloatingPoint>()->getValue(); };

        const auto addValue = [&](Instruction* inst, ConstantValue* val) {
            currentExecCtx.operands.emplace(inst, val);
            if constexpr(Config::debug) {
                if(inst->getType()->isInteger() || inst->getType()->isFloatingPoint()) {
                    auto& out = std::cerr;
                    inst->dump(out);
                    out << " -> ";
                    val->dump(out);
                    out << std::endl;
                }
            }
        };
        const auto addInt = [&](intmax_t val) { addValue(inst, make<ConstantInteger>(inst->getType(), val)); };
        const auto addUInt = [&](uintmax_t val) {
            addValue(inst, make<ConstantInteger>(inst->getType(), static_cast<intmax_t>(val)));
        };
        const auto addBoolean = [&](bool val) {
            addValue(inst, make<ConstantInteger>(inst->getType(), static_cast<intmax_t>(val)));
        };
        const auto addPtr = [&](uintptr_t val) { addValue(inst, reinterpret_cast<ConstantValue*>(val)); };
        const auto addFP = [&](double val) { addValue(inst, make<ConstantFloatingPoint>(inst->getType(), val)); };

        const auto doCompare = [&](CompareOp cmp, auto lhs, auto rhs) {
            switch(cmp) {
                case CompareOp::LessThan:
                    return lhs < rhs;
                case CompareOp::LessEqual:
                    return lhs <= rhs;
                case CompareOp::GreaterThan:
                    return lhs > rhs;
                case CompareOp::GreaterEqual:
                    return lhs >= rhs;
                case CompareOp::Equal:
                    return lhs == rhs;
                case CompareOp::NotEqual:
                    return lhs != rhs;
            }
            reportUnreachable();
        };

        switch(inst->getInstID()) {
            case InstructionID::Ret: {
                const auto caller = currentExecCtx.caller;
                for(auto base : currentExecCtx.stackAllocs)
                    memCtx.stackPop(base);

                execCtx.pop_back();
                if(execCtx.empty()) {
                    reportStatistics();
                    return operands.empty() ? nullptr : operands[0];
                } else if(!operands.empty()) {
                    execCtx.back().operands.emplace(caller, operands[0]);
                }

                break;
            };
            case InstructionID::Branch:
                [[fallthrough]];
            case InstructionID::ConditionalBranch: {
                ++branchCount;
                auto branch = inst->as<ConditionalBranchInst>();

                Block* target = nullptr;
                if(inst->getInstID() == InstructionID::Branch) {
                    target = branch->getTrueTarget().getTarget();
                } else if(getUInt(0)) {
                    target = branch->getTrueTarget().getTarget();
                    operands.erase(operands.begin());
                    operands.erase(operands.begin() + target->args().size(), operands.end());
                } else {
                    target = branch->getFalseTarget().getTarget();
                    operands.erase(operands.begin());
                    operands.erase(operands.begin(), operands.end() - target->args().size());
                }

                currentExecCtx.operands.clear();
                for(uint32_t idx = 0; idx < target->args().size(); ++idx)
                    currentExecCtx.operands[target->getArg(idx)] = operands[idx];
                currentExecCtx.block = target;
                currentExecCtx.execIter = target->instructions().cbegin();
                if constexpr(Config::debug) {
                    currentExecCtx.block->dump(std::cerr);
                }
                break;
            }
            case InstructionID::Unreachable:
                return SimulationFailReason::Unreachable;
            case InstructionID::Load: {
                ++loadCount;

                const auto ptr = getPtr(0);
                addValue(inst, memCtx.loadValue(ptr, inst->getType()));
                break;
            }
            case InstructionID::Store: {
                ++storeCount;

                const auto ptr = getPtr(0);
                memCtx.storeValue(ptr, operands[1], inst->getOperand(1)->getType());
                break;
            }
            case InstructionID::Add: {
                addInt(getInt(0) + getInt(1));
                break;
            }
            case InstructionID::Sub: {
                addInt(getInt(0) - getInt(1));
                break;
            }
            case InstructionID::Mul: {
                addInt(getInt(0) * getInt(1));
                break;
            }
            case InstructionID::SDiv: {
                const auto val = getInt(1);
                if(!val)
                    return SimulationFailReason::DividedByZero;
                addInt(getInt(0) / val);
                break;
            }
            case InstructionID::UDiv: {
                const auto val = getUInt(1);
                if(!val)
                    return SimulationFailReason::DividedByZero;
                addUInt(getUInt(0) / val);
                break;
            }
            case InstructionID::SRem: {
                const auto val = getInt(1);
                if(!val)
                    return SimulationFailReason::DividedByZero;
                addInt(getInt(0) % val);
                break;
            }
            case InstructionID::URem: {
                const auto val = getUInt(1);
                if(!val)
                    return SimulationFailReason::DividedByZero;
                addUInt(getUInt(0) % val);
                break;
            }
            case InstructionID::Neg: {
                addInt(-getInt(0));
                break;
            }
            case InstructionID::And: {
                addUInt(getUInt(0) & getUInt(1));
                break;
            }
            case InstructionID::Or: {
                addUInt(getUInt(0) | getUInt(1));
                break;
            }
            case InstructionID::Not: {
                addUInt(~getUInt(0));
                break;
            }
            case InstructionID::Xor: {
                addUInt(getUInt(0) ^ getUInt(1));
                break;
            }
            case InstructionID::Shl: {
                addUInt(getUInt(0) << getUInt(1));
                break;
            }
            case InstructionID::LShr: {
                addUInt(getUInt(0) >> getUInt(1));
                break;
            }
            case InstructionID::AShr: {
                addInt(getInt(0) >> getInt(1));
                break;
            }
            case InstructionID::FAdd: {
                addFP(getFP(0) + getFP(1));
                break;
            }
            case InstructionID::FSub: {
                addFP(getFP(0) - getFP(1));
                break;
            }
            case InstructionID::FMul: {
                addFP(getFP(0) * getFP(1));
                break;
            }
            case InstructionID::FDiv: {
                addFP(getFP(0) / getFP(1));
                break;
            }
            case InstructionID::FNeg: {
                addFP(-getFP(0));
                break;
            }
            case InstructionID::FFma: {
                addFP(fma(getFP(0), getFP(1), getFP(2)));
                break;
            }
            case InstructionID::SCmp: {
                addBoolean(doCompare(inst->as<CompareInst>()->getOp(), getInt(0), getInt(1)));
                break;
            }
            case InstructionID::UCmp: {
                addBoolean(doCompare(inst->as<CompareInst>()->getOp(), getUInt(0), getUInt(1)));
                break;
            }
            case InstructionID::FCmp: {
                addBoolean(doCompare(inst->as<CompareInst>()->getOp(), getFP(0), getFP(1)));
                break;
            }
            case InstructionID::SExt: {
                addInt(getInt(0));
                break;
            }
            case InstructionID::ZExt:
                [[fallthrough]];
            case InstructionID::Trunc: {
                addUInt(getUInt(0));
                break;
            }
            case InstructionID::Bitcast: {
                reportNotImplemented();
            }
            case InstructionID::F2U: {
                addUInt(static_cast<uintmax_t>(getFP(0)));
                break;
            }
            case InstructionID::F2S: {
                addInt(static_cast<intmax_t>(getFP(0)));
                break;
            }
            case InstructionID::U2F: {
                addFP(static_cast<double>(getUInt(0)));
                break;
            }
            case InstructionID::S2F: {
                addFP(static_cast<double>(getInt(0)));
                break;
            }
            case InstructionID::FCast: {
                addFP(getFP(0));
                break;
            }
            case InstructionID::Alloc: {
                const auto type = inst->getType()->as<PointerType>()->getPointee();
                const auto ptr = memCtx.stackPush(type->getSize(dataLayout), type->getAlignment(dataLayout));
                addPtr(ptr);
                currentExecCtx.stackAllocs.insert(ptr);
                break;
            }
            case InstructionID::Free: {
                const auto ptr = getPtr(0);
                if(currentExecCtx.stackAllocs.erase(ptr))
                    memCtx.stackPop(ptr);
                break;
            }
            case InstructionID::GetElementPtr: {
                auto basePtr = getPtr(operands.size() - 1);
                auto baseType = inst->operands().back()->getType();
                for(uint32_t idx = 0; idx + 1 < operands.size(); ++idx) {
                    const auto operand = inst->getOperand(idx);
                    const auto type = operand->getType();
                    if(type->isInteger()) {
                        if(baseType->isPointer()) {
                            baseType = baseType->as<PointerType>()->getPointee();
                        } else if(baseType->isArray()) {
                            baseType = baseType->as<ArrayType>()->getElementType();
                        } else
                            reportUnreachable();
                        basePtr += getUInt(idx) * baseType->getSize(dataLayout);
                    } else if(auto offset = dynamic_cast<ConstantOffset*>(operand)) {
                        const auto structType = baseType->as<StructType>();
                        baseType = structType->getFieldType(offset);
                        basePtr += structType->getFieldOffset(offset, dataLayout);
                    }
                }

                addPtr(basePtr);
                break;
            }
            case InstructionID::PtrCast: {
                addValue(inst, operands[0]);
                break;
            }
            case InstructionID::PtrToInt: {
                addUInt(getPtr(0));
                break;
            }
            case InstructionID::IntToPtr: {
                addPtr(getUInt(0));
                break;
            }
            case InstructionID::Select: {
                addValue(inst, getUInt(0) ? operands[1] : operands[2]);
                break;
            }
            case InstructionID::Call: {
                ++callCount;
                if(execCtx.size() >= mMaxRecursiveDepth)
                    return SimulationFailReason::ExceedMaxRecursiveDepth;

                const auto callee = reinterpret_cast<Function*>(operands.back());
                operands.pop_back();

                switch(callee->getIntrinsic()) {
                    case Intrinsic::none: {
                        if(callee->blocks().empty()) {
                            // runtime func
                            const auto symbol = callee->getSymbol().prefix();
                            if(symbol == "read" || symbol == "getint") {
                                int x;
                                ioCtx.stdinStream >> x;
                                addInt(x);
                            } else if(symbol == "write" || symbol == "putint") {
                                ioCtx.stdoutStream << getInt(0);
                            } else if(symbol == "getch") {
                                reportNotImplemented();
                            } else if(symbol == "putch") {
                                reportNotImplemented();
                            } else if(symbol == "getarray") {
                                reportNotImplemented();
                            } else if(symbol == "putarray") {
                                reportNotImplemented();
                            } else if(symbol == "getfloat") {
                                reportNotImplemented();
                            } else if(symbol == "putfloat") {
                                reportNotImplemented();
                            } else if(symbol == "getfarray") {
                                reportNotImplemented();
                            } else if(symbol == "putfarray") {
                                reportNotImplemented();
                            } else if(symbol == "starttime") {
                                reportNotImplemented();
                            } else if(symbol == "stoptime") {
                                reportNotImplemented();
                            } else
                                reportUnreachable();
                        } else {
                            BlockContext blockCtx;
                            blockCtx.caller = inst;
                            blockCtx.block = callee->entryBlock();

                            for(uint32_t idx = 0; idx < blockCtx.block->args().size(); ++idx)
                                blockCtx.operands[blockCtx.block->getArg(idx)] = operands[idx];

                            blockCtx.execIter = blockCtx.block->instructions().cbegin();
                            if constexpr(Config::debug) {
                                blockCtx.block->dump(std::cerr);
                            }
                            execCtx.push_back(std::move(blockCtx));
                        }
                        break;
                    }
                    case Intrinsic::memset: {
                        const auto ptr = getPtr(0);
                        const auto byte = getUInt(1);
                        const auto size = getUInt(2);
                        memCtx.memReset(ptr, size, static_cast<std::byte>(byte));
                        addPtr(ptr);
                        break;
                    }
                    default:
                        reportNotImplemented();
                }

                break;
            }
            default:
                reportNotImplemented();
                break;
        }
    }
}

CMMC_NAMESPACE_END
