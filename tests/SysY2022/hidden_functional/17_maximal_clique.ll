; ModuleID = 'tests//SysY2022/hidden_functional/17_maximal_clique.sy'
source_filename = "tests//SysY2022/hidden_functional/17_maximal_clique.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@store = dso_local local_unnamed_addr global [30 x i32] zeroinitializer, align 16
@n = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@graph = dso_local local_unnamed_addr global [30 x [30 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z9is_cliquei(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 1
  br i1 %2, label %3, label %29

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = zext i32 %0 to i64
  br label %9

6:                                                ; preds = %18, %9
  %7 = add nuw nsw i64 %11, 1
  %8 = icmp eq i64 %12, %5
  br i1 %8, label %29, label %9

9:                                                ; preds = %3, %6
  %10 = phi i64 [ 1, %3 ], [ %12, %6 ]
  %11 = phi i64 [ 2, %3 ], [ %7, %6 ]
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp ult i64 %12, %4
  br i1 %13, label %14, label %6

14:                                               ; preds = %9
  %15 = getelementptr inbounds [30 x i32], [30 x i32]* @store, i64 0, i64 %10
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  br label %20

18:                                               ; preds = %20
  %19 = icmp eq i64 %28, %5
  br i1 %19, label %6, label %20, !llvm.loop !9

20:                                               ; preds = %14, %18
  %21 = phi i64 [ %11, %14 ], [ %28, %18 ]
  %22 = getelementptr inbounds [30 x i32], [30 x i32]* @store, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @graph, i64 0, i64 %17, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp eq i32 %26, 0
  %28 = add nuw nsw i64 %21, 1
  br i1 %27, label %29, label %18

29:                                               ; preds = %6, %20, %1
  %30 = phi i32 [ 1, %1 ], [ 0, %20 ], [ 1, %6 ]
  ret i32 %30
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z10maxCliquesii(i32 %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, i32* @n, align 4, !tbaa !5
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %61, label %5

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [30 x i32], [30 x i32]* @store, i64 0, i64 %6
  %8 = add nsw i32 %1, 1
  %9 = icmp sgt i32 %1, 0
  %10 = zext i32 %8 to i64
  br i1 %9, label %11, label %50

11:                                               ; preds = %5, %38
  %12 = phi i32 [ %39, %38 ], [ %3, %5 ]
  %13 = phi i32 [ %40, %38 ], [ 0, %5 ]
  %14 = phi i32 [ %41, %38 ], [ 1, %5 ]
  store i32 %14, i32* %7, align 4, !tbaa !5
  br label %15

15:                                               ; preds = %35, %11
  %16 = phi i64 [ 1, %11 ], [ %18, %35 ]
  %17 = phi i64 [ 2, %11 ], [ %36, %35 ]
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp ult i64 %18, %10
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = getelementptr inbounds [30 x i32], [30 x i32]* @store, i64 0, i64 %16
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = sext i32 %22 to i64
  br label %24

24:                                               ; preds = %33, %20
  %25 = phi i64 [ %17, %20 ], [ %32, %33 ]
  %26 = getelementptr inbounds [30 x i32], [30 x i32]* @store, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @graph, i64 0, i64 %23, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp eq i32 %30, 0
  %32 = add nuw nsw i64 %25, 1
  br i1 %31, label %38, label %33

33:                                               ; preds = %24
  %34 = icmp eq i64 %32, %10
  br i1 %34, label %35, label %24, !llvm.loop !9

35:                                               ; preds = %33, %15
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %18, %10
  br i1 %37, label %43, label %15

38:                                               ; preds = %24, %43
  %39 = phi i32 [ %49, %43 ], [ %12, %24 ]
  %40 = phi i32 [ %48, %43 ], [ %13, %24 ]
  %41 = add nuw nsw i32 %14, 1
  %42 = icmp slt i32 %14, %39
  br i1 %42, label %11, label %61, !llvm.loop !11

43:                                               ; preds = %35
  %44 = icmp slt i32 %13, %1
  %45 = select i1 %44, i32 %1, i32 %13
  %46 = tail call noundef i32 @_Z10maxCliquesii(i32 undef, i32 noundef %8)
  %47 = icmp sgt i32 %46, %45
  %48 = select i1 %47, i32 %46, i32 %45
  %49 = load i32, i32* @n, align 4, !tbaa !5
  br label %38

50:                                               ; preds = %5, %50
  %51 = phi i32 [ %57, %50 ], [ 0, %5 ]
  %52 = phi i32 [ %58, %50 ], [ 1, %5 ]
  store i32 %52, i32* %7, align 4, !tbaa !5
  %53 = icmp slt i32 %51, %1
  %54 = select i1 %53, i32 %1, i32 %51
  %55 = tail call noundef i32 @_Z10maxCliquesii(i32 undef, i32 noundef %8)
  %56 = icmp sgt i32 %55, %54
  %57 = select i1 %56, i32 %55, i32 %54
  %58 = add nuw nsw i32 %52, 1
  %59 = load i32, i32* @n, align 4, !tbaa !5
  %60 = icmp slt i32 %52, %59
  br i1 %60, label %50, label %61, !llvm.loop !11

61:                                               ; preds = %50, %38, %2
  %62 = phi i32 [ 0, %2 ], [ %40, %38 ], [ %57, %50 ]
  ret i32 %62
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [600 x [2 x i32]], align 16
  %2 = tail call noundef i32 @_Z6getintv()
  store i32 %2, i32* @n, align 4, !tbaa !5
  %3 = tail call noundef i32 @_Z6getintv()
  store i32 %3, i32* @m, align 4, !tbaa !5
  %4 = bitcast [600 x [2 x i32]]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4800, i8* nonnull %4) #5
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %14, label %59

6:                                                ; preds = %14
  %7 = icmp sgt i32 %21, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %6
  %9 = zext i32 %21 to i64
  %10 = and i64 %9, 1
  %11 = icmp eq i32 %21, 1
  br i1 %11, label %47, label %12

12:                                               ; preds = %8
  %13 = and i64 %9, 4294967294
  br label %24

14:                                               ; preds = %0, %14
  %15 = phi i64 [ %20, %14 ], [ 0, %0 ]
  %16 = tail call noundef i32 @_Z6getintv()
  %17 = getelementptr inbounds [600 x [2 x i32]], [600 x [2 x i32]]* %1, i64 0, i64 %15, i64 0
  store i32 %16, i32* %17, align 8, !tbaa !5
  %18 = tail call noundef i32 @_Z6getintv()
  %19 = getelementptr inbounds [600 x [2 x i32]], [600 x [2 x i32]]* %1, i64 0, i64 %15, i64 1
  store i32 %18, i32* %19, align 4, !tbaa !5
  %20 = add nuw nsw i64 %15, 1
  %21 = load i32, i32* @m, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %14, label %6, !llvm.loop !12

24:                                               ; preds = %24, %12
  %25 = phi i64 [ 0, %12 ], [ %44, %24 ]
  %26 = phi i64 [ 0, %12 ], [ %45, %24 ]
  %27 = getelementptr inbounds [600 x [2 x i32]], [600 x [2 x i32]]* %1, i64 0, i64 %25, i64 0
  %28 = load i32, i32* %27, align 16, !tbaa !5
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [600 x [2 x i32]], [600 x [2 x i32]]* %1, i64 0, i64 %25, i64 1
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @graph, i64 0, i64 %29, i64 %32
  store i32 1, i32* %33, align 4, !tbaa !5
  %34 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @graph, i64 0, i64 %32, i64 %29
  store i32 1, i32* %34, align 4, !tbaa !5
  %35 = or i64 %25, 1
  %36 = getelementptr inbounds [600 x [2 x i32]], [600 x [2 x i32]]* %1, i64 0, i64 %35, i64 0
  %37 = load i32, i32* %36, align 8, !tbaa !5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [600 x [2 x i32]], [600 x [2 x i32]]* %1, i64 0, i64 %35, i64 1
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @graph, i64 0, i64 %38, i64 %41
  store i32 1, i32* %42, align 4, !tbaa !5
  %43 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @graph, i64 0, i64 %41, i64 %38
  store i32 1, i32* %43, align 4, !tbaa !5
  %44 = add nuw nsw i64 %25, 2
  %45 = add i64 %26, 2
  %46 = icmp eq i64 %45, %13
  br i1 %46, label %47, label %24, !llvm.loop !13

47:                                               ; preds = %24, %8
  %48 = phi i64 [ 0, %8 ], [ %44, %24 ]
  %49 = icmp eq i64 %10, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds [600 x [2 x i32]], [600 x [2 x i32]]* %1, i64 0, i64 %48, i64 0
  %52 = load i32, i32* %51, align 8, !tbaa !5
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [600 x [2 x i32]], [600 x [2 x i32]]* %1, i64 0, i64 %48, i64 1
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @graph, i64 0, i64 %53, i64 %56
  store i32 1, i32* %57, align 4, !tbaa !5
  %58 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @graph, i64 0, i64 %56, i64 %53
  store i32 1, i32* %58, align 4, !tbaa !5
  br label %59

59:                                               ; preds = %50, %47, %0, %6
  %60 = tail call noundef i32 @_Z10maxCliquesii(i32 undef, i32 noundef 1)
  tail call void @_Z6putinti(i32 noundef %60)
  call void @llvm.lifetime.end.p0i8(i64 4800, i8* nonnull %4) #5
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
