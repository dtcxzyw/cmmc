; ModuleID = 'tests//SysY2022/functional/33_while_if_test3.sy'
source_filename = "tests//SysY2022/functional/33_while_if_test3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z11deepWhileBrii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %1, %0
  %4 = icmp slt i32 %3, 75
  br i1 %4, label %5, label %11

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %9, %5 ], [ %3, %2 ]
  %7 = add nsw i32 %6, 42
  %8 = icmp sgt i32 %6, 57
  %9 = select i1 %8, i32 168, i32 %7
  %10 = icmp slt i32 %9, 75
  br i1 %10, label %5, label %11

11:                                               ; preds = %5, %2
  %12 = phi i32 [ %3, %2 ], [ %9, %5 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  ret i32 88
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
