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

#pragma once
#include <any>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Support/StaticReflection.hpp>
#include <functional>
#include <memory>
#include <optional>
#include <type_traits>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class AnalysisPassManager;

template <typename Scope>
class AnalysisPass {
public:
    virtual void invalidate() = 0;
    virtual const void* getPassResult(Scope& item, AnalysisPassManager& analysis) = 0;
    virtual ~AnalysisPass() = default;
};

template <typename Pass, typename PassResult>
class FuncAnalysisPassWrapper : public AnalysisPass<Function> {
    std::optional<PassResult> mResult;
    inline static const int id{};

public:
    using Result = PassResult;

    static const void* getID() {
        return &id;
    }
    void invalidate() override {
        mResult.reset();
    }
    const void* getPassResult(Function& item, AnalysisPassManager& analysis) override {
        assert(!item.blocks().empty());
        if(!mResult.has_value())
            mResult.emplace(Pass::run(item, analysis));
        return &mResult.value();
    }
};

template <typename Pass, typename PassResult>
class ModuleAnalysisPassWrapper : public AnalysisPass<Module> {
    std::optional<PassResult> mResult;
    inline static const int id{};

public:
    using Result = PassResult;

    static const void* getID() {
        return &id;
    }
    void invalidate() override {
        mResult.reset();
    }
    const void* getPassResult(Module& item, AnalysisPassManager& analysis) override {
        if(!mResult.has_value())
            mResult.emplace(Pass::run(item, analysis));
        return &mResult.value();
    }
};

class AnalysisPassManager final {
    Module* mModule;
    std::unordered_map<Function*, std::unordered_map<const void*, std::unique_ptr<AnalysisPass<Function>>>> mFuncLevelAnalysis;
    std::unordered_map<const void*, std::unique_ptr<AnalysisPass<Module>>> mModuleLevelAnalysis;
    std::unordered_map<const void*, std::function<std::unique_ptr<AnalysisPass<Function>>()>> mFuncAnalysisBuilder;
    std::unordered_map<const void*, std::function<std::unique_ptr<AnalysisPass<Module>>()>> mModuleAnalysisBuilder;
    std::unordered_map<const void*, std::any> mPassStorage;

    const void* getPassResult(Function& func, const void* id);
    const void* getPassResult(const void* id);

    template <typename Pass>
    void registerModulePass() {
        const auto id = Pass::getID();
        if(!mModuleAnalysisBuilder.count(id))
            mModuleAnalysisBuilder.emplace(id,
                                           []() -> std::unique_ptr<AnalysisPass<Module>> { return std::make_unique<Pass>(); });
    }

    template <typename Pass>
    void registerFuncPass() {
        const auto id = Pass::getID();
        if(!mFuncAnalysisBuilder.count(id))
            mFuncAnalysisBuilder.emplace(id,
                                         []() -> std::unique_ptr<AnalysisPass<Function>> { return std::make_unique<Pass>(); });
    }

public:
    explicit AnalysisPassManager(Module* module) noexcept : mModule{ module } {}

    template <typename Pass, typename = std::enable_if_t<std::is_base_of_v<AnalysisPass<Module>, Pass>>>
    const auto& get() {
        Stage stage{ typeName<Pass>() };
        registerModulePass<Pass>();
        using Result = typename Pass::Result;
        return *static_cast<const Result*>(getPassResult(Pass::getID()));
    }

    template <typename Pass, typename = std::enable_if_t<std::is_base_of_v<AnalysisPass<Function>, Pass>>>
    const auto& get(Function& func) {
        Stage stage{ typeName<Pass>() };
        registerFuncPass<Pass>();
        using Result = typename Pass::Result;
        return *static_cast<const Result*>(getPassResult(func, Pass::getID()));
    }

    void invalidateFunc(Function& func);
    void invalidateModule();

    std::any& getPassStorage(const void* key) {
        return mPassStorage[key];
    }
    Module& module() const {
        return *mModule;
    }
};

CMMC_NAMESPACE_END
