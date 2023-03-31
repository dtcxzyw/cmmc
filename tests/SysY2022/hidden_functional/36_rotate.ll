; ModuleID = 'tests//SysY2022/hidden_functional/36_rotate.sy'
source_filename = "tests//SysY2022/hidden_functional/36_rotate.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@image = dso_local local_unnamed_addr global [1048576 x i32] zeroinitializer, align 16
@width = dso_local local_unnamed_addr global i32 0, align 4
@height = dso_local local_unnamed_addr global i32 0, align 4

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
  %14 = tail call float @llvm.fmuladd.f32(float %10, float 3.000000e+00, float %13) #8
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
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 0x401921FB60000000, float %2) #8
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi float [ %11, %6 ], [ %2, %1 ]
  %14 = fcmp ogt float %13, 0x400921FB60000000
  %15 = fadd float %13, 0xC01921FB60000000
  %16 = select i1 %14, float %15, float %13
  %17 = fcmp olt float %16, 0xC00921FB60000000
  %18 = fadd float %16, 0x401921FB60000000
  %19 = select i1 %17, float %18, float %16
  %20 = tail call noundef float @_Z11my_sin_implf(float noundef %19) #8
  ret float %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z10read_imagev() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z5getchv()
  %2 = icmp eq i32 %1, 80
  br i1 %2, label %3, label %44

3:                                                ; preds = %0
  %4 = tail call noundef i32 @_Z5getchv()
  %5 = icmp eq i32 %4, 50
  br i1 %5, label %6, label %44

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_Z6getintv()
  store i32 %7, i32* @width, align 4, !tbaa !5
  %8 = tail call noundef i32 @_Z6getintv()
  store i32 %8, i32* @height, align 4, !tbaa !5
  %9 = load i32, i32* @width, align 4, !tbaa !5
  %10 = icmp sgt i32 %9, 1024
  %11 = icmp sgt i32 %8, 1024
  %12 = or i1 %11, %10
  br i1 %12, label %44, label %13

13:                                               ; preds = %6
  %14 = tail call noundef i32 @_Z6getintv()
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load i32, i32* @height, align 4, !tbaa !5
  %18 = icmp sgt i32 %17, 0
  %19 = load i32, i32* @width, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %44

22:                                               ; preds = %16, %39
  %23 = phi i32 [ %40, %39 ], [ %17, %16 ]
  %24 = phi i32 [ %41, %39 ], [ %19, %16 ]
  %25 = phi i32 [ %42, %39 ], [ 0, %16 ]
  %26 = icmp sgt i32 %24, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22, %27
  %28 = phi i32 [ %35, %27 ], [ 0, %22 ]
  %29 = tail call noundef i32 @_Z6getintv()
  %30 = load i32, i32* @width, align 4, !tbaa !5
  %31 = mul nsw i32 %30, %25
  %32 = add nsw i32 %31, %28
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @image, i64 0, i64 %33
  store i32 %29, i32* %34, align 4, !tbaa !5
  %35 = add nuw nsw i32 %28, 1
  %36 = icmp slt i32 %35, %30
  br i1 %36, label %27, label %37, !llvm.loop !9

37:                                               ; preds = %27
  %38 = load i32, i32* @height, align 4, !tbaa !5
  br label %39

39:                                               ; preds = %37, %22
  %40 = phi i32 [ %38, %37 ], [ %23, %22 ]
  %41 = phi i32 [ %30, %37 ], [ %24, %22 ]
  %42 = add nuw nsw i32 %25, 1
  %43 = icmp slt i32 %42, %40
  br i1 %43, label %22, label %44, !llvm.loop !11

44:                                               ; preds = %39, %16, %6, %13, %0, %3
  %45 = phi i32 [ -1, %3 ], [ -1, %0 ], [ -1, %13 ], [ -1, %6 ], [ 0, %16 ], [ 0, %39 ]
  ret i32 %45
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #4

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6rotateiif(i32 noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #5 {
  %4 = fcmp ogt float %2, 0x401921FB60000000
  %5 = fcmp olt float %2, 0xC01921FB60000000
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = fdiv float %2, 0x401921FB60000000
  %9 = fptosi float %8 to i32
  %10 = sitofp i32 %9 to float
  %11 = fneg float %10
  %12 = tail call float @llvm.fmuladd.f32(float %11, float 0x401921FB60000000, float %2) #8
  br label %13

13:                                               ; preds = %3, %7
  %14 = phi float [ %12, %7 ], [ %2, %3 ]
  %15 = fcmp ogt float %14, 0x400921FB60000000
  %16 = fadd float %14, 0xC01921FB60000000
  %17 = select i1 %15, float %16, float %14
  %18 = fcmp olt float %17, 0xC00921FB60000000
  %19 = fadd float %17, 0x401921FB60000000
  %20 = select i1 %18, float %19, float %17
  %21 = tail call noundef float @_Z11my_sin_implf(float noundef %20) #8
  %22 = fadd float %2, 0x3FF921FB60000000
  %23 = fcmp ogt float %22, 0x401921FB60000000
  %24 = fcmp olt float %22, 0xC01921FB60000000
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = fdiv float %22, 0x401921FB60000000
  %28 = fptosi float %27 to i32
  %29 = sitofp i32 %28 to float
  %30 = fneg float %29
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 0x401921FB60000000, float %22) #8
  br label %32

32:                                               ; preds = %13, %26
  %33 = phi float [ %31, %26 ], [ %22, %13 ]
  %34 = fcmp ogt float %33, 0x400921FB60000000
  %35 = fadd float %33, 0xC01921FB60000000
  %36 = select i1 %34, float %35, float %33
  %37 = fcmp olt float %36, 0xC00921FB60000000
  %38 = fadd float %36, 0x401921FB60000000
  %39 = select i1 %37, float %38, float %36
  %40 = tail call noundef float @_Z11my_sin_implf(float noundef %39) #8
  %41 = load i32, i32* @width, align 4, !tbaa !5
  %42 = load i32, i32* @height, align 4, !tbaa !5
  %43 = insertelement <2 x i32> poison, i32 %42, i64 0
  %44 = insertelement <2 x i32> %43, i32 %41, i64 1
  %45 = sdiv <2 x i32> %44, <i32 2, i32 2>
  %46 = extractelement <2 x i32> %45, i64 1
  %47 = sub nsw i32 %0, %46
  %48 = extractelement <2 x i32> %45, i64 0
  %49 = sub nsw i32 %1, %48
  %50 = sitofp i32 %47 to float
  %51 = sitofp i32 %49 to float
  %52 = fneg float %21
  %53 = insertelement <2 x float> poison, float %40, i64 0
  %54 = insertelement <2 x float> %53, float %52, i64 1
  %55 = insertelement <2 x float> poison, float %51, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fmul <2 x float> %54, %56
  %58 = insertelement <2 x float> poison, float %50, i64 0
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> zeroinitializer
  %60 = insertelement <2 x float> poison, float %21, i64 0
  %61 = insertelement <2 x float> %60, float %40, i64 1
  %62 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %59, <2 x float> %61, <2 x float> %57)
  %63 = sitofp <2 x i32> %45 to <2 x float>
  %64 = fadd <2 x float> %62, %63
  %65 = fptosi <2 x float> %64 to <2 x i32>
  %66 = extractelement <2 x i32> %65, i64 1
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %32
  %69 = extractelement <2 x i32> %65, i64 0
  %70 = icmp sgt i32 %69, -1
  %71 = icmp sgt <2 x i32> %44, %65
  %72 = extractelement <2 x i1> %71, i64 1
  %73 = select i1 %72, i1 %70, i1 false
  %74 = extractelement <2 x i1> %71, i64 0
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = mul nsw i32 %41, %69
  %78 = add nsw i32 %77, %66
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @image, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  br label %82

82:                                               ; preds = %32, %68, %76
  %83 = phi i32 [ %81, %76 ], [ 0, %68 ], [ 0, %32 ]
  ret i32 %83
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9write_pgmf(float noundef %0) local_unnamed_addr #3 {
  tail call void @_Z5putchi(i32 noundef 80)
  tail call void @_Z5putchi(i32 noundef 50)
  tail call void @_Z5putchi(i32 noundef 10)
  %2 = load i32, i32* @width, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %2)
  tail call void @_Z5putchi(i32 noundef 32)
  %3 = load i32, i32* @height, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %3)
  tail call void @_Z5putchi(i32 noundef 32)
  tail call void @_Z6putinti(i32 noundef 255)
  tail call void @_Z5putchi(i32 noundef 10)
  %4 = load i32, i32* @height, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %91

6:                                                ; preds = %1
  %7 = fadd float %0, 0x3FF921FB60000000
  %8 = insertelement <2 x float> <float poison, float 0xC01921FB60000000>, float %7, i64 0
  %9 = insertelement <2 x float> <float 0x401921FB60000000, float poison>, float %0, i64 1
  %10 = fcmp ogt <2 x float> %8, %9
  %11 = insertelement <2 x float> <float poison, float 0x401921FB60000000>, float %7, i64 0
  %12 = insertelement <2 x float> <float 0xC01921FB60000000, float poison>, float %0, i64 1
  %13 = fcmp olt <2 x float> %11, %12
  %14 = or <2 x i1> %13, %10
  %15 = insertelement <2 x float> poison, float %0, i64 1
  %16 = insertelement <2 x float> %15, float %7, i64 0
  %17 = fdiv <2 x float> %16, <float 0x401921FB60000000, float 0x401921FB60000000>
  %18 = fptosi <2 x float> %17 to <2 x i32>
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = fneg <2 x float> %19
  %21 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> <float 0x401921FB60000000, float 0x401921FB60000000>, <2 x float> %16)
  %22 = select <2 x i1> %14, <2 x float> %21, <2 x float> %16
  %23 = extractelement <2 x float> %22, i64 1
  %24 = fadd float %23, 0xC01921FB60000000
  %25 = fcmp ogt <2 x float> %22, <float 0x400921FB60000000, float 0x400921FB60000000>
  %26 = extractelement <2 x i1> %25, i64 1
  %27 = select i1 %26, float %24, float %23
  %28 = fcmp olt float %27, 0xC00921FB60000000
  %29 = fadd float %27, 0x401921FB60000000
  %30 = select i1 %28, float %29, float %27
  %31 = extractelement <2 x float> %22, i64 0
  %32 = fadd float %31, 0xC01921FB60000000
  %33 = extractelement <2 x i1> %25, i64 0
  %34 = select i1 %33, float %32, float %31
  %35 = fcmp olt float %34, 0xC00921FB60000000
  %36 = fadd float %34, 0x401921FB60000000
  %37 = select i1 %35, float %36, float %34
  br label %38

38:                                               ; preds = %6, %87
  %39 = phi i32 [ %4, %6 ], [ %89, %87 ]
  %40 = phi i32 [ 0, %6 ], [ %88, %87 ]
  %41 = load i32, i32* @width, align 4, !tbaa !5
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %38
  %44 = tail call noundef float @_Z11my_sin_implf(float noundef %30) #8
  %45 = tail call noundef float @_Z11my_sin_implf(float noundef %37) #8
  %46 = fneg float %44
  br label %47

47:                                               ; preds = %85, %43
  %48 = phi i32 [ %86, %85 ], [ %39, %43 ]
  %49 = phi i32 [ %83, %85 ], [ %41, %43 ]
  %50 = phi i32 [ %82, %85 ], [ 0, %43 ]
  %51 = sdiv i32 %49, 2
  %52 = sdiv i32 %48, 2
  %53 = sub nsw i32 %50, %51
  %54 = sub nsw i32 %40, %52
  %55 = sitofp i32 %53 to float
  %56 = sitofp i32 %54 to float
  %57 = fmul float %46, %56
  %58 = tail call float @llvm.fmuladd.f32(float %55, float %45, float %57) #8
  %59 = sitofp i32 %51 to float
  %60 = fadd float %58, %59
  %61 = fptosi float %60 to i32
  %62 = fmul float %45, %56
  %63 = tail call float @llvm.fmuladd.f32(float %55, float %44, float %62) #8
  %64 = sitofp i32 %52 to float
  %65 = fadd float %63, %64
  %66 = fptosi float %65 to i32
  %67 = icmp slt i32 %61, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %47
  %69 = icmp sgt i32 %49, %61
  %70 = icmp sgt i32 %66, -1
  %71 = select i1 %69, i1 %70, i1 false
  %72 = icmp sgt i32 %48, %66
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = mul nsw i32 %49, %66
  %76 = add nsw i32 %75, %61
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* @image, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !5
  br label %80

80:                                               ; preds = %47, %68, %74
  %81 = phi i32 [ %79, %74 ], [ 0, %68 ], [ 0, %47 ]
  tail call void @_Z6putinti(i32 noundef %81)
  tail call void @_Z5putchi(i32 noundef 32)
  %82 = add nuw nsw i32 %50, 1
  %83 = load i32, i32* @width, align 4, !tbaa !5
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87, !llvm.loop !13

85:                                               ; preds = %80
  %86 = load i32, i32* @height, align 4, !tbaa !5
  br label %47

87:                                               ; preds = %80, %38
  tail call void @_Z5putchi(i32 noundef 10)
  %88 = add nuw nsw i32 %40, 1
  %89 = load i32, i32* @height, align 4, !tbaa !5
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %38, label %91, !llvm.loop !14

91:                                               ; preds = %87, %1
  ret void
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
  %1 = tail call noundef float @_Z8getfloatv()
  %2 = tail call noundef i32 @_Z5getchv()
  %3 = tail call noundef i32 @_Z10read_imagev(), !range !15
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @_Z9write_pgmf(float noundef %1)
  br label %6

6:                                                ; preds = %0, %5
  %7 = phi i32 [ 0, %5 ], [ -1, %0 ]
  ret i32 %7
}

declare noundef float @_Z8getfloatv() local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10, !12}
!12 = !{!"llvm.loop.unswitch.partial.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{i32 -1, i32 1}
