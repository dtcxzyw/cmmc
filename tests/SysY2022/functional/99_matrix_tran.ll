; ModuleID = 'tests//SysY2022/functional/99_matrix_tran.sy'
source_filename = "tests//SysY2022/functional/99_matrix_tran.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@M = dso_local local_unnamed_addr global i32 0, align 4
@L = dso_local local_unnamed_addr global i32 0, align 4
@N = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4tranPfS_S_S_S_S_S_S_S_(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, float* nocapture noundef readonly %2, float* nocapture readnone %3, float* nocapture readnone %4, float* nocapture readnone %5, float* nocapture noundef writeonly %6, float* nocapture noundef writeonly %7, float* nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds float, float* %2, i64 1
  %11 = load float, float* %10, align 4, !tbaa !5
  %12 = getelementptr inbounds float, float* %7, i64 2
  store float %11, float* %12, align 4, !tbaa !5
  %13 = getelementptr inbounds float, float* %1, i64 2
  %14 = load float, float* %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, float* %8, i64 1
  store float %14, float* %15, align 4, !tbaa !5
  %16 = load float, float* %1, align 4, !tbaa !5
  %17 = getelementptr inbounds float, float* %6, i64 1
  store float %16, float* %17, align 4, !tbaa !5
  %18 = load float, float* %2, align 4, !tbaa !5
  %19 = getelementptr inbounds float, float* %6, i64 2
  store float %18, float* %19, align 4, !tbaa !5
  %20 = getelementptr inbounds float, float* %0, i64 1
  %21 = load float, float* %20, align 4, !tbaa !5
  store float %21, float* %7, align 4, !tbaa !5
  %22 = getelementptr inbounds float, float* %0, i64 2
  %23 = load float, float* %22, align 4, !tbaa !5
  store float %23, float* %8, align 4, !tbaa !5
  %24 = getelementptr inbounds float, float* %1, i64 1
  %25 = load float, float* %24, align 4, !tbaa !5
  %26 = getelementptr inbounds float, float* %7, i64 1
  store float %25, float* %26, align 4, !tbaa !5
  %27 = getelementptr inbounds float, float* %2, i64 2
  %28 = load float, float* %27, align 4, !tbaa !5
  %29 = getelementptr inbounds float, float* %8, i64 2
  store float %28, float* %29, align 4, !tbaa !5
  %30 = load float, float* %0, align 4, !tbaa !5
  store float %30, float* %6, align 4, !tbaa !5
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
  store i32 3, i32* @N, align 4, !tbaa !9
  store i32 3, i32* @M, align 4, !tbaa !9
  store i32 3, i32* @L, align 4, !tbaa !9
  %4 = bitcast [6 x float]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4
  %5 = bitcast [3 x float]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #4
  %6 = bitcast [3 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %6) #4
  %7 = getelementptr inbounds [6 x float], [6 x float]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %9 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 0
  %10 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 2
  store float 1.000000e+00, float* %10, align 4, !tbaa !5
  %11 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 1
  store float 2.000000e+00, float* %11, align 4, !tbaa !5
  %12 = getelementptr inbounds [6 x float], [6 x float]* %1, i64 0, i64 1
  store float 0.000000e+00, float* %12, align 4, !tbaa !5
  %13 = getelementptr inbounds [6 x float], [6 x float]* %1, i64 0, i64 2
  store float 0.000000e+00, float* %13, align 8, !tbaa !5
  store float 1.000000e+00, float* %8, align 4, !tbaa !5
  store float 2.000000e+00, float* %9, align 4, !tbaa !5
  %14 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 1
  store float 1.000000e+00, float* %14, align 4, !tbaa !5
  %15 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 2
  store float 2.000000e+00, float* %15, align 4, !tbaa !5
  store float 0.000000e+00, float* %7, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef 0)
  %16 = load i32, i32* @N, align 4, !tbaa !9
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %27, !llvm.loop !11

18:                                               ; preds = %0, %18
  %19 = phi i64 [ %23, %18 ], [ 1, %0 ]
  %20 = getelementptr inbounds [6 x float], [6 x float]* %1, i64 0, i64 %19
  %21 = load float, float* %20, align 4, !tbaa !5
  %22 = fptosi float %21 to i32
  tail call void @_Z6putinti(i32 noundef %22)
  %23 = add nuw nsw i64 %19, 1
  %24 = load i32, i32* @N, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !11

27:                                               ; preds = %18, %0
  tail call void @_Z5putchi(i32 noundef 10)
  %28 = load i32, i32* @N, align 4, !tbaa !9
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  tail call void @_Z6putinti(i32 noundef 1)
  %31 = load i32, i32* @N, align 4, !tbaa !9
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %42, !llvm.loop !13

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %38, %33 ], [ 1, %30 ]
  %35 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !5
  %37 = fptosi float %36 to i32
  tail call void @_Z6putinti(i32 noundef %37)
  %38 = add nuw nsw i64 %34, 1
  %39 = load i32, i32* @N, align 4, !tbaa !9
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %33, label %42, !llvm.loop !13

42:                                               ; preds = %33, %30, %27
  tail call void @_Z5putchi(i32 noundef 10)
  %43 = load i32, i32* @N, align 4, !tbaa !9
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  tail call void @_Z6putinti(i32 noundef 2)
  %46 = load i32, i32* @N, align 4, !tbaa !9
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %57, !llvm.loop !14

48:                                               ; preds = %45, %48
  %49 = phi i64 [ %53, %48 ], [ 1, %45 ]
  %50 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !5
  %52 = fptosi float %51 to i32
  tail call void @_Z6putinti(i32 noundef %52)
  %53 = add nuw nsw i64 %49, 1
  %54 = load i32, i32* @N, align 4, !tbaa !9
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
