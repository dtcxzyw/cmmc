; ModuleID = 'tests//SysY2022/hidden_functional/37_dct.sy'
source_filename = "tests//SysY2022/hidden_functional/37_dct.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@test_block = dso_local global [8 x [8 x float]] zeroinitializer, align 16
@test_dct = dso_local global [8 x [8 x float]] zeroinitializer, align 16
@test_idct = dso_local global [8 x [8 x float]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z7my_fabsf(float noundef %0) local_unnamed_addr #0 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %0, float %3
  ret float %4
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z1pf(float noundef %0) local_unnamed_addr #1 {
  %2 = fmul float %0, -4.000000e+00
  %3 = fmul float %2, %0
  %4 = fmul float %3, %0
  %5 = tail call float @llvm.fmuladd.f32(float %0, float 3.000000e+00, float %4)
  ret float %5
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z11my_sin_implf(float noundef %0) local_unnamed_addr #1 {
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
  %14 = tail call float @llvm.fmuladd.f32(float %10, float 3.000000e+00, float %13) #7
  br label %6
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z6my_sinf(float noundef %0) local_unnamed_addr #1 {
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
define dso_local noundef float @_Z6my_cosf(float noundef %0) local_unnamed_addr #1 {
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
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 0x401921FB60000000, float %2) #7
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi float [ %11, %6 ], [ %2, %1 ]
  %14 = fcmp ogt float %13, 0x400921FB60000000
  %15 = fadd float %13, 0xC01921FB60000000
  %16 = select i1 %14, float %15, float %13
  %17 = fcmp olt float %16, 0xC00921FB60000000
  %18 = fadd float %16, 0x401921FB60000000
  %19 = select i1 %17, float %18, float %16
  %20 = tail call noundef float @_Z11my_sin_implf(float noundef %19) #7
  ret float %20
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9write_matPA8_fii([8 x float]* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  %6 = icmp sgt i32 %2, 1
  %7 = zext i32 %1 to i64
  br i1 %6, label %8, label %23

8:                                                ; preds = %5
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %20
  %11 = phi i64 [ 0, %8 ], [ %21, %20 ]
  %12 = getelementptr inbounds [8 x float], [8 x float]* %0, i64 %11, i64 0
  %13 = load float, float* %12, align 4, !tbaa !5
  tail call void @_Z8putfloatf(float noundef %13)
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 1, %10 ], [ %18, %14 ]
  tail call void @_Z5putchi(i32 noundef 32)
  %16 = getelementptr inbounds [8 x float], [8 x float]* %0, i64 %11, i64 %15
  %17 = load float, float* %16, align 4, !tbaa !5
  tail call void @_Z8putfloatf(float noundef %17)
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %20, label %14, !llvm.loop !9

20:                                               ; preds = %14
  tail call void @_Z5putchi(i32 noundef 10)
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %29, label %10, !llvm.loop !11

23:                                               ; preds = %5, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %5 ]
  %25 = getelementptr inbounds [8 x float], [8 x float]* %0, i64 %24, i64 0
  %26 = load float, float* %25, align 4, !tbaa !5
  tail call void @_Z8putfloatf(float noundef %26)
  tail call void @_Z5putchi(i32 noundef 10)
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %7
  br i1 %28, label %29, label %23, !llvm.loop !11

29:                                               ; preds = %23, %20, %3
  tail call void @_Z5putchi(i32 noundef 10)
  ret void
}

declare void @_Z8putfloatf(float noundef) local_unnamed_addr #4

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z3dctPA8_fS0_ii([8 x float]* nocapture noundef %0, [8 x float]* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %138

6:                                                ; preds = %4
  %7 = icmp sgt i32 %3, 0
  %8 = sitofp i32 %2 to float
  %9 = fdiv float 0x400921FB60000000, %8
  %10 = fpext float %9 to double
  %11 = sitofp i32 %3 to float
  %12 = fdiv float 0x400921FB60000000, %11
  %13 = fpext float %12 to double
  br i1 %7, label %14, label %138

14:                                               ; preds = %6
  %15 = zext i32 %2 to i64
  %16 = zext i32 %3 to i64
  br label %17

17:                                               ; preds = %14, %135
  %18 = phi i64 [ 0, %14 ], [ %136, %135 ]
  %19 = trunc i64 %18 to i32
  %20 = sitofp i32 %19 to double
  br label %21

21:                                               ; preds = %132, %17
  %22 = phi i64 [ %133, %132 ], [ 0, %17 ]
  %23 = getelementptr inbounds [8 x float], [8 x float]* %0, i64 %18, i64 %22
  store float 0.000000e+00, float* %23, align 4, !tbaa !5
  %24 = trunc i64 %22 to i32
  %25 = sitofp i32 %24 to double
  br label %26

26:                                               ; preds = %86, %21
  %27 = phi float [ %87, %86 ], [ 0.000000e+00, %21 ]
  %28 = phi i64 [ %88, %86 ], [ 0, %21 ]
  %29 = trunc i64 %28 to i32
  %30 = sitofp i32 %29 to double
  %31 = fadd double %30, 5.000000e-01
  %32 = fmul double %31, %10
  %33 = fmul double %32, %20
  %34 = fptrunc double %33 to float
  %35 = fadd float %34, 0x3FF921FB60000000
  %36 = fcmp ogt float %35, 0x401921FB60000000
  %37 = fcmp olt float %35, 0xC01921FB60000000
  %38 = or i1 %36, %37
  %39 = fdiv float %35, 0x401921FB60000000
  %40 = fptosi float %39 to i32
  %41 = sitofp i32 %40 to float
  %42 = fneg float %41
  %43 = tail call float @llvm.fmuladd.f32(float %42, float 0x401921FB60000000, float %35) #7
  br i1 %38, label %90, label %78

44:                                               ; preds = %78, %66
  %45 = phi float [ %27, %78 ], [ %75, %66 ]
  %46 = phi i64 [ 0, %78 ], [ %76, %66 ]
  %47 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 %28, i64 %46
  %48 = load float, float* %47, align 4, !tbaa !5
  %49 = fmul float %48, %85
  %50 = trunc i64 %46 to i32
  %51 = sitofp i32 %50 to double
  %52 = fadd double %51, 5.000000e-01
  %53 = fmul double %52, %13
  %54 = fmul double %53, %25
  %55 = fptrunc double %54 to float
  %56 = fadd float %55, 0x3FF921FB60000000
  %57 = fcmp ogt float %56, 0x401921FB60000000
  %58 = fcmp olt float %56, 0xC01921FB60000000
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %44
  %61 = fdiv float %56, 0x401921FB60000000
  %62 = fptosi float %61 to i32
  %63 = sitofp i32 %62 to float
  %64 = fneg float %63
  %65 = tail call float @llvm.fmuladd.f32(float %64, float 0x401921FB60000000, float %56) #7
  br label %66

66:                                               ; preds = %60, %44
  %67 = phi float [ %65, %60 ], [ %56, %44 ]
  %68 = fcmp ogt float %67, 0x400921FB60000000
  %69 = fadd float %67, 0xC01921FB60000000
  %70 = select i1 %68, float %69, float %67
  %71 = fcmp olt float %70, 0xC00921FB60000000
  %72 = fadd float %70, 0x401921FB60000000
  %73 = select i1 %71, float %72, float %70
  %74 = tail call noundef float @_Z11my_sin_implf(float noundef %73) #7
  %75 = tail call float @llvm.fmuladd.f32(float %49, float %74, float %45)
  store float %75, float* %23, align 4, !tbaa !5
  %76 = add nuw nsw i64 %46, 1
  %77 = icmp eq i64 %76, %16
  br i1 %77, label %86, label %44, !llvm.loop !12

78:                                               ; preds = %26
  %79 = fcmp ogt float %35, 0x400921FB60000000
  %80 = fadd float %35, 0xC01921FB60000000
  %81 = select i1 %79, float %80, float %35
  %82 = fcmp olt float %81, 0xC00921FB60000000
  %83 = fadd float %81, 0x401921FB60000000
  %84 = select i1 %82, float %83, float %81
  %85 = tail call noundef float @_Z11my_sin_implf(float noundef %84) #7
  br label %44

86:                                               ; preds = %66, %120
  %87 = phi float [ %129, %120 ], [ %75, %66 ]
  %88 = add nuw nsw i64 %28, 1
  %89 = icmp eq i64 %88, %15
  br i1 %89, label %132, label %26, !llvm.loop !13

90:                                               ; preds = %26
  %91 = fcmp ogt float %43, 0x400921FB60000000
  %92 = fadd float %43, 0xC01921FB60000000
  %93 = select i1 %91, float %92, float %43
  %94 = fcmp olt float %93, 0xC00921FB60000000
  %95 = fadd float %93, 0x401921FB60000000
  %96 = select i1 %94, float %95, float %93
  %97 = tail call noundef float @_Z11my_sin_implf(float noundef %96) #7
  br label %98

98:                                               ; preds = %120, %90
  %99 = phi float [ %129, %120 ], [ %27, %90 ]
  %100 = phi i64 [ %130, %120 ], [ 0, %90 ]
  %101 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 %28, i64 %100
  %102 = load float, float* %101, align 4, !tbaa !5
  %103 = fmul float %102, %97
  %104 = trunc i64 %100 to i32
  %105 = sitofp i32 %104 to double
  %106 = fadd double %105, 5.000000e-01
  %107 = fmul double %106, %13
  %108 = fmul double %107, %25
  %109 = fptrunc double %108 to float
  %110 = fadd float %109, 0x3FF921FB60000000
  %111 = fcmp ogt float %110, 0x401921FB60000000
  %112 = fcmp olt float %110, 0xC01921FB60000000
  %113 = or i1 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %98
  %115 = fdiv float %110, 0x401921FB60000000
  %116 = fptosi float %115 to i32
  %117 = sitofp i32 %116 to float
  %118 = fneg float %117
  %119 = tail call float @llvm.fmuladd.f32(float %118, float 0x401921FB60000000, float %110) #7
  br label %120

120:                                              ; preds = %114, %98
  %121 = phi float [ %119, %114 ], [ %110, %98 ]
  %122 = fcmp ogt float %121, 0x400921FB60000000
  %123 = fadd float %121, 0xC01921FB60000000
  %124 = select i1 %122, float %123, float %121
  %125 = fcmp olt float %124, 0xC00921FB60000000
  %126 = fadd float %124, 0x401921FB60000000
  %127 = select i1 %125, float %126, float %124
  %128 = tail call noundef float @_Z11my_sin_implf(float noundef %127) #7
  %129 = tail call float @llvm.fmuladd.f32(float %103, float %128, float %99)
  store float %129, float* %23, align 4, !tbaa !5
  %130 = add nuw nsw i64 %100, 1
  %131 = icmp eq i64 %130, %16
  br i1 %131, label %86, label %98, !llvm.loop !12

132:                                              ; preds = %86
  %133 = add nuw nsw i64 %22, 1
  %134 = icmp eq i64 %133, %16
  br i1 %134, label %135, label %21, !llvm.loop !14

135:                                              ; preds = %132
  %136 = add nuw nsw i64 %18, 1
  %137 = icmp eq i64 %136, %15
  br i1 %137, label %138, label %17, !llvm.loop !15

138:                                              ; preds = %135, %6, %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z4idctPA8_fS0_ii([8 x float]* nocapture noundef %0, [8 x float]* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %231

6:                                                ; preds = %4
  %7 = icmp sgt i32 %3, 0
  %8 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 0
  %9 = icmp eq i32 %2, 1
  %10 = icmp sgt i32 %3, 1
  %11 = sitofp i32 %2 to float
  %12 = fdiv float 0x400921FB60000000, %11
  %13 = fpext float %12 to double
  %14 = sitofp i32 %3 to float
  %15 = fdiv float 0x400921FB60000000, %14
  %16 = fpext float %15 to double
  %17 = sitofp i32 %2 to double
  %18 = sitofp i32 %3 to double
  br i1 %7, label %19, label %231

19:                                               ; preds = %6
  %20 = zext i32 %2 to i64
  %21 = zext i32 %3 to i64
  %22 = add nsw i64 %20, -1
  %23 = add nsw i64 %21, -1
  %24 = and i64 %22, 1
  %25 = icmp eq i32 %2, 2
  %26 = and i64 %22, -2
  %27 = icmp eq i64 %24, 0
  %28 = and i64 %23, 1
  %29 = icmp eq i32 %3, 2
  %30 = and i64 %23, -2
  %31 = icmp eq i64 %28, 0
  br label %32

32:                                               ; preds = %19, %228
  %33 = phi i64 [ 0, %19 ], [ %229, %228 ]
  %34 = trunc i64 %33 to i32
  %35 = sitofp i32 %34 to double
  %36 = fadd double %35, 5.000000e-01
  %37 = fmul double %36, %13
  br label %38

38:                                               ; preds = %32, %44
  %39 = phi i64 [ 0, %32 ], [ %52, %44 ]
  %40 = load float, float* %8, align 4, !tbaa !5
  %41 = fmul float %40, 2.500000e-01
  %42 = getelementptr inbounds [8 x float], [8 x float]* %0, i64 %33, i64 %39
  store float %41, float* %42, align 4, !tbaa !5
  br i1 %9, label %122, label %43

43:                                               ; preds = %38
  br i1 %25, label %107, label %74

44:                                               ; preds = %184, %118, %122, %123, %105
  %45 = phi float [ %106, %105 ], [ %106, %123 ], [ %41, %122 ], [ %119, %118 ], [ %185, %184 ]
  %46 = fpext float %45 to double
  %47 = fmul double %46, 2.000000e+00
  %48 = fdiv double %47, %17
  %49 = fmul double %48, 2.000000e+00
  %50 = fdiv double %49, %18
  %51 = fptrunc double %50 to float
  store float %51, float* %42, align 4, !tbaa !5
  %52 = add nuw nsw i64 %39, 1
  %53 = icmp eq i64 %52, %21
  br i1 %53, label %228, label %38, !llvm.loop !16

54:                                               ; preds = %120, %54
  %55 = phi float [ %70, %54 ], [ %121, %120 ]
  %56 = phi i64 [ %71, %54 ], [ 1, %120 ]
  %57 = phi i64 [ %72, %54 ], [ 0, %120 ]
  %58 = fpext float %55 to double
  %59 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 %56
  %60 = load float, float* %59, align 4, !tbaa !5
  %61 = fpext float %60 to double
  %62 = tail call double @llvm.fmuladd.f64(double %61, double 5.000000e-01, double %58)
  %63 = fptrunc double %62 to float
  store float %63, float* %42, align 4, !tbaa !5
  %64 = add nuw nsw i64 %56, 1
  %65 = fpext float %63 to double
  %66 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 %64
  %67 = load float, float* %66, align 4, !tbaa !5
  %68 = fpext float %67 to double
  %69 = tail call double @llvm.fmuladd.f64(double %68, double 5.000000e-01, double %65)
  %70 = fptrunc double %69 to float
  store float %70, float* %42, align 4, !tbaa !5
  %71 = add nuw nsw i64 %56, 2
  %72 = add i64 %57, 2
  %73 = icmp eq i64 %72, %30
  br i1 %73, label %94, label %54, !llvm.loop !17

74:                                               ; preds = %43, %74
  %75 = phi float [ %90, %74 ], [ %41, %43 ]
  %76 = phi i64 [ %91, %74 ], [ 1, %43 ]
  %77 = phi i64 [ %92, %74 ], [ 0, %43 ]
  %78 = fpext float %75 to double
  %79 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 %76, i64 0
  %80 = load float, float* %79, align 4, !tbaa !5
  %81 = fpext float %80 to double
  %82 = tail call double @llvm.fmuladd.f64(double %81, double 5.000000e-01, double %78)
  %83 = fptrunc double %82 to float
  store float %83, float* %42, align 4, !tbaa !5
  %84 = add nuw nsw i64 %76, 1
  %85 = fpext float %83 to double
  %86 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 %84, i64 0
  %87 = load float, float* %86, align 4, !tbaa !5
  %88 = fpext float %87 to double
  %89 = tail call double @llvm.fmuladd.f64(double %88, double 5.000000e-01, double %85)
  %90 = fptrunc double %89 to float
  store float %90, float* %42, align 4, !tbaa !5
  %91 = add nuw nsw i64 %76, 2
  %92 = add i64 %77, 2
  %93 = icmp eq i64 %92, %26
  br i1 %93, label %107, label %74, !llvm.loop !18

94:                                               ; preds = %54, %120
  %95 = phi float [ undef, %120 ], [ %70, %54 ]
  %96 = phi float [ %121, %120 ], [ %70, %54 ]
  %97 = phi i64 [ 1, %120 ], [ %71, %54 ]
  br i1 %31, label %105, label %98

98:                                               ; preds = %94
  %99 = fpext float %96 to double
  %100 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 %97
  %101 = load float, float* %100, align 4, !tbaa !5
  %102 = fpext float %101 to double
  %103 = tail call double @llvm.fmuladd.f64(double %102, double 5.000000e-01, double %99)
  %104 = fptrunc double %103 to float
  store float %104, float* %42, align 4, !tbaa !5
  br label %105

105:                                              ; preds = %94, %98
  %106 = phi float [ %95, %94 ], [ %104, %98 ]
  br i1 %9, label %44, label %123

107:                                              ; preds = %74, %43
  %108 = phi float [ undef, %43 ], [ %90, %74 ]
  %109 = phi float [ %41, %43 ], [ %90, %74 ]
  %110 = phi i64 [ 1, %43 ], [ %91, %74 ]
  br i1 %27, label %118, label %111

111:                                              ; preds = %107
  %112 = fpext float %109 to double
  %113 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 %110, i64 0
  %114 = load float, float* %113, align 4, !tbaa !5
  %115 = fpext float %114 to double
  %116 = tail call double @llvm.fmuladd.f64(double %115, double 5.000000e-01, double %112)
  %117 = fptrunc double %116 to float
  store float %117, float* %42, align 4, !tbaa !5
  br label %118

118:                                              ; preds = %107, %111
  %119 = phi float [ %108, %107 ], [ %117, %111 ]
  br i1 %10, label %120, label %44

120:                                              ; preds = %122, %118
  %121 = phi float [ %119, %118 ], [ %41, %122 ]
  br i1 %29, label %94, label %54

122:                                              ; preds = %38
  br i1 %10, label %120, label %44

123:                                              ; preds = %105
  %124 = trunc i64 %39 to i32
  %125 = sitofp i32 %124 to double
  %126 = fadd double %125, 5.000000e-01
  %127 = fmul double %126, %16
  br i1 %10, label %128, label %44

128:                                              ; preds = %123, %184
  %129 = phi float [ %185, %184 ], [ %106, %123 ]
  %130 = phi i64 [ %186, %184 ], [ 1, %123 ]
  %131 = trunc i64 %130 to i32
  %132 = sitofp i32 %131 to double
  %133 = fmul double %37, %132
  %134 = fptrunc double %133 to float
  %135 = fadd float %134, 0x3FF921FB60000000
  %136 = fcmp ogt float %135, 0x401921FB60000000
  %137 = fcmp olt float %135, 0xC01921FB60000000
  %138 = or i1 %136, %137
  %139 = fdiv float %135, 0x401921FB60000000
  %140 = fptosi float %139 to i32
  %141 = sitofp i32 %140 to float
  %142 = fneg float %141
  %143 = tail call float @llvm.fmuladd.f32(float %142, float 0x401921FB60000000, float %135) #7
  br i1 %138, label %188, label %176

144:                                              ; preds = %176, %164
  %145 = phi float [ %129, %176 ], [ %173, %164 ]
  %146 = phi i64 [ 1, %176 ], [ %174, %164 ]
  %147 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 %130, i64 %146
  %148 = load float, float* %147, align 4, !tbaa !5
  %149 = fmul float %148, %183
  %150 = trunc i64 %146 to i32
  %151 = sitofp i32 %150 to double
  %152 = fmul double %127, %151
  %153 = fptrunc double %152 to float
  %154 = fadd float %153, 0x3FF921FB60000000
  %155 = fcmp ogt float %154, 0x401921FB60000000
  %156 = fcmp olt float %154, 0xC01921FB60000000
  %157 = or i1 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %144
  %159 = fdiv float %154, 0x401921FB60000000
  %160 = fptosi float %159 to i32
  %161 = sitofp i32 %160 to float
  %162 = fneg float %161
  %163 = tail call float @llvm.fmuladd.f32(float %162, float 0x401921FB60000000, float %154) #7
  br label %164

164:                                              ; preds = %158, %144
  %165 = phi float [ %163, %158 ], [ %154, %144 ]
  %166 = fcmp ogt float %165, 0x400921FB60000000
  %167 = fadd float %165, 0xC01921FB60000000
  %168 = select i1 %166, float %167, float %165
  %169 = fcmp olt float %168, 0xC00921FB60000000
  %170 = fadd float %168, 0x401921FB60000000
  %171 = select i1 %169, float %170, float %168
  %172 = tail call noundef float @_Z11my_sin_implf(float noundef %171) #7
  %173 = tail call float @llvm.fmuladd.f32(float %149, float %172, float %145)
  store float %173, float* %42, align 4, !tbaa !5
  %174 = add nuw nsw i64 %146, 1
  %175 = icmp eq i64 %174, %21
  br i1 %175, label %184, label %144, !llvm.loop !19

176:                                              ; preds = %128
  %177 = fcmp ogt float %135, 0x400921FB60000000
  %178 = fadd float %135, 0xC01921FB60000000
  %179 = select i1 %177, float %178, float %135
  %180 = fcmp olt float %179, 0xC00921FB60000000
  %181 = fadd float %179, 0x401921FB60000000
  %182 = select i1 %180, float %181, float %179
  %183 = tail call noundef float @_Z11my_sin_implf(float noundef %182) #7
  br label %144

184:                                              ; preds = %164, %216
  %185 = phi float [ %225, %216 ], [ %173, %164 ]
  %186 = add nuw nsw i64 %130, 1
  %187 = icmp eq i64 %186, %20
  br i1 %187, label %44, label %128, !llvm.loop !20

188:                                              ; preds = %128
  %189 = fcmp ogt float %143, 0x400921FB60000000
  %190 = fadd float %143, 0xC01921FB60000000
  %191 = select i1 %189, float %190, float %143
  %192 = fcmp olt float %191, 0xC00921FB60000000
  %193 = fadd float %191, 0x401921FB60000000
  %194 = select i1 %192, float %193, float %191
  %195 = tail call noundef float @_Z11my_sin_implf(float noundef %194) #7
  br label %196

196:                                              ; preds = %216, %188
  %197 = phi float [ %225, %216 ], [ %129, %188 ]
  %198 = phi i64 [ %226, %216 ], [ 1, %188 ]
  %199 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 %130, i64 %198
  %200 = load float, float* %199, align 4, !tbaa !5
  %201 = fmul float %200, %195
  %202 = trunc i64 %198 to i32
  %203 = sitofp i32 %202 to double
  %204 = fmul double %127, %203
  %205 = fptrunc double %204 to float
  %206 = fadd float %205, 0x3FF921FB60000000
  %207 = fcmp ogt float %206, 0x401921FB60000000
  %208 = fcmp olt float %206, 0xC01921FB60000000
  %209 = or i1 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %196
  %211 = fdiv float %206, 0x401921FB60000000
  %212 = fptosi float %211 to i32
  %213 = sitofp i32 %212 to float
  %214 = fneg float %213
  %215 = tail call float @llvm.fmuladd.f32(float %214, float 0x401921FB60000000, float %206) #7
  br label %216

216:                                              ; preds = %210, %196
  %217 = phi float [ %215, %210 ], [ %206, %196 ]
  %218 = fcmp ogt float %217, 0x400921FB60000000
  %219 = fadd float %217, 0xC01921FB60000000
  %220 = select i1 %218, float %219, float %217
  %221 = fcmp olt float %220, 0xC00921FB60000000
  %222 = fadd float %220, 0x401921FB60000000
  %223 = select i1 %221, float %222, float %220
  %224 = tail call noundef float @_Z11my_sin_implf(float noundef %223) #7
  %225 = tail call float @llvm.fmuladd.f32(float %201, float %224, float %197)
  store float %225, float* %42, align 4, !tbaa !5
  %226 = add nuw nsw i64 %198, 1
  %227 = icmp eq i64 %226, %21
  br i1 %227, label %184, label %196, !llvm.loop !19

228:                                              ; preds = %44
  %229 = add nuw nsw i64 %33, 1
  %230 = icmp eq i64 %229, %20
  br i1 %230, label %231, label %32, !llvm.loop !21

231:                                              ; preds = %228, %6, %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = icmp sgt i32 %1, 0
  %4 = icmp sgt i32 %2, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = zext i32 %1 to i64
  %8 = zext i32 %2 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ 0, %6 ], [ %18, %17 ]
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %15, %11 ]
  %13 = tail call noundef float @_Z8getfloatv()
  %14 = getelementptr inbounds [8 x [8 x float]], [8 x [8 x float]]* @test_block, i64 0, i64 %10, i64 %12
  store float %13, float* %14, align 4, !tbaa !5
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %11, !llvm.loop !22

17:                                               ; preds = %11
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, %7
  br i1 %19, label %20, label %9, !llvm.loop !23

20:                                               ; preds = %17, %0
  tail call void @_Z3dctPA8_fS0_ii([8 x float]* noundef getelementptr inbounds ([8 x [8 x float]], [8 x [8 x float]]* @test_dct, i64 0, i64 0), [8 x float]* noundef getelementptr inbounds ([8 x [8 x float]], [8 x [8 x float]]* @test_block, i64 0, i64 0), i32 noundef %1, i32 noundef %2)
  tail call void @_Z9write_matPA8_fii([8 x float]* noundef getelementptr inbounds ([8 x [8 x float]], [8 x [8 x float]]* @test_dct, i64 0, i64 0), i32 noundef %1, i32 noundef %2)
  tail call void @_Z4idctPA8_fS0_ii([8 x float]* noundef getelementptr inbounds ([8 x [8 x float]], [8 x [8 x float]]* @test_idct, i64 0, i64 0), [8 x float]* noundef getelementptr inbounds ([8 x [8 x float]], [8 x [8 x float]]* @test_dct, i64 0, i64 0), i32 noundef %1, i32 noundef %2)
  tail call void @_Z9write_matPA8_fii([8 x float]* noundef getelementptr inbounds ([8 x [8 x float]], [8 x [8 x float]]* @test_idct, i64 0, i64 0), i32 noundef %1, i32 noundef %2)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

declare noundef float @_Z8getfloatv() local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
