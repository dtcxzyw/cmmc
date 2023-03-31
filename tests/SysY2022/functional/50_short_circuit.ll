; ModuleID = 'tests//SysY2022/functional/50_short_circuit.sy'
source_filename = "tests//SysY2022/functional/50_short_circuit.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z4funci(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @g, align 4, !tbaa !5
  %3 = add nsw i32 %2, %0
  store i32 %3, i32* @g, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %3)
  %4 = load i32, i32* @g, align 4, !tbaa !5
  ret i32 %4
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @g, align 4, !tbaa !5
  %5 = add nsw i32 %4, %1
  store i32 %5, i32* @g, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %5)
  br label %6

6:                                                ; preds = %3, %0
  %7 = tail call noundef i32 @_Z6getintv()
  %8 = icmp sgt i32 %7, 11
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @g, align 4, !tbaa !5
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* @g, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %11)
  br label %12

12:                                               ; preds = %9, %6
  %13 = tail call noundef i32 @_Z6getintv()
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @g, align 4, !tbaa !5
  %17 = add nsw i32 %16, %13
  store i32 %17, i32* @g, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %17)
  br label %18

18:                                               ; preds = %15, %12
  %19 = tail call noundef i32 @_Z6getintv()
  %20 = icmp slt i32 %19, 101
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @g, align 4, !tbaa !5
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* @g, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %23)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @g, align 4, !tbaa !5
  %26 = add nsw i32 %25, 99
  store i32 %26, i32* @g, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %26)
  %27 = load i32, i32* @g, align 4, !tbaa !5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 100, i32* @g, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef 100)
  br label %30

30:                                               ; preds = %29, %24
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
