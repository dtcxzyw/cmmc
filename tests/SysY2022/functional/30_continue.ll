; ModuleID = 'tests//SysY2022/functional/30_continue.sy'
source_filename = "tests//SysY2022/functional/30_continue.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i32 [ %11, %9 ], [ 0, %0 ]
  %3 = phi i32 [ %10, %9 ], [ 0, %0 ]
  br label %4

4:                                                ; preds = %1, %7
  %5 = phi i32 [ 51, %7 ], [ %2, %1 ]
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = icmp eq i32 %5, 50
  br i1 %8, label %4, label %9, !llvm.loop !4

9:                                                ; preds = %7
  %10 = add nsw i32 %3, %5
  %11 = add nsw i32 %5, 1
  br label %1, !llvm.loop !4

12:                                               ; preds = %4
  ret i32 %3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
