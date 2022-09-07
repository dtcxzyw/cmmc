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

CXXFLAGS = -std=c++17 -g $(ADDFLAGS) -I$(abspath $(DIR_BUILD)/generated/) -I$(abspath ./) -Wall -Werror -MD
LDFLAGS = $(ADDFLAGS) -lfl

CXXSRCS := $(wildcard cmmc/**/*.cpp)

OBJS = $(CXXSRCS:%.cpp=$(DIR_BUILD)/%.o)

.PHONY: all
all: splc

$(DIR_BUILD)/generated/ParserImpl.hpp: cmmc/Frontend/Parser.yy
	mkdir -p $(dir $@)
	$(YACC) -o $@ --language=c++ --defines=$(DIR_BUILD)/generated/ParserDecl.hpp $<

$(DIR_BUILD)/generated/ScannerImpl.hpp: cmmc/Frontend/Scanner.ll $(DIR_BUILD)/generated/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(LEX) -o $@ --header-file=$(DIR_BUILD)/generated/ScannerDecl.hpp $<

$(DIR_BUILD)/%.o: %.cpp $(DIR_BUILD)/generated/ScannerImpl.hpp $(DIR_BUILD)/generated/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BIN): $(OBJS)
	mkdir -p $(dir $@)
	$(CXX) $(LDFLAGS) -o $@ $^

.PHONY: clean bear debug test-parse splc
clean:
	rm -rf *~ $(DIR_BUILD) bin
bear: clean # make clangd happy
	bear -o $(DIR_BUILD)/compile_commands.json make
-include $(OBJS:.o=.d)
debug: $(BIN)
	gdb $(BIN)
splc: $(BIN)
test-parse: splc
	./tests/Parse/parse_test.py $(BIN) ./tests/Parse/
