BUILD_TYPE = Release
OPTFLAGS = -O3 -flto -DNDEBUG -s -march=native -funroll-loops
DBGFLAGS = -fsanitize=address,undefined -O0 -fno-omit-frame-pointer -ggdb -g
ADDFLAGS = 

ifeq ($(BUILD_TYPE), Debug)
ADDFLAGS += $(DBGFLAGS)
else
ADDFLAGS += $(OPTFLAGS)
endif

CXX = g++
LEX = flex
YACC = bison

DIR_BUILD := ./build
BIN := ./bin/cmmc
SPLC_SHELL := ./bin/splc

WARNFLAGS = -Wextra -Wall -Werror -Wconversion -Wshadow -Wno-format-security
WARNFLAGS_FOR_GENERATED = -Wextra -Wall -Werror
CXXFLAGS = -std=c++17 $(ADDFLAGS) -I $(abspath ./) -MD -pthread
LDFLAGS = $(CXXFLAGS)

CXXSRCS := $(wildcard cmmc/**/*.cpp) $(wildcard cmmc/Transforms/**/*.cpp) $(wildcard cmmc/Target/**/*.cpp)
ALLSRCS := $(CXXSRCS) $(wildcard cmmc/**/*.hpp) $(wildcard cmmc/Transforms/**/*.hpp) $(wildcard cmmc/Target/**/*.hpp)

OBJS = $(CXXSRCS:%.cpp=$(DIR_BUILD)/objs/%.o)

.PHONY: all
all: splc cmmc

$(DIR_BUILD)/generated/Spl/ParserImpl.hpp: cmmc/Frontend/ParserSpl.yy
	mkdir -p $(dir $@)
	$(YACC) -o $@ --language=c++ --defines=$(DIR_BUILD)/generated/Spl/ParserDecl.hpp $<

$(DIR_BUILD)/generated/Spl/ScannerImpl.hpp: cmmc/Frontend/ScannerSpl.ll $(DIR_BUILD)/generated/Spl/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(LEX) -o $@ -P Spl --header-file=$(DIR_BUILD)/generated/Spl/ScannerDecl.hpp $<

$(DIR_BUILD)/objs/SplSupport.o: cmmc/Frontend/Support/SplSupport.cpp $(DIR_BUILD)/generated/Spl/ScannerImpl.hpp $(DIR_BUILD)/generated/Spl/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(WARNFLAGS_FOR_GENERATED) -I $(abspath $(DIR_BUILD)/generated/) -c -o $@ cmmc/Frontend/Support/SplSupport.cpp

$(DIR_BUILD)/generated/SysY/ParserImpl.hpp: cmmc/Frontend/ParserSysY.yy
	mkdir -p $(dir $@)
	$(YACC) -o $@ --language=c++ --defines=$(DIR_BUILD)/generated/SysY/ParserDecl.hpp $<

$(DIR_BUILD)/generated/SysY/ScannerImpl.hpp: cmmc/Frontend/ScannerSysY.ll $(DIR_BUILD)/generated/SysY/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(LEX) -o $@ -P SysY --header-file=$(DIR_BUILD)/generated/SysY/ScannerDecl.hpp $<

$(DIR_BUILD)/objs/SysYSupport.o: cmmc/Frontend/Support/SysYSupport.cpp $(DIR_BUILD)/generated/SysY/ScannerImpl.hpp $(DIR_BUILD)/generated/SysY/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(WARNFLAGS_FOR_GENERATED) -I $(abspath $(DIR_BUILD)/generated/) -c -o $@ cmmc/Frontend/Support/SysYSupport.cpp

$(DIR_BUILD)/objs/%.o: %.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(WARNFLAGS) -c -o $@ $<

$(BIN): $(OBJS) $(DIR_BUILD)/objs/SplSupport.o $(DIR_BUILD)/objs/SysYSupport.o
	mkdir -p $(dir $@)
	$(CXX) $(LDFLAGS) -o $@ $^

.PHONY: clean bear2 bear3 debug cmmc
clean:
	rm -rf *~ $(DIR_BUILD) bin
bear2: clean # make clangd happy
	mkdir -p $(DIR_BUILD)
	bear -o $(DIR_BUILD)/compile_commands.json make
bear3: clean # make clangd happy
	mkdir -p $(DIR_BUILD)
	bear --output $(DIR_BUILD)/compile_commands.json -- make
-include $(OBJS:.o=.d)
debug: $(BIN)
	gdb $(BIN)
cmmc: $(BIN)
.PHONY: splc_project1 splc_project2 splc
splc_project1: $(BIN) # Project 1
	echo "\$$(dirname \$$0)/cmmc -s -a -o /dev/stdout \$$1" > $(SPLC_SHELL)
	chmod +x $(SPLC_SHELL)
	echo "\$$(dirname \$$0)/cmmc -a -o /dev/stdout \$$1" > $(SPLC_SHELL)_ex
	chmod +x $(SPLC_SHELL)_ex
splc_project2: $(BIN) # Project 2
	echo "\$$(dirname \$$0)/cmmc -s -i -o /dev/null \$$1 2>\$${1%.spl}.out" > $(SPLC_SHELL)
	chmod +x $(SPLC_SHELL)
	echo "\$$(dirname \$$0)/cmmc -i -o /dev/null \$$1 2>\$${1%.spl}.out" > $(SPLC_SHELL)_ex
	chmod +x $(SPLC_SHELL)_ex
splc: $(BIN) # Project 3
	echo "\$$(dirname \$$0)/cmmc -s -t tac -o \$${1%.spl}.ir \$$1" > $(SPLC_SHELL)
	chmod +x $(SPLC_SHELL)
	echo "\$$(dirname \$$0)/cmmc -t tac -o 2>\$${1%.spl}.ir \$$1" > $(SPLC_SHELL)_ex
	chmod +x $(SPLC_SHELL)_ex

.PHONY: test
test: cmmc
	python3 ./tests/test_driver.py $(BIN) ./tests

.PHONY: format-check format lint iwyu
format-check:
	clang-format --Werror --dry-run -style=file $(ALLSRCS)
format:
	clang-format -style=file -i $(ALLSRCS)
lint: cmmc
	clang-tidy --config-file=.clang-tidy -p ./build -header-filter=.*cmmc.* $(ALLSRCS) >./build/clang_tidy_result.log
iwyu: cmmc
	iwyu_tool -j 16 -p ./build
