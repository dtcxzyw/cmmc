; ModuleID = 'tests//SysY2022/functional/97_matrix_sub.sy'
source_filename = "tests//SysY2022/functional/97_matrix_sub.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@N = dso_local local_unnamed_addr global i32 0, align 4
@M = dso_local local_unnamed_addr global i32 0, align 4
@L = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z3subPfS_S_S_S_S_S_S_S_(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, float* nocapture noundef readonly %2, float* nocapture noundef readonly %3, float* nocapture noundef readonly %4, float* nocapture noundef readonly %5, float* nocapture noundef writeonly %6, float* nocapture noundef writeonly %7, float* nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = load float, float* %0, align 4, !tbaa !5
  %11 = load float, float* %3, align 4, !tbaa !5
  %12 = fsub float %10, %11
  store float %12, float* %6, align 4, !tbaa !5
  %13 = load float, float* %1, align 4, !tbaa !5
  %14 = load float, float* %4, align 4, !tbaa !5
  %15 = fsub float %13, %14
  store float %15, float* %7, align 4, !tbaa !5
  %16 = load float, float* %2, align 4, !tbaa !5
  %17 = load float, float* %5, align 4, !tbaa !5
  %18 = fsub float %16, %17
  store float %18, float* %8, align 4, !tbaa !5
  %19 = getelementptr inbounds float, float* %0, i64 1
  %20 = load float, float* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds float, float* %3, i64 1
  %22 = load float, float* %21, align 4, !tbaa !5
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds float, float* %6, i64 1
  store float %23, float* %24, align 4, !tbaa !5
  %25 = getelementptr inbounds float, float* %1, i64 1
  %26 = load float, float* %25, align 4, !tbaa !5
  %27 = getelementptr inbounds float, float* %4, i64 1
  %28 = load float, float* %27, align 4, !tbaa !5
  %29 = fsub float %26, %28
  %30 = getelementptr inbounds float, float* %7, i64 1
  store float %29, float* %30, align 4, !tbaa !5
  %31 = getelementptr inbounds float, float* %2, i64 1
  %32 = load float, float* %31, align 4, !tbaa !5
  %33 = getelementptr inbounds float, float* %5, i64 1
  %34 = load float, float* %33, align 4, !tbaa !5
  %35 = fsub float %32, %34
  %36 = getelementptr inbounds float, float* %8, i64 1
  store float %35, float* %36, align 4, !tbaa !5
  %37 = getelementptr inbounds float, float* %0, i64 2
  %38 = load float, float* %37, align 4, !tbaa !5
  %39 = getelementptr inbounds float, float* %3, i64 2
  %40 = load float, float* %39, align 4, !tbaa !5
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds float, float* %6, i64 2
  store float %41, float* %42, align 4, !tbaa !5
  %43 = getelementptr inbounds float, float* %1, i64 2
  %44 = load float, float* %43, align 4, !tbaa !5
  %45 = getelementptr inbounds float, float* %4, i64 2
  %46 = load float, float* %45, align 4, !tbaa !5
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds float, float* %7, i64 2
  store float %47, float* %48, align 4, !tbaa !5
  %49 = getelementptr inbounds float, float* %2, i64 2
  %50 = load float, float* %49, align 4, !tbaa !5
  %51 = getelementptr inbounds float, float* %5, i64 2
  %52 = load float, float* %51, align 4, !tbaa !5
  %53 = fsub float %50, %52
  %54 = getelementptr inbounds float, float* %8, i64 2
  store float %53, float* %54, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  store i32 3, i32* @N, align 4, !tbaa !9
  store i32 3, i32* @M, align 4, !tbaa !9
  store i32 3, i32* @L, align 4, !tbaa !9
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
