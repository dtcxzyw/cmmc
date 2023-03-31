; ModuleID = 'tests//SysY2022/functional/64_calculator.sy'
source_filename = "tests//SysY2022/functional/64_calculator.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ints = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@intt = dso_local local_unnamed_addr global i32 0, align 4
@chas = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@chat = dso_local local_unnamed_addr global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@ii = dso_local local_unnamed_addr global i32 1, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@get = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@get2 = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z7isdigiti(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -48
  %3 = icmp ult i32 %2, 10
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5powerii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %71, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %1, 8
  br i1 %5, label %62, label %6

6:                                                ; preds = %4
  %7 = and i32 %1, -8
  %8 = and i32 %1, 7
  %9 = insertelement <4 x i32> poison, i32 %0, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = insertelement <4 x i32> poison, i32 %0, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = add i32 %7, -8
  %14 = lshr exact i32 %13, 3
  %15 = add nuw nsw i32 %14, 1
  %16 = and i32 %15, 7
  %17 = icmp ult i32 %13, 56
  br i1 %17, label %42, label %18

18:                                               ; preds = %6
  %19 = and i32 %15, 1073741816
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %18 ], [ %38, %20 ]
  %22 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %18 ], [ %39, %20 ]
  %23 = phi i32 [ 0, %18 ], [ %40, %20 ]
  %24 = mul <4 x i32> %21, %10
  %25 = mul <4 x i32> %22, %12
  %26 = mul <4 x i32> %24, %10
  %27 = mul <4 x i32> %25, %12
  %28 = mul <4 x i32> %26, %10
  %29 = mul <4 x i32> %27, %12
  %30 = mul <4 x i32> %28, %10
  %31 = mul <4 x i32> %29, %12
  %32 = mul <4 x i32> %30, %10
  %33 = mul <4 x i32> %31, %12
  %34 = mul <4 x i32> %32, %10
  %35 = mul <4 x i32> %33, %12
  %36 = mul <4 x i32> %34, %10
  %37 = mul <4 x i32> %35, %12
  %38 = mul <4 x i32> %36, %10
  %39 = mul <4 x i32> %37, %12
  %40 = add nuw i32 %23, 8
  %41 = icmp eq i32 %40, %19
  br i1 %41, label %42, label %20, !llvm.loop !5

42:                                               ; preds = %20, %6
  %43 = phi <4 x i32> [ undef, %6 ], [ %38, %20 ]
  %44 = phi <4 x i32> [ undef, %6 ], [ %39, %20 ]
  %45 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %38, %20 ]
  %46 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %39, %20 ]
  %47 = icmp eq i32 %16, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42, %48
  %49 = phi <4 x i32> [ %52, %48 ], [ %45, %42 ]
  %50 = phi <4 x i32> [ %53, %48 ], [ %46, %42 ]
  %51 = phi i32 [ %54, %48 ], [ 0, %42 ]
  %52 = mul <4 x i32> %49, %10
  %53 = mul <4 x i32> %50, %12
  %54 = add i32 %51, 1
  %55 = icmp eq i32 %54, %16
  br i1 %55, label %56, label %48, !llvm.loop !8

56:                                               ; preds = %48, %42
  %57 = phi <4 x i32> [ %43, %42 ], [ %52, %48 ]
  %58 = phi <4 x i32> [ %44, %42 ], [ %53, %48 ]
  %59 = mul <4 x i32> %58, %57
  %60 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %59)
  %61 = icmp eq i32 %7, %1
  br i1 %61, label %71, label %62

62:                                               ; preds = %4, %56
  %63 = phi i32 [ 1, %4 ], [ %60, %56 ]
  %64 = phi i32 [ %1, %4 ], [ %8, %56 ]
  br label %65

65:                                               ; preds = %62, %65
  %66 = phi i32 [ %68, %65 ], [ %63, %62 ]
  %67 = phi i32 [ %69, %65 ], [ %64, %62 ]
  %68 = mul nsw i32 %66, %0
  %69 = add nsw i32 %67, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %65, !llvm.loop !10

71:                                               ; preds = %65, %56, %2
  %72 = phi i32 [ 1, %2 ], [ %60, %56 ], [ %68, %65 ]
  ret i32 %72
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6getstrPi(i32* nocapture noundef writeonly %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %4 = tail call noundef i32 @_Z5getchv()
  switch i32 %4, label %5 [
    i32 13, label %8
    i32 10, label %8
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i32, i32* %0, i64 %3
  store i32 %4, i32* %6, align 4, !tbaa !12
  %7 = add nuw i64 %3, 1
  br label %2, !llvm.loop !16

8:                                                ; preds = %2, %2
  %9 = trunc i64 %3 to i32
  ret i32 %9
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z7intpushi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, i32* @intt, align 4, !tbaa !12
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @intt, align 4, !tbaa !12
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %4
  store i32 %0, i32* %5, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z7chapushi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, i32* @chat, align 4, !tbaa !12
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @chat, align 4, !tbaa !12
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %4
  store i32 %0, i32* %5, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z6intpopv() local_unnamed_addr #3 {
  %1 = load i32, i32* @intt, align 4, !tbaa !12
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @intt, align 4, !tbaa !12
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !12
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z6chapopv() local_unnamed_addr #3 {
  %1 = load i32, i32* @chat, align 4, !tbaa !12
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @chat, align 4, !tbaa !12
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !12
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z6intaddi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, i32* @intt, align 4, !tbaa !12
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !12
  %6 = mul nsw i32 %5, 10
  %7 = add nsw i32 %6, %0
  store i32 %7, i32* %4, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4findv() local_unnamed_addr #3 {
  %1 = load i32, i32* @chat, align 4, !tbaa !12
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @chat, align 4, !tbaa !12
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !12
  store i32 %5, i32* @c, align 4, !tbaa !12
  %6 = load i32, i32* @ii, align 4, !tbaa !12
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %7
  store i32 32, i32* %8, align 4, !tbaa !12
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %10
  store i32 %5, i32* %11, align 4, !tbaa !12
  %12 = add nsw i32 %6, 2
  store i32 %12, i32* @ii, align 4, !tbaa !12
  %13 = icmp ne i32 %2, 0
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  store i32 0, i32* @intt, align 4, !tbaa !12
  store i32 0, i32* @chat, align 4, !tbaa !12
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %6, %4 ], [ 0, %0 ]
  %3 = tail call noundef i32 @_Z5getchv()
  switch i32 %3, label %4 [
    i32 13, label %7
    i32 10, label %7
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %2
  store i32 %3, i32* %5, align 4, !tbaa !12
  %6 = add nuw i64 %2, 1
  br label %1, !llvm.loop !16

7:                                                ; preds = %1, %1
  %8 = trunc i64 %2 to i32
  %9 = load i32, i32* @i, align 4, !tbaa !12
  %10 = load i32, i32* @chat, align 4, !tbaa !12
  %11 = load i32, i32* @ii, align 4, !tbaa !12
  %12 = icmp slt i32 %9, %8
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = sext i32 %9 to i64
  %15 = shl i64 %2, 32
  %16 = ashr exact i64 %15, 32
  br label %60

17:                                               ; preds = %248
  store i32 %254, i32* @ii, align 4, !tbaa !12
  br label %18

18:                                               ; preds = %17, %7
  %19 = phi i32 [ %254, %17 ], [ %11, %7 ]
  %20 = phi i32 [ %251, %17 ], [ %10, %7 ]
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %271

22:                                               ; preds = %18
  %23 = zext i32 %20 to i64
  %24 = sext i32 %19 to i64
  %25 = icmp ult i32 %20, 4
  br i1 %25, label %57, label %26

26:                                               ; preds = %22
  %27 = and i64 %23, 4294967292
  %28 = shl nuw nsw i64 %27, 1
  %29 = add nsw i64 %28, %24
  %30 = and i64 %23, 3
  br label %31

31:                                               ; preds = %31, %26
  %32 = phi i64 [ 0, %26 ], [ %53, %31 ]
  %33 = shl i64 %32, 1
  %34 = add i64 %33, %24
  %35 = sub i64 %23, %32
  %36 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %35
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  %38 = bitcast i32* %37 to <2 x i32>*
  %39 = load <2 x i32>, <2 x i32>* %38, align 4, !tbaa !12
  %40 = shufflevector <2 x i32> %39, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %41 = getelementptr inbounds i32, i32* %36, i64 -3
  %42 = bitcast i32* %41 to <2 x i32>*
  %43 = load <2 x i32>, <2 x i32>* %42, align 4, !tbaa !12
  %44 = shufflevector <2 x i32> %43, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %45 = add i64 %34, 5
  %46 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %45
  %47 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %34
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = getelementptr inbounds i32, i32* %46, i64 -1
  %50 = bitcast i32* %49 to <4 x i32>*
  %51 = shufflevector <2 x i32> <i32 32, i32 32>, <2 x i32> %40, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %51, <4 x i32>* %48, align 4, !tbaa !12
  %52 = shufflevector <2 x i32> <i32 32, i32 32>, <2 x i32> %44, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %52, <4 x i32>* %50, align 4, !tbaa !12
  %53 = add nuw i64 %32, 4
  %54 = icmp eq i64 %53, %27
  br i1 %54, label %55, label %31, !llvm.loop !17

55:                                               ; preds = %31
  %56 = icmp eq i64 %27, %23
  br i1 %56, label %268, label %57

57:                                               ; preds = %22, %55
  %58 = phi i64 [ %24, %22 ], [ %29, %55 ]
  %59 = phi i64 [ %23, %22 ], [ %30, %55 ]
  br label %257

60:                                               ; preds = %13, %248
  %61 = phi i64 [ %14, %13 ], [ %255, %248 ]
  %62 = phi i32 [ %10, %13 ], [ %251, %248 ]
  %63 = phi i32 [ %11, %13 ], [ %254, %248 ]
  %64 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %61
  %65 = load i32, i32* %64, align 4, !tbaa !12
  %66 = add i32 %65, -48
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %248, label %68

68:                                               ; preds = %60
  switch i32 %65, label %248 [
    i32 40, label %78
    i32 94, label %82
    i32 41, label %69
    i32 43, label %104
    i32 45, label %131
    i32 42, label %160
    i32 47, label %189
    i32 37, label %219
  ]

69:                                               ; preds = %68
  %70 = add i32 %62, -1
  %71 = sext i32 %62 to i64
  %72 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !12
  %74 = icmp eq i32 %73, 40
  br i1 %74, label %101, label %75

75:                                               ; preds = %69
  %76 = sext i32 %70 to i64
  %77 = sext i32 %63 to i64
  br label %86

78:                                               ; preds = %68
  %79 = add nsw i32 %62, 1
  store i32 %79, i32* @chat, align 4, !tbaa !12
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %80
  store i32 40, i32* %81, align 4, !tbaa !12
  br label %248

82:                                               ; preds = %68
  %83 = add nsw i32 %62, 1
  store i32 %83, i32* @chat, align 4, !tbaa !12
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %84
  store i32 94, i32* %85, align 4, !tbaa !12
  br label %248

86:                                               ; preds = %75, %86
  %87 = phi i64 [ %77, %75 ], [ %93, %86 ]
  %88 = phi i64 [ %76, %75 ], [ %94, %86 ]
  %89 = phi i32 [ %73, %75 ], [ %96, %86 ]
  %90 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %87
  store i32 32, i32* %90, align 4, !tbaa !12
  %91 = add nsw i64 %87, 1
  %92 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %91
  store i32 %89, i32* %92, align 4, !tbaa !12
  %93 = add i64 %87, 2
  %94 = add i64 %88, -1
  %95 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %88
  %96 = load i32, i32* %95, align 4, !tbaa !12
  %97 = icmp eq i32 %96, 40
  br i1 %97, label %98, label %86, !llvm.loop !18

98:                                               ; preds = %86
  %99 = trunc i64 %93 to i32
  %100 = trunc i64 %94 to i32
  br label %101

101:                                              ; preds = %98, %69
  %102 = phi i32 [ %63, %69 ], [ %99, %98 ]
  %103 = phi i32 [ %70, %69 ], [ %100, %98 ]
  store i32 %103, i32* @chat, align 4, !tbaa !12
  store i32 40, i32* @c, align 4, !tbaa !12
  br label %248

104:                                              ; preds = %68
  %105 = sext i32 %63 to i64
  %106 = sext i32 %62 to i64
  %107 = shl i32 %62, 1
  %108 = add i32 %63, %107
  br label %109

109:                                              ; preds = %104, %114
  %110 = phi i64 [ %106, %104 ], [ %115, %114 ]
  %111 = phi i64 [ %105, %104 ], [ %120, %114 ]
  %112 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %110
  %113 = load i32, i32* %112, align 4, !tbaa !12
  switch i32 %113, label %122 [
    i32 43, label %114
    i32 45, label %114
    i32 42, label %114
    i32 47, label %114
    i32 37, label %114
    i32 94, label %114
  ]

114:                                              ; preds = %109, %109, %109, %109, %109, %109
  %115 = add nsw i64 %110, -1
  %116 = trunc i64 %115 to i32
  store i32 %113, i32* @c, align 4, !tbaa !12
  %117 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %111
  store i32 32, i32* %117, align 4, !tbaa !12
  %118 = add nsw i64 %111, 1
  %119 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %118
  store i32 %113, i32* %119, align 4, !tbaa !12
  %120 = add nsw i64 %111, 2
  %121 = icmp eq i32 %116, 0
  br i1 %121, label %125, label %109, !llvm.loop !19

122:                                              ; preds = %109
  %123 = trunc i64 %111 to i32
  %124 = trunc i64 %110 to i32
  br label %125

125:                                              ; preds = %114, %122
  %126 = phi i32 [ %123, %122 ], [ %108, %114 ]
  %127 = phi i32 [ %124, %122 ], [ 0, %114 ]
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @chat, align 4, !tbaa !12
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %129
  store i32 43, i32* %130, align 4, !tbaa !12
  switch i32 %65, label %248 [
    i32 45, label %131
    i32 42, label %160
    i32 47, label %189
    i32 37, label %219
  ]

131:                                              ; preds = %125, %68
  %132 = phi i32 [ %126, %125 ], [ %63, %68 ]
  %133 = phi i32 [ %128, %125 ], [ %62, %68 ]
  %134 = sext i32 %132 to i64
  %135 = sext i32 %133 to i64
  %136 = shl i32 %133, 1
  %137 = add i32 %132, %136
  br label %138

138:                                              ; preds = %131, %143
  %139 = phi i64 [ %135, %131 ], [ %144, %143 ]
  %140 = phi i64 [ %134, %131 ], [ %149, %143 ]
  %141 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %139
  %142 = load i32, i32* %141, align 4, !tbaa !12
  switch i32 %142, label %151 [
    i32 43, label %143
    i32 45, label %143
    i32 42, label %143
    i32 47, label %143
    i32 37, label %143
    i32 94, label %143
  ]

143:                                              ; preds = %138, %138, %138, %138, %138, %138
  %144 = add nsw i64 %139, -1
  %145 = trunc i64 %144 to i32
  store i32 %142, i32* @c, align 4, !tbaa !12
  %146 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %140
  store i32 32, i32* %146, align 4, !tbaa !12
  %147 = add nsw i64 %140, 1
  %148 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %147
  store i32 %142, i32* %148, align 4, !tbaa !12
  %149 = add nsw i64 %140, 2
  %150 = icmp eq i32 %145, 0
  br i1 %150, label %154, label %138, !llvm.loop !20

151:                                              ; preds = %138
  %152 = trunc i64 %140 to i32
  %153 = trunc i64 %139 to i32
  br label %154

154:                                              ; preds = %143, %151
  %155 = phi i32 [ %152, %151 ], [ %137, %143 ]
  %156 = phi i32 [ %153, %151 ], [ 0, %143 ]
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @chat, align 4, !tbaa !12
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %158
  store i32 45, i32* %159, align 4, !tbaa !12
  switch i32 %65, label %248 [
    i32 42, label %160
    i32 47, label %189
    i32 37, label %219
  ]

160:                                              ; preds = %154, %125, %68
  %161 = phi i32 [ %155, %154 ], [ %126, %125 ], [ %63, %68 ]
  %162 = phi i32 [ %157, %154 ], [ %128, %125 ], [ %62, %68 ]
  %163 = sext i32 %161 to i64
  %164 = sext i32 %162 to i64
  %165 = shl i32 %162, 1
  %166 = add i32 %161, %165
  br label %167

167:                                              ; preds = %160, %172
  %168 = phi i64 [ %164, %160 ], [ %173, %172 ]
  %169 = phi i64 [ %163, %160 ], [ %178, %172 ]
  %170 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %168
  %171 = load i32, i32* %170, align 4, !tbaa !12
  switch i32 %171, label %180 [
    i32 42, label %172
    i32 47, label %172
    i32 37, label %172
    i32 94, label %172
  ]

172:                                              ; preds = %167, %167, %167, %167
  %173 = add nsw i64 %168, -1
  %174 = trunc i64 %173 to i32
  store i32 %171, i32* @c, align 4, !tbaa !12
  %175 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %169
  store i32 32, i32* %175, align 4, !tbaa !12
  %176 = add nsw i64 %169, 1
  %177 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %176
  store i32 %171, i32* %177, align 4, !tbaa !12
  %178 = add nsw i64 %169, 2
  %179 = icmp eq i32 %174, 0
  br i1 %179, label %183, label %167, !llvm.loop !21

180:                                              ; preds = %167
  %181 = trunc i64 %169 to i32
  %182 = trunc i64 %168 to i32
  br label %183

183:                                              ; preds = %172, %180
  %184 = phi i32 [ %181, %180 ], [ %166, %172 ]
  %185 = phi i32 [ %182, %180 ], [ 0, %172 ]
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @chat, align 4, !tbaa !12
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %187
  store i32 42, i32* %188, align 4, !tbaa !12
  switch i32 %65, label %248 [
    i32 47, label %189
    i32 37, label %219
  ]

189:                                              ; preds = %183, %154, %125, %68
  %190 = phi i32 [ %184, %183 ], [ %155, %154 ], [ %126, %125 ], [ %63, %68 ]
  %191 = phi i32 [ %186, %183 ], [ %157, %154 ], [ %128, %125 ], [ %62, %68 ]
  %192 = sext i32 %190 to i64
  %193 = sext i32 %191 to i64
  %194 = shl i32 %191, 1
  %195 = add i32 %190, %194
  br label %196

196:                                              ; preds = %189, %201
  %197 = phi i64 [ %193, %189 ], [ %202, %201 ]
  %198 = phi i64 [ %192, %189 ], [ %207, %201 ]
  %199 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %197
  %200 = load i32, i32* %199, align 4, !tbaa !12
  switch i32 %200, label %209 [
    i32 42, label %201
    i32 47, label %201
    i32 37, label %201
    i32 94, label %201
  ]

201:                                              ; preds = %196, %196, %196, %196
  %202 = add nsw i64 %197, -1
  %203 = trunc i64 %202 to i32
  store i32 %200, i32* @c, align 4, !tbaa !12
  %204 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %198
  store i32 32, i32* %204, align 4, !tbaa !12
  %205 = add nsw i64 %198, 1
  %206 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %205
  store i32 %200, i32* %206, align 4, !tbaa !12
  %207 = add nsw i64 %198, 2
  %208 = icmp eq i32 %203, 0
  br i1 %208, label %212, label %196, !llvm.loop !22

209:                                              ; preds = %196
  %210 = trunc i64 %198 to i32
  %211 = trunc i64 %197 to i32
  br label %212

212:                                              ; preds = %201, %209
  %213 = phi i32 [ %210, %209 ], [ %195, %201 ]
  %214 = phi i32 [ %211, %209 ], [ 0, %201 ]
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @chat, align 4, !tbaa !12
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %216
  store i32 47, i32* %217, align 4, !tbaa !12
  %218 = icmp eq i32 %65, 37
  br i1 %218, label %219, label %248

219:                                              ; preds = %212, %183, %154, %125, %68
  %220 = phi i32 [ %213, %212 ], [ %184, %183 ], [ %155, %154 ], [ %126, %125 ], [ %63, %68 ]
  %221 = phi i32 [ %215, %212 ], [ %186, %183 ], [ %157, %154 ], [ %128, %125 ], [ %62, %68 ]
  %222 = sext i32 %220 to i64
  %223 = sext i32 %221 to i64
  %224 = shl i32 %221, 1
  %225 = add i32 %220, %224
  br label %226

226:                                              ; preds = %219, %231
  %227 = phi i64 [ %223, %219 ], [ %232, %231 ]
  %228 = phi i64 [ %222, %219 ], [ %237, %231 ]
  %229 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %227
  %230 = load i32, i32* %229, align 4, !tbaa !12
  switch i32 %230, label %239 [
    i32 42, label %231
    i32 47, label %231
    i32 37, label %231
    i32 94, label %231
  ]

231:                                              ; preds = %226, %226, %226, %226
  %232 = add nsw i64 %227, -1
  %233 = trunc i64 %232 to i32
  store i32 %230, i32* @c, align 4, !tbaa !12
  %234 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %228
  store i32 32, i32* %234, align 4, !tbaa !12
  %235 = add nsw i64 %228, 1
  %236 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %235
  store i32 %230, i32* %236, align 4, !tbaa !12
  %237 = add nsw i64 %228, 2
  %238 = icmp eq i32 %233, 0
  br i1 %238, label %242, label %226, !llvm.loop !23

239:                                              ; preds = %226
  %240 = trunc i64 %228 to i32
  %241 = trunc i64 %227 to i32
  br label %242

242:                                              ; preds = %231, %239
  %243 = phi i32 [ %240, %239 ], [ %225, %231 ]
  %244 = phi i32 [ %241, %239 ], [ 0, %231 ]
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* @chat, align 4, !tbaa !12
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %246
  store i32 37, i32* %247, align 4, !tbaa !12
  br label %248

248:                                              ; preds = %212, %242, %82, %78, %183, %154, %125, %68, %101, %60
  %249 = phi i32 [ %63, %60 ], [ %63, %68 ], [ %102, %101 ], [ %126, %125 ], [ %155, %154 ], [ %184, %183 ], [ %63, %78 ], [ %63, %82 ], [ %243, %242 ], [ %213, %212 ]
  %250 = phi i32 [ %65, %60 ], [ 32, %68 ], [ 32, %101 ], [ 32, %125 ], [ 32, %154 ], [ 32, %183 ], [ 32, %78 ], [ 32, %82 ], [ 32, %242 ], [ 32, %212 ]
  %251 = phi i32 [ %62, %60 ], [ %62, %68 ], [ %103, %101 ], [ %128, %125 ], [ %157, %154 ], [ %186, %183 ], [ %79, %78 ], [ %83, %82 ], [ %245, %242 ], [ %215, %212 ]
  %252 = sext i32 %249 to i64
  %253 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %252
  store i32 %250, i32* %253, align 4, !tbaa !12
  %254 = add nsw i32 %249, 1
  %255 = add nsw i64 %61, 1
  %256 = icmp eq i64 %255, %16
  br i1 %256, label %17, label %60, !llvm.loop !24

257:                                              ; preds = %57, %257
  %258 = phi i64 [ %266, %257 ], [ %58, %57 ]
  %259 = phi i64 [ %260, %257 ], [ %59, %57 ]
  %260 = add nsw i64 %259, -1
  %261 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %259
  %262 = load i32, i32* %261, align 4, !tbaa !12
  %263 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %258
  store i32 32, i32* %263, align 4, !tbaa !12
  %264 = add nsw i64 %258, 1
  %265 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %264
  store i32 %262, i32* %265, align 4, !tbaa !12
  %266 = add nsw i64 %258, 2
  %267 = icmp ugt i64 %259, 1
  br i1 %267, label %257, label %268, !llvm.loop !25

268:                                              ; preds = %257, %55
  %269 = phi i64 [ %29, %55 ], [ %266, %257 ]
  %270 = trunc i64 %269 to i32
  store i32 0, i32* @chat, align 4, !tbaa !12
  store i32 %270, i32* @ii, align 4, !tbaa !12
  br label %271

271:                                              ; preds = %268, %18
  %272 = phi i32 [ %270, %268 ], [ %19, %18 ]
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %273
  store i32 64, i32* %274, align 4, !tbaa !12
  %275 = load i32, i32* @intt, align 4, !tbaa !12
  br label %276

276:                                              ; preds = %404, %271
  %277 = phi i32 [ %275, %271 ], [ %405, %404 ]
  %278 = phi i32 [ 1, %271 ], [ %408, %404 ]
  %279 = phi i32 [ undef, %271 ], [ %407, %404 ]
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4, !tbaa !12
  switch i32 %282, label %375 [
    i32 64, label %409
    i32 43, label %283
    i32 45, label %283
    i32 42, label %283
    i32 47, label %283
    i32 37, label %283
    i32 94, label %283
    i32 32, label %404
  ]

283:                                              ; preds = %276, %276, %276, %276, %276, %276
  %284 = add nsw i32 %277, -1
  %285 = sext i32 %277 to i64
  %286 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4, !tbaa !12
  %288 = sext i32 %284 to i64
  %289 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4, !tbaa !12
  %291 = icmp eq i32 %282, 43
  %292 = add nsw i32 %290, %287
  %293 = select i1 %291, i32 %292, i32 %279
  %294 = icmp eq i32 %282, 45
  %295 = sub nsw i32 %290, %287
  %296 = select i1 %294, i32 %295, i32 %293
  %297 = icmp eq i32 %282, 42
  %298 = mul nsw i32 %290, %287
  %299 = select i1 %297, i32 %298, i32 %296
  switch i32 %282, label %373 [
    i32 47, label %300
    i32 37, label %302
    i32 94, label %304
  ]

300:                                              ; preds = %283
  %301 = sdiv i32 %290, %287
  br label %373

302:                                              ; preds = %283
  %303 = srem i32 %290, %287
  br label %373

304:                                              ; preds = %283
  %305 = icmp eq i32 %287, 0
  br i1 %305, label %373, label %306

306:                                              ; preds = %304
  %307 = icmp ult i32 %287, 8
  br i1 %307, label %364, label %308

308:                                              ; preds = %306
  %309 = and i32 %287, -8
  %310 = and i32 %287, 7
  %311 = insertelement <4 x i32> poison, i32 %290, i64 0
  %312 = shufflevector <4 x i32> %311, <4 x i32> poison, <4 x i32> zeroinitializer
  %313 = insertelement <4 x i32> poison, i32 %290, i64 0
  %314 = shufflevector <4 x i32> %313, <4 x i32> poison, <4 x i32> zeroinitializer
  %315 = add i32 %309, -8
  %316 = lshr exact i32 %315, 3
  %317 = add nuw nsw i32 %316, 1
  %318 = and i32 %317, 7
  %319 = icmp ult i32 %315, 56
  br i1 %319, label %344, label %320

320:                                              ; preds = %308
  %321 = and i32 %317, 1073741816
  br label %322

322:                                              ; preds = %322, %320
  %323 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %320 ], [ %340, %322 ]
  %324 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %320 ], [ %341, %322 ]
  %325 = phi i32 [ 0, %320 ], [ %342, %322 ]
  %326 = mul <4 x i32> %323, %312
  %327 = mul <4 x i32> %324, %314
  %328 = mul <4 x i32> %326, %312
  %329 = mul <4 x i32> %327, %314
  %330 = mul <4 x i32> %328, %312
  %331 = mul <4 x i32> %329, %314
  %332 = mul <4 x i32> %330, %312
  %333 = mul <4 x i32> %331, %314
  %334 = mul <4 x i32> %332, %312
  %335 = mul <4 x i32> %333, %314
  %336 = mul <4 x i32> %334, %312
  %337 = mul <4 x i32> %335, %314
  %338 = mul <4 x i32> %336, %312
  %339 = mul <4 x i32> %337, %314
  %340 = mul <4 x i32> %338, %312
  %341 = mul <4 x i32> %339, %314
  %342 = add nuw i32 %325, 8
  %343 = icmp eq i32 %342, %321
  br i1 %343, label %344, label %322, !llvm.loop !26

344:                                              ; preds = %322, %308
  %345 = phi <4 x i32> [ undef, %308 ], [ %340, %322 ]
  %346 = phi <4 x i32> [ undef, %308 ], [ %341, %322 ]
  %347 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %308 ], [ %340, %322 ]
  %348 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %308 ], [ %341, %322 ]
  %349 = icmp eq i32 %318, 0
  br i1 %349, label %358, label %350

350:                                              ; preds = %344, %350
  %351 = phi <4 x i32> [ %354, %350 ], [ %347, %344 ]
  %352 = phi <4 x i32> [ %355, %350 ], [ %348, %344 ]
  %353 = phi i32 [ %356, %350 ], [ 0, %344 ]
  %354 = mul <4 x i32> %351, %312
  %355 = mul <4 x i32> %352, %314
  %356 = add i32 %353, 1
  %357 = icmp eq i32 %356, %318
  br i1 %357, label %358, label %350, !llvm.loop !27

358:                                              ; preds = %350, %344
  %359 = phi <4 x i32> [ %345, %344 ], [ %354, %350 ]
  %360 = phi <4 x i32> [ %346, %344 ], [ %355, %350 ]
  %361 = mul <4 x i32> %360, %359
  %362 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %361)
  %363 = icmp eq i32 %287, %309
  br i1 %363, label %373, label %364

364:                                              ; preds = %306, %358
  %365 = phi i32 [ 1, %306 ], [ %362, %358 ]
  %366 = phi i32 [ %287, %306 ], [ %310, %358 ]
  br label %367

367:                                              ; preds = %364, %367
  %368 = phi i32 [ %370, %367 ], [ %365, %364 ]
  %369 = phi i32 [ %371, %367 ], [ %366, %364 ]
  %370 = mul nsw i32 %368, %290
  %371 = add nsw i32 %369, -1
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %367, !llvm.loop !28

373:                                              ; preds = %367, %358, %283, %302, %300, %304
  %374 = phi i32 [ 1, %304 ], [ %301, %300 ], [ %303, %302 ], [ %299, %283 ], [ %362, %358 ], [ %370, %367 ]
  store i32 %284, i32* @intt, align 4, !tbaa !12
  store i32 %374, i32* %289, align 4, !tbaa !12
  br label %404

375:                                              ; preds = %276
  %376 = add nsw i32 %282, -48
  %377 = add nsw i32 %277, 1
  store i32 %377, i32* @intt, align 4, !tbaa !12
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %378
  store i32 %376, i32* %379, align 4, !tbaa !12
  %380 = add nsw i32 %278, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %381
  %383 = load i32, i32* %382, align 4, !tbaa !12
  %384 = icmp eq i32 %383, 32
  br i1 %384, label %400, label %385

385:                                              ; preds = %375, %385
  %386 = phi i64 [ %392, %385 ], [ 1, %375 ]
  %387 = phi i32 [ %391, %385 ], [ %376, %375 ]
  %388 = phi i32 [ %395, %385 ], [ %383, %375 ]
  %389 = add nsw i32 %388, -48
  %390 = mul nsw i32 %387, 10
  %391 = add nsw i32 %389, %390
  %392 = add nuw nsw i64 %386, 1
  %393 = add nsw i64 %392, %280
  %394 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %393
  %395 = load i32, i32* %394, align 4, !tbaa !12
  %396 = icmp eq i32 %395, 32
  br i1 %396, label %397, label %385, !llvm.loop !29

397:                                              ; preds = %385
  %398 = trunc i64 %392 to i32
  %399 = trunc i64 %393 to i32
  store i32 %391, i32* %379, align 4, !tbaa !12
  br label %400

400:                                              ; preds = %397, %375
  %401 = phi i32 [ %398, %397 ], [ 1, %375 ]
  %402 = phi i32 [ %399, %397 ], [ %380, %375 ]
  store i32 %401, i32* @ii, align 4, !tbaa !12
  %403 = add nsw i32 %402, -1
  br label %404

404:                                              ; preds = %276, %400, %373
  %405 = phi i32 [ %284, %373 ], [ %377, %400 ], [ %277, %276 ]
  %406 = phi i32 [ %278, %373 ], [ %403, %400 ], [ %278, %276 ]
  %407 = phi i32 [ %374, %373 ], [ %279, %400 ], [ %279, %276 ]
  %408 = add nsw i32 %406, 1
  br label %276, !llvm.loop !30

409:                                              ; preds = %276
  store i32 %278, i32* @i, align 4, !tbaa !12
  %410 = load i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @ints, i64 0, i64 1), align 4, !tbaa !12
  tail call void @_Z6putinti(i32 noundef %410)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !6, !11, !7}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C++ TBAA"}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6, !11, !7}
!26 = distinct !{!26, !6, !7}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !6, !11, !7}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
