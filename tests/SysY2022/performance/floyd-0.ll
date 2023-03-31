; ModuleID = 'tests//SysY2022/performance/floyd-0.sy'
source_filename = "tests//SysY2022/performance/floyd-0.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@temp = dso_local local_unnamed_addr global [2097152 x i32] zeroinitializer, align 16
@w = dso_local global [2097152 x i32] zeroinitializer, align 16
@dst = dso_local global [2097152 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [2097152 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z8getvaluePiiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = icmp slt i32 %2, %1
  %8 = icmp sgt i32 %3, -1
  %9 = and i1 %7, %8
  %10 = icmp slt i32 %3, %1
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = mul nsw i32 %2, %1
  %14 = add nsw i32 %13, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %4, %6, %12
  %19 = phi i32 [ %17, %12 ], [ -1, %6 ], [ -1, %4 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z8mem_movePiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %130

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = icmp ult i32 %2, 8
  br i1 %7, label %93, label %8

8:                                                ; preds = %5
  %9 = getelementptr i32, i32* %1, i64 %6
  %10 = getelementptr i32, i32* %0, i64 %6
  %11 = icmp ugt i32* %10, %1
  %12 = icmp ugt i32* %9, %0
  %13 = and i1 %11, %12
  br i1 %13, label %93, label %14

14:                                               ; preds = %8
  %15 = and i64 %6, 4294967288
  %16 = add nsw i64 %15, -8
  %17 = lshr exact i64 %16, 3
  %18 = add nuw nsw i64 %17, 1
  %19 = and i64 %18, 3
  %20 = icmp ult i64 %16, 24
  br i1 %20, label %72, label %21

21:                                               ; preds = %14
  %22 = and i64 %18, 4611686018427387900
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %69, %23 ]
  %25 = phi i64 [ 0, %21 ], [ %70, %23 ]
  %26 = getelementptr inbounds i32, i32* %0, i64 %24
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !5, !alias.scope !9
  %29 = getelementptr inbounds i32, i32* %26, i64 4
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !5, !alias.scope !9
  %32 = getelementptr inbounds i32, i32* %1, i64 %24
  %33 = bitcast i32* %32 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %33, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %34 = getelementptr inbounds i32, i32* %32, i64 4
  %35 = bitcast i32* %34 to <4 x i32>*
  store <4 x i32> %31, <4 x i32>* %35, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %36 = or i64 %24, 8
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = bitcast i32* %37 to <4 x i32>*
  %39 = load <4 x i32>, <4 x i32>* %38, align 4, !tbaa !5, !alias.scope !9
  %40 = getelementptr inbounds i32, i32* %37, i64 4
  %41 = bitcast i32* %40 to <4 x i32>*
  %42 = load <4 x i32>, <4 x i32>* %41, align 4, !tbaa !5, !alias.scope !9
  %43 = getelementptr inbounds i32, i32* %1, i64 %36
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> %39, <4 x i32>* %44, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %45 = getelementptr inbounds i32, i32* %43, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> %42, <4 x i32>* %46, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %47 = or i64 %24, 16
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5, !alias.scope !9
  %51 = getelementptr inbounds i32, i32* %48, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 4, !tbaa !5, !alias.scope !9
  %54 = getelementptr inbounds i32, i32* %1, i64 %47
  %55 = bitcast i32* %54 to <4 x i32>*
  store <4 x i32> %50, <4 x i32>* %55, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %56 = getelementptr inbounds i32, i32* %54, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  store <4 x i32> %53, <4 x i32>* %57, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %58 = or i64 %24, 24
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = bitcast i32* %59 to <4 x i32>*
  %61 = load <4 x i32>, <4 x i32>* %60, align 4, !tbaa !5, !alias.scope !9
  %62 = getelementptr inbounds i32, i32* %59, i64 4
  %63 = bitcast i32* %62 to <4 x i32>*
  %64 = load <4 x i32>, <4 x i32>* %63, align 4, !tbaa !5, !alias.scope !9
  %65 = getelementptr inbounds i32, i32* %1, i64 %58
  %66 = bitcast i32* %65 to <4 x i32>*
  store <4 x i32> %61, <4 x i32>* %66, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %67 = getelementptr inbounds i32, i32* %65, i64 4
  %68 = bitcast i32* %67 to <4 x i32>*
  store <4 x i32> %64, <4 x i32>* %68, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %69 = add nuw i64 %24, 32
  %70 = add i64 %25, 4
  %71 = icmp eq i64 %70, %22
  br i1 %71, label %72, label %23, !llvm.loop !14

72:                                               ; preds = %23, %14
  %73 = phi i64 [ 0, %14 ], [ %69, %23 ]
  %74 = icmp eq i64 %19, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %88, %75 ], [ %73, %72 ]
  %77 = phi i64 [ %89, %75 ], [ 0, %72 ]
  %78 = getelementptr inbounds i32, i32* %0, i64 %76
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !5, !alias.scope !9
  %81 = getelementptr inbounds i32, i32* %78, i64 4
  %82 = bitcast i32* %81 to <4 x i32>*
  %83 = load <4 x i32>, <4 x i32>* %82, align 4, !tbaa !5, !alias.scope !9
  %84 = getelementptr inbounds i32, i32* %1, i64 %76
  %85 = bitcast i32* %84 to <4 x i32>*
  store <4 x i32> %80, <4 x i32>* %85, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %86 = getelementptr inbounds i32, i32* %84, i64 4
  %87 = bitcast i32* %86 to <4 x i32>*
  store <4 x i32> %83, <4 x i32>* %87, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %88 = add nuw i64 %76, 8
  %89 = add i64 %77, 1
  %90 = icmp eq i64 %89, %19
  br i1 %90, label %91, label %75, !llvm.loop !17

91:                                               ; preds = %75, %72
  %92 = icmp eq i64 %15, %6
  br i1 %92, label %130, label %93

93:                                               ; preds = %8, %5, %91
  %94 = phi i64 [ 0, %8 ], [ 0, %5 ], [ %15, %91 ]
  %95 = xor i64 %94, -1
  %96 = add nsw i64 %95, %6
  %97 = and i64 %6, 3
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %93, %99
  %100 = phi i64 [ %105, %99 ], [ %94, %93 ]
  %101 = phi i64 [ %106, %99 ], [ 0, %93 ]
  %102 = getelementptr inbounds i32, i32* %0, i64 %100
  %103 = load i32, i32* %102, align 4, !tbaa !5
  %104 = getelementptr inbounds i32, i32* %1, i64 %100
  store i32 %103, i32* %104, align 4, !tbaa !5
  %105 = add nuw nsw i64 %100, 1
  %106 = add i64 %101, 1
  %107 = icmp eq i64 %106, %97
  br i1 %107, label %108, label %99, !llvm.loop !19

108:                                              ; preds = %99, %93
  %109 = phi i64 [ %94, %93 ], [ %105, %99 ]
  %110 = icmp ult i64 %96, 3
  br i1 %110, label %130, label %111

111:                                              ; preds = %108, %111
  %112 = phi i64 [ %128, %111 ], [ %109, %108 ]
  %113 = getelementptr inbounds i32, i32* %0, i64 %112
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %115 = getelementptr inbounds i32, i32* %1, i64 %112
  store i32 %114, i32* %115, align 4, !tbaa !5
  %116 = add nuw nsw i64 %112, 1
  %117 = getelementptr inbounds i32, i32* %0, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !5
  %119 = getelementptr inbounds i32, i32* %1, i64 %116
  store i32 %118, i32* %119, align 4, !tbaa !5
  %120 = add nuw nsw i64 %112, 2
  %121 = getelementptr inbounds i32, i32* %0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !5
  %123 = getelementptr inbounds i32, i32* %1, i64 %120
  store i32 %122, i32* %123, align 4, !tbaa !5
  %124 = add nuw nsw i64 %112, 3
  %125 = getelementptr inbounds i32, i32* %0, i64 %124
  %126 = load i32, i32* %125, align 4, !tbaa !5
  %127 = getelementptr inbounds i32, i32* %1, i64 %124
  store i32 %126, i32* %127, align 4, !tbaa !5
  %128 = add nuw nsw i64 %112, 4
  %129 = icmp eq i64 %128, %6
  br i1 %129, label %130, label %111, !llvm.loop !20

130:                                              ; preds = %108, %111, %91, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5floydPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %129

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = zext i32 %2 to i64
  %8 = add nsw i64 %7, -1
  %9 = and i64 %7, 3
  %10 = icmp ult i64 %8, 3
  %11 = and i64 %7, 4294967292
  %12 = icmp eq i64 %9, 0
  %13 = and i64 %7, 1
  %14 = icmp eq i64 %8, 0
  %15 = and i64 %7, 4294967294
  %16 = icmp eq i64 %13, 0
  br label %17

17:                                               ; preds = %5, %62
  %18 = phi i64 [ 0, %5 ], [ %63, %62 ]
  %19 = phi i1 [ true, %5 ], [ %64, %62 ]
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br i1 %10, label %51, label %22

21:                                               ; preds = %17
  br i1 %14, label %43, label %66

22:                                               ; preds = %20, %22
  %23 = phi i64 [ %40, %22 ], [ 0, %20 ]
  %24 = phi i64 [ %41, %22 ], [ 0, %20 ]
  %25 = mul nsw i64 %23, %6
  %26 = add nuw nsw i64 %25, %18
  %27 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %26
  store i32 -1, i32* %27, align 4, !tbaa !5
  %28 = or i64 %23, 1
  %29 = mul nsw i64 %28, %6
  %30 = add nuw nsw i64 %29, %18
  %31 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %30
  store i32 -1, i32* %31, align 4, !tbaa !5
  %32 = or i64 %23, 2
  %33 = mul nsw i64 %32, %6
  %34 = add nuw nsw i64 %33, %18
  %35 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %34
  store i32 -1, i32* %35, align 4, !tbaa !5
  %36 = or i64 %23, 3
  %37 = mul nsw i64 %36, %6
  %38 = add nuw nsw i64 %37, %18
  %39 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %38
  store i32 -1, i32* %39, align 4, !tbaa !5
  %40 = add nuw nsw i64 %23, 4
  %41 = add i64 %24, 4
  %42 = icmp eq i64 %41, %11
  br i1 %42, label %51, label %22, !llvm.loop !21

43:                                               ; preds = %66, %21
  %44 = phi i64 [ 0, %21 ], [ %80, %66 ]
  br i1 %16, label %62, label %45

45:                                               ; preds = %43
  %46 = mul nsw i64 %44, %6
  %47 = add nuw nsw i64 %46, %18
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %47
  store i32 %49, i32* %50, align 4, !tbaa !5
  br label %62

51:                                               ; preds = %22, %20
  %52 = phi i64 [ 0, %20 ], [ %40, %22 ]
  br i1 %12, label %62, label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %59, %53 ], [ %52, %51 ]
  %55 = phi i64 [ %60, %53 ], [ 0, %51 ]
  %56 = mul nsw i64 %54, %6
  %57 = add nuw nsw i64 %56, %18
  %58 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %57
  store i32 -1, i32* %58, align 4, !tbaa !5
  %59 = add nuw nsw i64 %54, 1
  %60 = add i64 %55, 1
  %61 = icmp eq i64 %60, %9
  br i1 %61, label %62, label %53, !llvm.loop !22

62:                                               ; preds = %51, %53, %45, %43
  %63 = add nuw nsw i64 %18, 1
  %64 = icmp ult i64 %63, %6
  %65 = icmp eq i64 %63, %7
  br i1 %65, label %83, label %17, !llvm.loop !23

66:                                               ; preds = %21, %66
  %67 = phi i64 [ %80, %66 ], [ 0, %21 ]
  %68 = phi i64 [ %81, %66 ], [ 0, %21 ]
  %69 = mul nsw i64 %67, %6
  %70 = add nuw nsw i64 %69, %18
  %71 = getelementptr inbounds i32, i32* %0, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !5
  %73 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %70
  store i32 %72, i32* %73, align 4, !tbaa !5
  %74 = or i64 %67, 1
  %75 = mul nsw i64 %74, %6
  %76 = add nuw nsw i64 %75, %18
  %77 = getelementptr inbounds i32, i32* %0, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %76
  store i32 %78, i32* %79, align 4, !tbaa !5
  %80 = add nuw nsw i64 %67, 2
  %81 = add i64 %68, 2
  %82 = icmp eq i64 %81, %15
  br i1 %82, label %43, label %66, !llvm.loop !21

83:                                               ; preds = %62
  br i1 %4, label %84, label %129

84:                                               ; preds = %83
  %85 = zext i32 %2 to i64
  %86 = zext i32 %2 to i64
  br label %87

87:                                               ; preds = %84, %125
  %88 = phi i64 [ 0, %84 ], [ %126, %125 ]
  %89 = phi i1 [ true, %84 ], [ %127, %125 ]
  %90 = mul nsw i64 %88, %85
  br i1 %89, label %91, label %125

91:                                               ; preds = %87, %97
  %92 = phi i64 [ %98, %97 ], [ 0, %87 ]
  %93 = phi i1 [ %99, %97 ], [ true, %87 ]
  %94 = mul nsw i64 %92, %85
  %95 = add nuw nsw i64 %94, %88
  %96 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %95
  br i1 %93, label %101, label %97

97:                                               ; preds = %122, %91
  %98 = add nuw nsw i64 %92, 1
  %99 = icmp ult i64 %98, %85
  %100 = icmp eq i64 %98, %86
  br i1 %100, label %125, label %91, !llvm.loop !24

101:                                              ; preds = %91, %122
  %102 = phi i64 [ %123, %122 ], [ 0, %91 ]
  %103 = load i32, i32* %96, align 4, !tbaa !5
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %101
  %106 = add nuw nsw i64 %102, %90
  %107 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = add nuw nsw i64 %102, %94
  %112 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4, !tbaa !5
  %114 = icmp slt i32 %113, 0
  %115 = add nuw nsw i32 %108, %103
  br i1 %114, label %118, label %116

116:                                              ; preds = %110
  %117 = icmp ugt i32 %113, %115
  br i1 %117, label %120, label %122

118:                                              ; preds = %110
  %119 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %111
  br label %120

120:                                              ; preds = %116, %118
  %121 = phi i32* [ %119, %118 ], [ %112, %116 ]
  store i32 %115, i32* %121, align 4, !tbaa !5
  br label %122

122:                                              ; preds = %120, %116, %105, %101
  %123 = add nuw nsw i64 %102, 1
  %124 = icmp eq i64 %123, %86
  br i1 %124, label %97, label %101, !llvm.loop !25

125:                                              ; preds = %97, %87
  %126 = add nuw nsw i64 %88, 1
  %127 = icmp ult i64 %126, %85
  %128 = icmp eq i64 %126, %86
  br i1 %128, label %129, label %87, !llvm.loop !26

129:                                              ; preds = %125, %3, %83
  %130 = mul nsw i32 %2, %2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %257, label %132

132:                                              ; preds = %129
  %133 = zext i32 %130 to i64
  %134 = icmp ult i32 %130, 8
  br i1 %134, label %220, label %135

135:                                              ; preds = %132
  %136 = getelementptr i32, i32* %1, i64 %133
  %137 = getelementptr [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %133
  %138 = icmp ugt i32* %137, %1
  %139 = icmp ugt i32* %136, getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 0)
  %140 = and i1 %138, %139
  br i1 %140, label %220, label %141

141:                                              ; preds = %135
  %142 = and i64 %133, 2147483640
  %143 = add nsw i64 %142, -8
  %144 = lshr exact i64 %143, 3
  %145 = add nuw nsw i64 %144, 1
  %146 = and i64 %145, 3
  %147 = icmp ult i64 %143, 24
  br i1 %147, label %199, label %148

148:                                              ; preds = %141
  %149 = and i64 %145, 4611686018427387900
  br label %150

150:                                              ; preds = %150, %148
  %151 = phi i64 [ 0, %148 ], [ %196, %150 ]
  %152 = phi i64 [ 0, %148 ], [ %197, %150 ]
  %153 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %151
  %154 = bitcast i32* %153 to <4 x i32>*
  %155 = load <4 x i32>, <4 x i32>* %154, align 16, !tbaa !5, !alias.scope !27
  %156 = getelementptr inbounds i32, i32* %153, i64 4
  %157 = bitcast i32* %156 to <4 x i32>*
  %158 = load <4 x i32>, <4 x i32>* %157, align 16, !tbaa !5, !alias.scope !27
  %159 = getelementptr inbounds i32, i32* %1, i64 %151
  %160 = bitcast i32* %159 to <4 x i32>*
  store <4 x i32> %155, <4 x i32>* %160, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %161 = getelementptr inbounds i32, i32* %159, i64 4
  %162 = bitcast i32* %161 to <4 x i32>*
  store <4 x i32> %158, <4 x i32>* %162, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %163 = or i64 %151, 8
  %164 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %163
  %165 = bitcast i32* %164 to <4 x i32>*
  %166 = load <4 x i32>, <4 x i32>* %165, align 16, !tbaa !5, !alias.scope !27
  %167 = getelementptr inbounds i32, i32* %164, i64 4
  %168 = bitcast i32* %167 to <4 x i32>*
  %169 = load <4 x i32>, <4 x i32>* %168, align 16, !tbaa !5, !alias.scope !27
  %170 = getelementptr inbounds i32, i32* %1, i64 %163
  %171 = bitcast i32* %170 to <4 x i32>*
  store <4 x i32> %166, <4 x i32>* %171, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %172 = getelementptr inbounds i32, i32* %170, i64 4
  %173 = bitcast i32* %172 to <4 x i32>*
  store <4 x i32> %169, <4 x i32>* %173, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %174 = or i64 %151, 16
  %175 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %174
  %176 = bitcast i32* %175 to <4 x i32>*
  %177 = load <4 x i32>, <4 x i32>* %176, align 16, !tbaa !5, !alias.scope !27
  %178 = getelementptr inbounds i32, i32* %175, i64 4
  %179 = bitcast i32* %178 to <4 x i32>*
  %180 = load <4 x i32>, <4 x i32>* %179, align 16, !tbaa !5, !alias.scope !27
  %181 = getelementptr inbounds i32, i32* %1, i64 %174
  %182 = bitcast i32* %181 to <4 x i32>*
  store <4 x i32> %177, <4 x i32>* %182, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %183 = getelementptr inbounds i32, i32* %181, i64 4
  %184 = bitcast i32* %183 to <4 x i32>*
  store <4 x i32> %180, <4 x i32>* %184, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %185 = or i64 %151, 24
  %186 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %185
  %187 = bitcast i32* %186 to <4 x i32>*
  %188 = load <4 x i32>, <4 x i32>* %187, align 16, !tbaa !5, !alias.scope !27
  %189 = getelementptr inbounds i32, i32* %186, i64 4
  %190 = bitcast i32* %189 to <4 x i32>*
  %191 = load <4 x i32>, <4 x i32>* %190, align 16, !tbaa !5, !alias.scope !27
  %192 = getelementptr inbounds i32, i32* %1, i64 %185
  %193 = bitcast i32* %192 to <4 x i32>*
  store <4 x i32> %188, <4 x i32>* %193, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %194 = getelementptr inbounds i32, i32* %192, i64 4
  %195 = bitcast i32* %194 to <4 x i32>*
  store <4 x i32> %191, <4 x i32>* %195, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %196 = add nuw i64 %151, 32
  %197 = add i64 %152, 4
  %198 = icmp eq i64 %197, %149
  br i1 %198, label %199, label %150, !llvm.loop !32

199:                                              ; preds = %150, %141
  %200 = phi i64 [ 0, %141 ], [ %196, %150 ]
  %201 = icmp eq i64 %146, 0
  br i1 %201, label %218, label %202

202:                                              ; preds = %199, %202
  %203 = phi i64 [ %215, %202 ], [ %200, %199 ]
  %204 = phi i64 [ %216, %202 ], [ 0, %199 ]
  %205 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %203
  %206 = bitcast i32* %205 to <4 x i32>*
  %207 = load <4 x i32>, <4 x i32>* %206, align 16, !tbaa !5, !alias.scope !27
  %208 = getelementptr inbounds i32, i32* %205, i64 4
  %209 = bitcast i32* %208 to <4 x i32>*
  %210 = load <4 x i32>, <4 x i32>* %209, align 16, !tbaa !5, !alias.scope !27
  %211 = getelementptr inbounds i32, i32* %1, i64 %203
  %212 = bitcast i32* %211 to <4 x i32>*
  store <4 x i32> %207, <4 x i32>* %212, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %213 = getelementptr inbounds i32, i32* %211, i64 4
  %214 = bitcast i32* %213 to <4 x i32>*
  store <4 x i32> %210, <4 x i32>* %214, align 4, !tbaa !5, !alias.scope !30, !noalias !27
  %215 = add nuw i64 %203, 8
  %216 = add i64 %204, 1
  %217 = icmp eq i64 %216, %146
  br i1 %217, label %218, label %202, !llvm.loop !33

218:                                              ; preds = %202, %199
  %219 = icmp eq i64 %142, %133
  br i1 %219, label %257, label %220

220:                                              ; preds = %135, %132, %218
  %221 = phi i64 [ 0, %135 ], [ 0, %132 ], [ %142, %218 ]
  %222 = xor i64 %221, -1
  %223 = add nsw i64 %222, %133
  %224 = and i64 %133, 3
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %235, label %226

226:                                              ; preds = %220, %226
  %227 = phi i64 [ %232, %226 ], [ %221, %220 ]
  %228 = phi i64 [ %233, %226 ], [ 0, %220 ]
  %229 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %227
  %230 = load i32, i32* %229, align 4, !tbaa !5
  %231 = getelementptr inbounds i32, i32* %1, i64 %227
  store i32 %230, i32* %231, align 4, !tbaa !5
  %232 = add nuw nsw i64 %227, 1
  %233 = add i64 %228, 1
  %234 = icmp eq i64 %233, %224
  br i1 %234, label %235, label %226, !llvm.loop !34

235:                                              ; preds = %226, %220
  %236 = phi i64 [ %221, %220 ], [ %232, %226 ]
  %237 = icmp ult i64 %223, 3
  br i1 %237, label %257, label %238

238:                                              ; preds = %235, %238
  %239 = phi i64 [ %255, %238 ], [ %236, %235 ]
  %240 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4, !tbaa !5
  %242 = getelementptr inbounds i32, i32* %1, i64 %239
  store i32 %241, i32* %242, align 4, !tbaa !5
  %243 = add nuw nsw i64 %239, 1
  %244 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4, !tbaa !5
  %246 = getelementptr inbounds i32, i32* %1, i64 %243
  store i32 %245, i32* %246, align 4, !tbaa !5
  %247 = add nuw nsw i64 %239, 2
  %248 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4, !tbaa !5
  %250 = getelementptr inbounds i32, i32* %1, i64 %247
  store i32 %249, i32* %250, align 4, !tbaa !5
  %251 = add nuw nsw i64 %239, 3
  %252 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4, !tbaa !5
  %254 = getelementptr inbounds i32, i32* %1, i64 %251
  store i32 %253, i32* %254, align 4, !tbaa !5
  %255 = add nuw nsw i64 %239, 4
  %256 = icmp eq i64 %255, %133
  br i1 %256, label %257, label %238, !llvm.loop !35

257:                                              ; preds = %235, %238, %218, %129
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @w, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 62)
  tail call void @_Z5floydPiS_i(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @w, i64 0, i64 0), i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @dst, i64 0, i64 0), i32 noundef %1)
  tail call void @_Z14_sysy_stoptimei(i32 noundef 64)
  %3 = mul nsw i32 %1, %1
  tail call void @_Z8putarrayiPi(i32 noundef %3, i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @dst, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #3

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #3

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #3

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !15, !16}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !15, !16}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !15, !16}
