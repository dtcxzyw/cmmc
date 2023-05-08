CXXSRCS := $(wildcard cmmc/**/*.cpp) $(wildcard cmmc/Transforms/**/*.cpp) $(wildcard cmmc/Frontend/Support/*.cpp) $(wildcard cmmc/Target/**/*.cpp)
compiler:
	clang++ --std=c++17 -O2 -lm -o $@ $(CXXSRCS)
