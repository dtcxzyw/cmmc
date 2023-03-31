; ModuleID = 'tests//SysY2022/functional/34_arr_expr_len.sy'
source_filename = "tests//SysY2022/functional/34_arr_expr_len.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@arr = dso_local local_unnamed_addr global [6 x i32] [i32 1, i32 2, i32 33, i32 4, i32 5, i32 6], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @arr, i64 0, i64 0), align 16, !tbaa !4
  %2 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @arr, i64 0, i64 1), align 4, !tbaa !4
  %3 = add nsw i32 %2, %1
  %4 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @arr, i64 0, i64 2), align 8, !tbaa !4
  %5 = add nsw i32 %4, %3
  %6 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @arr, i64 0, i64 3), align 4, !tbaa !4
  %7 = add nsw i32 %6, %5
  %8 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @arr, i64 0, i64 4), align 16, !tbaa !4
  %9 = add nsw i32 %8, %7
  %10 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @arr, i64 0, i64 5), align 4, !tbaa !4
  %11 = add nsw i32 %10, %9
  ret i32 %11
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
