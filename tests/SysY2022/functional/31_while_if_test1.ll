; ModuleID = 'tests//SysY2022/functional/31_while_if_test1.sy'
source_filename = "tests//SysY2022/functional/31_while_if_test1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z7whileIfv() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %7, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %7 ]
  switch i32 %2, label %4 [
    i32 1, label %7
    i32 6, label %3
  ]

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = shl nuw i32 %2, 1
  %6 = add i32 %5, 8
  br label %7

7:                                                ; preds = %4, %3, %1
  %8 = phi i32 [ 42, %3 ], [ %6, %4 ], [ 25, %1 ]
  %9 = add nuw nsw i32 %2, 5
  %10 = icmp eq i32 %9, 100
  br i1 %10, label %11, label %1, !llvm.loop !5

11:                                               ; preds = %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %7, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %7 ]
  switch i32 %2, label %4 [
    i32 1, label %7
    i32 6, label %3
  ]

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = shl nuw i32 %2, 1
  %6 = add i32 %5, 8
  br label %7

7:                                                ; preds = %4, %3, %1
  %8 = phi i32 [ 42, %3 ], [ %6, %4 ], [ 25, %1 ]
  %9 = add nuw nsw i32 %2, 5
  %10 = icmp eq i32 %9, 100
  br i1 %10, label %11, label %1, !llvm.loop !5

11:                                               ; preds = %7
  ret i32 %8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
