; ModuleID = 'tests//SysY2022/hidden_functional/35_math.sy'
source_filename = "tests//SysY2022/hidden_functional/35_math.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z7my_fabsf(float noundef %0) local_unnamed_addr #0 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %0, float %3
  ret float %4
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z6my_powfi(float noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %12, %4, %8
  %7 = phi float [ %11, %8 ], [ 1.000000e+00, %4 ], [ %19, %12 ]
  ret float %7

8:                                                ; preds = %2
  %9 = sub nsw i32 0, %1
  %10 = tail call noundef float @_Z6my_powfi(float noundef %0, i32 noundef %9)
  %11 = fdiv float 1.000000e+00, %10
  br label %6

12:                                               ; preds = %4, %12
  %13 = phi float [ %19, %12 ], [ 1.000000e+00, %4 ]
  %14 = phi i32 [ %21, %12 ], [ %1, %4 ]
  %15 = phi float [ %20, %12 ], [ %0, %4 ]
  %16 = and i32 %14, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, float 1.000000e+00, float %15
  %19 = fmul float %13, %18
  %20 = fmul float %15, %15
  %21 = sdiv i32 %14, 2
  %22 = add i32 %14, 1
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %6, label %12, !llvm.loop !4
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z7my_sqrtf(float noundef %0) local_unnamed_addr #1 {
  %2 = fcmp ogt float %0, 1.000000e+02
  br i1 %2, label %5, label %9

3:                                                ; preds = %9, %5
  %4 = phi float [ %8, %5 ], [ %48, %9 ]
  ret float %4

5:                                                ; preds = %1
  %6 = fdiv float %0, 1.000000e+02
  %7 = tail call noundef float @_Z7my_sqrtf(float noundef %6)
  %8 = fmul float %7, 1.000000e+01
  br label %3

9:                                                ; preds = %1
  %10 = fmul float %0, 1.250000e-01
  %11 = fpext float %10 to double
  %12 = fadd double %11, 5.000000e-01
  %13 = fmul float %0, 2.000000e+00
  %14 = fadd float %0, 4.000000e+00
  %15 = fdiv float %13, %14
  %16 = fpext float %15 to double
  %17 = fadd double %12, %16
  %18 = fptrunc double %17 to float
  %19 = fdiv float %0, %18
  %20 = fadd float %19, %18
  %21 = fmul float %20, 5.000000e-01
  %22 = fdiv float %0, %21
  %23 = fadd float %21, %22
  %24 = fmul float %23, 5.000000e-01
  %25 = fdiv float %0, %24
  %26 = fadd float %24, %25
  %27 = fmul float %26, 5.000000e-01
  %28 = fdiv float %0, %27
  %29 = fadd float %27, %28
  %30 = fmul float %29, 5.000000e-01
  %31 = fdiv float %0, %30
  %32 = fadd float %30, %31
  %33 = fmul float %32, 5.000000e-01
  %34 = fdiv float %0, %33
  %35 = fadd float %33, %34
  %36 = fmul float %35, 5.000000e-01
  %37 = fdiv float %0, %36
  %38 = fadd float %36, %37
  %39 = fmul float %38, 5.000000e-01
  %40 = fdiv float %0, %39
  %41 = fadd float %39, %40
  %42 = fmul float %41, 5.000000e-01
  %43 = fdiv float %0, %42
  %44 = fadd float %42, %43
  %45 = fmul float %44, 5.000000e-01
  %46 = fdiv float %0, %45
  %47 = fadd float %45, %46
  %48 = fmul float %47, 5.000000e-01
  br label %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z2F1f(float noundef %0) local_unnamed_addr #0 {
  %2 = fdiv float 1.000000e+00, %0
  ret float %2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z2F2f(float noundef %0) local_unnamed_addr #1 {
  %2 = fneg float %0
  %3 = tail call float @llvm.fmuladd.f32(float %2, float %0, float 1.000000e+00)
  %4 = tail call noundef float @_Z7my_sqrtf(float noundef %3)
  %5 = fdiv float 1.000000e+00, %4
  ret float %5
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z7simpsonffi(float noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = fsub float %1, %0
  %5 = fmul float %4, 5.000000e-01
  %6 = fadd float %5, %0
  switch i32 %2, label %32 [
    i32 1, label %7
    i32 2, label %15
  ]

7:                                                ; preds = %3
  %8 = fdiv float 1.000000e+00, %0
  %9 = fdiv float 1.000000e+00, %6
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 4.000000e+00, float %8)
  %11 = fdiv float 1.000000e+00, %1
  %12 = fadd float %11, %10
  %13 = fmul float %4, %12
  %14 = fdiv float %13, 6.000000e+00
  br label %32

15:                                               ; preds = %3
  %16 = fneg float %0
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %0, float 1.000000e+00) #5
  %18 = tail call noundef float @_Z7my_sqrtf(float noundef %17) #5
  %19 = fdiv float 1.000000e+00, %18
  %20 = fneg float %6
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %6, float 1.000000e+00) #5
  %22 = tail call noundef float @_Z7my_sqrtf(float noundef %21) #5
  %23 = fdiv float 1.000000e+00, %22
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 4.000000e+00, float %19)
  %25 = fneg float %1
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %1, float 1.000000e+00) #5
  %27 = tail call noundef float @_Z7my_sqrtf(float noundef %26) #5
  %28 = fdiv float 1.000000e+00, %27
  %29 = fadd float %24, %28
  %30 = fmul float %4, %29
  %31 = fdiv float %30, 6.000000e+00
  br label %32

32:                                               ; preds = %3, %15, %7
  %33 = phi float [ %14, %7 ], [ %31, %15 ], [ 0.000000e+00, %3 ]
  ret float %33
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z4asr5ffffi(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = fsub float %1, %0
  %7 = fmul float %6, 5.000000e-01
  %8 = fadd float %7, %0
  %9 = fsub float %8, %0
  %10 = fmul float %9, 5.000000e-01
  %11 = fadd float %10, %0
  switch i32 %4, label %61 [
    i32 1, label %12
    i32 2, label %29
  ]

12:                                               ; preds = %5
  %13 = fdiv float 1.000000e+00, %0
  %14 = fdiv float 1.000000e+00, %11
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 4.000000e+00, float %13) #5
  %16 = fdiv float 1.000000e+00, %8
  %17 = fadd float %16, %15
  %18 = fmul float %9, %17
  %19 = fdiv float %18, 6.000000e+00
  %20 = fsub float %1, %8
  %21 = fmul float %20, 5.000000e-01
  %22 = fadd float %8, %21
  %23 = fdiv float 1.000000e+00, %22
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 4.000000e+00, float %16) #5
  %25 = fdiv float 1.000000e+00, %1
  %26 = fadd float %25, %24
  %27 = fmul float %20, %26
  %28 = fdiv float %27, 6.000000e+00
  br label %61

29:                                               ; preds = %5
  %30 = fneg float %0
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %0, float 1.000000e+00) #5
  %32 = tail call noundef float @_Z7my_sqrtf(float noundef %31) #5
  %33 = fdiv float 1.000000e+00, %32
  %34 = fneg float %11
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %11, float 1.000000e+00) #5
  %36 = tail call noundef float @_Z7my_sqrtf(float noundef %35) #5
  %37 = fdiv float 1.000000e+00, %36
  %38 = tail call float @llvm.fmuladd.f32(float %37, float 4.000000e+00, float %33) #5
  %39 = fneg float %8
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %8, float 1.000000e+00) #5
  %41 = tail call noundef float @_Z7my_sqrtf(float noundef %40) #5
  %42 = fdiv float 1.000000e+00, %41
  %43 = fadd float %38, %42
  %44 = fmul float %9, %43
  %45 = fdiv float %44, 6.000000e+00
  %46 = fsub float %1, %8
  %47 = fmul float %46, 5.000000e-01
  %48 = fadd float %8, %47
  %49 = fneg float %48
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %48, float 1.000000e+00) #5
  %51 = tail call noundef float @_Z7my_sqrtf(float noundef %50) #5
  %52 = fdiv float 1.000000e+00, %51
  %53 = tail call float @llvm.fmuladd.f32(float %52, float 4.000000e+00, float %42) #5
  %54 = fneg float %1
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %1, float 1.000000e+00) #5
  %56 = tail call noundef float @_Z7my_sqrtf(float noundef %55) #5
  %57 = fdiv float 1.000000e+00, %56
  %58 = fadd float %53, %57
  %59 = fmul float %46, %58
  %60 = fdiv float %59, 6.000000e+00
  br label %61

61:                                               ; preds = %5, %12, %29
  %62 = phi float [ %19, %12 ], [ %45, %29 ], [ 0.000000e+00, %5 ]
  %63 = phi float [ %28, %12 ], [ %60, %29 ], [ 0.000000e+00, %5 ]
  %64 = fadd float %62, %63
  %65 = fsub float %64, %3
  %66 = fcmp ogt float %65, 0.000000e+00
  %67 = fneg float %65
  %68 = select i1 %66, float %65, float %67
  %69 = fmul float %2, 1.500000e+01
  %70 = fcmp ugt float %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %61
  %72 = fpext float %64 to double
  %73 = fpext float %65 to double
  %74 = fdiv double %73, 1.500000e+01
  %75 = fadd double %74, %72
  %76 = fptrunc double %75 to float
  br label %77

77:                                               ; preds = %71, %79
  %78 = phi float [ %83, %79 ], [ %76, %71 ]
  ret float %78

79:                                               ; preds = %61
  %80 = fmul float %2, 5.000000e-01
  %81 = tail call noundef float @_Z4asr5ffffi(float noundef %0, float noundef %8, float noundef %80, float noundef %62, i32 noundef %4)
  %82 = tail call noundef float @_Z4asr5ffffi(float noundef %8, float noundef %1, float noundef %80, float noundef %63, i32 noundef %4)
  %83 = fadd float %81, %82
  br label %77
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z4asr4fffi(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = fsub float %1, %0
  %6 = fmul float %5, 5.000000e-01
  %7 = fadd float %6, %0
  switch i32 %3, label %33 [
    i32 1, label %8
    i32 2, label %16
  ]

8:                                                ; preds = %4
  %9 = fdiv float 1.000000e+00, %0
  %10 = fdiv float 1.000000e+00, %7
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 4.000000e+00, float %9) #5
  %12 = fdiv float 1.000000e+00, %1
  %13 = fadd float %12, %11
  %14 = fmul float %5, %13
  %15 = fdiv float %14, 6.000000e+00
  br label %33

16:                                               ; preds = %4
  %17 = fneg float %0
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %0, float 1.000000e+00) #5
  %19 = tail call noundef float @_Z7my_sqrtf(float noundef %18) #5
  %20 = fdiv float 1.000000e+00, %19
  %21 = fneg float %7
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %7, float 1.000000e+00) #5
  %23 = tail call noundef float @_Z7my_sqrtf(float noundef %22) #5
  %24 = fdiv float 1.000000e+00, %23
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 4.000000e+00, float %20) #5
  %26 = fneg float %1
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %1, float 1.000000e+00) #5
  %28 = tail call noundef float @_Z7my_sqrtf(float noundef %27) #5
  %29 = fdiv float 1.000000e+00, %28
  %30 = fadd float %25, %29
  %31 = fmul float %5, %30
  %32 = fdiv float %31, 6.000000e+00
  br label %33

33:                                               ; preds = %4, %8, %16
  %34 = phi float [ %15, %8 ], [ %32, %16 ], [ 0.000000e+00, %4 ]
  %35 = tail call noundef float @_Z4asr5ffffi(float noundef %0, float noundef %1, float noundef %2, float noundef %34, i32 noundef %3)
  ret float %35
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z3eeef(float noundef %0) local_unnamed_addr #1 {
  %2 = fpext float %0 to double
  %3 = fcmp ogt double %2, 1.000000e-03
  br i1 %3, label %6, label %10

4:                                                ; preds = %10, %6
  %5 = phi float [ %9, %6 ], [ %23, %10 ]
  ret float %5

6:                                                ; preds = %1
  %7 = fmul float %0, 5.000000e-01
  %8 = tail call noundef float @_Z3eeef(float noundef %7)
  %9 = fmul float %8, %8
  br label %4

10:                                               ; preds = %1
  %11 = fmul float %0, %0
  %12 = fmul float %11, 5.000000e-01
  %13 = fmul float %11, %0
  %14 = fadd float %0, 1.000000e+00
  %15 = fdiv float %13, 6.000000e+00
  %16 = fmul float %11, %11
  %17 = fadd float %14, %12
  %18 = fdiv float %16, 2.400000e+01
  %19 = fmul float %16, %0
  %20 = fadd float %17, %15
  %21 = fadd float %20, %18
  %22 = fdiv float %19, 1.200000e+02
  %23 = fadd float %21, %22
  br label %4
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z6my_expf(float noundef %0) local_unnamed_addr #1 {
  %2 = fcmp olt float %0, 0.000000e+00
  br i1 %2, label %5, label %9

3:                                                ; preds = %9, %5
  %4 = phi float [ %8, %5 ], [ %15, %9 ]
  ret float %4

5:                                                ; preds = %1
  %6 = fneg float %0
  %7 = tail call noundef float @_Z6my_expf(float noundef %6)
  %8 = fdiv float 1.000000e+00, %7
  br label %3

9:                                                ; preds = %1
  %10 = fptosi float %0 to i32
  %11 = sitofp i32 %10 to float
  %12 = fsub float %0, %11
  %13 = tail call noundef float @_Z6my_powfi(float noundef 0x4005BF0A80000000, i32 noundef %10)
  %14 = tail call noundef float @_Z3eeef(float noundef %12)
  %15 = fmul float %13, %14
  br label %3
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z5my_lnf(float noundef %0) local_unnamed_addr #1 {
  %2 = fadd float %0, -1.000000e+00
  %3 = fmul float %2, 5.000000e-01
  %4 = fadd float %3, 1.000000e+00
  %5 = fdiv float 1.000000e+00, %4
  %6 = tail call float @llvm.fmuladd.f32(float %5, float 4.000000e+00, float 1.000000e+00) #5
  %7 = fdiv float 1.000000e+00, %0
  %8 = fadd float %7, %6
  %9 = fmul float %2, %8
  %10 = fdiv float %9, 6.000000e+00
  %11 = tail call noundef float @_Z4asr5ffffi(float noundef 1.000000e+00, float noundef %0, float noundef 0x3E45798EE0000000, float noundef %10, i32 noundef 1) #5
  ret float %11
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z6my_logff(float noundef %0, float noundef %1) local_unnamed_addr #1 {
  %3 = fadd float %1, -1.000000e+00
  %4 = fmul float %3, 5.000000e-01
  %5 = fadd float %4, 1.000000e+00
  %6 = fdiv float 1.000000e+00, %5
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 4.000000e+00, float 1.000000e+00) #5
  %8 = fdiv float 1.000000e+00, %1
  %9 = fadd float %8, %7
  %10 = fmul float %3, %9
  %11 = fdiv float %10, 6.000000e+00
  %12 = tail call noundef float @_Z4asr5ffffi(float noundef 1.000000e+00, float noundef %1, float noundef 0x3E45798EE0000000, float noundef %11, i32 noundef 1) #5
  %13 = fadd float %0, -1.000000e+00
  %14 = fmul float %13, 5.000000e-01
  %15 = fadd float %14, 1.000000e+00
  %16 = fdiv float 1.000000e+00, %15
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 4.000000e+00, float 1.000000e+00) #5
  %18 = fdiv float 1.000000e+00, %0
  %19 = fadd float %18, %17
  %20 = fmul float %13, %19
  %21 = fdiv float %20, 6.000000e+00
  %22 = tail call noundef float @_Z4asr5ffffi(float noundef 1.000000e+00, float noundef %0, float noundef 0x3E45798EE0000000, float noundef %21, i32 noundef 1) #5
  %23 = fdiv float %12, %22
  ret float %23
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z7my_powfff(float noundef %0, float noundef %1) local_unnamed_addr #1 {
  %3 = fadd float %0, -1.000000e+00
  %4 = fmul float %3, 5.000000e-01
  %5 = fadd float %4, 1.000000e+00
  %6 = fdiv float 1.000000e+00, %5
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 4.000000e+00, float 1.000000e+00) #5
  %8 = fdiv float 1.000000e+00, %0
  %9 = fadd float %8, %7
  %10 = fmul float %3, %9
  %11 = fdiv float %10, 6.000000e+00
  %12 = tail call noundef float @_Z4asr5ffffi(float noundef 1.000000e+00, float noundef %0, float noundef 0x3E45798EE0000000, float noundef %11, i32 noundef 1) #5
  %13 = fmul float %12, %1
  %14 = tail call noundef float @_Z6my_expf(float noundef %13)
  ret float %14
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %58, label %3

3:                                                ; preds = %0, %55
  %4 = phi i32 [ %56, %55 ], [ %1, %0 ]
  %5 = tail call noundef float @_Z8getfloatv()
  %6 = tail call noundef float @_Z8getfloatv()
  %7 = fcmp ogt float %5, 0.000000e+00
  %8 = fneg float %5
  %9 = select i1 %7, float %5, float %8
  tail call void @_Z8putfloatf(float noundef %9)
  tail call void @_Z5putchi(i32 noundef 32)
  %10 = fmul float %5, %5
  tail call void @_Z8putfloatf(float noundef %10)
  tail call void @_Z5putchi(i32 noundef 32)
  %11 = tail call noundef float @_Z7my_sqrtf(float noundef %5)
  tail call void @_Z8putfloatf(float noundef %11)
  tail call void @_Z5putchi(i32 noundef 32)
  %12 = tail call noundef float @_Z6my_expf(float noundef %5)
  tail call void @_Z8putfloatf(float noundef %12)
  tail call void @_Z5putchi(i32 noundef 32)
  br i1 %7, label %14, label %13

13:                                               ; preds = %3
  tail call void @_Z5putchi(i32 noundef 45)
  tail call void @_Z5putchi(i32 noundef 32)
  br label %38

14:                                               ; preds = %3
  %15 = fadd float %5, -1.000000e+00
  %16 = fmul float %15, 5.000000e-01
  %17 = fadd float %16, 1.000000e+00
  %18 = fdiv float 1.000000e+00, %17
  %19 = tail call float @llvm.fmuladd.f32(float %18, float 4.000000e+00, float 1.000000e+00) #5
  %20 = fdiv float 1.000000e+00, %5
  %21 = fadd float %20, %19
  %22 = fmul float %15, %21
  %23 = fdiv float %22, 6.000000e+00
  %24 = tail call noundef float @_Z4asr5ffffi(float noundef 1.000000e+00, float noundef %5, float noundef 0x3E45798EE0000000, float noundef %23, i32 noundef 1) #5
  tail call void @_Z8putfloatf(float noundef %24)
  tail call void @_Z5putchi(i32 noundef 32)
  %25 = fcmp ogt float %6, 0.000000e+00
  br i1 %25, label %26, label %38

26:                                               ; preds = %14
  %27 = fadd float %6, -1.000000e+00
  %28 = fmul float %27, 5.000000e-01
  %29 = fadd float %28, 1.000000e+00
  %30 = fdiv float 1.000000e+00, %29
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 4.000000e+00, float 1.000000e+00) #5
  %32 = fdiv float 1.000000e+00, %6
  %33 = fadd float %32, %31
  %34 = fmul float %27, %33
  %35 = fdiv float %34, 6.000000e+00
  %36 = tail call noundef float @_Z4asr5ffffi(float noundef 1.000000e+00, float noundef %6, float noundef 0x3E45798EE0000000, float noundef %35, i32 noundef 1) #5
  %37 = fdiv float %36, %24
  tail call void @_Z8putfloatf(float noundef %37)
  tail call void @_Z5putchi(i32 noundef 32)
  br label %50

38:                                               ; preds = %14, %13
  tail call void @_Z5putchi(i32 noundef 45)
  tail call void @_Z5putchi(i32 noundef 32)
  br i1 %7, label %39, label %54

39:                                               ; preds = %38
  %40 = fadd float %5, -1.000000e+00
  %41 = fmul float %40, 5.000000e-01
  %42 = fadd float %41, 1.000000e+00
  %43 = fdiv float 1.000000e+00, %42
  %44 = tail call float @llvm.fmuladd.f32(float %43, float 4.000000e+00, float 1.000000e+00) #5
  %45 = fdiv float 1.000000e+00, %5
  %46 = fadd float %45, %44
  %47 = fmul float %40, %46
  %48 = fdiv float %47, 6.000000e+00
  %49 = tail call noundef float @_Z4asr5ffffi(float noundef 1.000000e+00, float noundef %5, float noundef 0x3E45798EE0000000, float noundef %48, i32 noundef 1) #5
  br label %50

50:                                               ; preds = %39, %26
  %51 = phi float [ %49, %39 ], [ %24, %26 ]
  %52 = fmul float %6, %51
  %53 = tail call noundef float @_Z6my_expf(float noundef %52) #5
  tail call void @_Z8putfloatf(float noundef %53)
  br label %55

54:                                               ; preds = %38
  tail call void @_Z5putchi(i32 noundef 45)
  br label %55

55:                                               ; preds = %54, %50
  tail call void @_Z5putchi(i32 noundef 10)
  %56 = add nsw i32 %4, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %3, !llvm.loop !6

58:                                               ; preds = %55, %0
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

declare noundef float @_Z8getfloatv() local_unnamed_addr #4

declare void @_Z8putfloatf(float noundef) local_unnamed_addr #4

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
