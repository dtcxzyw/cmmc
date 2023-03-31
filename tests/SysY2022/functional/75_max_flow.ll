; ModuleID = 'tests//SysY2022/functional/75_max_flow.sy'
source_filename = "tests//SysY2022/functional/75_max_flow.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@size = dso_local local_unnamed_addr global [10 x i32] zeroinitializer, align 16
@to = dso_local local_unnamed_addr global [10 x [10 x i32]] zeroinitializer, align 16
@cap = dso_local local_unnamed_addr global [10 x [10 x i32]] zeroinitializer, align 16
@rev = dso_local local_unnamed_addr global [10 x [10 x i32]] zeroinitializer, align 16
@used = dso_local local_unnamed_addr global [10 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z9my_memsetPiii(i32* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %88

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = icmp ult i32 %2, 8
  br i1 %7, label %81, label %8

8:                                                ; preds = %5
  %9 = and i64 %6, 4294967288
  %10 = insertelement <4 x i32> poison, i32 %1, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = insertelement <4 x i32> poison, i32 %1, i64 0
  %13 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> zeroinitializer
  %14 = add nsw i64 %9, -8
  %15 = lshr exact i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = and i64 %16, 7
  %18 = icmp ult i64 %14, 56
  br i1 %18, label %66, label %19

19:                                               ; preds = %8
  %20 = and i64 %16, 4611686018427387896
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %63, %21 ]
  %23 = phi i64 [ 0, %19 ], [ %64, %21 ]
  %24 = getelementptr inbounds i32, i32* %0, i64 %22
  %25 = bitcast i32* %24 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %25, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %24, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %27, align 4, !tbaa !5
  %28 = or i64 %22, 8
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = bitcast i32* %29 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %30, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %29, i64 4
  %32 = bitcast i32* %31 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %32, align 4, !tbaa !5
  %33 = or i64 %22, 16
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = bitcast i32* %34 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %35, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %34, i64 4
  %37 = bitcast i32* %36 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %37, align 4, !tbaa !5
  %38 = or i64 %22, 24
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  %40 = bitcast i32* %39 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %40, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %39, i64 4
  %42 = bitcast i32* %41 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %42, align 4, !tbaa !5
  %43 = or i64 %22, 32
  %44 = getelementptr inbounds i32, i32* %0, i64 %43
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %45, align 4, !tbaa !5
  %46 = getelementptr inbounds i32, i32* %44, i64 4
  %47 = bitcast i32* %46 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %47, align 4, !tbaa !5
  %48 = or i64 %22, 40
  %49 = getelementptr inbounds i32, i32* %0, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %50, align 4, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %49, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %52, align 4, !tbaa !5
  %53 = or i64 %22, 48
  %54 = getelementptr inbounds i32, i32* %0, i64 %53
  %55 = bitcast i32* %54 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %55, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, i32* %54, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %57, align 4, !tbaa !5
  %58 = or i64 %22, 56
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %60, align 4, !tbaa !5
  %61 = getelementptr inbounds i32, i32* %59, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %62, align 4, !tbaa !5
  %63 = add nuw i64 %22, 64
  %64 = add nuw i64 %23, 8
  %65 = icmp eq i64 %64, %20
  br i1 %65, label %66, label %21, !llvm.loop !9

66:                                               ; preds = %21, %8
  %67 = phi i64 [ 0, %8 ], [ %63, %21 ]
  %68 = icmp eq i64 %17, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66, %69
  %70 = phi i64 [ %76, %69 ], [ %67, %66 ]
  %71 = phi i64 [ %77, %69 ], [ 0, %66 ]
  %72 = getelementptr inbounds i32, i32* %0, i64 %70
  %73 = bitcast i32* %72 to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %73, align 4, !tbaa !5
  %74 = getelementptr inbounds i32, i32* %72, i64 4
  %75 = bitcast i32* %74 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %75, align 4, !tbaa !5
  %76 = add nuw i64 %70, 8
  %77 = add i64 %71, 1
  %78 = icmp eq i64 %77, %17
  br i1 %78, label %79, label %69, !llvm.loop !12

79:                                               ; preds = %69, %66
  %80 = icmp eq i64 %9, %6
  br i1 %80, label %88, label %81

81:                                               ; preds = %5, %79
  %82 = phi i64 [ 0, %5 ], [ %9, %79 ]
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi i64 [ %86, %83 ], [ %82, %81 ]
  %85 = getelementptr inbounds i32, i32* %0, i64 %84
  store i32 %1, i32* %85, align 4, !tbaa !5
  %86 = add nuw nsw i64 %84, 1
  %87 = icmp eq i64 %86, %6
  br i1 %87, label %88, label %83, !llvm.loop !14

88:                                               ; preds = %83, %79, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z8add_nodeiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %4, i64 %7
  store i32 %1, i32* %8, align 4, !tbaa !5
  %9 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %4, i64 %7
  store i32 %2, i32* %9, align 4, !tbaa !5
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %4, i64 %7
  store i32 %12, i32* %13, align 4, !tbaa !5
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %10, i64 %14
  store i32 %0, i32* %15, align 4, !tbaa !5
  %16 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %10, i64 %14
  store i32 0, i32* %16, align 4, !tbaa !5
  %17 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %10, i64 %14
  store i32 %6, i32* %17, align 4, !tbaa !5
  %18 = add nsw i32 %6, 1
  store i32 %18, i32* %5, align 4, !tbaa !5
  %19 = load i32, i32* %11, align 4, !tbaa !5
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z3dfsiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %0, %1
  br i1 %4, label %47, label %5

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i64 0, i64 %6
  store i32 1, i32* %7, align 4, !tbaa !5
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %6
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %5, %20
  %12 = phi i32 [ %21, %20 ], [ %9, %5 ]
  %13 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %14 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %6, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* @used, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %25, %11, %45
  %21 = phi i32 [ %46, %45 ], [ %12, %11 ], [ %12, %25 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = sext i32 %21 to i64
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %11, label %47, !llvm.loop !16

25:                                               ; preds = %11
  %26 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %6, i64 %13
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %20, label %29

29:                                               ; preds = %25
  %30 = icmp sgt i32 %27, %2
  %31 = select i1 %30, i32 %2, i32 %27
  %32 = tail call noundef i32 @_Z3dfsiii(i32 noundef %15, i32 noundef %1, i32 noundef %31)
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, i32* %26, align 4, !tbaa !5
  %36 = sub nsw i32 %35, %32
  store i32 %36, i32* %26, align 4, !tbaa !5
  %37 = load i32, i32* %14, align 4, !tbaa !5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %6, i64 %13
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %38, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = add nsw i32 %43, %32
  store i32 %44, i32* %42, align 4, !tbaa !5
  br label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %8, align 4, !tbaa !5
  br label %20

47:                                               ; preds = %20, %5, %34, %3
  %48 = phi i32 [ %2, %3 ], [ %32, %34 ], [ 0, %5 ], [ 0, %20 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z8max_flowii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %7, %3 ]
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @used to i8*), i8 0, i64 40, i1 false), !tbaa !5
  %5 = tail call noundef i32 @_Z3dfsiii(i32 noundef %0, i32 noundef %1, i32 noundef 1879048192)
  %6 = icmp eq i32 %5, 0
  %7 = add nsw i32 %5, %4
  br i1 %6, label %8, label %3, !llvm.loop !17

8:                                                ; preds = %3
  ret i32 %4
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @size to i8*), i8 0, i64 40, i1 false), !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %28

4:                                                ; preds = %0, %4
  %5 = phi i32 [ %26, %4 ], [ %2, %0 ]
  %6 = tail call noundef i32 @_Z6getintv()
  %7 = tail call noundef i32 @_Z6getintv()
  %8 = tail call noundef i32 @_Z6getintv()
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %9, i64 %12
  store i32 %7, i32* %13, align 4, !tbaa !5
  %14 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %9, i64 %12
  store i32 %8, i32* %14, align 4, !tbaa !5
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* @size, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %9, i64 %12
  store i32 %17, i32* %18, align 4, !tbaa !5
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %15, i64 %19
  store i32 %6, i32* %20, align 4, !tbaa !5
  %21 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %15, i64 %19
  store i32 0, i32* %21, align 4, !tbaa !5
  %22 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %15, i64 %19
  store i32 %11, i32* %22, align 4, !tbaa !5
  %23 = add nsw i32 %11, 1
  store i32 %23, i32* %10, align 4, !tbaa !5
  %24 = load i32, i32* %16, align 4, !tbaa !5
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %16, align 4, !tbaa !5
  %26 = add nsw i32 %5, -1
  %27 = icmp ugt i32 %5, 1
  br i1 %27, label %4, label %28, !llvm.loop !18

28:                                               ; preds = %4, %0
  br label %29

29:                                               ; preds = %28, %29
  %30 = phi i32 [ %33, %29 ], [ 0, %28 ]
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @used to i8*), i8 0, i64 40, i1 false) #6, !tbaa !5
  %31 = tail call noundef i32 @_Z3dfsiii(i32 noundef 1, i32 noundef %1, i32 noundef 1879048192) #6
  %32 = icmp eq i32 %31, 0
  %33 = add nsw i32 %31, %30
  br i1 %32, label %34, label %29, !llvm.loop !17

34:                                               ; preds = %29
  tail call void @_Z6putinti(i32 noundef %30)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
