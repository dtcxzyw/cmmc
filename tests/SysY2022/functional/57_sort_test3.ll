; ModuleID = 'tests//SysY2022/functional/57_sort_test3.sy'
source_filename = "tests//SysY2022/functional/57_sort_test3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z9QuickSortPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %67

5:                                                ; preds = %3, %59
  %6 = phi i32 [ %65, %59 ], [ %1, %3 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !4
  %10 = icmp slt i32 %6, %2
  br i1 %10, label %11, label %59

11:                                               ; preds = %5, %52
  %12 = phi i32 [ %53, %52 ], [ %6, %5 ]
  %13 = phi i32 [ %54, %52 ], [ %2, %5 ]
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = sext i32 %13 to i64
  %17 = sext i32 %12 to i64
  br label %18

18:                                               ; preds = %15, %23
  %19 = phi i64 [ %16, %15 ], [ %24, %23 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !4
  %22 = icmp slt i32 %21, %9
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add nsw i64 %19, -1
  %25 = icmp sgt i64 %24, %17
  br i1 %25, label %18, label %30, !llvm.loop !8

26:                                               ; preds = %18
  %27 = trunc i64 %19 to i32
  %28 = getelementptr inbounds i32, i32* %0, i64 %17
  store i32 %21, i32* %28, align 4, !tbaa !4
  %29 = add nsw i32 %12, 1
  br label %32

30:                                               ; preds = %23
  %31 = trunc i64 %24 to i32
  br label %32

32:                                               ; preds = %30, %11, %26
  %33 = phi i32 [ %27, %26 ], [ %13, %11 ], [ %31, %30 ]
  %34 = phi i32 [ %29, %26 ], [ %12, %11 ], [ %12, %30 ]
  %35 = icmp slt i32 %34, %33
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = sext i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %43
  %39 = phi i64 [ %37, %36 ], [ %44, %43 ]
  %40 = getelementptr inbounds i32, i32* %0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !4
  %42 = icmp slt i32 %41, %9
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = add nsw i64 %39, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %33, %45
  br i1 %46, label %56, label %38, !llvm.loop !10

47:                                               ; preds = %38
  %48 = trunc i64 %39 to i32
  %49 = sext i32 %33 to i64
  %50 = getelementptr inbounds i32, i32* %0, i64 %49
  store i32 %41, i32* %50, align 4, !tbaa !4
  %51 = add nsw i32 %33, -1
  br label %52

52:                                               ; preds = %32, %47
  %53 = phi i32 [ %48, %47 ], [ %34, %32 ]
  %54 = phi i32 [ %51, %47 ], [ %33, %32 ]
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %11, label %56, !llvm.loop !11

56:                                               ; preds = %52, %43
  %57 = phi i32 [ %33, %43 ], [ %53, %52 ]
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %56, %5
  %60 = phi i64 [ %58, %56 ], [ %7, %5 ]
  %61 = phi i32 [ %57, %56 ], [ %6, %5 ]
  %62 = getelementptr inbounds i32, i32* %0, i64 %60
  store i32 %9, i32* %62, align 4, !tbaa !4
  %63 = add nsw i32 %61, -1
  %64 = tail call noundef i32 @_Z9QuickSortPiii(i32* noundef %0, i32 noundef %6, i32 noundef %63)
  %65 = add nsw i32 %61, 1
  %66 = icmp slt i32 %65, %2
  br i1 %66, label %5, label %67

67:                                               ; preds = %59, %3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [10 x i32], align 16
  store i32 10, i32* @n, align 4, !tbaa !4
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  store i32 4, i32* %3, align 16, !tbaa !4
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  store i32 3, i32* %4, align 4, !tbaa !4
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  store i32 9, i32* %5, align 8, !tbaa !4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  store i32 2, i32* %6, align 4, !tbaa !4
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  store i32 0, i32* %7, align 16, !tbaa !4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 5
  store i32 1, i32* %8, align 4, !tbaa !4
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 6
  store i32 6, i32* %9, align 8, !tbaa !4
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 7
  store i32 5, i32* %10, align 4, !tbaa !4
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 8
  store i32 7, i32* %11, align 16, !tbaa !4
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  store i32 8, i32* %12, align 4, !tbaa !4
  %13 = call noundef i32 @_Z9QuickSortPiii(i32* noundef nonnull %3, i32 noundef 0, i32 noundef 9)
  %14 = load i32, i32* @n, align 4, !tbaa !4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %0, %16
  %17 = phi i64 [ %20, %16 ], [ 0, %0 ]
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !4
  call void @_Z6putinti(i32 noundef %19)
  call void @_Z5putchi(i32 noundef 10)
  %20 = add nuw nsw i64 %17, 1
  %21 = load i32, i32* @n, align 4, !tbaa !4
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %16, label %24, !llvm.loop !12

24:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!12 = distinct !{!12, !9}
