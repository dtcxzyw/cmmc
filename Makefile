OPTFLAGS = -O3
DBGFLAGS = -fsanitize=address -Og -ggdb
CFLAGS = -g $(OPTFLAGS)
LDFLAGS = $(OPTFLAGS)

DIR_BUILD := ./build

CSRCS := $(wildcard cmmc/**/*.c)

OBJS = $(CSRCS:%.c=$(DIR_BUILD)/%.o)

$(DIR_BUILD)/%.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

$(DIR_BUILD)/$(BIN): $(OBJS)
	$(CC) $(LDFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -rf *~ $(DIR_BUILD)
