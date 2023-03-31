; ModuleID = 'tests//SysY2022/functional/76_n_queens.sy'
source_filename = "tests//SysY2022/functional/76_n_queens.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ans = dso_local local_unnamed_addr global [50 x i32] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@n = dso_local local_unnamed_addr global i32 0, align 4
@row = dso_local local_unnamed_addr global [50 x i32] zeroinitializer, align 16
@line1 = dso_local local_unnamed_addr global [50 x i32] zeroinitializer, align 16
@line2 = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8printansv() local_unnamed_addr #0 {
  %1 = load i32, i32* @sum, align 4, !tbaa !5
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @sum, align 4, !tbaa !5
  %3 = load i32, i32* @n, align 4, !tbaa !5
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %18, label %5

5:                                                ; preds = %0, %13
  %6 = phi i64 [ %14, %13 ], [ 1, %0 ]
  %7 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %8)
  %9 = load i32, i32* @n, align 4, !tbaa !5
  %10 = zext i32 %9 to i64
  %11 = icmp eq i64 %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @_Z5putchi(i32 noundef 10)
  br label %18

13:                                               ; preds = %5
  tail call void @_Z5putchi(i32 noundef 32)
  %14 = add nuw nsw i64 %6, 1
  %15 = load i32, i32* @n, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %6, %16
  br i1 %17, label %5, label %18, !llvm.loop !9

18:                                               ; preds = %13, %0, %12
  ret void
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z1fi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @n, align 4, !tbaa !5
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %63, label %4

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i64 0, i64 %5
  %7 = add nsw i32 %0, 1
  %8 = icmp slt i32 %0, 1
  br label %9

9:                                                ; preds = %4, %57
  %10 = phi i32 [ %2, %4 ], [ %58, %57 ]
  %11 = phi i64 [ 1, %4 ], [ %59, %57 ]
  %12 = phi i32 [ -1, %4 ], [ %60, %57 ]
  %13 = trunc i64 %11 to i32
  %14 = getelementptr inbounds [50 x i32], [50 x i32]* @row, i64 0, i64 %11
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %57, label %17

17:                                               ; preds = %9
  %18 = add nsw i64 %11, %5
  %19 = getelementptr inbounds [50 x i32], [50 x i32]* @line1, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = add i32 %12, %0
  %24 = add i32 %23, %10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %22
  store i32 %13, i32* %6, align 4, !tbaa !5
  %30 = icmp eq i32 %10, %0
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  %32 = load i32, i32* @sum, align 4, !tbaa !5
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @sum, align 4, !tbaa !5
  br i1 %8, label %48, label %34

34:                                               ; preds = %31, %43
  %35 = phi i64 [ %44, %43 ], [ 1, %31 ]
  %36 = getelementptr inbounds [50 x i32], [50 x i32]* @ans, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %37)
  %38 = load i32, i32* @n, align 4, !tbaa !5
  %39 = zext i32 %38 to i64
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  tail call void @_Z5putchi(i32 noundef 10)
  %42 = load i32, i32* @n, align 4, !tbaa !5
  br label %48

43:                                               ; preds = %34
  tail call void @_Z5putchi(i32 noundef 32)
  %44 = add nuw nsw i64 %35, 1
  %45 = load i32, i32* @n, align 4, !tbaa !5
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %35, %46
  br i1 %47, label %34, label %48, !llvm.loop !9

48:                                               ; preds = %43, %41, %31, %29
  %49 = phi i32 [ %42, %41 ], [ %0, %31 ], [ %10, %29 ], [ %45, %43 ]
  store i32 1, i32* %14, align 4, !tbaa !5
  store i32 1, i32* %19, align 4, !tbaa !5
  %50 = add i32 %23, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i64 0, i64 %51
  store i32 1, i32* %52, align 4, !tbaa !5
  tail call void @_Z1fi(i32 noundef %7)
  store i32 0, i32* %14, align 4, !tbaa !5
  store i32 0, i32* %19, align 4, !tbaa !5
  %53 = load i32, i32* @n, align 4, !tbaa !5
  %54 = add i32 %23, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100 x i32], [100 x i32]* @line2, i64 0, i64 %55
  store i32 0, i32* %56, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %48, %22, %17, %9
  %58 = phi i32 [ %53, %48 ], [ %10, %22 ], [ %10, %17 ], [ %10, %9 ]
  %59 = add nuw nsw i64 %11, 1
  %60 = xor i32 %13, -1
  %61 = sext i32 %58 to i64
  %62 = icmp slt i64 %11, %61
  br i1 %62, label %9, label %63, !llvm.loop !11

63:                                               ; preds = %57, %1
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0, %3
  %4 = phi i32 [ %6, %3 ], [ %1, %0 ]
  %5 = tail call noundef i32 @_Z6getintv()
  store i32 %5, i32* @n, align 4, !tbaa !5
  tail call void @_Z1fi(i32 noundef 1)
  %6 = add nsw i32 %4, -1
  %7 = icmp ugt i32 %4, 1
  br i1 %7, label %3, label %8, !llvm.loop !12

8:                                                ; preds = %3, %0
  %9 = load i32, i32* @sum, align 4, !tbaa !5
  ret i32 %9
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
