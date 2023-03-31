; ModuleID = 'tests//SysY2022/functional/77_substr.sy'
source_filename = "tests//SysY2022/functional/77_substr.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z3MAXii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  %4 = select i1 %3, i32 %1, i32 %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z19max_sum_nonadjacentPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [16 x i32], align 16
  %4 = bitcast [16 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = load i32, i32* %0, align 4, !tbaa !4
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  store i32 %5, i32* %6, align 16, !tbaa !4
  %7 = getelementptr inbounds i32, i32* %0, i64 1
  %8 = load i32, i32* %7, align 4, !tbaa !4
  %9 = icmp slt i32 %5, %8
  %10 = select i1 %9, i32 %8, i32 %5
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 1
  store i32 %10, i32* %11, align 4, !tbaa !4
  %12 = icmp sgt i32 %1, 2
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = zext i32 %1 to i64
  %15 = and i64 %14, 1
  %16 = icmp eq i32 %1, 3
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = add nsw i64 %14, -2
  %19 = and i64 %18, -2
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %10, %17 ], [ %36, %20 ]
  %22 = phi i32 [ %5, %17 ], [ %29, %20 ]
  %23 = phi i64 [ 2, %17 ], [ %38, %20 ]
  %24 = phi i64 [ 0, %17 ], [ %39, %20 ]
  %25 = getelementptr inbounds i32, i32* %0, i64 %23
  %26 = load i32, i32* %25, align 4, !tbaa !4
  %27 = add nsw i32 %26, %22
  %28 = icmp slt i32 %27, %21
  %29 = select i1 %28, i32 %21, i32 %27
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %23
  store i32 %29, i32* %30, align 8, !tbaa !4
  %31 = or i64 %23, 1
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !4
  %34 = add nsw i32 %33, %21
  %35 = icmp slt i32 %34, %29
  %36 = select i1 %35, i32 %29, i32 %34
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %31
  store i32 %36, i32* %37, align 4, !tbaa !4
  %38 = add nuw nsw i64 %23, 2
  %39 = add i64 %24, 2
  %40 = icmp eq i64 %39, %19
  br i1 %40, label %41, label %20, !llvm.loop !8

41:                                               ; preds = %20, %13
  %42 = phi i32 [ %10, %13 ], [ %36, %20 ]
  %43 = phi i32 [ %5, %13 ], [ %29, %20 ]
  %44 = phi i64 [ 2, %13 ], [ %38, %20 ]
  %45 = icmp eq i64 %15, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds i32, i32* %0, i64 %44
  %48 = load i32, i32* %47, align 4, !tbaa !4
  %49 = add nsw i32 %48, %43
  %50 = icmp slt i32 %49, %42
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %44
  store i32 %51, i32* %52, align 4, !tbaa !4
  br label %53

53:                                               ; preds = %46, %41, %2
  %54 = add nsw i32 %1, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6
  ret i32 %57
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z21longest_common_subseqPiiS_i(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [16 x [16 x i32]], align 16
  %6 = bitcast [16 x [16 x i32]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %6) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  %7 = icmp slt i32 %1, 1
  %8 = icmp slt i32 %3, 1
  %9 = or i1 %7, %8
  br i1 %9, label %45, label %10

10:                                               ; preds = %4
  %11 = add nuw i32 %3, 1
  %12 = add nuw i32 %1, 1
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  br label %15

15:                                               ; preds = %10, %42
  %16 = phi i64 [ 1, %10 ], [ %43, %42 ]
  %17 = add nsw i64 %16, -1
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !4
  br label %20

20:                                               ; preds = %15, %37
  %21 = phi i64 [ 1, %15 ], [ %40, %37 ]
  %22 = add nsw i64 %21, -1
  %23 = getelementptr inbounds i32, i32* %2, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !4
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %5, i64 0, i64 %17, i64 %22
  %28 = load i32, i32* %27, align 4, !tbaa !4
  %29 = add nsw i32 %28, 1
  br label %37

30:                                               ; preds = %20
  %31 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %5, i64 0, i64 %17, i64 %21
  %32 = load i32, i32* %31, align 4, !tbaa !4
  %33 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %5, i64 0, i64 %16, i64 %22
  %34 = load i32, i32* %33, align 4, !tbaa !4
  %35 = icmp slt i32 %32, %34
  %36 = select i1 %35, i32 %34, i32 %32
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi i32 [ %29, %26 ], [ %36, %30 ]
  %39 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %5, i64 0, i64 %16, i64 %21
  store i32 %38, i32* %39, align 4
  %40 = add nuw nsw i64 %21, 1
  %41 = icmp eq i64 %40, %14
  br i1 %41, label %42, label %20, !llvm.loop !10

42:                                               ; preds = %37
  %43 = add nuw nsw i64 %16, 1
  %44 = icmp eq i64 %43, %13
  br i1 %44, label %45, label %15, !llvm.loop !11

45:                                               ; preds = %42, %4
  %46 = sext i32 %1 to i64
  %47 = sext i32 %3 to i64
  %48 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %5, i64 0, i64 %46, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %6) #6
  ret i32 %49
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = alloca [16 x [16 x i32]], align 16
  tail call void @_Z6putinti(i32 noundef 43)
  tail call void @_Z5putchi(i32 noundef 10)
  %2 = bitcast [16 x [16 x i32]]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %2, i8 0, i64 1024, i1 false) #6
  br label %3

3:                                                ; preds = %153, %0
  %4 = phi i64 [ 1, %0 ], [ %161, %153 ]
  %5 = add nsw i64 %4, -1
  switch i64 %4, label %11 [
    i64 13, label %6
    i64 10, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 0
  %8 = load i32, i32* %7, align 16, !tbaa !4
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 1
  store i32 %9, i32* %10, align 4
  br label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !4
  %14 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 0
  %15 = load i32, i32* %14, align 16, !tbaa !4
  %16 = icmp slt i32 %13, %15
  %17 = select i1 %16, i32 %15, i32 %13
  %18 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 1
  store i32 %17, i32* %18, align 4
  %19 = icmp eq i64 %5, 8
  br i1 %19, label %26, label %20

20:                                               ; preds = %6, %11
  %21 = phi i32 [ %9, %6 ], [ %17, %11 ]
  %22 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 2
  %23 = load i32, i32* %22, align 8, !tbaa !4
  %24 = icmp slt i32 %23, %21
  %25 = select i1 %24, i32 %21, i32 %23
  br label %30

26:                                               ; preds = %11
  %27 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 1
  %28 = load i32, i32* %27, align 4, !tbaa !4
  %29 = add nsw i32 %28, 1
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i32 [ %29, %26 ], [ %25, %20 ]
  %32 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 2
  store i32 %31, i32* %32, align 8
  %33 = lshr i64 8226, %5
  %34 = and i64 %33, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 3
  %38 = load i32, i32* %37, align 4, !tbaa !4
  %39 = icmp slt i32 %38, %31
  %40 = select i1 %39, i32 %31, i32 %38
  br label %45

41:                                               ; preds = %30
  %42 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 2
  %43 = load i32, i32* %42, align 8, !tbaa !4
  %44 = add nsw i32 %43, 1
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i32 [ %44, %41 ], [ %40, %36 ]
  %47 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 3
  store i32 %46, i32* %47, align 4
  %48 = and i64 %5, -5
  %49 = icmp eq i64 %48, 3
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 4
  %52 = load i32, i32* %51, align 16, !tbaa !4
  %53 = icmp slt i32 %52, %46
  %54 = select i1 %53, i32 %46, i32 %52
  br label %59

55:                                               ; preds = %45
  %56 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 3
  %57 = load i32, i32* %56, align 4, !tbaa !4
  %58 = add nsw i32 %57, 1
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i32 [ %58, %55 ], [ %54, %50 ]
  %61 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 4
  store i32 %60, i32* %61, align 16
  %62 = and i64 %5, -9
  %63 = icmp eq i64 %62, 2
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 5
  %66 = load i32, i32* %65, align 4, !tbaa !4
  %67 = icmp slt i32 %66, %60
  %68 = select i1 %67, i32 %60, i32 %66
  br label %73

69:                                               ; preds = %59
  %70 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 4
  %71 = load i32, i32* %70, align 16, !tbaa !4
  %72 = add nsw i32 %71, 1
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i32 [ %72, %69 ], [ %68, %64 ]
  %75 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 5
  store i32 %74, i32* %75, align 4
  %76 = icmp eq i64 %5, 4
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 6
  %79 = load i32, i32* %78, align 8, !tbaa !4
  %80 = icmp slt i32 %79, %74
  %81 = select i1 %80, i32 %74, i32 %79
  br label %86

82:                                               ; preds = %73
  %83 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 5
  %84 = load i32, i32* %83, align 4, !tbaa !4
  %85 = add nsw i32 %84, 1
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ %85, %82 ], [ %81, %77 ]
  %88 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 6
  store i32 %87, i32* %88, align 8
  br i1 %63, label %94, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 7
  %91 = load i32, i32* %90, align 4, !tbaa !4
  %92 = icmp slt i32 %91, %87
  %93 = select i1 %92, i32 %87, i32 %91
  br label %98

94:                                               ; preds = %86
  %95 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 6
  %96 = load i32, i32* %95, align 8, !tbaa !4
  %97 = add nsw i32 %96, 1
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i32 [ %97, %94 ], [ %93, %89 ]
  %100 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 7
  store i32 %99, i32* %100, align 4
  switch i64 %4, label %101 [
    i64 13, label %106
    i64 10, label %106
  ]

101:                                              ; preds = %98
  %102 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 8
  %103 = load i32, i32* %102, align 16, !tbaa !4
  %104 = icmp slt i32 %103, %99
  %105 = select i1 %104, i32 %99, i32 %103
  br label %110

106:                                              ; preds = %98, %98
  %107 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 7
  %108 = load i32, i32* %107, align 4, !tbaa !4
  %109 = add nsw i32 %108, 1
  br label %110

110:                                              ; preds = %106, %101
  %111 = phi i32 [ %109, %106 ], [ %105, %101 ]
  %112 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 8
  store i32 %111, i32* %112, align 16
  %113 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 9
  %114 = load i32, i32* %113, align 4, !tbaa !4
  %115 = icmp slt i32 %114, %111
  %116 = select i1 %115, i32 %111, i32 %114
  %117 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 9
  store i32 %116, i32* %117, align 4
  switch i64 %4, label %118 [
    i64 12, label %123
    i64 1, label %123
  ]

118:                                              ; preds = %110
  %119 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 10
  %120 = load i32, i32* %119, align 8, !tbaa !4
  %121 = icmp slt i32 %120, %116
  %122 = select i1 %121, i32 %116, i32 %120
  br label %127

123:                                              ; preds = %110, %110
  %124 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 9
  %125 = load i32, i32* %124, align 4, !tbaa !4
  %126 = add nsw i32 %125, 1
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i32 [ %126, %123 ], [ %122, %118 ]
  %129 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 10
  store i32 %128, i32* %129, align 8
  %130 = and i64 %5, -9
  %131 = icmp eq i64 %130, 6
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 11
  %134 = load i32, i32* %133, align 4, !tbaa !4
  %135 = icmp slt i32 %134, %128
  %136 = select i1 %135, i32 %128, i32 %134
  br label %141

137:                                              ; preds = %127
  %138 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 10
  %139 = load i32, i32* %138, align 8, !tbaa !4
  %140 = add nsw i32 %139, 1
  br label %141

141:                                              ; preds = %137, %132
  %142 = phi i32 [ %140, %137 ], [ %136, %132 ]
  %143 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 11
  store i32 %142, i32* %143, align 4
  br i1 %49, label %149, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 12
  %146 = load i32, i32* %145, align 16, !tbaa !4
  %147 = icmp slt i32 %146, %142
  %148 = select i1 %147, i32 %142, i32 %146
  br label %153

149:                                              ; preds = %141
  %150 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 11
  %151 = load i32, i32* %150, align 4, !tbaa !4
  %152 = add nsw i32 %151, 1
  br label %153

153:                                              ; preds = %149, %144
  %154 = phi i32 [ %152, %149 ], [ %148, %144 ]
  %155 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 12
  store i32 %154, i32* %155, align 16
  %156 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %5, i64 13
  %157 = load i32, i32* %156, align 4, !tbaa !4
  %158 = icmp slt i32 %157, %154
  %159 = select i1 %158, i32 %154, i32 %157
  %160 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 %4, i64 13
  store i32 %159, i32* %160, align 4
  %161 = add nuw nsw i64 %4, 1
  %162 = icmp eq i64 %161, 16
  br i1 %162, label %163, label %3, !llvm.loop !11

163:                                              ; preds = %153
  %164 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %1, i64 0, i64 15, i64 13
  %165 = load i32, i32* %164, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #6
  tail call void @_Z6putinti(i32 noundef %165)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #5

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
