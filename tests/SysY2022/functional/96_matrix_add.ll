; ModuleID = 'tests//SysY2022/functional/96_matrix_add.sy'
source_filename = "tests//SysY2022/functional/96_matrix_add.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@M = dso_local local_unnamed_addr global i32 0, align 4
@L = dso_local local_unnamed_addr global i32 0, align 4
@N = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z3addPfS_S_S_S_S_S_S_S_(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, float* nocapture noundef readonly %2, float* nocapture noundef readonly %3, float* nocapture noundef readonly %4, float* nocapture noundef readonly %5, float* nocapture noundef writeonly %6, float* nocapture noundef writeonly %7, float* nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = load i32, i32* @M, align 4, !tbaa !4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = zext i32 %10 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %34, %14 ]
  %16 = getelementptr inbounds float, float* %0, i64 %15
  %17 = load float, float* %16, align 4, !tbaa !8
  %18 = getelementptr inbounds float, float* %3, i64 %15
  %19 = load float, float* %18, align 4, !tbaa !8
  %20 = fadd float %17, %19
  %21 = getelementptr inbounds float, float* %6, i64 %15
  store float %20, float* %21, align 4, !tbaa !8
  %22 = getelementptr inbounds float, float* %1, i64 %15
  %23 = load float, float* %22, align 4, !tbaa !8
  %24 = getelementptr inbounds float, float* %4, i64 %15
  %25 = load float, float* %24, align 4, !tbaa !8
  %26 = fadd float %23, %25
  %27 = getelementptr inbounds float, float* %7, i64 %15
  store float %26, float* %27, align 4, !tbaa !8
  %28 = getelementptr inbounds float, float* %2, i64 %15
  %29 = load float, float* %28, align 4, !tbaa !8
  %30 = getelementptr inbounds float, float* %5, i64 %15
  %31 = load float, float* %30, align 4, !tbaa !8
  %32 = fadd float %29, %31
  %33 = getelementptr inbounds float, float* %8, i64 %15
  store float %32, float* %33, align 4, !tbaa !8
  %34 = add nuw nsw i64 %15, 1
  %35 = icmp eq i64 %34, %13
  br i1 %35, label %36, label %14, !llvm.loop !10

36:                                               ; preds = %14, %9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [6 x float], align 16
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  store i32 3, i32* @N, align 4, !tbaa !4
  store i32 3, i32* @M, align 4, !tbaa !4
  store i32 3, i32* @L, align 4, !tbaa !4
  %4 = bitcast [6 x float]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4
  %5 = bitcast [3 x float]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #4
  %6 = bitcast [3 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %6) #4
  %7 = getelementptr inbounds [6 x float], [6 x float]* %1, i64 0, i64 0
  store float 0.000000e+00, float* %7, align 16, !tbaa !8
  %8 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  store float 0.000000e+00, float* %8, align 4, !tbaa !8
  %9 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 0
  store float 0.000000e+00, float* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds [6 x float], [6 x float]* %1, i64 0, i64 1
  store float 2.000000e+00, float* %10, align 4, !tbaa !8
  %11 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 1
  store float 2.000000e+00, float* %11, align 4, !tbaa !8
  %12 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 1
  store float 2.000000e+00, float* %12, align 4, !tbaa !8
  %13 = getelementptr inbounds [6 x float], [6 x float]* %1, i64 0, i64 2
  store float 4.000000e+00, float* %13, align 8, !tbaa !8
  %14 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 2
  store float 4.000000e+00, float* %14, align 4, !tbaa !8
  %15 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 2
  store float 4.000000e+00, float* %15, align 4, !tbaa !8
  tail call void @_Z6putinti(i32 noundef 0)
  %16 = load i32, i32* @N, align 4, !tbaa !4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %27, !llvm.loop !12

18:                                               ; preds = %0, %18
  %19 = phi i64 [ %23, %18 ], [ 1, %0 ]
  %20 = getelementptr inbounds [6 x float], [6 x float]* %1, i64 0, i64 %19
  %21 = load float, float* %20, align 4, !tbaa !8
  %22 = fptosi float %21 to i32
  tail call void @_Z6putinti(i32 noundef %22)
  %23 = add nuw nsw i64 %19, 1
  %24 = load i32, i32* @N, align 4, !tbaa !4
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !12

27:                                               ; preds = %18, %0
  tail call void @_Z5putchi(i32 noundef 10)
  %28 = load i32, i32* @N, align 4, !tbaa !4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  tail call void @_Z6putinti(i32 noundef 0)
  %31 = load i32, i32* @N, align 4, !tbaa !4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %42, !llvm.loop !13

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %38, %33 ], [ 1, %30 ]
  %35 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !8
  %37 = fptosi float %36 to i32
  tail call void @_Z6putinti(i32 noundef %37)
  %38 = add nuw nsw i64 %34, 1
  %39 = load i32, i32* @N, align 4, !tbaa !4
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %33, label %42, !llvm.loop !13

42:                                               ; preds = %33, %30, %27
  tail call void @_Z5putchi(i32 noundef 10)
  %43 = load i32, i32* @N, align 4, !tbaa !4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  tail call void @_Z6putinti(i32 noundef 0)
  %46 = load i32, i32* @N, align 4, !tbaa !4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %57, !llvm.loop !14

48:                                               ; preds = %45, %48
  %49 = phi i64 [ %53, %48 ], [ 1, %45 ]
  %50 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !8
  %52 = fptosi float %51 to i32
  tail call void @_Z6putinti(i32 noundef %52)
  %53 = add nuw nsw i64 %49, 1
  %54 = load i32, i32* @N, align 4, !tbaa !4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %48, label %57, !llvm.loop !14

57:                                               ; preds = %48, %45, %42
  tail call void @_Z5putchi(i32 noundef 10)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
