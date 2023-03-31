; ModuleID = 'tests//SysY2022/functional/38_op_priority4.sy'
source_filename = "tests//SysY2022/functional/38_op_priority4.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @a, align 4, !tbaa !4
  %2 = tail call noundef i32 @_Z6getintv()
  store i32 %2, i32* @b, align 4, !tbaa !4
  %3 = tail call noundef i32 @_Z6getintv()
  store i32 %3, i32* @c, align 4, !tbaa !4
  %4 = tail call noundef i32 @_Z6getintv()
  store i32 %4, i32* @d, align 4, !tbaa !4
  %5 = tail call noundef i32 @_Z6getintv()
  store i32 %5, i32* @e, align 4, !tbaa !4
  %6 = load i32, i32* @a, align 4, !tbaa !4
  %7 = load i32, i32* @b, align 4, !tbaa !4
  %8 = load i32, i32* @c, align 4, !tbaa !4
  %9 = mul nsw i32 %8, %7
  %10 = sub nsw i32 %6, %9
  %11 = load i32, i32* @d, align 4, !tbaa !4
  %12 = sdiv i32 %6, %8
  %13 = sub nsw i32 %11, %12
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %0
  %16 = mul nsw i32 %7, %6
  %17 = sdiv i32 %16, %8
  %18 = add nsw i32 %11, %5
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = add nsw i32 %7, %6
  %22 = add nsw i32 %21, %8
  %23 = icmp eq i32 %22, %18
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %15, %0
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ 1, %24 ], [ 0, %20 ]
  ret i32 %26
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

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
