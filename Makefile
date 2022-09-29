BUILD_TYPE = Release
OPTFLAGS = -O3 -flto -DNDEBUG
DBGFLAGS = -fsanitize=address -O0 -fno-omit-frame-pointer -ggdb
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
BIN := ./bin/splc

CXXFLAGS = -std=c++17 -g $(ADDFLAGS) -I $(abspath $(DIR_BUILD)/generated/) -I $(abspath ./) -Wall -Werror -MD
LDFLAGS = $(ADDFLAGS) -lfl

CXXSRCS := $(wildcard cmmc/**/*.cpp) $(wildcard cmmc/Transforms/**/*.cpp) $(wildcard cmmc/Target/**/*.cpp)

OBJS = $(CXXSRCS:%.cpp=$(DIR_BUILD)/objs/%.o)

.PHONY: all
all: splc

$(DIR_BUILD)/generated/Spl/ParserImpl.hpp: cmmc/Frontend/ParserSpl.yy
	mkdir -p $(dir $@)
	$(YACC) -o $@ -Wall --language=c++ --defines=$(DIR_BUILD)/generated/Spl/ParserDecl.hpp $<

$(DIR_BUILD)/generated/Spl/ScannerImpl.hpp: cmmc/Frontend/ScannerSpl.ll $(DIR_BUILD)/generated/Spl/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(LEX) -o $@ --header-file=$(DIR_BUILD)/generated/Spl/ScannerDecl.hpp $<

$(DIR_BUILD)/objs/%.o: %.cpp $(DIR_BUILD)/generated/Spl/ScannerImpl.hpp $(DIR_BUILD)/generated/Spl/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BIN): $(OBJS)
	mkdir -p $(dir $@)
	$(CXX) $(LDFLAGS) -o $@ $^

.PHONY: clean bear debug splc
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
splc: $(BIN)

.PHONY: test
test: splc
	python3 ./tests/test_driver.py $(BIN) ./tests
