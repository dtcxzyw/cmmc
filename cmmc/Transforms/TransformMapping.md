# LLVM
+ [x] adce -> SimplifyPartialUnreachableBranch & InfiniteEliminate & UnreachableEliminate & ConditionalPropagation
+ [x] always-inline -> Inlining
+ [x] argpromotion -> Inlining & ScalarMem2Reg
+ [ ] bb-vectorize
+ [x] block-placement -> BlockLayout
+ [ ] break-crit-edges
+ [x] constmerge -> ConstantMerge
+ [x] dce -> NoSideEffectEliminate
+ [x] deadargelim -> Inlining & BlockArgEliminate
+ [x] die -> NoSideEffectEliminate
+ [x] dse -> StoreEliminate
+ [x] function-attrs -> FunctionAttrInfer
+ [x] globldce -> GlobalEliminate
+ [ ] globalopt
+ [x] gvn
+ [ ] indvars
+ [x] inline -> Inlining
+ [x] instcombine -> ArithmeticReduce
+ [ ] aggressive-instcombine
+ [x] internalize -> --hide-symbol
+ [x] ipsccp -> Inlining & sccp
+ [ ] jump-threading
+ [ ] lcssa
+ [ ] licm
+ [ ] loop-deletion
+ [ ] loop-reduce
+ [ ] loop-rotate
+ [ ] loop-simplify
+ [x] loop-unroll
+ [ ] loop-unroll-and-jam
+ [ ] loop-unswitch
+ [x] mem2reg -> ScalarMem2Reg
+ [ ] memcpyopt
+ [x] mergefunc -> Inlining & BlockOutliner
+ [x] partial-inliner -> Inlining
+ [x] reassociate
+ [ ] sroa
+ [x] sccp -> ConstantPropagation & SimplifyBranch & ConditionalPropagation
+ [x] simplifycfg -> BlockEliminate & BlockMerge
+ [ ] sink
+ [x] tailcallelim -> TailCallEliminate

# MLIR
+ [x] control-flow-sink -> sink
+ [x] cse -> CSE
+ [x] inline -> Inlining
+ [x] loop-invariant-code-motion -> licm
+ [x] sccp -> sccp
+ [x] symbol-dce -> GlobalEliminate
+ [x] symbol-privatize -> -H
+ [x] topological-sort -> BlockSort
+ [x] buffer-deallocation -> ScalarMem2Reg
+ [ ] buffer-hoisting
+ [ ] buffer-loop-hoisting
+ [ ] scf-for-loop-peeling

# TODO
## Arithmetic (TODO: rounding mode for signed integer division?)
+ [ ] mul x, 2^k -> shl x, k (final)
+ [ ] div x, 2^k -> shr x, k
+ [ ] rem x, 2^k -> and x, 2^k-1
+ [ ] div x, c -> mul x, magic
+ [ ] div/rem x, y -> x - y * (x // y)
+ [ ] x >> c1 >> c2 -> x >> (c1 + c2)
+ [ ] x << c1 << c2 -> x << (c1 + c2)
