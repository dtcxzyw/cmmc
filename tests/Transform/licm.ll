; ModuleID = 'tests//Transform/licm.sy'
source_filename = "tests//Transform/licm.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %25

3:                                                ; preds = %0
  %4 = mul nsw i32 %1, %1
  %5 = mul i32 %4, %1
  %6 = add nsw i32 %1, -1
  %7 = add i32 %5, 1
  %8 = mul i32 %6, %7
  %9 = zext i32 %6 to i33
  %10 = add nsw i32 %1, -2
  %11 = zext i32 %10 to i33
  %12 = mul i33 %9, %11
  %13 = add nsw i32 %1, -3
  %14 = zext i32 %13 to i33
  %15 = mul i33 %12, %14
  %16 = lshr i33 %15, 1
  %17 = trunc i33 %16 to i32
  %18 = mul i32 %17, 1431655766
  %19 = lshr i33 %12, 1
  %20 = trunc i33 %19 to i32
  %21 = mul i32 %20, 3
  %22 = add i32 %5, %8
  %23 = add i32 %22, %18
  %24 = add i32 %23, %21
  br label %25

25:                                               ; preds = %3, %0
  %26 = phi i32 [ 0, %0 ], [ %24, %3 ]
  tail call void @_Z6putinti(i32 noundef %26)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
