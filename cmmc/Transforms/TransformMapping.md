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
+ [ ] loop-deletion
+ [ ] loop-reduce
+ [ ] loop-rotate
+ [ ] loop-simplify
+ [x] loop-unroll -> LoopUnroll/DynamicLoopUnroll
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
+ [ ] buffer-hoisting
+ [ ] buffer-loop-hoisting
+ [ ] scf-for-loop-peeling

# TODO
+ mul x, 2^k -> shl x, k
+ x >> c1 >> c2 -> x >> (c1 + c2)
+ x << c1 << c2 -> x << (c1 + c2)
+ merge a + b with b + a
+ ./tests/SysY2022/functional/55_sort_test1.sy DynamicLoopUnroll/LICM/Out-of-bound
+ ./tests/SysY2022/functional/56_sort_test2.sy
+ ./tests/SysY2022/functional/57_sort_test3.sy
+ ./tests/SysY2022/functional/58_sort_test4.sy
+ ./tests/SysY2022/functional/59_sort_test5.sy
+ ./tests/SysY2022/functional/61_sort_test7.sy memset
+ ./tests/SysY2022/functional/62_percolation.sy dup blocks
+ ./tests/SysY2022/functional/66_exgcd.sy sroa
+ ./tests/SysY2022/functional/67_reverse_output.sy tail call
+ ./tests/SysY2022/functional/82_long_func.sy subgraph
+ ./tests/SysY2022/functional/92_register_alloc.sy add_sub tree
+ https://gcc.gnu.org/onlinedocs/gccint/
+ tests/CodeGenTAC/test04.spl merge Phi nodes
+ tests/CodeGenTAC/test_3_b02.spl
```
^while.body1:
    i32 %26 = phi [^b7, i32 %3] [^b11, i32 %27];
    i32 %27 = add i32 %26, i32 1;
    i1 %28 = scmp lt i32 %27, i32 %13;
    cbr i1 %28(prob = 0.5), ^b9, ^b11; # ^b11 -> ^b8
^b11:
    i1 %41 = phi [^while.body1, i1 false] [^b9, i1 %36];
    cbr i1 %41(prob = 0.97), ^while.body1, ^b8;
```
