# LLVM
+ [ ] adce
+ [x] always-inline -> Inlining
+ [ ] argpromotion
+ [ ] bb-vectorize
+ [ ] block-placement
+ [ ] break-crit-edges
+ [x] constmerge -> ConstantMerge
+ [x] dce -> NoSideEffectEliminate
+ [ ] deadargelim
+ [ ] deadtypeelim
+ [x] die -> NoSideEffectEliminate
+ [x] dse -> StoreEliminate
+ [x] function-attrs -> FunctionAttrInfer
+ [x] globldce -> GlobalEliminate
+ [ ] globalopt
+ [ ] gvn
+ [ ] indvars
+ [x] inline -> Inlining
+ [x] instcombine -> AtithmeticReduce
+ [ ] aggressive-instcombine
+ [x] internalize -> -H
+ [ ] ipsccp
+ [ ] jump-threading
+ [ ] lcssa
+ [ ] licm
+ [ ] loop-deletion
+ [ ] loop-reduce
+ [ ] loop-rotate
+ [ ] loop-simplify
+ [ ] loop-unroll
+ [ ] loop-unroll-and-jam
+ [ ] loop-unswitch
+ [x] mem2reg -> ScalarMem2Reg
+ [ ] memcpyopt
+ [ ] mergefunc
+ [ ] mergereturn
+ [ ] partial-inliner
+ [ ] reassociate
+ [ ] reg2mem
+ [ ] sroa
+ [ ] sccp
+ [x] simplifycfg -> BlockEliminate, BlockMerge
+ [ ] sink
+ [ ] tailcallelim

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
