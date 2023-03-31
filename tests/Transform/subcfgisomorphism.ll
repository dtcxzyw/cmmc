; ModuleID = 'tests//Transform/subcfgisomorphism.sy'
source_filename = "tests//Transform/subcfgisomorphism.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp slt i32 %1, 10
  br i1 %2, label %3, label %19

3:                                                ; preds = %0, %16
  %4 = phi i32 [ %17, %16 ], [ %1, %0 ]
  %5 = icmp sgt i32 %4, 5
  br i1 %5, label %16, label %6

6:                                                ; preds = %3, %13
  %7 = phi i32 [ %14, %13 ], [ %4, %3 ]
  %8 = icmp sgt i32 %7, 5
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_Z6getintv()
  br label %13

11:                                               ; preds = %6
  %12 = add nsw i32 %7, 1
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %6, label %19, !llvm.loop !5

16:                                               ; preds = %3
  %17 = tail call noundef i32 @_Z6getintv()
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %3, label %19, !llvm.loop !7

19:                                               ; preds = %16, %13, %0
  %20 = phi i32 [ %1, %0 ], [ %14, %13 ], [ %17, %16 ]
  ret i32 %20
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
