; ModuleID = 'tests//SysY2022/hidden_functional/08_global_arr_init.sy'
source_filename = "tests//SysY2022/hidden_functional/08_global_arr_init.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a0 = dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@b0 = dso_local local_unnamed_addr global [4 x i32] [i32 0, i32 1, i32 0, i32 0], align 16
@c0 = dso_local local_unnamed_addr global [7 x i32] [i32 2, i32 8, i32 6, i32 3, i32 9, i32 1, i32 5], align 16
@d0 = dso_local local_unnamed_addr global [11 x i32] zeroinitializer, align 16
@e0 = dso_local local_unnamed_addr global [2 x i32] [i32 22, i32 33], align 4
@f0 = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@g0 = dso_local local_unnamed_addr global [9 x i32] [i32 85, i32 0, i32 1, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@a = dso_local local_unnamed_addr global [5 x [3 x i32]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [5 x [3 x i32]] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [5 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9], [3 x i32] [i32 10, i32 11, i32 12], [3 x i32] [i32 13, i32 14, i32 15]], align 16
@d = dso_local local_unnamed_addr global [5 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9], [3 x i32] [i32 10, i32 11, i32 12], [3 x i32] [i32 13, i32 14, i32 15]], align 16
@e = dso_local local_unnamed_addr global [5 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9], [3 x i32] [i32 10, i32 11, i32 12], [3 x i32] [i32 13, i32 14, i32 15]], align 16
@f = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@g = dso_local local_unnamed_addr global [5 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 0, i32 0], [3 x i32] [i32 7, i32 0, i32 0], [3 x i32] [i32 10, i32 11, i32 12], [3 x i32] zeroinitializer], align 16
@h = dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@i = dso_local local_unnamed_addr global [2 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 3, i32 4], [4 x i32] [i32 5, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer], [3 x [4 x i32]] zeroinitializer], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  ret i32 5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
