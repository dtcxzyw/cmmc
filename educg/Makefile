DIR_BUILD := ./build
CXXSRCS := $(wildcard cmmc/**/*.cpp) $(wildcard cmmc/Transforms/**/*.cpp) $(wildcard cmmc/Frontend/Support/*.cpp) $(wildcard cmmc/Target/**/*.cpp)
OBJS = $(CXXSRCS:%.cpp=$(DIR_BUILD)/objs/%.o)
CXX = clang++ --std=c++17 -O2

$(DIR_BUILD)/objs/%.o: %.cpp
	@mkdir -p $(dir $@)
	$(CXX) -c -o $@ $<
compiler: $(OBJS) 
	@mkdir -p $(dir $@)
	$(CXX) -lm -o $@ $^
