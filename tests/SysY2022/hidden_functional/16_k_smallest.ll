; ModuleID = 'tests//SysY2022/hidden_functional/16_k_smallest.sy'
source_filename = "tests//SysY2022/hidden_functional/16_k_smallest.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@array = dso_local local_unnamed_addr global [1000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z4swapii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !4
  store i32 %8, i32* %4, align 4, !tbaa !4
  store i32 %5, i32* %7, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z9findPivotii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !4
  %6 = icmp slt i32 %0, %1
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = sext i32 %0 to i64
  br label %9

9:                                                ; preds = %7, %20
  %10 = phi i64 [ %8, %7 ], [ %22, %20 ]
  %11 = phi i32 [ %0, %7 ], [ %21, %20 ]
  %12 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %10
  %13 = load i32, i32* %12, align 4, !tbaa !4
  %14 = icmp sgt i32 %13, %5
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !4
  store i32 %18, i32* %12, align 4, !tbaa !4
  store i32 %13, i32* %17, align 4, !tbaa !4
  %19 = add nsw i32 %11, 1
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi i32 [ %19, %15 ], [ %11, %9 ]
  %22 = add nsw i64 %10, 1
  %23 = icmp eq i64 %22, %3
  br i1 %23, label %24, label %9, !llvm.loop !8

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4, !tbaa !4
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i32 [ %5, %2 ], [ %25, %24 ]
  %28 = phi i32 [ %0, %2 ], [ %21, %24 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !4
  store i32 %27, i32* %30, align 4, !tbaa !4
  store i32 %31, i32* %4, align 4, !tbaa !4
  ret i32 %28
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12findSmallestiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %0, %1
  br i1 %5, label %59, label %6

6:                                                ; preds = %4, %56
  %7 = phi i32 [ %11, %56 ], [ %1, %4 ]
  %8 = phi i32 [ %57, %56 ], [ %0, %4 ]
  %9 = sext i32 %8 to i64
  br label %10

10:                                               ; preds = %6, %53
  %11 = phi i32 [ %7, %6 ], [ %54, %53 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !4
  %15 = icmp slt i32 %8, %11
  br i1 %15, label %16, label %34

16:                                               ; preds = %10, %27
  %17 = phi i64 [ %29, %27 ], [ %9, %10 ]
  %18 = phi i32 [ %28, %27 ], [ %8, %10 ]
  %19 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %17
  %20 = load i32, i32* %19, align 4, !tbaa !4
  %21 = icmp sgt i32 %20, %14
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !4
  store i32 %25, i32* %19, align 4, !tbaa !4
  store i32 %20, i32* %24, align 4, !tbaa !4
  %26 = add nsw i32 %18, 1
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32 [ %26, %22 ], [ %18, %16 ]
  %29 = add nsw i64 %17, 1
  %30 = icmp eq i64 %29, %12
  br i1 %30, label %31, label %16, !llvm.loop !8

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4, !tbaa !4
  %33 = sext i32 %28 to i64
  br label %34

34:                                               ; preds = %10, %31
  %35 = phi i64 [ %9, %10 ], [ %33, %31 ]
  %36 = phi i32 [ %14, %10 ], [ %32, %31 ]
  %37 = phi i32 [ %8, %10 ], [ %28, %31 ]
  %38 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %35
  %39 = load i32, i32* %38, align 4, !tbaa !4
  store i32 %36, i32* %38, align 4, !tbaa !4
  store i32 %39, i32* %13, align 4, !tbaa !4
  %40 = icmp eq i32 %37, %2
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = icmp sgt i32 %2, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %41
  %44 = zext i32 %2 to i64
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 0, %43 ], [ %49, %45 ]
  %47 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %48)
  tail call void @_Z5putchi(i32 noundef 32)
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq i64 %49, %44
  br i1 %50, label %59, label %45, !llvm.loop !10

51:                                               ; preds = %34
  %52 = icmp sgt i32 %37, %2
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = add nsw i32 %37, -1
  %55 = icmp eq i32 %8, %54
  br i1 %55, label %59, label %10

56:                                               ; preds = %51
  %57 = add nsw i32 %37, 1
  %58 = icmp eq i32 %57, %11
  br i1 %58, label %59, label %6

59:                                               ; preds = %56, %53, %45, %4, %41
  ret void
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = add nsw i32 %1, -1
  br label %17

6:                                                ; preds = %0
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %12, %8 ]
  %10 = tail call noundef i32 @_Z6getintv()
  %11 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %9
  store i32 %10, i32* %11, align 4, !tbaa !4
  %12 = add nuw nsw i64 %9, 1
  %13 = icmp eq i64 %12, %7
  br i1 %13, label %14, label %8, !llvm.loop !11

14:                                               ; preds = %8
  %15 = add nsw i32 %1, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %72, label %17

17:                                               ; preds = %4, %14
  %18 = phi i32 [ %15, %14 ], [ %5, %4 ]
  br label %19

19:                                               ; preds = %17, %69
  %20 = phi i32 [ %24, %69 ], [ %18, %17 ]
  %21 = phi i32 [ %70, %69 ], [ 0, %17 ]
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %66, %19
  %24 = phi i32 [ %20, %19 ], [ %67, %66 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !4
  %28 = icmp slt i32 %21, %24
  br i1 %28, label %29, label %47

29:                                               ; preds = %23, %40
  %30 = phi i64 [ %42, %40 ], [ %22, %23 ]
  %31 = phi i32 [ %41, %40 ], [ %21, %23 ]
  %32 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %30
  %33 = load i32, i32* %32, align 4, !tbaa !4
  %34 = icmp sgt i32 %33, %27
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = sext i32 %31 to i64
  %37 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !4
  store i32 %38, i32* %32, align 4, !tbaa !4
  store i32 %33, i32* %37, align 4, !tbaa !4
  %39 = add nsw i32 %31, 1
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i32 [ %39, %35 ], [ %31, %29 ]
  %42 = add nsw i64 %30, 1
  %43 = icmp eq i64 %42, %25
  br i1 %43, label %44, label %29, !llvm.loop !8

44:                                               ; preds = %40
  %45 = load i32, i32* %26, align 4, !tbaa !4
  %46 = sext i32 %41 to i64
  br label %47

47:                                               ; preds = %44, %23
  %48 = phi i64 [ %22, %23 ], [ %46, %44 ]
  %49 = phi i32 [ %27, %23 ], [ %45, %44 ]
  %50 = phi i32 [ %21, %23 ], [ %41, %44 ]
  %51 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %48
  %52 = load i32, i32* %51, align 4, !tbaa !4
  store i32 %49, i32* %51, align 4, !tbaa !4
  store i32 %52, i32* %26, align 4, !tbaa !4
  %53 = icmp eq i32 %50, %2
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = icmp sgt i32 %2, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %54
  %57 = zext i32 %2 to i64
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i64 [ 0, %56 ], [ %62, %58 ]
  %60 = getelementptr inbounds [1000 x i32], [1000 x i32]* @array, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %61)
  tail call void @_Z5putchi(i32 noundef 32)
  %62 = add nuw nsw i64 %59, 1
  %63 = icmp eq i64 %62, %57
  br i1 %63, label %72, label %58, !llvm.loop !10

64:                                               ; preds = %47
  %65 = icmp sgt i32 %50, %2
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = add nsw i32 %50, -1
  %68 = icmp eq i32 %21, %67
  br i1 %68, label %72, label %23

69:                                               ; preds = %64
  %70 = add nsw i32 %50, 1
  %71 = icmp eq i32 %70, %24
  br i1 %71, label %72, label %19

72:                                               ; preds = %69, %66, %58, %14, %54
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
