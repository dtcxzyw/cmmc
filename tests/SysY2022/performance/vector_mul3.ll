; ModuleID = 'tests//SysY2022/performance/vector_mul3.sy'
source_filename = "tests//SysY2022/performance/vector_mul3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@temp = dso_local local_unnamed_addr global float 1.000000e+00, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4funcii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %1, %0
  %4 = add nsw i32 %3, 1
  %5 = mul nsw i32 %4, %3
  %6 = sdiv i32 %5, 2
  %7 = add i32 %0, 1
  %8 = add i32 %7, %6
  ret i32 %8
}

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef float @_Z9VectordotPfS_i(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
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
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5mult1PfS_i(float* nocapture noundef readonly %0, float* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = sext i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %36
  %9 = phi i64 [ 0, %5 ], [ %13, %36 ]
  %10 = phi float [ 0.000000e+00, %5 ], [ %38, %36 ]
  %11 = phi i32 [ 0, %5 ], [ %37, %36 ]
  %12 = icmp slt i32 %11, %2
  %13 = add nuw nsw i64 %9, 1
  br i1 %12, label %14, label %36

14:                                               ; preds = %8
  %15 = sext i32 %11 to i64
  %16 = trunc i64 %9 to i32
  %17 = trunc i64 %13 to i32
  br label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ %15, %14 ], [ %34, %18 ]
  %20 = phi float [ %10, %14 ], [ %33, %18 ]
  %21 = trunc i64 %19 to i32
  %22 = getelementptr inbounds float, float* %0, i64 %19
  %23 = load float, float* %22, align 4, !tbaa !4
  %24 = add nsw i64 %19, %9
  %25 = add nsw i32 %21, %16
  %26 = add nsw i32 %25, 1
  %27 = trunc i64 %24 to i32
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = add i32 %29, %17
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %23, %31
  %33 = fadd float %20, %32
  %34 = add nsw i64 %19, 1
  %35 = icmp eq i64 %34, %7
  br i1 %35, label %36, label %18, !llvm.loop !12

36:                                               ; preds = %18, %8
  %37 = phi i32 [ %11, %8 ], [ %2, %18 ]
  %38 = phi float [ %10, %8 ], [ %33, %18 ]
  %39 = getelementptr inbounds float, float* %1, i64 %9
  store float %38, float* %39, align 4, !tbaa !4
  %40 = icmp eq i64 %13, %6
  br i1 %40, label %41, label %8, !llvm.loop !13

41:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5mult2PfS_i(float* nocapture noundef readonly %0, float* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = sext i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %35
  %9 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %10 = phi float [ 0.000000e+00, %5 ], [ %37, %35 ]
  %11 = phi i32 [ 0, %5 ], [ %36, %35 ]
  %12 = icmp slt i32 %11, %2
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = sext i32 %11 to i64
  %15 = trunc i64 %9 to i32
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ %14, %13 ], [ %28, %16 ]
  %18 = phi float [ %10, %13 ], [ %33, %16 ]
  %19 = trunc i64 %17 to i32
  %20 = getelementptr inbounds float, float* %0, i64 %17
  %21 = load float, float* %20, align 4, !tbaa !4
  %22 = add nsw i64 %17, %9
  %23 = add nsw i32 %19, %15
  %24 = add nsw i32 %23, 1
  %25 = trunc i64 %22 to i32
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  %28 = add nsw i64 %17, 1
  %29 = trunc i64 %28 to i32
  %30 = add i32 %27, %29
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %21, %31
  %33 = fadd float %18, %32
  %34 = icmp eq i64 %28, %7
  br i1 %34, label %35, label %16, !llvm.loop !14

35:                                               ; preds = %16, %8
  %36 = phi i32 [ %11, %8 ], [ %2, %16 ]
  %37 = phi float [ %10, %8 ], [ %33, %16 ]
  %38 = getelementptr inbounds float, float* %1, i64 %9
  store float %37, float* %38, align 4, !tbaa !4
  %39 = add nuw nsw i64 %9, 1
  %40 = icmp eq i64 %39, %6
  br i1 %40, label %41, label %8, !llvm.loop !15

41:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z11mult_combinPfS_iS_(float* nocapture noundef readonly %0, float* nocapture noundef writeonly %1, i32 noundef %2, float* nocapture noundef %3) local_unnamed_addr #4 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %74

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  br label %8

8:                                                ; preds = %36, %6
  %9 = phi i64 [ 0, %6 ], [ %13, %36 ]
  %10 = phi float [ 0.000000e+00, %6 ], [ %38, %36 ]
  %11 = phi i32 [ 0, %6 ], [ %37, %36 ]
  %12 = icmp slt i32 %11, %2
  %13 = add nuw nsw i64 %9, 1
  br i1 %12, label %14, label %36

14:                                               ; preds = %8
  %15 = sext i32 %11 to i64
  %16 = trunc i64 %9 to i32
  %17 = trunc i64 %13 to i32
  %18 = add i32 %16, 1
  br label %19

19:                                               ; preds = %19, %14
  %20 = phi i64 [ %15, %14 ], [ %34, %19 ]
  %21 = phi float [ %10, %14 ], [ %33, %19 ]
  %22 = trunc i64 %20 to i32
  %23 = getelementptr inbounds float, float* %0, i64 %20
  %24 = load float, float* %23, align 4, !tbaa !4
  %25 = add nsw i64 %20, %9
  %26 = add i32 %18, %22
  %27 = trunc i64 %25 to i32
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = add i32 %29, %17
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %24, %31
  %33 = fadd float %21, %32
  %34 = add nsw i64 %20, 1
  %35 = icmp eq i64 %34, %7
  br i1 %35, label %36, label %19, !llvm.loop !12

36:                                               ; preds = %19, %8
  %37 = phi i32 [ %11, %8 ], [ %2, %19 ]
  %38 = phi float [ %10, %8 ], [ %33, %19 ]
  %39 = getelementptr inbounds float, float* %3, i64 %9
  store float %38, float* %39, align 4, !tbaa !4
  %40 = icmp eq i64 %13, %7
  br i1 %40, label %41, label %8, !llvm.loop !13

41:                                               ; preds = %36, %68
  %42 = phi i64 [ %72, %68 ], [ 0, %36 ]
  %43 = phi float [ %70, %68 ], [ 0.000000e+00, %36 ]
  %44 = phi i32 [ %69, %68 ], [ 0, %36 ]
  %45 = icmp slt i32 %44, %2
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = sext i32 %44 to i64
  %48 = trunc i64 %42 to i32
  %49 = add i32 %48, 1
  br label %50

50:                                               ; preds = %50, %46
  %51 = phi i64 [ %47, %46 ], [ %61, %50 ]
  %52 = phi float [ %43, %46 ], [ %66, %50 ]
  %53 = trunc i64 %51 to i32
  %54 = getelementptr inbounds float, float* %3, i64 %51
  %55 = load float, float* %54, align 4, !tbaa !4
  %56 = add nsw i64 %51, %42
  %57 = add i32 %49, %53
  %58 = trunc i64 %56 to i32
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %59, 2
  %61 = add nsw i64 %51, 1
  %62 = trunc i64 %61 to i32
  %63 = add i32 %60, %62
  %64 = sitofp i32 %63 to float
  %65 = fdiv float %55, %64
  %66 = fadd float %52, %65
  %67 = icmp eq i64 %61, %7
  br i1 %67, label %68, label %50, !llvm.loop !14

68:                                               ; preds = %50, %41
  %69 = phi i32 [ %44, %41 ], [ %2, %50 ]
  %70 = phi float [ %43, %41 ], [ %66, %50 ]
  %71 = getelementptr inbounds float, float* %1, i64 %42
  store float %70, float* %71, align 4, !tbaa !4
  %72 = add nuw nsw i64 %42, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %41, !llvm.loop !15

74:                                               ; preds = %68, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef float @_Z7my_sqrtf(float noundef %0) local_unnamed_addr #4 {
  %2 = load float, float* @temp, align 4, !tbaa !4
  %3 = fdiv float %0, %2
  %4 = fsub float %2, %3
  %5 = fpext float %4 to double
  %6 = fcmp ogt double %5, 0x3EB0C6F7A0B5ED8D
  %7 = fcmp olt double %5, 0xBEB0C6F7A0B5ED8D
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %1, %9
  %10 = phi float [ %14, %9 ], [ %3, %1 ]
  %11 = phi float [ %13, %9 ], [ %2, %1 ]
  %12 = fadd float %11, %10
  %13 = fmul float %12, 5.000000e-01
  %14 = fdiv float %0, %13
  %15 = fsub float %13, %14
  %16 = fpext float %15 to double
  %17 = fcmp ogt double %16, 0x3EB0C6F7A0B5ED8D
  %18 = fcmp olt double %16, 0xBEB0C6F7A0B5ED8D
  %19 = or i1 %17, %18
  br i1 %19, label %9, label %20, !llvm.loop !16

20:                                               ; preds = %9
  store float %13, float* @temp, align 4, !tbaa !4
  br label %21

21:                                               ; preds = %20, %1
  %22 = phi float [ %13, %20 ], [ %2, %1 ]
  ret float %22
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  %1 = alloca [100000 x float], align 16
  %2 = alloca [100000 x float], align 16
  %3 = alloca [100000 x float], align 16
  tail call void @_Z15_sysy_starttimei(i32 noundef 62)
  %4 = bitcast [100000 x float]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400000, i8* nonnull %4) #7
  %5 = bitcast [100000 x float]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400000, i8* nonnull %5) #7
  %6 = bitcast [100000 x float]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400000, i8* nonnull %6) #7
  br label %7

7:                                                ; preds = %0, %141
  %8 = phi i32 [ 0, %0 ], [ %142, %141 ]
  br label %9

9:                                                ; preds = %7, %37
  %10 = phi i64 [ %14, %37 ], [ 0, %7 ]
  %11 = phi float [ %39, %37 ], [ 0.000000e+00, %7 ]
  %12 = phi i32 [ %38, %37 ], [ 0, %7 ]
  %13 = icmp ult i32 %12, 100000
  %14 = add nuw nsw i64 %10, 1
  br i1 %13, label %15, label %37

15:                                               ; preds = %9
  %16 = zext i32 %12 to i64
  %17 = trunc i64 %10 to i32
  %18 = trunc i64 %14 to i32
  %19 = add i32 %17, 1
  br label %20

20:                                               ; preds = %20, %15
  %21 = phi i64 [ %16, %15 ], [ %35, %20 ]
  %22 = phi float [ %11, %15 ], [ %34, %20 ]
  %23 = trunc i64 %21 to i32
  %24 = getelementptr inbounds [100000 x float], [100000 x float]* %1, i64 0, i64 %21
  %25 = load float, float* %24, align 4, !tbaa !4
  %26 = add nuw nsw i64 %21, %10
  %27 = add i32 %19, %23
  %28 = trunc i64 %26 to i32
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 2
  %31 = add i32 %30, %18
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %25, %32
  %34 = fadd float %22, %33
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, 100000
  br i1 %36, label %37, label %20, !llvm.loop !12

37:                                               ; preds = %20, %9
  %38 = phi i32 [ %12, %9 ], [ 100000, %20 ]
  %39 = phi float [ %11, %9 ], [ %34, %20 ]
  %40 = getelementptr inbounds [100000 x float], [100000 x float]* %3, i64 0, i64 %10
  store float %39, float* %40, align 4, !tbaa !4
  %41 = icmp eq i64 %14, 100000
  br i1 %41, label %42, label %9, !llvm.loop !13

42:                                               ; preds = %37, %69
  %43 = phi i64 [ %73, %69 ], [ 0, %37 ]
  %44 = phi float [ %71, %69 ], [ 0.000000e+00, %37 ]
  %45 = phi i32 [ %70, %69 ], [ 0, %37 ]
  %46 = icmp ult i32 %45, 100000
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = zext i32 %45 to i64
  %49 = trunc i64 %43 to i32
  %50 = add i32 %49, 1
  br label %51

51:                                               ; preds = %51, %47
  %52 = phi i64 [ %48, %47 ], [ %62, %51 ]
  %53 = phi float [ %44, %47 ], [ %67, %51 ]
  %54 = trunc i64 %52 to i32
  %55 = getelementptr inbounds [100000 x float], [100000 x float]* %3, i64 0, i64 %52
  %56 = load float, float* %55, align 4, !tbaa !4
  %57 = add nuw nsw i64 %52, %43
  %58 = add i32 %50, %54
  %59 = trunc i64 %57 to i32
  %60 = mul nsw i32 %58, %59
  %61 = sdiv i32 %60, 2
  %62 = add nuw nsw i64 %52, 1
  %63 = trunc i64 %62 to i32
  %64 = add i32 %61, %63
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %56, %65
  %67 = fadd float %53, %66
  %68 = icmp eq i64 %62, 100000
  br i1 %68, label %69, label %51, !llvm.loop !14

69:                                               ; preds = %51, %42
  %70 = phi i32 [ %45, %42 ], [ 100000, %51 ]
  %71 = phi float [ %44, %42 ], [ %67, %51 ]
  %72 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %43
  store float %71, float* %72, align 4, !tbaa !4
  %73 = add nuw nsw i64 %43, 1
  %74 = icmp eq i64 %73, 100000
  br i1 %74, label %75, label %42, !llvm.loop !15

75:                                               ; preds = %69, %103
  %76 = phi i64 [ %80, %103 ], [ 0, %69 ]
  %77 = phi float [ %105, %103 ], [ 0.000000e+00, %69 ]
  %78 = phi i32 [ %104, %103 ], [ 0, %69 ]
  %79 = icmp ult i32 %78, 100000
  %80 = add nuw nsw i64 %76, 1
  br i1 %79, label %81, label %103

81:                                               ; preds = %75
  %82 = zext i32 %78 to i64
  %83 = trunc i64 %76 to i32
  %84 = trunc i64 %80 to i32
  %85 = add i32 %83, 1
  br label %86

86:                                               ; preds = %86, %81
  %87 = phi i64 [ %82, %81 ], [ %101, %86 ]
  %88 = phi float [ %77, %81 ], [ %100, %86 ]
  %89 = trunc i64 %87 to i32
  %90 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %87
  %91 = load float, float* %90, align 4, !tbaa !4
  %92 = add nuw nsw i64 %87, %76
  %93 = add i32 %85, %89
  %94 = trunc i64 %92 to i32
  %95 = mul nsw i32 %93, %94
  %96 = sdiv i32 %95, 2
  %97 = add i32 %96, %84
  %98 = sitofp i32 %97 to float
  %99 = fdiv float %91, %98
  %100 = fadd float %88, %99
  %101 = add nuw nsw i64 %87, 1
  %102 = icmp eq i64 %101, 100000
  br i1 %102, label %103, label %86, !llvm.loop !12

103:                                              ; preds = %86, %75
  %104 = phi i32 [ %78, %75 ], [ 100000, %86 ]
  %105 = phi float [ %77, %75 ], [ %100, %86 ]
  %106 = getelementptr inbounds [100000 x float], [100000 x float]* %3, i64 0, i64 %76
  store float %105, float* %106, align 4, !tbaa !4
  %107 = icmp eq i64 %80, 100000
  br i1 %107, label %108, label %75, !llvm.loop !13

108:                                              ; preds = %103, %135
  %109 = phi i64 [ %139, %135 ], [ 0, %103 ]
  %110 = phi float [ %137, %135 ], [ 0.000000e+00, %103 ]
  %111 = phi i32 [ %136, %135 ], [ 0, %103 ]
  %112 = icmp ult i32 %111, 100000
  br i1 %112, label %113, label %135

113:                                              ; preds = %108
  %114 = zext i32 %111 to i64
  %115 = trunc i64 %109 to i32
  %116 = add i32 %115, 1
  br label %117

117:                                              ; preds = %117, %113
  %118 = phi i64 [ %114, %113 ], [ %128, %117 ]
  %119 = phi float [ %110, %113 ], [ %133, %117 ]
  %120 = trunc i64 %118 to i32
  %121 = getelementptr inbounds [100000 x float], [100000 x float]* %3, i64 0, i64 %118
  %122 = load float, float* %121, align 4, !tbaa !4
  %123 = add nuw nsw i64 %118, %109
  %124 = add i32 %116, %120
  %125 = trunc i64 %123 to i32
  %126 = mul nsw i32 %124, %125
  %127 = sdiv i32 %126, 2
  %128 = add nuw nsw i64 %118, 1
  %129 = trunc i64 %128 to i32
  %130 = add i32 %127, %129
  %131 = sitofp i32 %130 to float
  %132 = fdiv float %122, %131
  %133 = fadd float %119, %132
  %134 = icmp eq i64 %128, 100000
  br i1 %134, label %135, label %117, !llvm.loop !14

135:                                              ; preds = %117, %108
  %136 = phi i32 [ %111, %108 ], [ 100000, %117 ]
  %137 = phi float [ %110, %108 ], [ %133, %117 ]
  %138 = getelementptr inbounds [100000 x float], [100000 x float]* %1, i64 0, i64 %109
  store float %137, float* %138, align 4, !tbaa !4
  %139 = add nuw nsw i64 %109, 1
  %140 = icmp eq i64 %139, 100000
  br i1 %140, label %141, label %108, !llvm.loop !15

141:                                              ; preds = %135
  %142 = add nuw nsw i32 %8, 1
  %143 = icmp eq i32 %142, 1000
  br i1 %143, label %144, label %7, !llvm.loop !17

144:                                              ; preds = %141
  tail call void @_Z14_sysy_stoptimei(i32 noundef 76)
  br label %145

145:                                              ; preds = %145, %144
  %146 = phi i64 [ 0, %144 ], [ %177, %145 ]
  %147 = phi float [ 0.000000e+00, %144 ], [ %176, %145 ]
  %148 = getelementptr inbounds [100000 x float], [100000 x float]* %1, i64 0, i64 %146
  %149 = load float, float* %148, align 4, !tbaa !4
  %150 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %146
  %151 = load float, float* %150, align 4, !tbaa !4
  %152 = tail call float @llvm.fmuladd.f32(float %149, float %151, float %147) #7
  %153 = add nuw nsw i64 %146, 1
  %154 = getelementptr inbounds [100000 x float], [100000 x float]* %1, i64 0, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !4
  %156 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %153
  %157 = load float, float* %156, align 4, !tbaa !4
  %158 = tail call float @llvm.fmuladd.f32(float %155, float %157, float %152) #7
  %159 = add nuw nsw i64 %146, 2
  %160 = getelementptr inbounds [100000 x float], [100000 x float]* %1, i64 0, i64 %159
  %161 = load float, float* %160, align 4, !tbaa !4
  %162 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %159
  %163 = load float, float* %162, align 4, !tbaa !4
  %164 = tail call float @llvm.fmuladd.f32(float %161, float %163, float %158) #7
  %165 = add nuw nsw i64 %146, 3
  %166 = getelementptr inbounds [100000 x float], [100000 x float]* %1, i64 0, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !4
  %168 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %165
  %169 = load float, float* %168, align 4, !tbaa !4
  %170 = tail call float @llvm.fmuladd.f32(float %167, float %169, float %164) #7
  %171 = add nuw nsw i64 %146, 4
  %172 = getelementptr inbounds [100000 x float], [100000 x float]* %1, i64 0, i64 %171
  %173 = load float, float* %172, align 4, !tbaa !4
  %174 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %171
  %175 = load float, float* %174, align 4, !tbaa !4
  %176 = tail call float @llvm.fmuladd.f32(float %173, float %175, float %170) #7
  %177 = add nuw nsw i64 %146, 5
  %178 = icmp eq i64 %177, 100000
  br i1 %178, label %179, label %145, !llvm.loop !8

179:                                              ; preds = %145, %179
  %180 = phi i64 [ %201, %179 ], [ 0, %145 ]
  %181 = phi float [ %200, %179 ], [ 0.000000e+00, %145 ]
  %182 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %180
  %183 = load float, float* %182, align 4, !tbaa !4
  %184 = tail call float @llvm.fmuladd.f32(float %183, float %183, float %181) #7
  %185 = add nuw nsw i64 %180, 1
  %186 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %185
  %187 = load float, float* %186, align 4, !tbaa !4
  %188 = tail call float @llvm.fmuladd.f32(float %187, float %187, float %184) #7
  %189 = add nuw nsw i64 %180, 2
  %190 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %189
  %191 = load float, float* %190, align 4, !tbaa !4
  %192 = tail call float @llvm.fmuladd.f32(float %191, float %191, float %188) #7
  %193 = add nuw nsw i64 %180, 3
  %194 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %193
  %195 = load float, float* %194, align 4, !tbaa !4
  %196 = tail call float @llvm.fmuladd.f32(float %195, float %195, float %192) #7
  %197 = add nuw nsw i64 %180, 4
  %198 = getelementptr inbounds [100000 x float], [100000 x float]* %2, i64 0, i64 %197
  %199 = load float, float* %198, align 4, !tbaa !4
  %200 = tail call float @llvm.fmuladd.f32(float %199, float %199, float %196) #7
  %201 = add nuw nsw i64 %180, 5
  %202 = icmp eq i64 %201, 100000
  br i1 %202, label %203, label %179, !llvm.loop !8

203:                                              ; preds = %179
  %204 = fdiv float %176, %200
  %205 = load float, float* @temp, align 4, !tbaa !4
  %206 = fdiv float %204, %205
  %207 = fsub float %205, %206
  %208 = fpext float %207 to double
  %209 = fcmp ogt double %208, 0x3EB0C6F7A0B5ED8D
  %210 = fcmp olt double %208, 0xBEB0C6F7A0B5ED8D
  %211 = or i1 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %203, %212
  %213 = phi float [ %217, %212 ], [ %206, %203 ]
  %214 = phi float [ %216, %212 ], [ %205, %203 ]
  %215 = fadd float %213, %214
  %216 = fmul float %215, 5.000000e-01
  %217 = fdiv float %204, %216
  %218 = fsub float %216, %217
  %219 = fpext float %218 to double
  %220 = fcmp ogt double %219, 0x3EB0C6F7A0B5ED8D
  %221 = fcmp olt double %219, 0xBEB0C6F7A0B5ED8D
  %222 = or i1 %220, %221
  br i1 %222, label %212, label %223, !llvm.loop !16

223:                                              ; preds = %212
  store float %216, float* @temp, align 4, !tbaa !4
  br label %224

224:                                              ; preds = %203, %223
  %225 = phi float [ %216, %223 ], [ %205, %203 ]
  %226 = fpext float %225 to double
  %227 = fadd double %226, -1.000000e+00
  %228 = fcmp ole double %227, 0x3EB0C6F7A0B5ED8D
  %229 = fcmp oge double %227, 0xBEB0C6F7A0B5ED8D
  %230 = and i1 %228, %229
  %231 = zext i1 %230 to i32
  tail call void @_Z6putinti(i32 noundef %231)
  tail call void @_Z5putchi(i32 noundef 10)
  call void @llvm.lifetime.end.p0i8(i64 400000, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 400000, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 400000, i8* nonnull %4) #7
  ret i32 0
}

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #6

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #6

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #6

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
