; ModuleID = 'tests//SysY2022/hidden_functional/38_light2d.sy'
source_filename = "tests//SysY2022/hidden_functional/38_light2d.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@seed = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4randv() local_unnamed_addr #0 {
  %1 = load i32, i32* @seed, align 4, !tbaa !4
  %2 = mul nsw i32 %1, 19980130
  %3 = add nsw i32 %2, 23333
  %4 = srem i32 %3, 100000007
  %5 = icmp slt i32 %4, 0
  %6 = add nsw i32 %4, 100000007
  %7 = select i1 %5, i32 %6, i32 %4
  store i32 %7, i32* @seed, align 4, !tbaa !4
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
  %14 = tail call float @llvm.fmuladd.f32(float %10, float 3.000000e+00, float %13) #11
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
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 0x401921FB60000000, float %2) #11
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi float [ %11, %6 ], [ %2, %1 ]
  %14 = fcmp ogt float %13, 0x400921FB60000000
  %15 = fadd float %13, 0xC01921FB60000000
  %16 = select i1 %14, float %15, float %13
  %17 = fcmp olt float %16, 0xC00921FB60000000
  %18 = fadd float %16, 0x401921FB60000000
  %19 = select i1 %17, float %18, float %16
  %20 = tail call noundef float @_Z11my_sin_implf(float noundef %19) #11
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
  %4 = fadd float %0, 0xBFD99999A0000000
  %5 = fadd float %1, 0xBFD99999A0000000
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %6) #11
  %8 = fmul float %7, 1.250000e-01
  %9 = fpext float %8 to double
  %10 = fadd double %9, 5.000000e-01
  %11 = fmul float %7, 2.000000e+00
  %12 = fadd float %7, 4.000000e+00
  %13 = fdiv float %11, %12
  %14 = fpext float %13 to double
  %15 = fadd double %10, %14
  %16 = fptrunc double %15 to float
  %17 = fdiv float %7, %16
  %18 = fadd float %17, %16
  %19 = fmul float %18, 5.000000e-01
  %20 = fdiv float %7, %19
  %21 = fadd float %19, %20
  %22 = fmul float %21, 5.000000e-01
  %23 = fdiv float %7, %22
  %24 = fadd float %22, %23
  %25 = fmul float %24, 5.000000e-01
  %26 = fdiv float %7, %25
  %27 = fadd float %25, %26
  %28 = fmul float %27, 5.000000e-01
  %29 = fdiv float %7, %28
  %30 = fadd float %28, %29
  %31 = fmul float %30, 5.000000e-01
  %32 = fdiv float %7, %31
  %33 = fadd float %31, %32
  %34 = fmul float %33, 5.000000e-01
  %35 = fdiv float %7, %34
  %36 = fadd float %34, %35
  %37 = fmul float %36, 5.000000e-01
  %38 = fdiv float %7, %37
  %39 = fadd float %37, %38
  %40 = fmul float %39, 5.000000e-01
  %41 = fdiv float %7, %40
  %42 = fadd float %40, %41
  %43 = fmul float %42, 5.000000e-01
  %44 = fdiv float %7, %43
  %45 = fadd float %43, %44
  %46 = fmul float %45, 5.000000e-01
  %47 = fadd float %46, 0xBFB99999A0000000
  %48 = fadd float %0, 0xBFE3333340000000
  %49 = fadd float %1, 0xBFE3333340000000
  %50 = fmul float %49, %49
  %51 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %50) #11
  %52 = fmul float %51, 1.250000e-01
  %53 = fpext float %52 to double
  %54 = fadd double %53, 5.000000e-01
  %55 = fmul float %51, 2.000000e+00
  %56 = fadd float %51, 4.000000e+00
  %57 = fdiv float %55, %56
  %58 = fpext float %57 to double
  %59 = fadd double %54, %58
  %60 = fptrunc double %59 to float
  %61 = fdiv float %51, %60
  %62 = fadd float %61, %60
  %63 = fmul float %62, 5.000000e-01
  %64 = fdiv float %51, %63
  %65 = fadd float %63, %64
  %66 = fmul float %65, 5.000000e-01
  %67 = fdiv float %51, %66
  %68 = fadd float %66, %67
  %69 = fmul float %68, 5.000000e-01
  %70 = fdiv float %51, %69
  %71 = fadd float %69, %70
  %72 = fmul float %71, 5.000000e-01
  %73 = fdiv float %51, %72
  %74 = fadd float %72, %73
  %75 = fmul float %74, 5.000000e-01
  %76 = fdiv float %51, %75
  %77 = fadd float %75, %76
  %78 = fmul float %77, 5.000000e-01
  %79 = fdiv float %51, %78
  %80 = fadd float %78, %79
  %81 = fmul float %80, 5.000000e-01
  %82 = fdiv float %51, %81
  %83 = fadd float %81, %82
  %84 = fmul float %83, 5.000000e-01
  %85 = fdiv float %51, %84
  %86 = fadd float %84, %85
  %87 = fmul float %86, 5.000000e-01
  %88 = fdiv float %51, %87
  %89 = fadd float %87, %88
  %90 = fmul float %89, 5.000000e-01
  %91 = fadd float %90, 0xBFA99999A0000000
  %92 = fcmp olt float %47, %91
  %93 = select i1 %92, float %47, float %91
  %94 = select i1 %92, float 3.000000e+00, float 0.000000e+00
  store float %93, float* %2, align 4, !tbaa !8
  %95 = getelementptr inbounds float, float* %2, i64 1
  store float %94, float* %95, align 4
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11
  %16 = tail call float @llvm.fmuladd.f32(float %2, float %10, float %0)
  %17 = tail call float @llvm.fmuladd.f32(float %3, float %10, float %1)
  call void @_Z5sceneffPf(float noundef %16, float noundef %17, float* noundef nonnull %7)
  %18 = load float, float* %7, align 4, !tbaa !8
  %19 = fcmp olt float %18, 0x3EB0C6F7A0000000
  %20 = load float, float* %8, align 4
  %21 = fadd float %10, %18
  %22 = add nuw nsw i32 %11, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11
  br i1 %19, label %23, label %9, !llvm.loop !10

23:                                               ; preds = %9, %15
  %24 = phi float [ %20, %15 ], [ 0.000000e+00, %9 ]
  ret float %24
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef float @_Z6sampleff(float noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = load i32, i32* @seed, align 4, !tbaa !4
  br label %4

4:                                                ; preds = %2, %161
  %5 = phi float [ 0.000000e+00, %2 ], [ %163, %161 ]
  %6 = phi i32 [ 0, %2 ], [ %164, %161 ]
  %7 = phi i32 [ %3, %2 ], [ %13, %161 ]
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
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 0x401921FB60000000, float %20) #11
  br label %30

30:                                               ; preds = %4, %24
  %31 = phi float [ %29, %24 ], [ %20, %4 ]
  %32 = fcmp ogt float %31, 0x400921FB60000000
  %33 = fadd float %31, 0xC01921FB60000000
  %34 = select i1 %32, float %33, float %31
  %35 = fcmp olt float %34, 0xC00921FB60000000
  %36 = fadd float %34, 0x401921FB60000000
  %37 = select i1 %35, float %36, float %34
  %38 = tail call noundef float @_Z11my_sin_implf(float noundef %37) #11
  %39 = fcmp ogt float %19, 0x401921FB60000000
  %40 = fcmp olt float %19, 0xC01921FB60000000
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = fdiv float %19, 0x401921FB60000000
  %44 = fptosi float %43 to i32
  %45 = sitofp i32 %44 to float
  %46 = fneg float %45
  %47 = tail call float @llvm.fmuladd.f32(float %46, float 0x401921FB60000000, float %19) #11
  br label %48

48:                                               ; preds = %30, %42
  %49 = phi float [ %47, %42 ], [ %19, %30 ]
  %50 = fcmp ogt float %49, 0x400921FB60000000
  %51 = fadd float %49, 0xC01921FB60000000
  %52 = select i1 %50, float %51, float %49
  %53 = fcmp olt float %52, 0xC00921FB60000000
  %54 = fadd float %52, 0x401921FB60000000
  %55 = select i1 %53, float %54, float %52
  %56 = tail call noundef float @_Z11my_sin_implf(float noundef %55) #11
  br label %57

57:                                               ; preds = %63, %48
  %58 = phi float [ 0.000000e+00, %48 ], [ %157, %63 ]
  %59 = phi i32 [ 0, %48 ], [ %158, %63 ]
  %60 = icmp ult i32 %59, 10
  %61 = fcmp olt float %58, 2.000000e+00
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %161

63:                                               ; preds = %57
  %64 = tail call float @llvm.fmuladd.f32(float %38, float %58, float %0) #11
  %65 = tail call float @llvm.fmuladd.f32(float %56, float %58, float %1) #11
  %66 = fadd float %64, 0xBFD99999A0000000
  %67 = fadd float %65, 0xBFD99999A0000000
  %68 = fmul float %67, %67
  %69 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %68) #11
  %70 = fmul float %69, 1.250000e-01
  %71 = fpext float %70 to double
  %72 = fadd double %71, 5.000000e-01
  %73 = fmul float %69, 2.000000e+00
  %74 = fadd float %69, 4.000000e+00
  %75 = fdiv float %73, %74
  %76 = fpext float %75 to double
  %77 = fadd double %72, %76
  %78 = fptrunc double %77 to float
  %79 = fdiv float %69, %78
  %80 = fadd float %79, %78
  %81 = fmul float %80, 5.000000e-01
  %82 = fdiv float %69, %81
  %83 = fadd float %81, %82
  %84 = fmul float %83, 5.000000e-01
  %85 = fdiv float %69, %84
  %86 = fadd float %84, %85
  %87 = fmul float %86, 5.000000e-01
  %88 = fdiv float %69, %87
  %89 = fadd float %87, %88
  %90 = fmul float %89, 5.000000e-01
  %91 = fdiv float %69, %90
  %92 = fadd float %90, %91
  %93 = fmul float %92, 5.000000e-01
  %94 = fdiv float %69, %93
  %95 = fadd float %93, %94
  %96 = fmul float %95, 5.000000e-01
  %97 = fdiv float %69, %96
  %98 = fadd float %96, %97
  %99 = fmul float %98, 5.000000e-01
  %100 = fdiv float %69, %99
  %101 = fadd float %99, %100
  %102 = fmul float %101, 5.000000e-01
  %103 = fdiv float %69, %102
  %104 = fadd float %102, %103
  %105 = fmul float %104, 5.000000e-01
  %106 = fdiv float %69, %105
  %107 = fadd float %105, %106
  %108 = fmul float %107, 5.000000e-01
  %109 = fadd float %108, 0xBFB99999A0000000
  %110 = fadd float %64, 0xBFE3333340000000
  %111 = fadd float %65, 0xBFE3333340000000
  %112 = fmul float %111, %111
  %113 = tail call float @llvm.fmuladd.f32(float %110, float %110, float %112) #11
  %114 = fmul float %113, 1.250000e-01
  %115 = fpext float %114 to double
  %116 = fadd double %115, 5.000000e-01
  %117 = fmul float %113, 2.000000e+00
  %118 = fadd float %113, 4.000000e+00
  %119 = fdiv float %117, %118
  %120 = fpext float %119 to double
  %121 = fadd double %116, %120
  %122 = fptrunc double %121 to float
  %123 = fdiv float %113, %122
  %124 = fadd float %123, %122
  %125 = fmul float %124, 5.000000e-01
  %126 = fdiv float %113, %125
  %127 = fadd float %125, %126
  %128 = fmul float %127, 5.000000e-01
  %129 = fdiv float %113, %128
  %130 = fadd float %128, %129
  %131 = fmul float %130, 5.000000e-01
  %132 = fdiv float %113, %131
  %133 = fadd float %131, %132
  %134 = fmul float %133, 5.000000e-01
  %135 = fdiv float %113, %134
  %136 = fadd float %134, %135
  %137 = fmul float %136, 5.000000e-01
  %138 = fdiv float %113, %137
  %139 = fadd float %137, %138
  %140 = fmul float %139, 5.000000e-01
  %141 = fdiv float %113, %140
  %142 = fadd float %140, %141
  %143 = fmul float %142, 5.000000e-01
  %144 = fdiv float %113, %143
  %145 = fadd float %143, %144
  %146 = fmul float %145, 5.000000e-01
  %147 = fdiv float %113, %146
  %148 = fadd float %146, %147
  %149 = fmul float %148, 5.000000e-01
  %150 = fdiv float %113, %149
  %151 = fadd float %149, %150
  %152 = fmul float %151, 5.000000e-01
  %153 = fadd float %152, 0xBFA99999A0000000
  %154 = fcmp olt float %109, %153
  %155 = select i1 %154, float %109, float %153
  %156 = fcmp olt float %155, 0x3EB0C6F7A0000000
  %157 = fadd float %58, %155
  %158 = add nuw nsw i32 %59, 1
  br i1 %156, label %159, label %57, !llvm.loop !10

159:                                              ; preds = %63
  %160 = select i1 %154, float 3.000000e+00, float 0.000000e+00
  br label %161

161:                                              ; preds = %57, %159
  %162 = phi float [ %160, %159 ], [ 0.000000e+00, %57 ]
  %163 = fadd float %5, %162
  %164 = add nuw nsw i32 %6, 1
  %165 = icmp eq i32 %164, 24
  br i1 %165, label %166, label %4, !llvm.loop !12

166:                                              ; preds = %161
  store i32 %13, i32* @seed, align 4, !tbaa !4
  %167 = fdiv float %163, 2.400000e+01
  ret float %167
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
  br i1 %16, label %17, label %5, !llvm.loop !13

17:                                               ; preds = %5
  tail call void @_Z5putchi(i32 noundef 10)
  %18 = add nuw nsw i32 %2, 1
  %19 = icmp eq i32 %18, 192
  br i1 %19, label %20, label %1, !llvm.loop !14

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
attributes #11 = { nounwind }

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
