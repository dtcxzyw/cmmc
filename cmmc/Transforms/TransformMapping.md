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
+ [x] indvars -> LoopCanonicalize
+ [x] inline -> Inlining
+ [x] instcombine -> ArithmeticReduce
+ [ ] aggressive-instcombine
+ [x] internalize -> --hide-symbol
+ [x] ipsccp -> Inlining & sccp
+ [ ] jump-threading
+ [ ] lcssa
+ [x] licm -> CodeMove
+ [x] loop-deletion -> LoopEliminate
+ [ ] loop-reduce
+ [x] loop-rotate -> LoopRotate
+ [ ] loop-simplify
+ [x] loop-unroll -> LoopUnroll/DynamicLoopUnroll
+ [ ] loop-unroll-and-jam
+ [ ] loop-unswitch
+ [x] mem2reg -> ScalarMem2Reg
+ [ ] memcpyopt
+ [x] mergefunc -> Inlining & BlockOutliner
+ [x] partial-inliner -> Inlining
+ [x] reassociate
+ [x] sroa
+ [x] sccp -> ConstantPropagation & SimplifyBranch & ConditionalPropagation
+ [x] simplifycfg -> BlockEliminate & BlockMerge
+ [x] sink -> CodeSink
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
+ [ ] scf-for-loop-peeling

# TODO
+ merge a + b with b + a
+ ./tests/SysY2022/functional/61_sort_test7.sy memset
+ ./tests/SysY2022/functional/62_percolation.sy dup blocks
+ ./tests/SysY2022/functional/82_long_func.sy subgraph
+ ./tests/SysY2022/functional/92_register_alloc.sy add_sub tree
+ https://gcc.gnu.org/onlinedocs/gccint/
