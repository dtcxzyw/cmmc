; ModuleID = 'tests//SysY2022/final_performance/large_loop_array_2.sy'
source_filename = "tests//SysY2022/final_performance/large_loop_array_2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@COUNT = dso_local local_unnamed_addr global i32 500000, align 4

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef float @_Z4loopPfS_i(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = add nsw i64 %6, -1
  %8 = and i64 %6, 3
  %9 = icmp ult i64 %7, 3
  br i1 %9, label %42, label %10

10:                                               ; preds = %5
  %11 = and i64 %6, 4294967292
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %39, %12 ]
  %14 = phi float [ 0.000000e+00, %10 ], [ %38, %12 ]
  %15 = phi i64 [ 0, %10 ], [ %40, %12 ]
  %16 = getelementptr inbounds float, float* %0, i64 %13
  %17 = load float, float* %16, align 4, !tbaa !4
  %18 = getelementptr inbounds float, float* %1, i64 %13
  %19 = load float, float* %18, align 4, !tbaa !4
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %14)
  %21 = or i64 %13, 1
  %22 = getelementptr inbounds float, float* %0, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !4
  %24 = getelementptr inbounds float, float* %1, i64 %21
  %25 = load float, float* %24, align 4, !tbaa !4
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %25, float %20)
  %27 = or i64 %13, 2
  %28 = getelementptr inbounds float, float* %0, i64 %27
  %29 = load float, float* %28, align 4, !tbaa !4
  %30 = getelementptr inbounds float, float* %1, i64 %27
  %31 = load float, float* %30, align 4, !tbaa !4
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %26)
  %33 = or i64 %13, 3
  %34 = getelementptr inbounds float, float* %0, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !4
  %36 = getelementptr inbounds float, float* %1, i64 %33
  %37 = load float, float* %36, align 4, !tbaa !4
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %32)
  %39 = add nuw nsw i64 %13, 4
  %40 = add i64 %15, 4
  %41 = icmp eq i64 %40, %11
  br i1 %41, label %42, label %12, !llvm.loop !8

42:                                               ; preds = %12, %5
  %43 = phi float [ undef, %5 ], [ %38, %12 ]
  %44 = phi i64 [ 0, %5 ], [ %39, %12 ]
  %45 = phi float [ 0.000000e+00, %5 ], [ %38, %12 ]
  %46 = icmp eq i64 %8, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %42, %47
  %48 = phi i64 [ %56, %47 ], [ %44, %42 ]
  %49 = phi float [ %55, %47 ], [ %45, %42 ]
  %50 = phi i64 [ %57, %47 ], [ 0, %42 ]
  %51 = getelementptr inbounds float, float* %0, i64 %48
  %52 = load float, float* %51, align 4, !tbaa !4
  %53 = getelementptr inbounds float, float* %1, i64 %48
  %54 = load float, float* %53, align 4, !tbaa !4
  %55 = tail call float @llvm.fmuladd.f32(float %52, float %54, float %49)
  %56 = add nuw nsw i64 %48, 1
  %57 = add i64 %50, 1
  %58 = icmp eq i64 %57, %8
  br i1 %58, label %59, label %47, !llvm.loop !10

59:                                               ; preds = %42, %47, %3
  %60 = phi float [ 0.000000e+00, %3 ], [ %43, %42 ], [ %55, %47 ]
  ret float %60
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [4096 x float], align 16
  %2 = alloca [4096 x float], align 16
  %3 = tail call noundef i32 @_Z6getintv()
  %4 = bitcast [4096 x float]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %4) #5
  %5 = bitcast [4096 x float]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %5) #5
  tail call void @_Z15_sysy_starttimei(i32 noundef 22)
  %6 = load i32, i32* @COUNT, align 4, !tbaa !12
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %184

8:                                                ; preds = %0
  %9 = icmp sgt i32 %3, 0
  %10 = zext i32 %3 to i64
  %11 = sext i32 %3 to i64
  br i1 %9, label %14, label %12

12:                                               ; preds = %8
  %13 = sub nsw i64 0, %11
  br label %126

14:                                               ; preds = %8
  %15 = add nsw i64 %10, -1
  %16 = sub nsw i64 0, %11
  %17 = and i64 %10, 3
  %18 = icmp ult i64 %15, 3
  %19 = and i64 %10, 4294967292
  %20 = icmp eq i64 %17, 0
  br label %21

21:                                               ; preds = %14, %121
  %22 = phi float [ %38, %121 ], [ 1.000000e+00, %14 ]
  %23 = phi float [ %37, %121 ], [ 0.000000e+00, %14 ]
  %24 = phi float [ %123, %121 ], [ 0.000000e+00, %14 ]
  %25 = phi i32 [ %57, %121 ], [ 0, %14 ]
  %26 = phi i32 [ %124, %121 ], [ 0, %14 ]
  %27 = urem i32 %26, 10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = fpext float %23 to double
  %31 = fadd double %30, 1.000000e-01
  %32 = fptrunc double %31 to float
  %33 = fpext float %22 to double
  %34 = fadd double %33, 2.000000e-01
  %35 = fptrunc double %34 to float
  br label %36

36:                                               ; preds = %29, %21
  %37 = phi float [ %32, %29 ], [ 0.000000e+00, %21 ]
  %38 = phi float [ %35, %29 ], [ 1.000000e+00, %21 ]
  %39 = icmp slt i32 %25, %3
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = sext i32 %25 to i64
  %42 = sub nsw i64 %11, %41
  %43 = xor i64 %41, -1
  %44 = and i64 %42, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = sitofp i32 %25 to float
  %48 = fadd float %37, %47
  %49 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %41
  store float %48, float* %49, align 4, !tbaa !4
  %50 = fadd float %38, %47
  %51 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %41
  store float %50, float* %51, align 4, !tbaa !4
  %52 = add nsw i64 %41, 1
  br label %53

53:                                               ; preds = %46, %40
  %54 = phi i64 [ %41, %40 ], [ %52, %46 ]
  %55 = icmp eq i64 %43, %16
  br i1 %55, label %56, label %88

56:                                               ; preds = %53, %88, %36
  %57 = phi i32 [ %25, %36 ], [ %3, %88 ], [ %3, %53 ]
  br i1 %18, label %105, label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %85, %58 ], [ 0, %56 ]
  %60 = phi float [ %84, %58 ], [ 0.000000e+00, %56 ]
  %61 = phi i64 [ %86, %58 ], [ 0, %56 ]
  %62 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %59
  %63 = load float, float* %62, align 16, !tbaa !4
  %64 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %59
  %65 = load float, float* %64, align 16, !tbaa !4
  %66 = tail call float @llvm.fmuladd.f32(float %63, float %65, float %60) #5
  %67 = or i64 %59, 1
  %68 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !4
  %70 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %67
  %71 = load float, float* %70, align 4, !tbaa !4
  %72 = tail call float @llvm.fmuladd.f32(float %69, float %71, float %66) #5
  %73 = or i64 %59, 2
  %74 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %73
  %75 = load float, float* %74, align 8, !tbaa !4
  %76 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %73
  %77 = load float, float* %76, align 8, !tbaa !4
  %78 = tail call float @llvm.fmuladd.f32(float %75, float %77, float %72) #5
  %79 = or i64 %59, 3
  %80 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !4
  %82 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %79
  %83 = load float, float* %82, align 4, !tbaa !4
  %84 = tail call float @llvm.fmuladd.f32(float %81, float %83, float %78) #5
  %85 = add nuw nsw i64 %59, 4
  %86 = add i64 %61, 4
  %87 = icmp eq i64 %86, %19
  br i1 %87, label %105, label %58, !llvm.loop !8

88:                                               ; preds = %53, %88
  %89 = phi i64 [ %103, %88 ], [ %54, %53 ]
  %90 = trunc i64 %89 to i32
  %91 = sitofp i32 %90 to float
  %92 = fadd float %37, %91
  %93 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %89
  store float %92, float* %93, align 4, !tbaa !4
  %94 = fadd float %38, %91
  %95 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %89
  store float %94, float* %95, align 4, !tbaa !4
  %96 = add nsw i64 %89, 1
  %97 = trunc i64 %96 to i32
  %98 = sitofp i32 %97 to float
  %99 = fadd float %37, %98
  %100 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %96
  store float %99, float* %100, align 4, !tbaa !4
  %101 = fadd float %38, %98
  %102 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %96
  store float %101, float* %102, align 4, !tbaa !4
  %103 = add nsw i64 %89, 2
  %104 = icmp eq i64 %103, %11
  br i1 %104, label %56, label %88, !llvm.loop !14

105:                                              ; preds = %58, %56
  %106 = phi float [ undef, %56 ], [ %84, %58 ]
  %107 = phi i64 [ 0, %56 ], [ %85, %58 ]
  %108 = phi float [ 0.000000e+00, %56 ], [ %84, %58 ]
  br i1 %20, label %121, label %109

109:                                              ; preds = %105, %109
  %110 = phi i64 [ %118, %109 ], [ %107, %105 ]
  %111 = phi float [ %117, %109 ], [ %108, %105 ]
  %112 = phi i64 [ %119, %109 ], [ 0, %105 ]
  %113 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %110
  %114 = load float, float* %113, align 4, !tbaa !4
  %115 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %110
  %116 = load float, float* %115, align 4, !tbaa !4
  %117 = tail call float @llvm.fmuladd.f32(float %114, float %116, float %111) #5
  %118 = add nuw nsw i64 %110, 1
  %119 = add i64 %112, 1
  %120 = icmp eq i64 %119, %17
  br i1 %120, label %121, label %109, !llvm.loop !15

121:                                              ; preds = %109, %105
  %122 = phi float [ %106, %105 ], [ %117, %109 ]
  %123 = fadd float %24, %122
  %124 = add nuw nsw i32 %26, 1
  %125 = icmp eq i32 %124, %6
  br i1 %125, label %181, label %21, !llvm.loop !16

126:                                              ; preds = %12, %177
  %127 = phi float [ %142, %177 ], [ 1.000000e+00, %12 ]
  %128 = phi float [ %141, %177 ], [ 0.000000e+00, %12 ]
  %129 = phi i32 [ %178, %177 ], [ 0, %12 ]
  %130 = phi i32 [ %179, %177 ], [ 0, %12 ]
  %131 = urem i32 %130, 10
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = fpext float %128 to double
  %135 = fadd double %134, 1.000000e-01
  %136 = fptrunc double %135 to float
  %137 = fpext float %127 to double
  %138 = fadd double %137, 2.000000e-01
  %139 = fptrunc double %138 to float
  br label %140

140:                                              ; preds = %126, %133
  %141 = phi float [ %136, %133 ], [ 0.000000e+00, %126 ]
  %142 = phi float [ %139, %133 ], [ 1.000000e+00, %126 ]
  %143 = icmp slt i32 %129, %3
  br i1 %143, label %144, label %177

144:                                              ; preds = %140
  %145 = sext i32 %129 to i64
  %146 = sub nsw i64 %11, %145
  %147 = xor i64 %145, -1
  %148 = and i64 %146, 1
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %144
  %151 = sitofp i32 %129 to float
  %152 = fadd float %141, %151
  %153 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %145
  store float %152, float* %153, align 4, !tbaa !4
  %154 = fadd float %142, %151
  %155 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %145
  store float %154, float* %155, align 4, !tbaa !4
  %156 = add nsw i64 %145, 1
  br label %157

157:                                              ; preds = %150, %144
  %158 = phi i64 [ %145, %144 ], [ %156, %150 ]
  %159 = icmp eq i64 %147, %13
  br i1 %159, label %177, label %160

160:                                              ; preds = %157, %160
  %161 = phi i64 [ %175, %160 ], [ %158, %157 ]
  %162 = trunc i64 %161 to i32
  %163 = sitofp i32 %162 to float
  %164 = fadd float %141, %163
  %165 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %161
  store float %164, float* %165, align 4, !tbaa !4
  %166 = fadd float %142, %163
  %167 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %161
  store float %166, float* %167, align 4, !tbaa !4
  %168 = add nsw i64 %161, 1
  %169 = trunc i64 %168 to i32
  %170 = sitofp i32 %169 to float
  %171 = fadd float %141, %170
  %172 = getelementptr inbounds [4096 x float], [4096 x float]* %1, i64 0, i64 %168
  store float %171, float* %172, align 4, !tbaa !4
  %173 = fadd float %142, %170
  %174 = getelementptr inbounds [4096 x float], [4096 x float]* %2, i64 0, i64 %168
  store float %173, float* %174, align 4, !tbaa !4
  %175 = add nsw i64 %161, 2
  %176 = icmp eq i64 %175, %11
  br i1 %176, label %177, label %160, !llvm.loop !14

177:                                              ; preds = %157, %160, %140
  %178 = phi i32 [ %129, %140 ], [ %3, %160 ], [ %3, %157 ]
  %179 = add nuw nsw i32 %130, 1
  %180 = icmp eq i32 %179, %6
  br i1 %180, label %184, label %126, !llvm.loop !16

181:                                              ; preds = %121
  %182 = fpext float %123 to double
  %183 = fadd double %182, 0xC344536B00000000
  br label %184

184:                                              ; preds = %177, %181, %0
  %185 = phi double [ 0xC344536B00000000, %0 ], [ %183, %181 ], [ 0xC344536B00000000, %177 ]
  tail call void @_Z14_sysy_stoptimei(i32 noundef 39)
  %186 = fcmp ugt double %185, 0x3EB0C6F7A0B5ED8D
  %187 = fcmp ult double %185, 0xBEB0C6F7A0B5ED8D
  %188 = and i1 %186, %187
  %189 = zext i1 %188 to i32
  tail call void @_Z6putinti(i32 noundef %189)
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %4) #5
  ret i32 %189
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #4

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #4

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !9}
