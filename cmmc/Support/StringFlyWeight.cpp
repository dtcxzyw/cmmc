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

#include <cmmc/Support/StringFlyWeight.hpp>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <string_view>
#include <unordered_map>
#include <vector>

CMMC_NAMESPACE_BEGIN

class StringManager final {
    static constexpr size_t blockSize = 16384;
    std::vector<void*> mStorage;
    size_t mCurrentOffset = 0, mCurrentEnd = 0;
    char* mCurrentPtr = nullptr;
    std::unordered_map<std::string_view, size_t> mBases;

    std::string_view createCopy(const std::string_view& src) {
        const auto size = src.size();
        char* base = nullptr;
        if(mCurrentOffset + size <= mCurrentEnd) {
            base = mCurrentPtr + mCurrentOffset;
            mCurrentOffset += size;
        } else {
            const auto allocatedSize = std::max(size, blockSize);
            mCurrentPtr = static_cast<char*>(malloc(allocatedSize));
            mStorage.push_back(mCurrentPtr);
            base = mCurrentPtr;
            mCurrentOffset = size;
        }
        memcpy(base, src.data(), src.size());
        return { base, src.size() };
    }

public:
    String create(const std::string_view& str) {
        if(auto iter = mBases.find(str); iter != mBases.cend())
            return { iter->first, iter->second, -1 };
        const auto copied = createCopy(str);
        const auto hash = std::hash<std::string_view>{}(copied);
        mBases.emplace(copied, hash);
        return { copied, hash, -1 };
    }

    ~StringManager() {
        for(auto storage : mStorage)
            free(storage);
    }

    static StringManager& get() {
        static StringManager manager;
        return manager;
    }
};

String::String(const std::string_view& storage, size_t hashValue, int32_t id)
    : mStorage{ storage }, mStringHash{ hashValue }, mId{ id } {}
size_t String::hash() const {
    return mStringHash ^ std::hash<int32_t>{}(mId);
}
bool String::operator==(const String& rhs) const noexcept {
    if(mStringHash != rhs.mStringHash)
        return false;
    return mStorage == rhs.mStorage && mId == rhs.mId;
}
bool String::operator==(const std::string_view& rhs) const noexcept {
    return mId < 0 && mStorage == rhs;
}

String String::get(const char* str) {
    return String::get(std::string_view{ str });
}
String String::get(const std::string_view& str) {
    return StringManager::get().create(str);
}

String String::withoutID() const noexcept {
    return { mStorage, mStringHash, -1 };
}
String String::withID(int32_t id) const noexcept {
    return { mStorage, mStringHash, id };
}

std::ostream& operator<<(std::ostream& out, const String& str) {
    out << str.mStorage;
    if(str.mId >= 0)
        out << str.mId;
    return out;
}

CMMC_NAMESPACE_END
