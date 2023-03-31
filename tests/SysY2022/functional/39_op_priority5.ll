; ModuleID = 'tests//SysY2022/functional/39_op_priority5.sy'
source_filename = "tests//SysY2022/functional/39_op_priority5.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global i32 1, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 1, align 4
@d = dso_local local_unnamed_addr global i32 2, align 4
@e = dso_local local_unnamed_addr global i32 4, align 4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = load i32, i32* @a, align 4, !tbaa !4
  %2 = load i32, i32* @b, align 4, !tbaa !4
  %3 = mul nsw i32 %2, %1
  %4 = load i32, i32* @c, align 4, !tbaa !4
  %5 = sdiv i32 %3, %4
  %6 = load i32, i32* @e, align 4, !tbaa !4
  %7 = load i32, i32* @d, align 4, !tbaa !4
  %8 = add nsw i32 %7, %6
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = add nsw i32 %2, %1
  %12 = mul nsw i32 %11, %1
  %13 = add nsw i32 %12, %4
  %14 = icmp sgt i32 %13, %5
  br i1 %14, label %15, label %21

15:                                               ; preds = %10, %0
  %16 = mul nsw i32 %4, %2
  %17 = sub nsw i32 %1, %16
  %18 = sdiv i32 %1, %4
  %19 = sub nsw i32 %7, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %10
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ 1, %21 ], [ 0, %15 ]
  tail call void @_Z6putinti(i32 noundef %23)
  ret i32 %23
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
