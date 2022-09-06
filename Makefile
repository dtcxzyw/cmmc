OPTFLAGS = -O3
DBGFLAGS = -fsanitize=address -Og --fno-omit-frame-pointer -ggdb

CXX = g++
LEX = flex
YACC = bison

BIN := bin/splc
DIR_BUILD := ./build

CXXFLAGS = -std=c++17 -g $(OPTFLAGS) -I$(DIR_BUILD) -I./ -Wall -Werror -MD
LDFLAGS = $(OPTFLAGS) -lfl

CXXSRCS := $(wildcard cmmc/**/*.cpp)

OBJS = $(CXXSRCS:%.cpp=$(DIR_BUILD)/%.o)

.PHONY: all
all: $(BIN)

$(DIR_BUILD)/cmmc/Frontend/ParserImpl.hpp: cmmc/Frontend/Parser.yy
	mkdir -p $(dir $@)
	$(YACC) -o $@ --language=c++ --defines=$(DIR_BUILD)/cmmc/Frontend/ParserDecl.hpp $<

$(DIR_BUILD)/cmmc/Frontend/ScannerImpl.hpp: cmmc/Frontend/Scanner.ll $(DIR_BUILD)/cmmc/Frontend/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(LEX) -o $@ --header-file=$(DIR_BUILD)/cmmc/Frontend/ScannerDecl.hpp $<

$(DIR_BUILD)/%.o: %.cpp $(DIR_BUILD)/cmmc/Frontend/ScannerImpl.hpp $(DIR_BUILD)/cmmc/Frontend/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BIN): $(OBJS)
	mkdir -p bin
	$(CXX) $(LDFLAGS) -o $@ $^

.PHONY: clean bear
clean:
	rm -rf *~ $(DIR_BUILD) bin
bear: clean # make clangd happy
	bear -o $(DIR_BUILD)/compile_commands.json make
-include $(OBJS:.o=.d)
