OPTFLAGS = -O3
DBGFLAGS = -fsanitize=address -O1 -fno-omit-frame-pointer -ggdb
CFLAGS = -g $(OPTFLAGS)
LDFLAGS = $(OPTFLAGS)
