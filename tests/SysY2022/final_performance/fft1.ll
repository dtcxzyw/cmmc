; ModuleID = 'tests//SysY2022/final_performance/fft1.sy'
source_filename = "tests//SysY2022/final_performance/fft1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@d = dso_local local_unnamed_addr global i32 0, align 4
@temp = dso_local local_unnamed_addr global [2097152 x i32] zeroinitializer, align 16
@a = dso_local global [2097152 x i32] zeroinitializer, align 16
@b = dso_local global [2097152 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [2097152 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z8multiplyii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %5 [
    i32 0, label %15
    i32 1, label %3
  ]

3:                                                ; preds = %2
  %4 = srem i32 %0, 998244353
  br label %15

5:                                                ; preds = %2
  %6 = sdiv i32 %1, 2
  %7 = tail call noundef i32 @_Z8multiplyii(i32 noundef %0, i32 noundef %6), !range !5
  %8 = shl nsw i32 %7, 1
  %9 = srem i32 %8, 998244353
  %10 = srem i32 %1, 2
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = add nsw i32 %9, %0
  %14 = srem i32 %13, 998244353
  br label %15

15:                                               ; preds = %12, %5, %2, %3
  %16 = phi i32 [ %4, %3 ], [ %1, %2 ], [ %14, %12 ], [ %9, %5 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5powerii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = sdiv i32 %1, 2
  %6 = tail call noundef i32 @_Z5powerii(i32 noundef %0, i32 noundef %5), !range !5
  %7 = tail call noundef i32 @_Z8multiplyii(i32 noundef %6, i32 noundef %6), !range !5
  %8 = srem i32 %1, 2
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_Z8multiplyii(i32 noundef %7, i32 noundef %0), !range !5
  br label %12

12:                                               ; preds = %10, %4, %2
  %13 = phi i32 [ 1, %2 ], [ %11, %10 ], [ %7, %4 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z7memmovePiiS_i(i32* nocapture noundef writeonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %144

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = zext i32 %3 to i64
  %9 = icmp ult i32 %3, 8
  br i1 %9, label %102, label %10

10:                                               ; preds = %6
  %11 = getelementptr i32, i32* %0, i64 %7
  %12 = add nsw i64 %7, %8
  %13 = getelementptr i32, i32* %0, i64 %12
  %14 = getelementptr i32, i32* %2, i64 %8
  %15 = icmp ult i32* %11, %14
  %16 = icmp ugt i32* %13, %2
  %17 = and i1 %15, %16
  br i1 %17, label %102, label %18

18:                                               ; preds = %10
  %19 = and i64 %8, 4294967288
  %20 = add nsw i64 %19, -8
  %21 = lshr exact i64 %20, 3
  %22 = add nuw nsw i64 %21, 1
  %23 = and i64 %22, 3
  %24 = icmp ult i64 %20, 24
  br i1 %24, label %80, label %25

25:                                               ; preds = %18
  %26 = and i64 %22, 4611686018427387900
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %77, %27 ]
  %29 = phi i64 [ 0, %25 ], [ %78, %27 ]
  %30 = getelementptr inbounds i32, i32* %2, i64 %28
  %31 = bitcast i32* %30 to <4 x i32>*
  %32 = load <4 x i32>, <4 x i32>* %31, align 4, !tbaa !6, !alias.scope !10
  %33 = getelementptr inbounds i32, i32* %30, i64 4
  %34 = bitcast i32* %33 to <4 x i32>*
  %35 = load <4 x i32>, <4 x i32>* %34, align 4, !tbaa !6, !alias.scope !10
  %36 = add nsw i64 %28, %7
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> %32, <4 x i32>* %38, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %39 = getelementptr inbounds i32, i32* %37, i64 4
  %40 = bitcast i32* %39 to <4 x i32>*
  store <4 x i32> %35, <4 x i32>* %40, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %41 = or i64 %28, 8
  %42 = getelementptr inbounds i32, i32* %2, i64 %41
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !tbaa !6, !alias.scope !10
  %45 = getelementptr inbounds i32, i32* %42, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !6, !alias.scope !10
  %48 = add nsw i64 %41, %7
  %49 = getelementptr inbounds i32, i32* %0, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*
  store <4 x i32> %44, <4 x i32>* %50, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %51 = getelementptr inbounds i32, i32* %49, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> %47, <4 x i32>* %52, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %53 = or i64 %28, 16
  %54 = getelementptr inbounds i32, i32* %2, i64 %53
  %55 = bitcast i32* %54 to <4 x i32>*
  %56 = load <4 x i32>, <4 x i32>* %55, align 4, !tbaa !6, !alias.scope !10
  %57 = getelementptr inbounds i32, i32* %54, i64 4
  %58 = bitcast i32* %57 to <4 x i32>*
  %59 = load <4 x i32>, <4 x i32>* %58, align 4, !tbaa !6, !alias.scope !10
  %60 = add nsw i64 %53, %7
  %61 = getelementptr inbounds i32, i32* %0, i64 %60
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %56, <4 x i32>* %62, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %63 = getelementptr inbounds i32, i32* %61, i64 4
  %64 = bitcast i32* %63 to <4 x i32>*
  store <4 x i32> %59, <4 x i32>* %64, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %65 = or i64 %28, 24
  %66 = getelementptr inbounds i32, i32* %2, i64 %65
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !6, !alias.scope !10
  %69 = getelementptr inbounds i32, i32* %66, i64 4
  %70 = bitcast i32* %69 to <4 x i32>*
  %71 = load <4 x i32>, <4 x i32>* %70, align 4, !tbaa !6, !alias.scope !10
  %72 = add nsw i64 %65, %7
  %73 = getelementptr inbounds i32, i32* %0, i64 %72
  %74 = bitcast i32* %73 to <4 x i32>*
  store <4 x i32> %68, <4 x i32>* %74, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %75 = getelementptr inbounds i32, i32* %73, i64 4
  %76 = bitcast i32* %75 to <4 x i32>*
  store <4 x i32> %71, <4 x i32>* %76, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %77 = add nuw i64 %28, 32
  %78 = add i64 %29, 4
  %79 = icmp eq i64 %78, %26
  br i1 %79, label %80, label %27, !llvm.loop !15

80:                                               ; preds = %27, %18
  %81 = phi i64 [ 0, %18 ], [ %77, %27 ]
  %82 = icmp eq i64 %23, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %80, %83
  %84 = phi i64 [ %97, %83 ], [ %81, %80 ]
  %85 = phi i64 [ %98, %83 ], [ 0, %80 ]
  %86 = getelementptr inbounds i32, i32* %2, i64 %84
  %87 = bitcast i32* %86 to <4 x i32>*
  %88 = load <4 x i32>, <4 x i32>* %87, align 4, !tbaa !6, !alias.scope !10
  %89 = getelementptr inbounds i32, i32* %86, i64 4
  %90 = bitcast i32* %89 to <4 x i32>*
  %91 = load <4 x i32>, <4 x i32>* %90, align 4, !tbaa !6, !alias.scope !10
  %92 = add nsw i64 %84, %7
  %93 = getelementptr inbounds i32, i32* %0, i64 %92
  %94 = bitcast i32* %93 to <4 x i32>*
  store <4 x i32> %88, <4 x i32>* %94, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %95 = getelementptr inbounds i32, i32* %93, i64 4
  %96 = bitcast i32* %95 to <4 x i32>*
  store <4 x i32> %91, <4 x i32>* %96, align 4, !tbaa !6, !alias.scope !13, !noalias !10
  %97 = add nuw i64 %84, 8
  %98 = add i64 %85, 1
  %99 = icmp eq i64 %98, %23
  br i1 %99, label %100, label %83, !llvm.loop !18

100:                                              ; preds = %83, %80
  %101 = icmp eq i64 %19, %8
  br i1 %101, label %144, label %102

102:                                              ; preds = %10, %6, %100
  %103 = phi i64 [ 0, %10 ], [ 0, %6 ], [ %19, %100 ]
  %104 = xor i64 %103, -1
  %105 = add nsw i64 %104, %8
  %106 = and i64 %8, 3
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %102, %108
  %109 = phi i64 [ %115, %108 ], [ %103, %102 ]
  %110 = phi i64 [ %116, %108 ], [ 0, %102 ]
  %111 = getelementptr inbounds i32, i32* %2, i64 %109
  %112 = load i32, i32* %111, align 4, !tbaa !6
  %113 = add nsw i64 %109, %7
  %114 = getelementptr inbounds i32, i32* %0, i64 %113
  store i32 %112, i32* %114, align 4, !tbaa !6
  %115 = add nuw nsw i64 %109, 1
  %116 = add i64 %110, 1
  %117 = icmp eq i64 %116, %106
  br i1 %117, label %118, label %108, !llvm.loop !20

118:                                              ; preds = %108, %102
  %119 = phi i64 [ %103, %102 ], [ %115, %108 ]
  %120 = icmp ult i64 %105, 3
  br i1 %120, label %144, label %121

121:                                              ; preds = %118, %121
  %122 = phi i64 [ %142, %121 ], [ %119, %118 ]
  %123 = getelementptr inbounds i32, i32* %2, i64 %122
  %124 = load i32, i32* %123, align 4, !tbaa !6
  %125 = add nsw i64 %122, %7
  %126 = getelementptr inbounds i32, i32* %0, i64 %125
  store i32 %124, i32* %126, align 4, !tbaa !6
  %127 = add nuw nsw i64 %122, 1
  %128 = getelementptr inbounds i32, i32* %2, i64 %127
  %129 = load i32, i32* %128, align 4, !tbaa !6
  %130 = add nsw i64 %127, %7
  %131 = getelementptr inbounds i32, i32* %0, i64 %130
  store i32 %129, i32* %131, align 4, !tbaa !6
  %132 = add nuw nsw i64 %122, 2
  %133 = getelementptr inbounds i32, i32* %2, i64 %132
  %134 = load i32, i32* %133, align 4, !tbaa !6
  %135 = add nsw i64 %132, %7
  %136 = getelementptr inbounds i32, i32* %0, i64 %135
  store i32 %134, i32* %136, align 4, !tbaa !6
  %137 = add nuw nsw i64 %122, 3
  %138 = getelementptr inbounds i32, i32* %2, i64 %137
  %139 = load i32, i32* %138, align 4, !tbaa !6
  %140 = add nsw i64 %137, %7
  %141 = getelementptr inbounds i32, i32* %0, i64 %140
  store i32 %139, i32* %141, align 4, !tbaa !6
  %142 = add nuw nsw i64 %122, 4
  %143 = icmp eq i64 %142, %8
  br i1 %143, label %144, label %121, !llvm.loop !21

144:                                              ; preds = %118, %121, %100, %4
  %145 = phi i32 [ 0, %4 ], [ %3, %100 ], [ %3, %121 ], [ %3, %118 ]
  ret i32 %145
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z3fftPiiii(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %2, 1
  br i1 %5, label %193, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %164

8:                                                ; preds = %6
  %9 = lshr i32 %2, 1
  %10 = sext i32 %1 to i64
  %11 = zext i32 %2 to i64
  %12 = and i64 %11, 1
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %37, label %14

14:                                               ; preds = %8
  %15 = and i64 %11, 4294967294
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %34, %16 ]
  %18 = phi i64 [ 0, %14 ], [ %35, %16 ]
  %19 = add nsw i64 %17, %10
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !6
  %22 = lshr exact i64 %17, 1
  %23 = and i64 %22, 2147483647
  %24 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %23
  store i32 %21, i32* %24, align 4, !tbaa !6
  %25 = or i64 %17, 1
  %26 = trunc i64 %17 to i32
  %27 = add nsw i64 %25, %10
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !6
  %30 = lshr exact i32 %26, 1
  %31 = add nuw nsw i32 %30, %9
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %32
  store i32 %29, i32* %33, align 4, !tbaa !6
  %34 = add nuw nsw i64 %17, 2
  %35 = add i64 %18, 2
  %36 = icmp eq i64 %35, %15
  br i1 %36, label %37, label %16, !llvm.loop !22

37:                                               ; preds = %16, %8
  %38 = phi i64 [ 0, %8 ], [ %34, %16 ]
  %39 = icmp eq i64 %12, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = trunc i64 %38 to i32
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  %44 = add nsw i64 %38, %10
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !6
  %47 = lshr i32 %41, 1
  %48 = add nuw nsw i32 %47, %9
  %49 = zext i32 %48 to i64
  %50 = lshr i64 %38, 1
  %51 = and i64 %50, 2147483647
  %52 = select i1 %43, i64 %51, i64 %49
  %53 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %52
  store i32 %46, i32* %53, align 4, !tbaa !6
  br label %54

54:                                               ; preds = %37, %40
  br i1 %7, label %55, label %164

55:                                               ; preds = %54
  %56 = sext i32 %1 to i64
  %57 = zext i32 %2 to i64
  %58 = icmp ult i32 %2, 8
  br i1 %58, label %122, label %59

59:                                               ; preds = %55
  %60 = getelementptr i32, i32* %0, i64 %10
  %61 = add nsw i64 %10, %11
  %62 = getelementptr i32, i32* %0, i64 %61
  %63 = getelementptr [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %11
  %64 = icmp ult i32* %60, %63
  %65 = icmp ugt i32* %62, getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 0)
  %66 = and i1 %64, %65
  br i1 %66, label %122, label %67

67:                                               ; preds = %59
  %68 = and i64 %11, 4294967288
  %69 = add nsw i64 %68, -8
  %70 = lshr exact i64 %69, 3
  %71 = add nuw nsw i64 %70, 1
  %72 = and i64 %71, 1
  %73 = icmp eq i64 %69, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %67
  %75 = and i64 %71, 4611686018427387902
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %102, %76 ]
  %78 = phi i64 [ 0, %74 ], [ %103, %76 ]
  %79 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %77
  %80 = bitcast i32* %79 to <4 x i32>*
  %81 = load <4 x i32>, <4 x i32>* %80, align 16, !tbaa !6, !alias.scope !23
  %82 = getelementptr inbounds i32, i32* %79, i64 4
  %83 = bitcast i32* %82 to <4 x i32>*
  %84 = load <4 x i32>, <4 x i32>* %83, align 16, !tbaa !6, !alias.scope !23
  %85 = add nsw i64 %77, %56
  %86 = getelementptr inbounds i32, i32* %0, i64 %85
  %87 = bitcast i32* %86 to <4 x i32>*
  store <4 x i32> %81, <4 x i32>* %87, align 4, !tbaa !6, !alias.scope !26, !noalias !23
  %88 = getelementptr inbounds i32, i32* %86, i64 4
  %89 = bitcast i32* %88 to <4 x i32>*
  store <4 x i32> %84, <4 x i32>* %89, align 4, !tbaa !6, !alias.scope !26, !noalias !23
  %90 = or i64 %77, 8
  %91 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %90
  %92 = bitcast i32* %91 to <4 x i32>*
  %93 = load <4 x i32>, <4 x i32>* %92, align 16, !tbaa !6, !alias.scope !23
  %94 = getelementptr inbounds i32, i32* %91, i64 4
  %95 = bitcast i32* %94 to <4 x i32>*
  %96 = load <4 x i32>, <4 x i32>* %95, align 16, !tbaa !6, !alias.scope !23
  %97 = add nsw i64 %90, %56
  %98 = getelementptr inbounds i32, i32* %0, i64 %97
  %99 = bitcast i32* %98 to <4 x i32>*
  store <4 x i32> %93, <4 x i32>* %99, align 4, !tbaa !6, !alias.scope !26, !noalias !23
  %100 = getelementptr inbounds i32, i32* %98, i64 4
  %101 = bitcast i32* %100 to <4 x i32>*
  store <4 x i32> %96, <4 x i32>* %101, align 4, !tbaa !6, !alias.scope !26, !noalias !23
  %102 = add nuw i64 %77, 16
  %103 = add i64 %78, 2
  %104 = icmp eq i64 %103, %75
  br i1 %104, label %105, label %76, !llvm.loop !28

105:                                              ; preds = %76, %67
  %106 = phi i64 [ 0, %67 ], [ %102, %76 ]
  %107 = icmp eq i64 %72, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %106
  %110 = bitcast i32* %109 to <4 x i32>*
  %111 = load <4 x i32>, <4 x i32>* %110, align 16, !tbaa !6, !alias.scope !23
  %112 = getelementptr inbounds i32, i32* %109, i64 4
  %113 = bitcast i32* %112 to <4 x i32>*
  %114 = load <4 x i32>, <4 x i32>* %113, align 16, !tbaa !6, !alias.scope !23
  %115 = add nsw i64 %106, %56
  %116 = getelementptr inbounds i32, i32* %0, i64 %115
  %117 = bitcast i32* %116 to <4 x i32>*
  store <4 x i32> %111, <4 x i32>* %117, align 4, !tbaa !6, !alias.scope !26, !noalias !23
  %118 = getelementptr inbounds i32, i32* %116, i64 4
  %119 = bitcast i32* %118 to <4 x i32>*
  store <4 x i32> %114, <4 x i32>* %119, align 4, !tbaa !6, !alias.scope !26, !noalias !23
  br label %120

120:                                              ; preds = %105, %108
  %121 = icmp eq i64 %68, %11
  br i1 %121, label %164, label %122

122:                                              ; preds = %59, %55, %120
  %123 = phi i64 [ 0, %59 ], [ 0, %55 ], [ %68, %120 ]
  %124 = xor i64 %123, -1
  %125 = add nsw i64 %124, %11
  %126 = and i64 %11, 3
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %122, %128
  %129 = phi i64 [ %135, %128 ], [ %123, %122 ]
  %130 = phi i64 [ %136, %128 ], [ 0, %122 ]
  %131 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %129
  %132 = load i32, i32* %131, align 4, !tbaa !6
  %133 = add nsw i64 %129, %56
  %134 = getelementptr inbounds i32, i32* %0, i64 %133
  store i32 %132, i32* %134, align 4, !tbaa !6
  %135 = add nuw nsw i64 %129, 1
  %136 = add i64 %130, 1
  %137 = icmp eq i64 %136, %126
  br i1 %137, label %138, label %128, !llvm.loop !29

138:                                              ; preds = %128, %122
  %139 = phi i64 [ %123, %122 ], [ %135, %128 ]
  %140 = icmp ult i64 %125, 3
  br i1 %140, label %164, label %141

141:                                              ; preds = %138, %141
  %142 = phi i64 [ %162, %141 ], [ %139, %138 ]
  %143 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4, !tbaa !6
  %145 = add nsw i64 %142, %56
  %146 = getelementptr inbounds i32, i32* %0, i64 %145
  store i32 %144, i32* %146, align 4, !tbaa !6
  %147 = add nuw nsw i64 %142, 1
  %148 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4, !tbaa !6
  %150 = add nsw i64 %147, %56
  %151 = getelementptr inbounds i32, i32* %0, i64 %150
  store i32 %149, i32* %151, align 4, !tbaa !6
  %152 = add nuw nsw i64 %142, 2
  %153 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4, !tbaa !6
  %155 = add nsw i64 %152, %56
  %156 = getelementptr inbounds i32, i32* %0, i64 %155
  store i32 %154, i32* %156, align 4, !tbaa !6
  %157 = add nuw nsw i64 %142, 3
  %158 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4, !tbaa !6
  %160 = add nsw i64 %157, %56
  %161 = getelementptr inbounds i32, i32* %0, i64 %160
  store i32 %159, i32* %161, align 4, !tbaa !6
  %162 = add nuw nsw i64 %142, 4
  %163 = icmp eq i64 %162, %57
  br i1 %163, label %164, label %141, !llvm.loop !30

164:                                              ; preds = %138, %141, %120, %6, %54
  %165 = sdiv i32 %2, 2
  %166 = tail call noundef i32 @_Z8multiplyii(i32 noundef %3, i32 noundef %3), !range !5
  %167 = tail call noundef i32 @_Z3fftPiiii(i32* noundef %0, i32 noundef %1, i32 noundef %165, i32 noundef %166), !range !31
  %168 = add nsw i32 %165, %1
  %169 = tail call noundef i32 @_Z3fftPiiii(i32* noundef %0, i32 noundef %168, i32 noundef %165, i32 noundef %166), !range !31
  %170 = icmp sgt i32 %2, 1
  br i1 %170, label %171, label %193

171:                                              ; preds = %164
  %172 = sext i32 %1 to i64
  %173 = sext i32 %165 to i64
  %174 = zext i32 %165 to i64
  br label %175

175:                                              ; preds = %171, %175
  %176 = phi i64 [ 0, %171 ], [ %191, %175 ]
  %177 = phi i32 [ 1, %171 ], [ %190, %175 ]
  %178 = add nsw i64 %176, %172
  %179 = getelementptr inbounds i32, i32* %0, i64 %178
  %180 = load i32, i32* %179, align 4, !tbaa !6
  %181 = add nsw i64 %178, %173
  %182 = getelementptr inbounds i32, i32* %0, i64 %181
  %183 = load i32, i32* %182, align 4, !tbaa !6
  %184 = tail call noundef i32 @_Z8multiplyii(i32 noundef %177, i32 noundef %183), !range !5
  %185 = add nsw i32 %184, %180
  %186 = srem i32 %185, 998244353
  store i32 %186, i32* %179, align 4, !tbaa !6
  %187 = add i32 %180, 998244353
  %188 = sub i32 %187, %184
  %189 = srem i32 %188, 998244353
  store i32 %189, i32* %182, align 4, !tbaa !6
  %190 = tail call noundef i32 @_Z8multiplyii(i32 noundef %177, i32 noundef %3), !range !5
  %191 = add nuw nsw i64 %176, 1
  %192 = icmp eq i64 %191, %174
  br i1 %192, label %193, label %175, !llvm.loop !32

193:                                              ; preds = %175, %164, %4
  %194 = phi i32 [ 1, %4 ], [ 0, %164 ], [ 0, %175 ]
  ret i32 %194
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @a, i64 0, i64 0))
  %2 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @b, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 60)
  %3 = add i32 %1, -1
  %4 = add i32 %3, %2
  br label %5

5:                                                ; preds = %5, %0
  %6 = phi i32 [ 1, %0 ], [ %8, %5 ]
  %7 = icmp slt i32 %6, %4
  %8 = shl nsw i32 %6, 1
  br i1 %7, label %5, label %9, !llvm.loop !33

9:                                                ; preds = %5
  store i32 %6, i32* @d, align 4, !tbaa !6
  %10 = udiv i32 998244352, %6
  %11 = tail call noundef i32 @_Z5powerii(i32 noundef 3, i32 noundef %10), !range !5
  %12 = tail call noundef i32 @_Z3fftPiiii(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @a, i64 0, i64 0), i32 noundef 0, i32 noundef %6, i32 noundef %11), !range !31
  %13 = load i32, i32* @d, align 4, !tbaa !6
  %14 = sdiv i32 998244352, %13
  %15 = tail call noundef i32 @_Z5powerii(i32 noundef 3, i32 noundef %14), !range !5
  %16 = tail call noundef i32 @_Z3fftPiiii(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @b, i64 0, i64 0), i32 noundef 0, i32 noundef %13, i32 noundef %15), !range !31
  %17 = load i32, i32* @d, align 4, !tbaa !6
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %9
  %20 = zext i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %28, %21 ]
  %23 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @a, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !6
  %25 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @b, i64 0, i64 %22
  %26 = load i32, i32* %25, align 4, !tbaa !6
  %27 = tail call noundef i32 @_Z8multiplyii(i32 noundef %24, i32 noundef %26), !range !5
  store i32 %27, i32* %23, align 4, !tbaa !6
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !34

30:                                               ; preds = %21, %9
  %31 = sdiv i32 998244352, %17
  %32 = sub nsw i32 998244352, %31
  %33 = tail call noundef i32 @_Z5powerii(i32 noundef 3, i32 noundef %32), !range !5
  %34 = tail call noundef i32 @_Z3fftPiiii(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @a, i64 0, i64 0), i32 noundef 0, i32 noundef %17, i32 noundef %33), !range !31
  %35 = load i32, i32* @d, align 4, !tbaa !6
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = tail call noundef i32 @_Z5powerii(i32 noundef %35, i32 noundef 998244351), !range !5
  %39 = zext i32 %35 to i64
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i64 [ 0, %37 ], [ %45, %40 ]
  %42 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @a, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !6
  %44 = tail call noundef i32 @_Z8multiplyii(i32 noundef %43, i32 noundef %38), !range !5
  store i32 %44, i32* %42, align 4, !tbaa !6
  %45 = add nuw nsw i64 %41, 1
  %46 = icmp eq i64 %45, %39
  br i1 %46, label %47, label %40, !llvm.loop !35

47:                                               ; preds = %40, %30
  tail call void @_Z14_sysy_stoptimei(i32 noundef 79)
  tail call void @_Z8putarrayiPi(i32 noundef %4, i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @a, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #4

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #4

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #4

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{i32 -998244352, i32 998244353}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !16, !17}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !16, !17}
!31 = !{i32 0, i32 2}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
