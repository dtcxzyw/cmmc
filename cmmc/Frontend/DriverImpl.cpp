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

#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/Frontend/DriverImpl.hpp>
#include <cmmc/IR/GlobalVariable.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdlib>
#include <iostream>

namespace std {  // NOTICE: we need ADL
    std::ostream& operator<<(std::ostream& out, const std::pair<uint32_t, yy::location>& loc) {
        return out << loc.second;
    }
}  // namespace std

CMMC_NAMESPACE_BEGIN

static Flag hideSymbol;

CMMC_INIT_OPTIONS_BEGIN
hideSymbol.setName("hide-symbol", 'H').setDesc("only make main function public");
CMMC_INIT_OPTIONS_END

void generateScope(ExprPack& result, VarDefList list, const ExprPack& src) {
    for(auto& var : list)
        result.push_back(make<LocalVarDefExpr>(var.loc, std::move(var.type), std::move(var.var)));
    result.insert(result.cend(), src.cbegin(), src.cend());
}
Expr* generateDef(VarDef def) {
    return make<LocalVarDefExpr>(def.loc, std::move(def.type), std::move(def.var));
}

static void emitSplRuntime(Module& module, EmitContext& ctx) {
    const auto i32 = IntegerType::get(32);
    const auto read = make<Function>(String::get("read"), make<FunctionType>(i32, Vector<const Type*>{}));
    read->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);
    const auto write = make<Function>(String::get("write"), make<FunctionType>(VoidType::get(), Vector<const Type*>{ i32 }));
    write->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    ctx.addIdentifier(String::get("read"), QualifiedValue{ read });
    ctx.addIdentifier(String::get("write"), QualifiedValue{ write });
    module.add(read);
    module.add(write);
}

static void emitSysYRuntime(Module& module, EmitContext& ctx) {
    const auto voidType = VoidType::get();
    const auto i32 = IntegerType::get(32);
    const auto i32ptr = PointerType::get(i32);
    const auto f32 = FloatingPointType::get(true);
    const auto f32ptr = PointerType::get(f32);

    const auto getInt = make<Function>(String::get("getint"), make<FunctionType>(i32, Vector<const Type*>{}));
    getInt->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto getCh = make<Function>(String::get("getch"), make<FunctionType>(i32, Vector<const Type*>{}));
    getCh->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto getArray = make<Function>(String::get("getarray"), make<FunctionType>(i32, Vector<const Type*>{ i32ptr }));
    getArray->attr().addAttr(FunctionAttribute::NoMemoryRead);

    const auto getFloat = make<Function>(String::get("getfloat"), make<FunctionType>(f32, Vector<const Type*>{}));
    getFloat->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto getFloatArray = make<Function>(String::get("getfarray"), make<FunctionType>(i32, Vector<const Type*>{ f32ptr }));
    getFloatArray->attr().addAttr(FunctionAttribute::NoMemoryRead);

    const auto putInt = make<Function>(String::get("putint"), make<FunctionType>(voidType, Vector<const Type*>{ i32 }));
    putInt->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto putCh = make<Function>(String::get("putch"), make<FunctionType>(voidType, Vector<const Type*>{ i32 }));
    putCh->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto putArray =
        make<Function>(String::get("putarray"), make<FunctionType>(voidType, Vector<const Type*>{ i32, i32ptr }));
    putArray->attr().addAttr(FunctionAttribute::NoMemoryWrite);

    const auto putFloat = make<Function>(String::get("putfloat"), make<FunctionType>(voidType, Vector<const Type*>{ f32 }));
    putFloat->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto putFloatArray =
        make<Function>(String::get("putfarray"), make<FunctionType>(voidType, Vector<const Type*>{ i32, f32ptr }));
    putFloatArray->attr().addAttr(FunctionAttribute::NoMemoryWrite);

    const auto startTime = make<Function>(String::get("starttime"), make<FunctionType>(voidType, Vector<const Type*>{ i32 }));
    startTime->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);
    const auto stopTime = make<Function>(String::get("stoptime"), make<FunctionType>(voidType, Vector<const Type*>{ i32 }));
    stopTime->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    for(auto func : { getInt, getCh, getArray, getFloat, getFloatArray, putInt, putCh, putArray, putFloat, putFloatArray,
                      startTime, stopTime }) {
        ctx.addIdentifier(func->getSymbol(), QualifiedValue{ func });
        module.add(func);
    }
}

void DriverImpl::emit(Module& module) {
    EmitContext ctx{ &module };
    ctx.pushScope();

    if(mLang == FrontEndLang::Spl)
        emitSplRuntime(module, ctx);
    else if(mLang == FrontEndLang::SysY)
        emitSysYRuntime(module, ctx);

    for(auto& def : mDefs) {
        std::visit([&ctx](auto& def) { def.emit(ctx); }, def);
    }

    // Check invalid values
    if(ctx.invalid()) {
        if(!mStrictMode)
            DiagnosticsContext::get().attach<Reason>("Failed to generate IR").reportFatal();
        else
            std::exit(EXIT_FAILURE);
    }

    if(hideSymbol.get()) {
        using namespace std::string_view_literals;
        for(auto global : module.globals()) {
            if(auto func = dynamic_cast<Function*>(global)) {
                if(func->getSymbol() != "main"sv)
                    func->setLinkage(Linkage::Internal);
                else {
                    func->attr().addAttr(FunctionAttribute::Entry);
                }
            } else
                global->setLinkage(Linkage::Internal);
        }
    }
    assert(module.verify(std::cerr));
}

void DriverImpl::dump(std::ostream& out) {
    if(!mRecordHierarchy) {
        reportError() << "please enable recordHierarchy"sv << std::endl;
        std::abort();
    }

    if(!mEnd) {
        reportError() << "invalid program"sv << std::endl;
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

SourceLocation castLoc(const std::pair<uint32_t, yy::location>& location) {
    const auto& pos = location.second.begin;
    return { static_cast<uint32_t>(pos.line), static_cast<uint32_t>(pos.column) };
}

DriverImpl::DriverImpl(const std::string& file, FrontEndLang lang, bool recordHierarchy, bool strictMode,
                       std::shared_ptr<Arena> arena)
    : mFile{ file }, mLang{ lang }, mRecordHierarchy{ recordHierarchy },  //
      mStrictMode{ strictMode }, mArena{ std::move(arena) } {
    mLocation.initialize(&mFile);
}
DriverImpl::~DriverImpl() {
    mDefs = {};
    mHierarchyTree = {};
}

void DriverImpl::markEnd() noexcept {
    mEnd = true;
}
void DriverImpl::addFunctionDef(FunctionDefinition def) {
    mDefs.push_back(std::move(def));
}
void DriverImpl::addGlobalDef(const TypeRef& typeDef, const VarList& varList) {
    for(auto& var : varList)
        mDefs.push_back(GlobalVarDefinition{ typeDef, var });
}
void DriverImpl::addOpaqueType(const TypeRef&) {
    // TODO
}
void DriverImpl::addStructType(const SourceLocation& loc, String typeName, VarDefList list) {
    mDefs.push_back(StructDefinition{ loc, std::move(typeName), std::move(list) });
}
yy::location& DriverImpl::location() noexcept {
    return mLocation;
}
bool DriverImpl::complete() const noexcept {
    return mEnd && !mError;
}

bool DriverImpl::shouldRecordHierarchy() const noexcept {
    return mRecordHierarchy;
}
bool DriverImpl::checkExtension() noexcept {
    return !mStrictMode;
}

Hierarchy& DriverImpl::hierarchy(ChildRef ref) {
    return mHierarchyTree[ref.pos];
}

uint32_t DriverImpl::record(Deque<ChildRef> children, Hierarchy::Desc desc) {
    assert(shouldRecordHierarchy());
    const auto index = static_cast<uint32_t>(mHierarchyTree.size());
    mHierarchyTree.push_back(Hierarchy{ std::move(desc), std::move(children) });
    return index;
}

static std::string convert(const char* str) {
    std::string res;
    while(auto ch = *str) {
        if(ch > '\x20' && ch < '\x7F') {
            res += ch;
        } else {
            const uint8_t val = ch;
            constexpr auto lut = "0123456789ABCDEF";
            res += "\\x";
            res += lut[val / 16];
            res += lut[val % 16];
        }
        ++str;
    }
    return res;
}

void DriverImpl::reportLexerError(const char* reason, const char* str) {
    if(mStrictMode)
        reportError() << "Error type A at Line "sv << mLocation.begin.line << ": "sv << reason << ' ' << convert(str)
                      << std::endl;
    else
        reportError() << "Lexer error"sv << mLocation.begin << ": "sv << reason << " <"sv << convert(str) << '>' << std::endl;
    mError = true;
}
void DriverImpl::reportParserError(const std::pair<uint32_t, yy::location>& location, const char* str) {
    reportError() << "Error type B at Line "sv << location.second.begin.line << ": "sv << str << std::endl;
    mError = true;
}

CMMC_NAMESPACE_END
