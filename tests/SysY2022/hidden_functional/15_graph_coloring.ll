; ModuleID = 'tests//SysY2022/hidden_functional/15_graph_coloring.sy'
source_filename = "tests//SysY2022/hidden_functional/15_graph_coloring.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.graph = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 1, i32 1], [4 x i32] [i32 1, i32 0, i32 1, i32 0], [4 x i32] [i32 1, i32 1, i32 0, i32 1], [4 x i32] [i32 1, i32 0, i32 1, i32 0]], align 16

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13printSolutionPi(i32* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, i32* %0, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %2)
  tail call void @_Z5putchi(i32 noundef 32)
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  %4 = load i32, i32* %3, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %4)
  tail call void @_Z5putchi(i32 noundef 32)
  %5 = getelementptr inbounds i32, i32* %0, i64 2
  %6 = load i32, i32* %5, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %6)
  tail call void @_Z5putchi(i32 noundef 32)
  %7 = getelementptr inbounds i32, i32* %0, i64 3
  %8 = load i32, i32* %7, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %8)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z5putchi(i32 noundef 10)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12printMessagev() local_unnamed_addr #0 {
  tail call void @_Z5putchi(i32 noundef 78)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 116)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z5putchi(i32 noundef 101)
  tail call void @_Z5putchi(i32 noundef 120)
  tail call void @_Z5putchi(i32 noundef 105)
  tail call void @_Z5putchi(i32 noundef 115)
  tail call void @_Z5putchi(i32 noundef 116)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6isSafePA4_iPi([4 x i32]* nocapture noundef readonly %0, i32* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, i64 1
  %4 = load i32, i32* %3, align 4, !tbaa !4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %35

6:                                                ; preds = %53, %49
  %7 = getelementptr inbounds i32, i32* %1, i64 1
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, i64 2
  %9 = load i32, i32* %8, align 4, !tbaa !4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i32, i32* %1, i64 2
  %13 = load i32, i32* %12, align 4, !tbaa !4
  %14 = load i32, i32* %7, align 4, !tbaa !4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %58, label %16

16:                                               ; preds = %11, %6
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, i64 3
  %18 = load i32, i32* %17, align 4, !tbaa !4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i32, i32* %1, i64 3
  %22 = load i32, i32* %21, align 4, !tbaa !4
  %23 = load i32, i32* %7, align 4, !tbaa !4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %58, label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 2, i64 3
  %27 = load i32, i32* %26, align 4, !tbaa !4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i32, i32* %1, i64 2
  %31 = getelementptr inbounds i32, i32* %1, i64 3
  %32 = load i32, i32* %31, align 4, !tbaa !4
  %33 = load i32, i32* %30, align 4, !tbaa !4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %58, label %59

35:                                               ; preds = %2
  %36 = getelementptr inbounds i32, i32* %1, i64 1
  %37 = load i32, i32* %36, align 4, !tbaa !4
  %38 = load i32, i32* %1, align 4, !tbaa !4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %35, %2
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, i64 2
  %42 = load i32, i32* %41, align 4, !tbaa !4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i32, i32* %1, i64 2
  %46 = load i32, i32* %45, align 4, !tbaa !4
  %47 = load i32, i32* %1, align 4, !tbaa !4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, i64 3
  %51 = load i32, i32* %50, align 4, !tbaa !4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %6, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds i32, i32* %1, i64 3
  %55 = load i32, i32* %54, align 4, !tbaa !4
  %56 = load i32, i32* %1, align 4, !tbaa !4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %6

58:                                               ; preds = %29, %11, %20, %35, %44, %53
  br label %59

59:                                               ; preds = %25, %29, %58
  %60 = phi i32 [ 0, %58 ], [ 1, %29 ], [ 1, %25 ]
  ret i32 %60
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z13graphColoringPA4_iiiPi([4 x i32]* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 4
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i32, i32* %3, i64 %7
  %9 = icmp slt i32 %1, 1
  br i1 %9, label %82, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %2, 1
  br label %75

12:                                               ; preds = %4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, i64 1
  %14 = load i32, i32* %13, align 4, !tbaa !4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %50, label %45

16:                                               ; preds = %63, %59
  %17 = getelementptr inbounds i32, i32* %3, i64 1
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, i64 2
  %19 = load i32, i32* %18, align 4, !tbaa !4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds i32, i32* %3, i64 2
  %23 = load i32, i32* %22, align 4, !tbaa !4
  %24 = load i32, i32* %17, align 4, !tbaa !4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %82, label %26

26:                                               ; preds = %21, %16
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, i64 3
  %28 = load i32, i32* %27, align 4, !tbaa !4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i32, i32* %3, i64 3
  %32 = load i32, i32* %31, align 4, !tbaa !4
  %33 = load i32, i32* %17, align 4, !tbaa !4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %82, label %35

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 2, i64 3
  %37 = load i32, i32* %36, align 4, !tbaa !4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i32, i32* %3, i64 2
  %41 = getelementptr inbounds i32, i32* %3, i64 3
  %42 = load i32, i32* %41, align 4, !tbaa !4
  %43 = load i32, i32* %40, align 4, !tbaa !4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %82, label %68

45:                                               ; preds = %12
  %46 = getelementptr inbounds i32, i32* %3, i64 1
  %47 = load i32, i32* %46, align 4, !tbaa !4
  %48 = load i32, i32* %3, align 4, !tbaa !4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %82, label %50

50:                                               ; preds = %45, %12
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, i64 2
  %52 = load i32, i32* %51, align 4, !tbaa !4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds i32, i32* %3, i64 2
  %56 = load i32, i32* %55, align 4, !tbaa !4
  %57 = load i32, i32* %3, align 4, !tbaa !4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %82, label %59

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, i64 3
  %61 = load i32, i32* %60, align 4, !tbaa !4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %16, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds i32, i32* %3, i64 3
  %65 = load i32, i32* %64, align 4, !tbaa !4
  %66 = load i32, i32* %3, align 4, !tbaa !4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %82, label %16

68:                                               ; preds = %39, %35
  %69 = load i32, i32* %3, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %69)
  tail call void @_Z5putchi(i32 noundef 32)
  %70 = load i32, i32* %17, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %70)
  tail call void @_Z5putchi(i32 noundef 32)
  %71 = getelementptr inbounds i32, i32* %3, i64 2
  %72 = load i32, i32* %71, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %72)
  tail call void @_Z5putchi(i32 noundef 32)
  %73 = getelementptr inbounds i32, i32* %3, i64 3
  %74 = load i32, i32* %73, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %74)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %82

75:                                               ; preds = %10, %79
  %76 = phi i32 [ 1, %10 ], [ %80, %79 ]
  store i32 %76, i32* %8, align 4, !tbaa !4
  %77 = tail call noundef i32 @_Z13graphColoringPA4_iiiPi([4 x i32]* noundef %0, i32 noundef %1, i32 noundef %11, i32* noundef %3), !range !8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  store i32 0, i32* %8, align 4, !tbaa !4
  %80 = add nuw i32 %76, 1
  %81 = icmp eq i32 %76, %1
  br i1 %81, label %82, label %75, !llvm.loop !9

82:                                               ; preds = %79, %75, %6, %63, %54, %45, %39, %30, %21, %68
  %83 = phi i32 [ 1, %68 ], [ 0, %21 ], [ 0, %30 ], [ 0, %39 ], [ 0, %45 ], [ 0, %54 ], [ 0, %63 ], [ 0, %6 ], [ 0, %79 ], [ 1, %75 ]
  ret i32 %83
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = alloca [4 x [4 x i32]], align 16
  %2 = alloca [4 x i32], align 16
  %3 = bitcast [4 x i32]* %2 to i8*
  %4 = bitcast [4 x [4 x i32]]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %4, i8* noundef nonnull align 16 dereferenceable(64) bitcast ([4 x [4 x i32]]* @__const.main.graph to i8*), i64 64, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false), !tbaa !4
  %5 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %7 = call noundef i32 @_Z13graphColoringPA4_iiiPi([4 x i32]* noundef nonnull %5, i32 noundef 3, i32 noundef 0, i32* noundef nonnull %6), !range !8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @_Z5putchi(i32 noundef 78)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 116)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z5putchi(i32 noundef 101)
  tail call void @_Z5putchi(i32 noundef 120)
  tail call void @_Z5putchi(i32 noundef 105)
  tail call void @_Z5putchi(i32 noundef 115)
  tail call void @_Z5putchi(i32 noundef 116)
  br label %10

10:                                               ; preds = %9, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{i32 0, i32 2}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
