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

namespace std {  // NOTICE: we need ADL
    std::ostream& operator<<(std::ostream& out, const std::pair<uint32_t, yy::location>& loc) {
        return out << loc.second;
    }
}  // namespace std

CMMC_NAMESPACE_BEGIN

void generateScope(ExprPack& result, VarDefList list, const ExprPack& src) {
    for(auto& var : list)
        result.push_back(make<LocalVarDefExpr>(std::move(var.type), std::move(var.var)));
    result.insert(result.cend(), src.cbegin(), src.cend());
}
Expr* generateDef(VarDef def) {
    return make<LocalVarDefExpr>(std::move(def.type), std::move(def.var));
}

static void emitSplRuntime(Module& module, EmitContext& ctx) {
    const auto i32 = IntegerType::get(32);
    const auto read = make<Function>(StringIR{ "read" }, make<FunctionType>(i32, Vector<Type*>{}));
    read->attr().addAttr(FunctionAttribute::NoMemoryRead);
    const auto write = make<Function>(StringIR{ "write" }, make<FunctionType>(VoidType::get(), Vector<Type*>{ i32 }));
    write->attr().addAttr(FunctionAttribute::NoMemoryRead);

    ctx.addIdentifier(StringAST{ "read" }, read);
    ctx.addIdentifier(StringAST{ "write" }, write);
    module.add(read);
    module.add(write);
}

static void emitSysYRuntime(Module& module, EmitContext& ctx) {
    const auto voidType = VoidType::get();
    const auto i32 = IntegerType::get(32);
    const auto i32ptr = PointerType::get(i32);
    const auto f32 = FloatingPointType::get(true);
    const auto f32ptr = PointerType::get(f32);

    const auto getInt = make<Function>(StringIR{ "getint" }, make<FunctionType>(i32, Vector<Type*>{}));
    getInt->attr().addAttr(FunctionAttribute::NoMemoryRead);

    const auto getCh = make<Function>(StringIR{ "getch" }, make<FunctionType>(i32, Vector<Type*>{}));
    getCh->attr().addAttr(FunctionAttribute::NoMemoryRead);

    const auto getArray = make<Function>(StringIR{ "getarray" }, make<FunctionType>(i32, Vector<Type*>{ i32ptr }));
    getArray->attr().addAttr(FunctionAttribute::NoMemoryRead);

    const auto getFloat = make<Function>(StringIR{ "getfloat" }, make<FunctionType>(f32, Vector<Type*>{}));
    getFloat->attr().addAttr(FunctionAttribute::NoMemoryRead);

    const auto getFloatArray = make<Function>(StringIR{ "getfarray" }, make<FunctionType>(i32, Vector<Type*>{ f32ptr }));
    getFloatArray->attr().addAttr(FunctionAttribute::NoMemoryRead);

    const auto putInt = make<Function>(StringIR{ "putint" }, make<FunctionType>(voidType, Vector<Type*>{ i32 }));
    putInt->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto putCh = make<Function>(StringIR{ "putch" }, make<FunctionType>(voidType, Vector<Type*>{ i32 }));
    putCh->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto putArray = make<Function>(StringIR{ "putarray" }, make<FunctionType>(voidType, Vector<Type*>{ i32, i32ptr }));
    putArray->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto putFloat = make<Function>(StringIR{ "putfloat" }, make<FunctionType>(voidType, Vector<Type*>{ f32 }));
    putFloat->attr().addAttr(FunctionAttribute::NoMemoryRead).addAttr(FunctionAttribute::NoMemoryWrite);

    const auto putFloatArray =
        make<Function>(StringIR{ "putfarray" }, make<FunctionType>(voidType, Vector<Type*>{ i32, f32ptr }));
    putFloatArray->attr().addAttr(FunctionAttribute::NoMemoryWrite);

    const auto startTime = make<Function>(StringIR{ "starttime" }, make<FunctionType>(voidType, Vector<Type*>{ i32 }));
    const auto stopTime = make<Function>(StringIR{ "stoptime" }, make<FunctionType>(voidType, Vector<Type*>{ i32 }));

    for(auto func : { getInt, getCh, getArray, getFloat, getFloatArray, putInt, putCh, putArray, putFloat, putFloatArray,
                      startTime, stopTime }) {
        ctx.addIdentifier(StringAST{ func->getSymbol() }, func);
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
    assert(module.verify(std::cerr));
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

CMMC_NAMESPACE_END
