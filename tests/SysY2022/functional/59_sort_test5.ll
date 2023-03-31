; ModuleID = 'tests//SysY2022/functional/59_sort_test5.sy'
source_filename = "tests//SysY2022/functional/59_sort_test5.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4swapPiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !5
  store i32 %9, i32* %5, align 4, !tbaa !5
  store i32 %6, i32* %8, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z10heap_ajustPiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = shl nsw i32 %1, 1
  %5 = or i32 %4, 1
  %6 = icmp sgt i32 %5, %2
  br i1 %6, label %35, label %7

7:                                                ; preds = %3, %31
  %8 = phi i32 [ %33, %31 ], [ %5, %3 ]
  %9 = phi i32 [ %32, %31 ], [ %4, %3 ]
  %10 = phi i32 [ %23, %31 ], [ %1, %3 ]
  %11 = icmp slt i32 %8, %2
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i32, i32* %0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = add i32 %9, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp slt i32 %15, %19
  %21 = select i1 %20, i32 %16, i32 %8
  br label %22

22:                                               ; preds = %12, %7
  %23 = phi i32 [ %8, %7 ], [ %21, %12 ]
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  store i32 %29, i32* %25, align 4, !tbaa !5
  store i32 %26, i32* %28, align 4, !tbaa !5
  %32 = shl nsw i32 %23, 1
  %33 = or i32 %32, 1
  %34 = icmp sgt i32 %33, %2
  br i1 %34, label %35, label %7, !llvm.loop !9

35:                                               ; preds = %22, %31, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z9heap_sortPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %85

4:                                                ; preds = %2
  %5 = lshr i32 %1, 1
  %6 = add nsw i32 %1, -1
  br label %7

7:                                                ; preds = %4, %41
  %8 = phi i32 [ %5, %4 ], [ %9, %41 ]
  %9 = add nsw i32 %8, -1
  %10 = shl nuw nsw i32 %9, 1
  %11 = or i32 %10, 1
  %12 = icmp slt i32 %11, %1
  br i1 %12, label %13, label %41

13:                                               ; preds = %7, %37
  %14 = phi i32 [ %39, %37 ], [ %11, %7 ]
  %15 = phi i32 [ %38, %37 ], [ %10, %7 ]
  %16 = phi i32 [ %29, %37 ], [ %9, %7 ]
  %17 = icmp slt i32 %14, %6
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = sext i32 %14 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = add i32 %15, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp slt i32 %21, %25
  %27 = select i1 %26, i32 %22, i32 %14
  br label %28

28:                                               ; preds = %18, %13
  %29 = phi i32 [ %14, %13 ], [ %27, %18 ]
  %30 = sext i32 %16 to i64
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  store i32 %35, i32* %31, align 4, !tbaa !5
  store i32 %32, i32* %34, align 4, !tbaa !5
  %38 = shl nsw i32 %29, 1
  %39 = or i32 %38, 1
  %40 = icmp slt i32 %39, %1
  br i1 %40, label %13, label %41, !llvm.loop !9

41:                                               ; preds = %28, %37, %7
  %42 = icmp sgt i32 %8, 1
  br i1 %42, label %7, label %43, !llvm.loop !11

43:                                               ; preds = %41
  br i1 %3, label %44, label %85

44:                                               ; preds = %43
  %45 = zext i32 %6 to i64
  br label %46

46:                                               ; preds = %44, %83
  %47 = phi i64 [ %45, %44 ], [ %51, %83 ]
  %48 = load i32, i32* %0, align 4, !tbaa !5
  %49 = getelementptr inbounds i32, i32* %0, i64 %47
  %50 = load i32, i32* %49, align 4, !tbaa !5
  store i32 %50, i32* %0, align 4, !tbaa !5
  store i32 %48, i32* %49, align 4, !tbaa !5
  %51 = add nsw i64 %47, -1
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %46, %78
  %55 = phi i32 [ %80, %78 ], [ 1, %46 ]
  %56 = phi i32 [ %79, %78 ], [ 0, %46 ]
  %57 = phi i32 [ %70, %78 ], [ 0, %46 ]
  %58 = icmp slt i32 %55, %52
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = sext i32 %55 to i64
  %61 = getelementptr inbounds i32, i32* %0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = add i32 %56, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %0, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = icmp slt i32 %62, %66
  %68 = select i1 %67, i32 %63, i32 %55
  br label %69

69:                                               ; preds = %59, %54
  %70 = phi i32 [ %55, %54 ], [ %68, %59 ]
  %71 = sext i32 %57 to i64
  %72 = getelementptr inbounds i32, i32* %0, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !5
  %74 = sext i32 %70 to i64
  %75 = getelementptr inbounds i32, i32* %0, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  store i32 %76, i32* %72, align 4, !tbaa !5
  store i32 %73, i32* %75, align 4, !tbaa !5
  %79 = shl nsw i32 %70, 1
  %80 = or i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = icmp sgt i64 %47, %81
  br i1 %82, label %54, label %83, !llvm.loop !9

83:                                               ; preds = %69, %78, %46
  %84 = icmp sgt i64 %47, 1
  br i1 %84, label %46, label %85, !llvm.loop !12

85:                                               ; preds = %83, %2, %43
  ret i32 0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [10 x i32], align 16
  store i32 10, i32* @n, align 4, !tbaa !5
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #5
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %4 = bitcast [10 x i32]* %1 to <4 x i32>*
  store <4 x i32> <i32 4, i32 3, i32 9, i32 2>, <4 x i32>* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  %6 = bitcast i32* %5 to <4 x i32>*
  store <4 x i32> <i32 0, i32 1, i32 6, i32 5>, <4 x i32>* %6, align 16, !tbaa !5
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 8
  store i32 7, i32* %7, align 16, !tbaa !5
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  store i32 8, i32* %8, align 4, !tbaa !5
  %9 = call noundef i32 @_Z9heap_sortPii(i32* noundef nonnull %3, i32 noundef 10)
  %10 = load i32, i32* @n, align 4, !tbaa !5
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %0, %12
  %13 = phi i64 [ %16, %12 ], [ 0, %0 ]
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %15)
  tail call void @_Z5putchi(i32 noundef 10)
  %16 = add nuw nsw i64 %13, 1
  %17 = load i32, i32* @n, align 4, !tbaa !5
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %12, label %20, !llvm.loop !13

20:                                               ; preds = %12, %0
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #5
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!13 = distinct !{!13, !10}
