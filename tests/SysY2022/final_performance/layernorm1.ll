; ModuleID = 'tests//SysY2022/final_performance/layernorm1.sy'
source_filename = "tests//SysY2022/final_performance/layernorm1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [1000 x [1000 x float]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z5myAbsf(float noundef %0) local_unnamed_addr #0 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z4sqrtf(float noundef %0) local_unnamed_addr #1 {
  %2 = fadd float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = fmul float %2, 5.000000e-01
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %3)
  %6 = fcmp olt float %5, 0.000000e+00
  %7 = fneg float %5
  %8 = select i1 %6, float %7, float %5
  %9 = fpext float %8 to double
  %10 = fcmp ogt double %9, 1.000000e-03
  br i1 %10, label %11, label %28

11:                                               ; preds = %1, %11
  %12 = phi float [ %21, %11 ], [ %4, %1 ]
  %13 = phi float [ %18, %11 ], [ %0, %1 ]
  %14 = phi float [ %17, %11 ], [ 0.000000e+00, %1 ]
  %15 = fmul float %12, %12
  %16 = fcmp ogt float %15, %0
  %17 = select i1 %16, float %14, float %12
  %18 = select i1 %16, float %12, float %13
  %19 = select i1 %16, float %14, float %13
  %20 = fadd float %12, %19
  %21 = fmul float %20, 5.000000e-01
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %3)
  %23 = fcmp olt float %22, 0.000000e+00
  %24 = fneg float %22
  %25 = select i1 %23, float %24, float %22
  %26 = fpext float %25 to double
  %27 = fcmp ogt double %26, 1.000000e-03
  br i1 %27, label %11, label %28, !llvm.loop !4

28:                                               ; preds = %11, %1
  %29 = phi float [ %4, %1 ], [ %21, %11 ]
  ret float %29
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = alloca [1000 x float], align 16
  %2 = alloca [1000 x float], align 16
  br label %6

3:                                                ; preds = %6
  %4 = add nuw nsw i64 %7, 1
  %5 = icmp eq i64 %4, 1000
  br i1 %5, label %11, label %6, !llvm.loop !6

6:                                                ; preds = %0, %3
  %7 = phi i64 [ 0, %0 ], [ %4, %3 ]
  %8 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %7, i64 0
  %9 = tail call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %8)
  %10 = icmp eq i32 %9, 1000
  br i1 %10, label %3, label %173

11:                                               ; preds = %3
  tail call void @_Z15_sysy_starttimei(i32 noundef 42)
  %12 = bitcast [1000 x float]* %1 to i8*
  %13 = bitcast [1000 x float]* %2 to i8*
  br label %14

14:                                               ; preds = %11, %139
  %15 = phi float [ 0.000000e+00, %11 ], [ %133, %139 ]
  %16 = phi i32 [ 0, %11 ], [ %140, %139 ]
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* nonnull %12) #6
  br label %17

17:                                               ; preds = %14, %44
  %18 = phi i64 [ 0, %14 ], [ %46, %44 ]
  %19 = getelementptr inbounds [1000 x float], [1000 x float]* %1, i64 0, i64 %18
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i64 [ 0, %17 ], [ %42, %20 ]
  %22 = phi float [ 0.000000e+00, %17 ], [ %41, %20 ]
  %23 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %18, i64 %21
  %24 = load float, float* %23, align 4, !tbaa !7
  %25 = fadd float %22, %24
  %26 = add nuw nsw i64 %21, 1
  %27 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %18, i64 %26
  %28 = load float, float* %27, align 4, !tbaa !7
  %29 = fadd float %25, %28
  %30 = add nuw nsw i64 %21, 2
  %31 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %18, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !7
  %33 = fadd float %29, %32
  %34 = add nuw nsw i64 %21, 3
  %35 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %18, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !7
  %37 = fadd float %33, %36
  %38 = add nuw nsw i64 %21, 4
  %39 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %18, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !7
  %41 = fadd float %37, %40
  %42 = add nuw nsw i64 %21, 5
  %43 = icmp eq i64 %42, 1000
  br i1 %43, label %44, label %20, !llvm.loop !11

44:                                               ; preds = %20
  %45 = fdiv float %41, 1.000000e+03
  store float %45, float* %19, align 4, !tbaa !7
  %46 = add nuw nsw i64 %18, 1
  %47 = icmp eq i64 %46, 1000
  br i1 %47, label %48, label %17, !llvm.loop !12

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* nonnull %13) #6
  br label %49

49:                                               ; preds = %48, %109
  %50 = phi i64 [ 0, %48 ], [ %111, %109 ]
  %51 = getelementptr inbounds [1000 x float], [1000 x float]* %2, i64 0, i64 %50
  %52 = getelementptr inbounds [1000 x float], [1000 x float]* %1, i64 0, i64 %50
  %53 = load float, float* %52, align 4, !tbaa !7
  br label %54

54:                                               ; preds = %54, %49
  %55 = phi i64 [ 0, %49 ], [ %76, %54 ]
  %56 = phi float [ 0.000000e+00, %49 ], [ %75, %54 ]
  %57 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %50, i64 %55
  %58 = load float, float* %57, align 16, !tbaa !7
  %59 = fsub float %58, %53
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %56)
  %61 = or i64 %55, 1
  %62 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %50, i64 %61
  %63 = load float, float* %62, align 4, !tbaa !7
  %64 = fsub float %63, %53
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %60)
  %66 = or i64 %55, 2
  %67 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %50, i64 %66
  %68 = load float, float* %67, align 8, !tbaa !7
  %69 = fsub float %68, %53
  %70 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %65)
  %71 = or i64 %55, 3
  %72 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %50, i64 %71
  %73 = load float, float* %72, align 4, !tbaa !7
  %74 = fsub float %73, %53
  %75 = tail call float @llvm.fmuladd.f32(float %74, float %74, float %70)
  %76 = add nuw nsw i64 %55, 4
  %77 = icmp eq i64 %76, 1000
  br i1 %77, label %78, label %54, !llvm.loop !13

78:                                               ; preds = %54
  %79 = fdiv float %75, 1.000000e+03
  %80 = fpext float %79 to double
  %81 = fadd double %80, 1.000000e-02
  %82 = fptrunc double %81 to float
  %83 = fadd float %82, 0.000000e+00
  %84 = fneg float %82
  %85 = fmul float %83, 5.000000e-01
  %86 = tail call float @llvm.fmuladd.f32(float %85, float %85, float %84) #6
  %87 = fcmp olt float %86, 0.000000e+00
  %88 = fneg float %86
  %89 = select i1 %87, float %88, float %86
  %90 = fpext float %89 to double
  %91 = fcmp ogt double %90, 1.000000e-03
  br i1 %91, label %92, label %109

92:                                               ; preds = %78, %92
  %93 = phi float [ %102, %92 ], [ %85, %78 ]
  %94 = phi float [ %99, %92 ], [ %82, %78 ]
  %95 = phi float [ %98, %92 ], [ 0.000000e+00, %78 ]
  %96 = fmul float %93, %93
  %97 = fcmp ogt float %96, %82
  %98 = select i1 %97, float %95, float %93
  %99 = select i1 %97, float %93, float %94
  %100 = select i1 %97, float %95, float %94
  %101 = fadd float %93, %100
  %102 = fmul float %101, 5.000000e-01
  %103 = tail call float @llvm.fmuladd.f32(float %102, float %102, float %84) #6
  %104 = fcmp olt float %103, 0.000000e+00
  %105 = fneg float %103
  %106 = select i1 %104, float %105, float %103
  %107 = fpext float %106 to double
  %108 = fcmp ogt double %107, 1.000000e-03
  br i1 %108, label %92, label %109, !llvm.loop !4

109:                                              ; preds = %92, %78
  %110 = phi float [ %85, %78 ], [ %102, %92 ]
  store float %110, float* %51, align 4, !tbaa !7
  %111 = add nuw nsw i64 %50, 1
  %112 = icmp eq i64 %111, 1000
  br i1 %112, label %113, label %49, !llvm.loop !14

113:                                              ; preds = %109, %136
  %114 = phi i64 [ %137, %136 ], [ 0, %109 ]
  %115 = phi float [ %133, %136 ], [ %15, %109 ]
  %116 = getelementptr inbounds [1000 x float], [1000 x float]* %1, i64 0, i64 %114
  %117 = load float, float* %116, align 4, !tbaa !7
  %118 = getelementptr inbounds [1000 x float], [1000 x float]* %2, i64 0, i64 %114
  %119 = load float, float* %118, align 4, !tbaa !7
  br label %120

120:                                              ; preds = %120, %113
  %121 = phi i64 [ 0, %113 ], [ %134, %120 ]
  %122 = phi float [ %115, %113 ], [ %133, %120 ]
  %123 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %114, i64 %121
  %124 = load float, float* %123, align 8, !tbaa !7
  %125 = fsub float %124, %117
  %126 = fdiv float %125, %119
  store float %126, float* %123, align 8, !tbaa !7
  %127 = fadd float %122, %126
  %128 = or i64 %121, 1
  %129 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %114, i64 %128
  %130 = load float, float* %129, align 4, !tbaa !7
  %131 = fsub float %130, %117
  %132 = fdiv float %131, %119
  store float %132, float* %129, align 4, !tbaa !7
  %133 = fadd float %127, %132
  %134 = add nuw nsw i64 %121, 2
  %135 = icmp eq i64 %134, 1000
  br i1 %135, label %136, label %120, !llvm.loop !15

136:                                              ; preds = %120
  %137 = add nuw nsw i64 %114, 1
  %138 = icmp eq i64 %137, 1000
  br i1 %138, label %139, label %113, !llvm.loop !16

139:                                              ; preds = %136
  %140 = add nuw nsw i32 %16, 1
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* nonnull %13) #6
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* nonnull %12) #6
  %141 = icmp eq i32 %140, 100
  br i1 %141, label %142, label %14, !llvm.loop !17

142:                                              ; preds = %139, %169
  %143 = phi i64 [ %170, %169 ], [ 0, %139 ]
  %144 = phi float [ %166, %169 ], [ %133, %139 ]
  br label %145

145:                                              ; preds = %145, %142
  %146 = phi i64 [ 0, %142 ], [ %167, %145 ]
  %147 = phi float [ %144, %142 ], [ %166, %145 ]
  %148 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %143, i64 %146
  %149 = load float, float* %148, align 4, !tbaa !7
  %150 = fadd float %147, %149
  %151 = add nuw nsw i64 %146, 1
  %152 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %143, i64 %151
  %153 = load float, float* %152, align 4, !tbaa !7
  %154 = fadd float %150, %153
  %155 = add nuw nsw i64 %146, 2
  %156 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %143, i64 %155
  %157 = load float, float* %156, align 4, !tbaa !7
  %158 = fadd float %154, %157
  %159 = add nuw nsw i64 %146, 3
  %160 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %143, i64 %159
  %161 = load float, float* %160, align 4, !tbaa !7
  %162 = fadd float %158, %161
  %163 = add nuw nsw i64 %146, 4
  %164 = getelementptr inbounds [1000 x [1000 x float]], [1000 x [1000 x float]]* @a, i64 0, i64 %143, i64 %163
  %165 = load float, float* %164, align 4, !tbaa !7
  %166 = fadd float %162, %165
  %167 = add nuw nsw i64 %146, 5
  %168 = icmp eq i64 %167, 1000
  br i1 %168, label %169, label %145, !llvm.loop !18

169:                                              ; preds = %145
  %170 = add nuw nsw i64 %143, 1
  %171 = icmp eq i64 %170, 1000
  br i1 %171, label %172, label %142, !llvm.loop !19

172:                                              ; preds = %169
  tail call void @_Z14_sysy_stoptimei(i32 noundef 95)
  tail call void @_Z8putfloatf(float noundef %166)
  br label %173

173:                                              ; preds = %6, %172
  %174 = phi i32 [ 0, %172 ], [ %9, %6 ]
  ret i32 %174
}

declare noundef i32 @_Z9getfarrayPf(float* noundef) local_unnamed_addr #5

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #5

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #5

declare void @_Z8putfloatf(float noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
