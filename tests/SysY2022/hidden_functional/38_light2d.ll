; ModuleID = 'tests//SysY2022/hidden_functional/38_light2d.sy'
source_filename = "tests//SysY2022/hidden_functional/38_light2d.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@seed = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4randv() local_unnamed_addr #0 {
  %1 = load i32, i32* @seed, align 4, !tbaa !5
  %2 = mul nsw i32 %1, 19980130
  %3 = add nsw i32 %2, 23333
  %4 = srem i32 %3, 100000007
  %5 = icmp slt i32 %4, 0
  %6 = add nsw i32 %4, 100000007
  %7 = select i1 %5, i32 %6, i32 %4
  store i32 %7, i32* @seed, align 4, !tbaa !5
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z7my_fabsf(float noundef %0) local_unnamed_addr #1 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %0, float %3
  ret float %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z7my_sqrtf(float noundef %0) local_unnamed_addr #1 {
  %2 = fmul float %0, 1.250000e-01
  %3 = fpext float %2 to double
  %4 = fadd double %3, 5.000000e-01
  %5 = fmul float %0, 2.000000e+00
  %6 = fadd float %0, 4.000000e+00
  %7 = fdiv float %5, %6
  %8 = fpext float %7 to double
  %9 = fadd double %4, %8
  %10 = fptrunc double %9 to float
  %11 = fdiv float %0, %10
  %12 = fadd float %11, %10
  %13 = fmul float %12, 5.000000e-01
  %14 = fdiv float %0, %13
  %15 = fadd float %13, %14
  %16 = fmul float %15, 5.000000e-01
  %17 = fdiv float %0, %16
  %18 = fadd float %16, %17
  %19 = fmul float %18, 5.000000e-01
  %20 = fdiv float %0, %19
  %21 = fadd float %19, %20
  %22 = fmul float %21, 5.000000e-01
  %23 = fdiv float %0, %22
  %24 = fadd float %22, %23
  %25 = fmul float %24, 5.000000e-01
  %26 = fdiv float %0, %25
  %27 = fadd float %25, %26
  %28 = fmul float %27, 5.000000e-01
  %29 = fdiv float %0, %28
  %30 = fadd float %28, %29
  %31 = fmul float %30, 5.000000e-01
  %32 = fdiv float %0, %31
  %33 = fadd float %31, %32
  %34 = fmul float %33, 5.000000e-01
  %35 = fdiv float %0, %34
  %36 = fadd float %34, %35
  %37 = fmul float %36, 5.000000e-01
  %38 = fdiv float %0, %37
  %39 = fadd float %37, %38
  %40 = fmul float %39, 5.000000e-01
  ret float %40
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z1pf(float noundef %0) local_unnamed_addr #3 {
  %2 = fmul float %0, -4.000000e+00
  %3 = fmul float %2, %0
  %4 = fmul float %3, %0
  %5 = tail call float @llvm.fmuladd.f32(float %0, float 3.000000e+00, float %4)
  ret float %5
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z11my_sin_implf(float noundef %0) local_unnamed_addr #3 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %0, float %3
  %5 = fcmp ugt float %4, 0x3EB0C6F7A0000000
  br i1 %5, label %8, label %6

6:                                                ; preds = %1, %8
  %7 = phi float [ %14, %8 ], [ %0, %1 ]
  ret float %7

8:                                                ; preds = %1
  %9 = fdiv float %0, 3.000000e+00
  %10 = tail call noundef float @_Z11my_sin_implf(float noundef %9)
  %11 = fmul float %10, -4.000000e+00
  %12 = fmul float %10, %11
  %13 = fmul float %10, %12
  %14 = tail call float @llvm.fmuladd.f32(float %10, float 3.000000e+00, float %13) #12
  br label %6
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z6my_sinf(float noundef %0) local_unnamed_addr #3 {
  %2 = fcmp ogt float %0, 0x401921FB60000000
  %3 = fcmp olt float %0, 0xC01921FB60000000
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = fdiv float %0, 0x401921FB60000000
  %7 = fptosi float %6 to i32
  %8 = sitofp i32 %7 to float
  %9 = fneg float %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 0x401921FB60000000, float %0)
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi float [ %10, %5 ], [ %0, %1 ]
  %13 = fcmp ogt float %12, 0x400921FB60000000
  %14 = fadd float %12, 0xC01921FB60000000
  %15 = select i1 %13, float %14, float %12
  %16 = fcmp olt float %15, 0xC00921FB60000000
  %17 = fadd float %15, 0x401921FB60000000
  %18 = select i1 %16, float %17, float %15
  %19 = tail call noundef float @_Z11my_sin_implf(float noundef %18)
  ret float %19
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z6my_cosf(float noundef %0) local_unnamed_addr #3 {
  %2 = fadd float %0, 0x3FF921FB60000000
  %3 = fcmp ogt float %2, 0x401921FB60000000
  %4 = fcmp olt float %2, 0xC01921FB60000000
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = fdiv float %2, 0x401921FB60000000
  %8 = fptosi float %7 to i32
  %9 = sitofp i32 %8 to float
  %10 = fneg float %9
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 0x401921FB60000000, float %2) #12
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi float [ %11, %6 ], [ %2, %1 ]
  %14 = fcmp ogt float %13, 0x400921FB60000000
  %15 = fadd float %13, 0xC01921FB60000000
  %16 = select i1 %14, float %15, float %13
  %17 = fcmp olt float %16, 0xC00921FB60000000
  %18 = fadd float %16, 0x401921FB60000000
  %19 = select i1 %17, float %18, float %16
  %20 = tail call noundef float @_Z11my_sin_implf(float noundef %19) #12
  ret float %20
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z10circle_sdffffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = fsub float %0, %2
  %7 = fsub float %1, %3
  %8 = fmul float %7, %7
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %8)
  %10 = fmul float %9, 1.250000e-01
  %11 = fpext float %10 to double
  %12 = fadd double %11, 5.000000e-01
  %13 = fmul float %9, 2.000000e+00
  %14 = fadd float %9, 4.000000e+00
  %15 = fdiv float %13, %14
  %16 = fpext float %15 to double
  %17 = fadd double %12, %16
  %18 = fptrunc double %17 to float
  %19 = fdiv float %9, %18
  %20 = fadd float %19, %18
  %21 = fmul float %20, 5.000000e-01
  %22 = fdiv float %9, %21
  %23 = fadd float %21, %22
  %24 = fmul float %23, 5.000000e-01
  %25 = fdiv float %9, %24
  %26 = fadd float %24, %25
  %27 = fmul float %26, 5.000000e-01
  %28 = fdiv float %9, %27
  %29 = fadd float %27, %28
  %30 = fmul float %29, 5.000000e-01
  %31 = fdiv float %9, %30
  %32 = fadd float %30, %31
  %33 = fmul float %32, 5.000000e-01
  %34 = fdiv float %9, %33
  %35 = fadd float %33, %34
  %36 = fmul float %35, 5.000000e-01
  %37 = fdiv float %9, %36
  %38 = fadd float %36, %37
  %39 = fmul float %38, 5.000000e-01
  %40 = fdiv float %9, %39
  %41 = fadd float %39, %40
  %42 = fmul float %41, 5.000000e-01
  %43 = fdiv float %9, %42
  %44 = fadd float %42, %43
  %45 = fmul float %44, 5.000000e-01
  %46 = fdiv float %9, %45
  %47 = fadd float %45, %46
  %48 = fmul float %47, 5.000000e-01
  %49 = fsub float %48, %4
  ret float %49
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn writeonly
define dso_local void @_Z5sceneffPf(float noundef %0, float noundef %1, float* nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = insertelement <2 x float> poison, float %0, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fadd <2 x float> %5, <float 0xBFD99999A0000000, float 0xBFE3333340000000>
  %7 = insertelement <2 x float> poison, float %1, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fadd <2 x float> %8, <float 0xBFD99999A0000000, float 0xBFE3333340000000>
  %10 = fmul <2 x float> %9, %9
  %11 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %6, <2 x float> %10)
  %12 = fmul <2 x float> %11, <float 1.250000e-01, float 1.250000e-01>
  %13 = fpext <2 x float> %12 to <2 x double>
  %14 = fadd <2 x double> %13, <double 5.000000e-01, double 5.000000e-01>
  %15 = fmul <2 x float> %11, <float 2.000000e+00, float 2.000000e+00>
  %16 = fadd <2 x float> %11, <float 4.000000e+00, float 4.000000e+00>
  %17 = fdiv <2 x float> %15, %16
  %18 = fpext <2 x float> %17 to <2 x double>
  %19 = fadd <2 x double> %14, %18
  %20 = fptrunc <2 x double> %19 to <2 x float>
  %21 = fdiv <2 x float> %11, %20
  %22 = fadd <2 x float> %21, %20
  %23 = fmul <2 x float> %22, <float 5.000000e-01, float 5.000000e-01>
  %24 = fdiv <2 x float> %11, %23
  %25 = fadd <2 x float> %23, %24
  %26 = fmul <2 x float> %25, <float 5.000000e-01, float 5.000000e-01>
  %27 = fdiv <2 x float> %11, %26
  %28 = fadd <2 x float> %26, %27
  %29 = fmul <2 x float> %28, <float 5.000000e-01, float 5.000000e-01>
  %30 = fdiv <2 x float> %11, %29
  %31 = fadd <2 x float> %29, %30
  %32 = fmul <2 x float> %31, <float 5.000000e-01, float 5.000000e-01>
  %33 = fdiv <2 x float> %11, %32
  %34 = fadd <2 x float> %32, %33
  %35 = fmul <2 x float> %34, <float 5.000000e-01, float 5.000000e-01>
  %36 = fdiv <2 x float> %11, %35
  %37 = fadd <2 x float> %35, %36
  %38 = fmul <2 x float> %37, <float 5.000000e-01, float 5.000000e-01>
  %39 = fdiv <2 x float> %11, %38
  %40 = fadd <2 x float> %38, %39
  %41 = fmul <2 x float> %40, <float 5.000000e-01, float 5.000000e-01>
  %42 = fdiv <2 x float> %11, %41
  %43 = fadd <2 x float> %41, %42
  %44 = fmul <2 x float> %43, <float 5.000000e-01, float 5.000000e-01>
  %45 = fdiv <2 x float> %11, %44
  %46 = fadd <2 x float> %44, %45
  %47 = fmul <2 x float> %46, <float 5.000000e-01, float 5.000000e-01>
  %48 = fdiv <2 x float> %11, %47
  %49 = fadd <2 x float> %47, %48
  %50 = fmul <2 x float> %49, <float 5.000000e-01, float 5.000000e-01>
  %51 = fadd <2 x float> %50, <float 0xBFB99999A0000000, float 0xBFA99999A0000000>
  %52 = extractelement <2 x float> %51, i64 0
  %53 = extractelement <2 x float> %51, i64 1
  %54 = fcmp olt float %52, %53
  %55 = select i1 %54, float %52, float %53
  %56 = select i1 %54, float 3.000000e+00, float 0.000000e+00
  store float %55, float* %2, align 4, !tbaa !9
  %57 = getelementptr inbounds float, float* %2, i64 1
  store float %56, float* %57, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable writeonly
define dso_local noundef float @_Z5traceffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #6 {
  %5 = alloca [2 x float], align 4
  %6 = bitcast [2 x float]* %5 to i8*
  %7 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %8 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  br label %9

9:                                                ; preds = %15, %4
  %10 = phi float [ 0.000000e+00, %4 ], [ %21, %15 ]
  %11 = phi i32 [ 0, %4 ], [ %22, %15 ]
  %12 = icmp ult i32 %11, 10
  %13 = fcmp olt float %10, 2.000000e+00
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12
  %16 = tail call float @llvm.fmuladd.f32(float %2, float %10, float %0)
  %17 = tail call float @llvm.fmuladd.f32(float %3, float %10, float %1)
  call void @_Z5sceneffPf(float noundef %16, float noundef %17, float* noundef nonnull %7)
  %18 = load float, float* %7, align 4, !tbaa !9
  %19 = fcmp olt float %18, 0x3EB0C6F7A0000000
  %20 = load float, float* %8, align 4
  %21 = fadd float %10, %18
  %22 = add nuw nsw i32 %11, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12
  br i1 %19, label %23, label %9, !llvm.loop !11

23:                                               ; preds = %9, %15
  %24 = phi float [ %20, %15 ], [ 0.000000e+00, %9 ]
  ret float %24
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef float @_Z6sampleff(float noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = load i32, i32* @seed, align 4, !tbaa !5
  br label %4

4:                                                ; preds = %2, %123
  %5 = phi float [ 0.000000e+00, %2 ], [ %125, %123 ]
  %6 = phi i32 [ 0, %2 ], [ %126, %123 ]
  %7 = phi i32 [ %3, %2 ], [ %13, %123 ]
  %8 = mul nsw i32 %7, 19980130
  %9 = add nsw i32 %8, 23333
  %10 = srem i32 %9, 100000007
  %11 = icmp slt i32 %10, 0
  %12 = add nsw i32 %10, 100000007
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = sitofp i32 %13 to float
  %15 = sitofp i32 %6 to float
  %16 = fdiv float %14, 0x4197D78420000000
  %17 = fadd float %16, %15
  %18 = fmul float %17, 0x401921FB60000000
  %19 = fdiv float %18, 2.400000e+01
  %20 = fadd float %19, 0x3FF921FB60000000
  %21 = fcmp ogt float %20, 0x401921FB60000000
  %22 = fcmp olt float %20, 0xC01921FB60000000
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = fdiv float %20, 0x401921FB60000000
  %26 = fptosi float %25 to i32
  %27 = sitofp i32 %26 to float
  %28 = fneg float %27
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 0x401921FB60000000, float %20) #12
  br label %30

30:                                               ; preds = %4, %24
  %31 = phi float [ %29, %24 ], [ %20, %4 ]
  %32 = fcmp ogt float %31, 0x400921FB60000000
  %33 = fadd float %31, 0xC01921FB60000000
  %34 = select i1 %32, float %33, float %31
  %35 = fcmp olt float %34, 0xC00921FB60000000
  %36 = fadd float %34, 0x401921FB60000000
  %37 = select i1 %35, float %36, float %34
  %38 = tail call noundef float @_Z11my_sin_implf(float noundef %37) #12
  %39 = fcmp ogt float %19, 0x401921FB60000000
  %40 = fcmp olt float %19, 0xC01921FB60000000
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = fdiv float %19, 0x401921FB60000000
  %44 = fptosi float %43 to i32
  %45 = sitofp i32 %44 to float
  %46 = fneg float %45
  %47 = tail call float @llvm.fmuladd.f32(float %46, float 0x401921FB60000000, float %19) #12
  br label %48

48:                                               ; preds = %30, %42
  %49 = phi float [ %47, %42 ], [ %19, %30 ]
  %50 = fcmp ogt float %49, 0x400921FB60000000
  %51 = fadd float %49, 0xC01921FB60000000
  %52 = select i1 %50, float %51, float %49
  %53 = fcmp olt float %52, 0xC00921FB60000000
  %54 = fadd float %52, 0x401921FB60000000
  %55 = select i1 %53, float %54, float %52
  %56 = tail call noundef float @_Z11my_sin_implf(float noundef %55) #12
  br label %57

57:                                               ; preds = %63, %48
  %58 = phi float [ 0.000000e+00, %48 ], [ %119, %63 ]
  %59 = phi i32 [ 0, %48 ], [ %120, %63 ]
  %60 = icmp ult i32 %59, 10
  %61 = fcmp olt float %58, 2.000000e+00
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %123

63:                                               ; preds = %57
  %64 = tail call float @llvm.fmuladd.f32(float %38, float %58, float %0) #12
  %65 = tail call float @llvm.fmuladd.f32(float %56, float %58, float %1) #12
  %66 = insertelement <2 x float> poison, float %64, i64 0
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> zeroinitializer
  %68 = fadd <2 x float> %67, <float 0xBFD99999A0000000, float 0xBFE3333340000000>
  %69 = insertelement <2 x float> poison, float %65, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = fadd <2 x float> %70, <float 0xBFD99999A0000000, float 0xBFE3333340000000>
  %72 = fmul <2 x float> %71, %71
  %73 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %68, <2 x float> %68, <2 x float> %72)
  %74 = fmul <2 x float> %73, <float 1.250000e-01, float 1.250000e-01>
  %75 = fpext <2 x float> %74 to <2 x double>
  %76 = fadd <2 x double> %75, <double 5.000000e-01, double 5.000000e-01>
  %77 = fmul <2 x float> %73, <float 2.000000e+00, float 2.000000e+00>
  %78 = fadd <2 x float> %73, <float 4.000000e+00, float 4.000000e+00>
  %79 = fdiv <2 x float> %77, %78
  %80 = fpext <2 x float> %79 to <2 x double>
  %81 = fadd <2 x double> %76, %80
  %82 = fptrunc <2 x double> %81 to <2 x float>
  %83 = fdiv <2 x float> %73, %82
  %84 = fadd <2 x float> %83, %82
  %85 = fmul <2 x float> %84, <float 5.000000e-01, float 5.000000e-01>
  %86 = fdiv <2 x float> %73, %85
  %87 = fadd <2 x float> %85, %86
  %88 = fmul <2 x float> %87, <float 5.000000e-01, float 5.000000e-01>
  %89 = fdiv <2 x float> %73, %88
  %90 = fadd <2 x float> %88, %89
  %91 = fmul <2 x float> %90, <float 5.000000e-01, float 5.000000e-01>
  %92 = fdiv <2 x float> %73, %91
  %93 = fadd <2 x float> %91, %92
  %94 = fmul <2 x float> %93, <float 5.000000e-01, float 5.000000e-01>
  %95 = fdiv <2 x float> %73, %94
  %96 = fadd <2 x float> %94, %95
  %97 = fmul <2 x float> %96, <float 5.000000e-01, float 5.000000e-01>
  %98 = fdiv <2 x float> %73, %97
  %99 = fadd <2 x float> %97, %98
  %100 = fmul <2 x float> %99, <float 5.000000e-01, float 5.000000e-01>
  %101 = fdiv <2 x float> %73, %100
  %102 = fadd <2 x float> %100, %101
  %103 = fmul <2 x float> %102, <float 5.000000e-01, float 5.000000e-01>
  %104 = fdiv <2 x float> %73, %103
  %105 = fadd <2 x float> %103, %104
  %106 = fmul <2 x float> %105, <float 5.000000e-01, float 5.000000e-01>
  %107 = fdiv <2 x float> %73, %106
  %108 = fadd <2 x float> %106, %107
  %109 = fmul <2 x float> %108, <float 5.000000e-01, float 5.000000e-01>
  %110 = fdiv <2 x float> %73, %109
  %111 = fadd <2 x float> %109, %110
  %112 = fmul <2 x float> %111, <float 5.000000e-01, float 5.000000e-01>
  %113 = fadd <2 x float> %112, <float 0xBFB99999A0000000, float 0xBFA99999A0000000>
  %114 = extractelement <2 x float> %113, i64 0
  %115 = extractelement <2 x float> %113, i64 1
  %116 = fcmp olt float %114, %115
  %117 = select i1 %116, float %114, float %115
  %118 = fcmp olt float %117, 0x3EB0C6F7A0000000
  %119 = fadd float %58, %117
  %120 = add nuw nsw i32 %59, 1
  br i1 %118, label %121, label %57, !llvm.loop !11

121:                                              ; preds = %63
  %122 = select i1 %116, float 3.000000e+00, float 0.000000e+00
  br label %123

123:                                              ; preds = %57, %121
  %124 = phi float [ %122, %121 ], [ 0.000000e+00, %57 ]
  %125 = fadd float %5, %124
  %126 = add nuw nsw i32 %6, 1
  %127 = icmp eq i32 %126, 24
  br i1 %127, label %128, label %4, !llvm.loop !13

128:                                              ; preds = %123
  store i32 %13, i32* @seed, align 4, !tbaa !5
  %129 = fdiv float %125, 2.400000e+01
  ret float %129
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9write_pgmv() local_unnamed_addr #8 {
  tail call void @_Z5putchi(i32 noundef 80)
  tail call void @_Z5putchi(i32 noundef 50)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 192)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z6putinti(i32 noundef 192)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z6putinti(i32 noundef 255)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %1

1:                                                ; preds = %0, %17
  %2 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %3 = sitofp i32 %2 to float
  %4 = fdiv float %3, 1.920000e+02
  br label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ 0, %1 ], [ %15, %5 ]
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %7, 1.920000e+02
  %9 = tail call noundef float @_Z6sampleff(float noundef %8, float noundef %4)
  %10 = fpext float %9 to double
  %11 = fmul double %10, 2.550000e+02
  %12 = fptosi double %11 to i32
  %13 = icmp slt i32 %12, 255
  %14 = select i1 %13, i32 %12, i32 255
  tail call void @_Z6putinti(i32 noundef %14)
  tail call void @_Z5putchi(i32 noundef 32)
  %15 = add nuw nsw i32 %6, 1
  %16 = icmp eq i32 %15, 192
  br i1 %16, label %17, label %5, !llvm.loop !14

17:                                               ; preds = %5
  tail call void @_Z5putchi(i32 noundef 10)
  %18 = add nuw nsw i32 %2, 1
  %19 = icmp eq i32 %18, 192
  br i1 %19, label %20, label %1, !llvm.loop !15

20:                                               ; preds = %17
  ret void
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #9

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #10 {
  tail call void @_Z9write_pgmv()
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
