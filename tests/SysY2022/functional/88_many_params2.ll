; ModuleID = 'tests//SysY2022/functional/88_many_params2.sy'
source_filename = "tests//SysY2022/functional/88_many_params2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z4funciPA59_iiPiiiS1_ii(i32 noundef %0, [59 x i32]* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32* nocapture noundef writeonly %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 0
  %12 = load i32, i32* %11, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %12)
  %13 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 1
  %14 = load i32, i32* %13, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %14)
  %15 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 2
  %16 = load i32, i32* %15, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %16)
  %17 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 3
  %18 = load i32, i32* %17, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %18)
  %19 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 4
  %20 = load i32, i32* %19, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %20)
  %21 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 5
  %22 = load i32, i32* %21, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %22)
  %23 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 6
  %24 = load i32, i32* %23, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %24)
  %25 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 7
  %26 = load i32, i32* %25, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %26)
  %27 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 8
  %28 = load i32, i32* %27, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %28)
  %29 = getelementptr inbounds [59 x i32], [59 x i32]* %1, i64 %10, i64 9
  %30 = load i32, i32* %29, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %30)
  tail call void @_Z5putchi(i32 noundef 10)
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds i32, i32* %3, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %33)
  tail call void @_Z5putchi(i32 noundef 10)
  %34 = icmp slt i32 %8, 10
  br i1 %34, label %35, label %81

35:                                               ; preds = %9
  %36 = sext i32 %8 to i64
  %37 = sub i32 9, %8
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %38, 1
  %40 = icmp ult i32 %37, 7
  br i1 %40, label %68, label %41

41:                                               ; preds = %35
  %42 = and i64 %39, 8589934584
  %43 = add nsw i64 %42, %36
  %44 = trunc i64 %42 to i32
  %45 = mul i32 %44, 7
  %46 = add i32 %45, %7
  %47 = insertelement <4 x i32> poison, i32 %7, i64 0
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> zeroinitializer
  %49 = add <4 x i32> %48, <i32 0, i32 7, i32 14, i32 21>
  br label %50

50:                                               ; preds = %50, %41
  %51 = phi i64 [ 0, %41 ], [ %63, %50 ]
  %52 = phi <4 x i32> [ %49, %41 ], [ %64, %50 ]
  %53 = add i64 %51, %36
  %54 = mul nsw <4 x i32> %52, <i32 128875, i32 128875, i32 128875, i32 128875>
  %55 = mul <4 x i32> %52, <i32 128875, i32 128875, i32 128875, i32 128875>
  %56 = add <4 x i32> %55, <i32 3608500, i32 3608500, i32 3608500, i32 3608500>
  %57 = srem <4 x i32> %54, <i32 3724, i32 3724, i32 3724, i32 3724>
  %58 = srem <4 x i32> %56, <i32 3724, i32 3724, i32 3724, i32 3724>
  %59 = getelementptr inbounds i32, i32* %6, i64 %53
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> %57, <4 x i32>* %60, align 4, !tbaa !5
  %61 = getelementptr inbounds i32, i32* %59, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %58, <4 x i32>* %62, align 4, !tbaa !5
  %63 = add nuw i64 %51, 8
  %64 = add <4 x i32> %52, <i32 56, i32 56, i32 56, i32 56>
  %65 = icmp eq i64 %63, %42
  br i1 %65, label %66, label %50, !llvm.loop !9

66:                                               ; preds = %50
  %67 = icmp eq i64 %39, %42
  br i1 %67, label %81, label %68

68:                                               ; preds = %35, %66
  %69 = phi i64 [ %36, %35 ], [ %43, %66 ]
  %70 = phi i32 [ %7, %35 ], [ %46, %66 ]
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi i64 [ %77, %71 ], [ %69, %68 ]
  %73 = phi i32 [ %78, %71 ], [ %70, %68 ]
  %74 = mul nsw i32 %73, 128875
  %75 = srem i32 %74, 3724
  %76 = getelementptr inbounds i32, i32* %6, i64 %72
  store i32 %75, i32* %76, align 4, !tbaa !5
  %77 = add nsw i64 %72, 1
  %78 = add nsw i32 %73, 7
  %79 = trunc i64 %77 to i32
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %81, label %71, !llvm.loop !12

81:                                               ; preds = %71, %66, %9
  %82 = add nsw i32 %5, %4
  ret i32 %82
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [61 x [67 x i32]], align 16
  %2 = alloca [53 x [59 x i32]], align 16
  %3 = bitcast [61 x [67 x i32]]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16348, i8* nonnull %3) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16348) %3, i8 0, i64 16348, i1 false)
  %4 = bitcast [53 x [59 x i32]]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12508, i8* nonnull %4) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12508) %4, i8 0, i64 12508, i1 false)
  %5 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %1, i64 0, i64 17, i64 1
  store i32 6, i32* %5, align 16, !tbaa !5
  %6 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %1, i64 0, i64 17, i64 3
  store i32 7, i32* %6, align 8, !tbaa !5
  %7 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %1, i64 0, i64 17, i64 4
  store i32 4, i32* %7, align 4, !tbaa !5
  %8 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %1, i64 0, i64 17, i64 7
  store i32 9, i32* %8, align 8, !tbaa !5
  %9 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %1, i64 0, i64 17, i64 11
  store i32 11, i32* %9, align 8, !tbaa !5
  %10 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %2, i64 0, i64 6, i64 1
  store i32 1, i32* %10, align 4, !tbaa !5
  %11 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %2, i64 0, i64 6, i64 2
  store i32 2, i32* %11, align 16, !tbaa !5
  %12 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %2, i64 0, i64 6, i64 3
  store i32 3, i32* %12, align 4, !tbaa !5
  %13 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %2, i64 0, i64 6, i64 9
  store i32 9, i32* %13, align 4, !tbaa !5
  %14 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %2, i64 0, i64 0
  %15 = getelementptr inbounds [61 x [67 x i32]], [61 x [67 x i32]]* %1, i64 0, i64 17, i64 0
  %16 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %2, i64 0, i64 6, i64 0
  %17 = call noundef i32 @_Z4funciPA59_iiPiiiS1_ii(i32 noundef 6, [59 x i32]* noundef nonnull %14, i32 noundef 7, i32* noundef nonnull %15, i32 noundef 3, i32 noundef 0, i32* noundef nonnull %16, i32 noundef 0, i32 noundef 0)
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %29

19:                                               ; preds = %0
  %20 = mul i32 %17, 3
  %21 = zext i32 %20 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ %21, %19 ], [ %26, %22 ]
  %24 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %2, i64 0, i64 6, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %25)
  tail call void @_Z5putchi(i32 noundef 32)
  %26 = add nsw i64 %23, -1
  %27 = trunc i64 %23 to i32
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %22, label %29, !llvm.loop !14

29:                                               ; preds = %22, %0
  tail call void @_Z5putchi(i32 noundef 10)
  call void @llvm.lifetime.end.p0i8(i64 12508, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 16348, i8* nonnull %3) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10}
