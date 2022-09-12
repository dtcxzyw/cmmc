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

#include "cmmc/Frontend/Driver.hpp"
#include "cmmc/Frontend/AST.hpp"
#include "cmmc/Frontend/Location.hpp"
#include "cmmc/Support/Diagnostics.hpp"
#include <cassert>
#include <cctype>
#include <cstdint>
#include <memory>
#include <ostream>
#include <string_view>

namespace std {  // NOTICE: we need ADL
    std::ostream& operator<<(std::ostream& out, const std::pair<uint32_t, yy::location>& loc) {
        return out << loc.second;
    }
}  // namespace std

#define YYLLOC_DEFAULT(CURRENT, RHS, N)                                                  \
    do                                                                                   \
        if(N) {                                                                          \
            (CURRENT).second.begin = YYRHSLOC(RHS, 1).second.begin;                      \
            (CURRENT).second.end = YYRHSLOC(RHS, N).second.end;                          \
        } else {                                                                         \
            (CURRENT).second.begin = (CURRENT).second.end = YYRHSLOC(RHS, 0).second.end; \
        }                                                                                \
    while(false)

using StringAST = cmmc::String<cmmc::Arena::Source::AST>;

#include "ParserDecl.hpp"
#include <cstdlib>
#include <variant>

CMMC_NAMESPACE_BEGIN

using MixedDefinition = std::variant<FunctionDefinition>;
CMMC_ARENA_TRAIT(MixedDefinition, AST);

struct Hierarchy final {
    static constexpr uint32_t indentInc = 2;

    // NAME + Metadata
    // literals non-terminal identifiers others
    struct Empty final {};
    struct NonTerminal final {};
    using Variant = std::variant<NonTerminal, uintmax_t, char, double, StringAST, Empty, std::monostate>;
    struct Desc final {
        const char* name;
        uint32_t line;
        Variant metadata;
    };

    Desc desc;
    struct ChildRef final {
        uint32_t pos;

        ChildRef(const std::pair<uint32_t, yy::location>& loc) : pos{ loc.first } {}
    };
    Deque<ChildRef> children;

    template <typename T>
    static void print(std::ostream& out, const char* name, uint32_t, const T& metadata) {
        out << name << ": " << metadata << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t, const char metadata) {
        out << name << ": '";
        if(std::isprint(metadata))
            out << metadata;
        else {
            constexpr auto lut = "0123456789ABCDEF";
            const uint8_t val = metadata;
            const auto p1 = lut[val / 16];
            const auto p2 = lut[val % 16];
            out << "\\x" << p1 << p2;
        }
        out << '\'' << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t line, std::monostate) {
        out << name << std::endl;
    }

    static void print(std::ostream& out, const char* name, uint32_t line, NonTerminal) {
        out << name << " (" << line << ')' << std::endl;
    }

    [[noreturn]] static void print(std::ostream& out, const char*, uint32_t line, Empty) {
        reportUnreachable();
    }

    uint32_t updateLocation(DriverImpl& driver);
    void dump(DriverImpl& driver, std::ostream& out, uint32_t indent) const;
};
CMMC_ARENA_TRAIT(Hierarchy, AST);
CMMC_ARENA_TRAIT(Hierarchy::ChildRef, AST);

class DriverImpl final {
    std::string mFile;
    bool mRecordHierarchy;
    bool mStrictMode;
    yy::location mLocation;
    bool mEnd;
    std::shared_ptr<Arena> mArena;

    Deque<MixedDefinition> mDefs;  // decls/defs **in order**
    Deque<Hierarchy> mHierarchyTree;

public:
    DriverImpl(const std::string& file, bool recordHierarchy, bool strictMode, std::shared_ptr<Arena> arena)
        : mFile{ file }, mRecordHierarchy{ recordHierarchy }, mStrictMode{ strictMode }, mArena{ std::move(arena) } {
        mLocation.initialize(&mFile);
    }
    ~DriverImpl() {
        mDefs = {};
        mHierarchyTree = {};
    }

    void markEnd() noexcept {
        mEnd = true;
    }
    void addFunctionDef(FunctionDefinition def) {
        mDefs.push_back(std::move(def));
    }
    yy::location& location() noexcept {
        return mLocation;
    }
    bool complete() const noexcept {
        return mEnd;
    }

    bool shouldRecordHierarchy() const noexcept {
        return mRecordHierarchy;
    }
    bool checkExtension(const char* ext) const noexcept {
        if(mStrictMode) {
            reportError() << "Extension " << ext << " is not allowed in strict mode" << std::endl;
            return true;
        }
        return false;
    }

    Hierarchy& hierarchy(Hierarchy::ChildRef ref) {
        return mHierarchyTree[ref.pos];
    }

    uint32_t record(Deque<Hierarchy::ChildRef> children, Hierarchy::Desc desc) {
        assert(shouldRecordHierarchy());
        const auto index = static_cast<uint32_t>(mHierarchyTree.size());
        mHierarchyTree.push_back(Hierarchy{ std::move(desc), std::move(children) });
        return index;
    }

    void emit(Module& module);
    void dump(std::ostream& out);

    void reportLexerError(const char* str) {
        reportError() << "Error type A at Line " << mLocation.begin.line << ": unknown lexeme " << str << std::endl;
    }
};

CMMC_NAMESPACE_END

#define YY_DECL yy::parser::symbol_type yylex(cmmc::DriverImpl& driver)
extern "C" YY_DECL;

#define CMMC_RECORD(ID, METADATA, ...)                                                                                         \
    (driver.shouldRecordHierarchy() ? driver.record({ __VA_ARGS__ },                                                           \
                                                    Hierarchy::Desc{ #ID, static_cast<uint32_t>(driver.location().begin.line), \
                                                                     Hierarchy::Variant{ METADATA } }) :                       \
                                      0)

#define CMMC_TERMINAL(ID) return yy::parser::make_##ID({ CMMC_RECORD(ID, std::monostate{}), loc })

#define CMMC_NONTERMINAL(LOC, ID, ...) LOC.first = CMMC_RECORD(ID, Hierarchy::NonTerminal{}, __VA_ARGS__)
#define CMMC_EMPTY(LOC, ID) LOC.first = CMMC_RECORD(Empty##ID, Hierarchy::Empty{})

#define CMMC_BINARY_OP(OP, LHS, RHS) BinaryExpr::get(OperatorID::OP, LHS, RHS)
#define CMMC_UNARY_OP(OP, VAL) UnaryExpr::get(OperatorID::OP, VAL)
#define CMMC_INT(VAL, BIT_WIDTH, SIGNED) ConstantIntExpr::get(VAL, BIT_WIDTH, SIGNED)
#define CMMC_FLOAT(VAL, IS_FLOAT) ConstantFloatExpr::get(VAL, IS_FLOAT)
#define CMMC_CHAR(VAL) ConstantIntExpr::get(VAL, 8, true)
#define CMMC_ID(NAME) IdentifierExpr::get(NAME)
#define CMMC_CALL(CALLEE, ARGS) FunctionCallExpr::get(CALLEE, ARGS)
#define CMMC_RETURN(RET) ReturnExpr::get(RET)
#define CMMC_IF(PRED, IF_PART) IfElseExpr::get(PRED, IF_PART, nullptr)
#define CMMC_IF_ELSE(PRED, IF_PART, ELSE_PART) IfElseExpr::get(PRED, IF_PART, ELSE_PART)
#define CMMC_CONCAT_PACK(RES_PACK, LHS_VALUE, RHS_PACK) concatPack((RES_PACK), (LHS_VALUE), (RHS_PACK))
#define CMMC_SCOPE(BLOCK) ScopedExpr::get(BLOCK);
#define CMMC_WHILE(PRED, BLOCK) WhileExpr::get(PRED, BLOCK);
#define CMMC_EXTENSION(EXT)         \
    if(driver.checkExtension(#EXT)) \
        YYABORT;

#include "ParserImpl.hpp"
#include "ScannerImpl.hpp"
#include <cstdio>
#include <fstream>
#include <iostream>
#include <string>

CMMC_NAMESPACE_BEGIN

Driver::Driver(const std::string& file, bool recordHierarchy, bool strictMode) {
    parse(file, recordHierarchy, strictMode);
}
Driver::~Driver() {}

void Driver::parse(const std::string& file, bool recordHierarchy, bool strictMode) {
    auto arena = std::make_shared<Arena>();
    Arena::setArena(Arena::Source::AST, arena.get());
    mImpl = std::make_unique<DriverImpl>(file, recordHierarchy, strictMode, std::move(arena));
    // yy_flex_debug = 1;
    yyin = fopen(file.c_str(), "r");
    if(!yyin) {
        reportError() << "Failed to open the source file " << file << std::endl;
        std::abort();
    }
    yy::parser parser{ *mImpl };
    // parser.set_debug_level(10);
    // parser.set_debug_stream(std::cerr);
    parser.parse();
    if(!mImpl->complete()) {
        reportError() << "Failed to parse" << std::endl;
        std::abort();
    }
    fclose(yyin);
}

void Driver::emit(Module& module) {
    mImpl->emit(module);
}

void DriverImpl::emit(Module& module) {
    FunctionTranslationContext ctx{ module };
    for(auto& func : mFunctionDef) {
        func.emit(ctx);
    }
    // block arg propagation using DominatorTree

    assert(module.verify());
}

static InstructionID getBinaryOp(OperatorID op, bool isFloatingPoint) {
    if(ifFloatingPoint) {
        switch(op) {
            case OperatorID::Add:
                return InstructionID::FAdd;
            case OperatorID::Sub:
                return InstructionID::FSub;
            case OperatorID::Mul:
                return InstructionID::FMul;
            case OperatorID::Div:
                return InstructionID::FDiv;

            case OperatorID::LessThan:
                [[fallthrough]];
            case OperatorID::LessEqual:
                [[fallthrough]];
            case OperatorID::GreaterThan:
                [[fallthrough]];
            case OperatorID::GreaterEqual:
                [[fallthrough]];
            case OperatorID::Equal:
                [[fallthrough]];
            case OperatorID::NotEqual:
                return InstructionID::FCmp;

            default:
                reportUnreachable();
        }
    } else {
        switch(op) {
            case OperatorID::Add:
                return InstructionID::Add;
            case OperatorID::Sub:
                return InstructionID::Sub;
            case OperatorID::Mul:
                return InstructionID::Mul;

                // TODO: unsigned
            case OperatorID::Div:
                return InstructionID::SDiv;
            case OperatorID::Rem:
                return InstructionID::SRem;

            case OperatorID::LessThan:
                [[fallthrough]];
            case OperatorID::LessEqual:
                [[fallthrough]];
            case OperatorID::GreaterThan:
                [[fallthrough]];
            case OperatorID::GreaterEqual:
                [[fallthrough]];
            case OperatorID::Equal:
                [[fallthrough]];
            case OperatorID::NotEqual:
                return InstructionID::SCmp;

            default:
                reportUnreachable();
        }
    }
}

static CompareOp getCompareOp(OperatorID op) {
    assert(static_cast<uint32_t>(op) >= static_cast<uint32_t>(OperatorID::LessThan) &&
           static_cast<uint32_t>(op) <= static_cast<uint32_t>(OperatorID::NotEqual));
    return static_cast<CompareOp>(static_cast<uint32_t>(op) - static_cast<uint32_t>(OperatorID::LessThan) +
                                  static_cast<uint32_t>(CompareOp::LessThan));
}

static Value* makeBinaryOp(FunctionTranslationContext& ctx, OperatorID op, bool isFloatintPoint, Value* lhs, Value* rhs) {
    auto inst = getBinaryOp(op, isFloatintPoint);

    if(inst == InstructionID::FCmp) {
        return ctx.makeOp<FloatingPointCompareInstruction>(getCompareOp(op), lhs, rhs);
    } else if(inst == InstructionID::SCmp) {
        return ctx.makeOp<IntegerCompareInstruction>(true, getCompareOp(op), lhs, rhs);
    } else {
        return ctx.makeOp<BinaryInstruction>(inst, lhs, rhs);
    }
}

Value* BinaryExpr::emit(FunctionTranslationContext& ctx) const {
    // short circut logical op
    auto lhs = mLhs->emit(ctx);
    if(mOp == OperatorID::LogicalAnd || mOp == OperatorID::LogicalOr) {
        lhs = ctx.convertTo(lhs, ctx.getBooleanType());

        auto rhsBlock = make<Block>();
        auto newBlock = make<Block>({ ctx.getBooleanType() });

        if(mOp == OperatorID::LogicalAnd) {
            ctx.makeOp<ConditionalBranch>(lhs, BranchTarget{ rhsBlock }, BranchTarget{ newBlock, ctx.getFalse() });
        } else {
            ctx.makeOp<ConditionalBranch>(lhs, BranchTarget{ newBlock, ctx.getTrue() }, BranchTarget{ rhsBlock });
        }

        ctx.setCurrentBlock(rhsBlock);
        ctx.makeOp<ConditionalBranch>(BranchTarget{ rhsBlock, ctx.convertTo(mRhs->emit(ctx), ctx.getBooleanType()) });
        ctx.setCurrentBlock(newBlock);
        return newBlock.getArg(0);
    }

    // assign op
    if(mOp == OperatorID::Assign) {
        auto lhs = mLhs->emit(ctx);

        if(!mLhs->isAddressable()) {
            fatal("Cannot assign to a rvalue");
        }
        if(mLhs->isMutable()) {
            fatal("Cannot assign to an immutable lvalue");
        }

        auto rhs = ctx.convertToRValue(mRhs->emit(ctx), mRhs->isAddressable(ctx));
        rhs = ctx.convertTo(rhs, lhs->getType()->getPointeeType());

        return ctx.makeOp<StoreInst>(lhs, rhs);
    }

    // arithmetic op
    auto rhs = mRhs->emit(ctx);
    lhs = ctx.convertToRValue(lhs, mLhs->isAddressable(ctx));
    rhs = ctx.convertToRValue(rhs, mRhs->isAddressable(ctx));

    auto lt = lhs->getType();
    auto rt = rhs->getType();
    if(!lt->isBuiltinType() || !rt->isBuiltinType())
        fatal("Custom operator is not supported");

    assert(!lt->isPointer() && !rt->isPointer());

    switch(mOp) {
        // IOP/FOP
        case OperatorID::Add:
            [[fallthrough]];
        case OperatorID::Sub:
            [[fallthrough]];
        case OperatorID::Mul:
            [[fallthrough]];
        case OperatorID::Div:
            [[fallthrough]];
        case OperatorID::LessThan:
            [[fallthrough]];
        case OperatorID::LessEqual:
            [[fallthrough]];
        case OperatorID::GreaterThan:
            [[fallthrough]];
        case OperatorID::GreaterEqual:
            [[fallthrough]];
        case OperatorID::Equal:
            [[fallthrough]];
        case OperatorID::NotEqual: {
            auto target = nullptr;
            if((lt->isInteger() && rt->isInteger()) || (lt->isFloatingPoint() || rt->isFloatingPoint())) {
                target = lt->getSize() > rt->getSize() ? lt : rt;
            } else {
                target = lt->isFloatingPoint() ? lt : rt;

                lhs = ctx.convertTo(lhs, target);
                rhs = ctx.convertTo(rhs, target);

                return makeBinaryOp(ctx, mOp, target->isFloatingPoint(), lhs, rhs);
            }
        }
        // IOP
        case OperatorID::Rem:
            [[fallthrough]];
        case OperatorID::BitwiseAnd:
            [[fallthrough]];
        case OperatorID::BitwiseOr:
            [[fallthrough]];
        case OperatorID::Xor: {
            if(lt->isFloatingPoint() || rt->isFloatingPoint())
                fatal("");

            const auto target = lt->getSize() > rt->getSize() ? lt : rt;
            return makeBinaryOp(ctx, mOp, false, lhs, rhs);
        }
        default:
            reportUnreachable();
    }
}

Value* UnaryExpr::emit(FunctionTranslationContext& ctx) const {
    auto value = ctx.convertToRValue(mValue->emit(ctx));
    switch(mOp) {
        case OperatorID::Neg: {
            if(value->getType()->isInteger())
                return ctx.makeOp<UnaryInstruction>(InstructionID::Neg, value);
            return ctx.makeOp<UnaryInstruction>(InstructionID::FNeg, value);
        }
        case OperatorID::BitwiseNot: {
            if(value->getType()->isInteger()) {
                return ctx.makeOp<UnaryInstruction>(InstructionID::Xor, value, ConstantInteger::get(value->getType(), -1));
            }
            fatal("");
        }
        case OperatorID::LogicalNot: {
            value = ctx.convertTo(value, ctx.getBooleanType());
            return ctx.makeOp<UnaryInstruction>(Instruction::Not, value);
        }
        default:
            reportUnreachable();
    }
}

Value* ConstantIntExpr::emit(FunctionTranslationContext& ctx) const {
    return ConstantInteger::get(IntegerType::get(mBitWidth, mIsSigned), mValue);
}

Value* ConstantFloatExpr::emit(FunctionTranslationContext& ctx) const {
    return ConstantFloatingPoint::get(FloatingPointType::get(mIsFloat), mValue);
}

Value* ConstantStringExpr::emit(FunctionTranslationContext& ctx) const {
    return nullptr;
}

Value* FunctionCallExpr::emit(FunctionTranslationContext& ctx) const {
    auto callee = ctx.convertToRValue(mCallee, mCallee->isAddressable(ctx));

    Vector<Value*> args;
    args.reserve(mArgs.size());
    for(auto arg : mArgs)
        args.push_back(ctx.convertToRValue(arg->emit(ctx)));

    // TODO: va_args
    auto& argTypes = dynamic_cast<FunctionType*>(callee->getType())->getArgTypes();
    if(argTypes.size() != args.size())
        fatal("");

    for(size_t idx = 0; idx < args.size(); ++idx)
        args[idx] = ctx.convertTo(args[idx], argTypes[idx]);

    return ctx.makeOp<FunctionCall>(callee, std::move(args));
}

Value* ReturnExpr::emit(FunctionTranslationContext& ctx) const {
    auto func = ctx.getCurrentFunction();
    auto type = func->getRetType();
    if(type->isVoidType()) {
        if(mValue)
            fatal("");
    } else if(!mValue) {
        fatal("");
    }

    if(type->isVoidType())
        return ctx.makeOp<ReturnInst>(nullptr);
    auto val = ctx.convertTo(ctx.convertToRValue(mValue->emit(ctx), mValue->isAddressable(ctx)), type);
    return ctx.makeOp<ReturnInst>(val);
}

Value* IfElseExpr::emit(FunctionTranslationContext& ctx) const {
    auto val = ctx.convertTo(ctx.convertToRValue(mPredicate->emit(ctx), mPredicate->isAddressable(ctx)), ctx.getBooleanType());

    auto ifBlock = make<Block>();
    auto elseBlock = make<Block>();
    auto newBlock = make<Block>();
    ctx.makeOp<ConditionalBranch>(val, BranchTarget{ ifBlock }, BranchTarget{ elseBlock });

    ctx.setCurrentBlock(ifBlock);
    mIfBlock->emit(ctx);
    ctx.makeOp<ConditionalBranch>(BranchTarget{ newBlock });
    ctx.setCurrentBlock(elseBlock);
    mElseBlock->emit(ctx);
    ctx.makeOp<ConditionalBranch>(BranchTarget{ newBlock });

    ctx.setCurrentBlock(newBlock);
    return nullptr;
}

Value* IdentifierExpr::emit(FunctionTranslationContext& ctx) const {
    auto value = ctx.lookUpIdentifier(mIdentifier);
    if(!value) {
        value = ctx.makeOp<StackAllocInst>(IntegerType::get(32, true));
        ctx.addIdentifier(mIdentifier, value);
    }
    return value;
}

Value* ScopedExpr::emit(FunctionTranslationContext& ctx) const {
    ctx.pushScope();
    for(auto statement : mBlock)
        statement->emit(ctx);
    ctx.popScope();
    return nullptr;
}

Value* WhileExpr::emit(FunctionTranslationContext& ctx) const {
    auto whileHeader = make<Block>();
    ctx.makeOp<ConditionalBranch>(BranchTarget{ whileHeader });
    ctx.setCurrentBlock(whileHeader);

    auto val = ctx.convertTo(ctx.convertToRValue(mPredicate->emit(ctx), mPredicate->isAddressable(ctx)), ctx.getBooleanType());

    auto whileBody = make<Block>();
    auto newBlock = make<Block>();

    ctx.makeOp<ConditionalBranch>(val, BranchTarget{ whileBody }, BranchTarget{ newBlock });

    ctx.setCurrentBlock(whileBody);
    mBlock->emit(ctx);
    ctx.makeOp<ConditionalBranch>(BranchTarget{ whileHeader });

    ctx.setCurrentBlock(newBlock);

    return nullptr;
}

void Driver::dump(std::ostream& out) {
    mImpl->dump(out);
}

void DriverImpl::dump(std::ostream& out) {
    if(!mRecordHierarchy) {
        reportError() << "please enable recordHierarchy" << std::endl;
        std::abort();
    }

    if(!mEnd) {
        reportError() << "invalid program" << std::endl;
        std::abort();
    }

    auto& root = mHierarchyTree.back();
    root.updateLocation(*this);
    root.dump(*this, out, 0);
}

uint32_t Hierarchy::updateLocation(DriverImpl& driver) {
    auto& res = desc.line;
    for(auto child : children)
        res = std::min(res, driver.hierarchy(child).updateLocation(driver));
    return res;
}

void Hierarchy::dump(DriverImpl& driver, std::ostream& out, uint32_t indent) const {
    if(std::holds_alternative<Empty>(desc.metadata))
        return;  // empty non-terminal
    for(uint32_t i = 0; i < indent; ++i)
        out << ' ';
    std::visit([&](auto& val) { print(out, desc.name, desc.line, val); }, desc.metadata);
    indent += indentInc;
    for(auto child : children)
        driver.hierarchy(child).dump(driver, out, indent);
}

BinaryExpr* BinaryExpr::get(OperatorID op, Expr* lhs, Expr* rhs) {
    return make<BinaryExpr>(op, lhs, rhs);
}

UnaryExpr* UnaryExpr::get(OperatorID op, Expr* value) {
    return make<UnaryExpr>(op, value);
}

ConstantIntExpr* ConstantIntExpr::get(uintmax_t value, uint32_t bitWidth, bool isSigned) {
    return make<ConstantIntExpr>(value, bitWidth, isSigned);
}

IdentifierExpr* IdentifierExpr::get(const String<Arena::Source::AST>& str) {
    return make<IdentifierExpr>(str);
}

FunctionCallExpr* FunctionCallExpr::get(Expr* callee, ExprPack args) {
    return make<FunctionCallExpr>(callee, std::move(args));
}

ReturnExpr* ReturnExpr::get(Expr* returnValue) {
    return make<ReturnExpr>(returnValue);
}

IfElseExpr* IfElseExpr::get(Expr* pred, Expr* ifPart, Expr* elsePart) {
    return make<IfElseExpr>(pred, ifPart, elsePart);
}

ScopedExpr* ScopedExpr::get(StatementBlock block) {
    return make<ScopedExpr>(std::move(block));
}

WhileExpr* WhileExpr::get(Expr* pred, Expr* block) {
    return make<WhileExpr>(pred, block);
}

ConstantFloatExpr* ConstantFloatExpr::get(double value, bool isFloat) {
    return make<ConstantFloatExpr>(value, isFloat);
}

CMMC_NAMESPACE_END
