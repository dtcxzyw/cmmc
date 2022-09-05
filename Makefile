OPTFLAGS = -O3
DBGFLAGS = -fsanitize=address -Og --fno-omit-frame-pointer -ggdb

BIN := bin/splc
DIR_BUILD := ./build
.DEFAULT_GOAL := $(BIN)

CFLAGS = -g $(OPTFLAGS) -I$(DIR_BUILD) -I./
LDFLAGS = $(OPTFLAGS) -lfl

CSRCS := $(wildcard cmmc/**/*.c)

OBJS = $(CSRCS:%.c=$(DIR_BUILD)/%.o)

$(DIR_BUILD)/cmmc/Frontend/ParserImpl.h: cmmc/Frontend/Syntax.y
	mkdir -p $(dir $@)
	bison -o $@ --defines=$(DIR_BUILD)/cmmc/Frontend/ParserDecl.h $<

$(DIR_BUILD)/cmmc/Frontend/Lexer.h: cmmc/Frontend/Lex.l $(DIR_BUILD)/cmmc/Frontend/ParserImpl.h
	mkdir -p $(dir $@)
	flex -o $@ $<

$(DIR_BUILD)/%.o: %.c $(DIR_BUILD)/cmmc/Frontend/Lexer.h $(DIR_BUILD)/cmmc/Frontend/ParserImpl.h
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

$(BIN): $(OBJS)
	mkdir -p bin
	$(CC) $(LDFLAGS) $^ -o $@

.PHONY: clean bear
clean:
	rm -rf *~ $(DIR_BUILD) bin
bear: clean # make clangd happy
	bear -o $(DIR_BUILD)/compile_commands.json make
