; ModuleID = 'tests//SysY2022/functional/72_hanoi.sy'
source_filename = "tests//SysY2022/functional/72_hanoi.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4moveii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_Z6putinti(i32 noundef %0)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z6putinti(i32 noundef %1)
  tail call void @_Z5putchi(i32 noundef 44)
  tail call void @_Z5putchi(i32 noundef 32)
  ret void
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5hanoiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %4
  %7 = phi i32 [ %1, %4 ], [ %9, %8 ]
  tail call void @_Z6putinti(i32 noundef %7)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z6putinti(i32 noundef %3)
  tail call void @_Z5putchi(i32 noundef 44)
  tail call void @_Z5putchi(i32 noundef 32)
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %10, %8 ], [ %2, %4 ]
  %10 = phi i32 [ %9, %8 ], [ %1, %4 ]
  %11 = phi i32 [ %12, %8 ], [ %0, %4 ]
  %12 = add nsw i32 %11, -1
  tail call void @_Z5hanoiiiii(i32 noundef %12, i32 noundef %10, i32 noundef %3, i32 noundef %9)
  tail call void @_Z6putinti(i32 noundef %10)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z6putinti(i32 noundef %3)
  tail call void @_Z5putchi(i32 noundef 44)
  tail call void @_Z5putchi(i32 noundef 32)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %6, label %8
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0, %3
  %4 = phi i32 [ %6, %3 ], [ %1, %0 ]
  %5 = tail call noundef i32 @_Z6getintv()
  tail call void @_Z5hanoiiiii(i32 noundef %5, i32 noundef 1, i32 noundef 2, i32 noundef 3)
  tail call void @_Z5putchi(i32 noundef 10)
  %6 = add nsw i32 %4, -1
  %7 = icmp ugt i32 %4, 1
  br i1 %7, label %3, label %8, !llvm.loop !5

8:                                                ; preds = %3, %0
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
