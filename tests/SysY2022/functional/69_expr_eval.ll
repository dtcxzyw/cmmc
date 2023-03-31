; ModuleID = 'tests//SysY2022/functional/69_expr_eval.sy'
source_filename = "tests//SysY2022/functional/69_expr_eval.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@last_char = dso_local local_unnamed_addr global i32 32, align 4
@num = dso_local local_unnamed_addr global i32 0, align 4
@other = dso_local local_unnamed_addr global i32 0, align 4
@cur_token = dso_local local_unnamed_addr global i32 0, align 4
@switch.table._Z4evalv.1 = private unnamed_addr constant [11 x i32] [i32 20, i32 0, i32 0, i32 0, i32 0, i32 20, i32 10, i32 0, i32 10, i32 0, i32 20], align 4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z9next_charv() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z5getchv()
  store i32 %1, i32* @last_char, align 4, !tbaa !4
  ret i32 %1
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z8is_spacei(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i32 %0, 32
  %3 = icmp eq i32 %0, 10
  %4 = or i1 %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6is_numi(i32 noundef %0) local_unnamed_addr #2 {
  %2 = add i32 %0, -48
  %3 = icmp ult i32 %2, 10
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z10next_tokenv() local_unnamed_addr #0 {
  %1 = load i32, i32* @last_char, align 4, !tbaa !4
  br label %2

2:                                                ; preds = %4, %0
  %3 = phi i32 [ %5, %4 ], [ %1, %0 ]
  switch i32 %3, label %6 [
    i32 32, label %4
    i32 10, label %4
  ]

4:                                                ; preds = %2, %2
  %5 = tail call noundef i32 @_Z5getchv()
  store i32 %5, i32* @last_char, align 4, !tbaa !4
  br label %2, !llvm.loop !8

6:                                                ; preds = %2
  %7 = add i32 %3, -58
  %8 = icmp ult i32 %7, -10
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = add nsw i32 %3, -48
  store i32 %10, i32* @num, align 4, !tbaa !4
  %11 = tail call noundef i32 @_Z5getchv()
  store i32 %11, i32* @last_char, align 4, !tbaa !4
  %12 = add i32 %11, -58
  %13 = icmp ult i32 %12, -10
  br i1 %13, label %25, label %14

14:                                               ; preds = %9, %14
  %15 = phi i32 [ %20, %14 ], [ %11, %9 ]
  %16 = load i32, i32* @num, align 4, !tbaa !4
  %17 = mul nsw i32 %16, 10
  %18 = add nsw i32 %17, %15
  %19 = add nsw i32 %18, -48
  store i32 %19, i32* @num, align 4, !tbaa !4
  %20 = tail call noundef i32 @_Z5getchv()
  store i32 %20, i32* @last_char, align 4, !tbaa !4
  %21 = add i32 %20, -58
  %22 = icmp ult i32 %21, -10
  br i1 %22, label %25, label %14, !llvm.loop !10

23:                                               ; preds = %6
  store i32 %3, i32* @other, align 4, !tbaa !4
  %24 = tail call noundef i32 @_Z5getchv()
  store i32 %24, i32* @last_char, align 4, !tbaa !4
  br label %25

25:                                               ; preds = %14, %9, %23
  %26 = phi i32 [ 1, %23 ], [ 0, %9 ], [ 0, %14 ]
  store i32 %26, i32* @cur_token, align 4, !tbaa !4
  ret i32 %26
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z5panicv() local_unnamed_addr #0 {
  tail call void @_Z5putchi(i32 noundef 112)
  tail call void @_Z5putchi(i32 noundef 97)
  tail call void @_Z5putchi(i32 noundef 110)
  tail call void @_Z5putchi(i32 noundef 105)
  tail call void @_Z5putchi(i32 noundef 99)
  tail call void @_Z5putchi(i32 noundef 33)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 -1
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z11get_op_preci(i32 noundef %0) local_unnamed_addr #2 {
  %2 = add i32 %0, -37
  %3 = icmp ult i32 %2, 11
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [11 x i32], [11 x i32]* @switch.table._Z4evalv.1, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z10stack_pushPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load i32, i32* %0, align 4, !tbaa !4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* %0, align 4, !tbaa !4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  store i32 %1, i32* %6, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z9stack_popPi(i32* nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i32, i32* %0, align 4, !tbaa !4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !4
  %6 = add nsw i32 %2, -1
  store i32 %6, i32* %0, align 4, !tbaa !4
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z10stack_peekPi(i32* nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, i32* %0, align 4, !tbaa !4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z10stack_sizePi(i32* nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, i32* %0, align 4, !tbaa !4
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z7eval_opiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  switch i32 %0, label %14 [
    i32 43, label %4
    i32 45, label %6
    i32 42, label %8
    i32 47, label %10
    i32 37, label %12
  ]

4:                                                ; preds = %3
  %5 = add nsw i32 %2, %1
  br label %14

6:                                                ; preds = %3
  %7 = sub nsw i32 %1, %2
  br label %14

8:                                                ; preds = %3
  %9 = mul nsw i32 %2, %1
  br label %14

10:                                               ; preds = %3
  %11 = sdiv i32 %1, %2
  br label %14

12:                                               ; preds = %3
  %13 = srem i32 %1, %2
  br label %14

14:                                               ; preds = %3, %12, %10, %8, %6, %4
  %15 = phi i32 [ %5, %4 ], [ %7, %6 ], [ %9, %8 ], [ %11, %10 ], [ %13, %12 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z4evalv() local_unnamed_addr #0 {
  %1 = alloca [256 x i32], align 16
  %2 = alloca [256 x i32], align 16
  %3 = bitcast [256 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  %4 = bitcast [256 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %4) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %5 = load i32, i32* @cur_token, align 4, !tbaa !4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  tail call void @_Z5putchi(i32 noundef 112)
  tail call void @_Z5putchi(i32 noundef 97)
  tail call void @_Z5putchi(i32 noundef 110)
  tail call void @_Z5putchi(i32 noundef 105)
  tail call void @_Z5putchi(i32 noundef 99)
  tail call void @_Z5putchi(i32 noundef 33)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %220

8:                                                ; preds = %0
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %10 = load i32, i32* @num, align 4, !tbaa !4
  store i32 1, i32* %9, align 16, !tbaa !4
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 1
  store i32 %10, i32* %11, align 4, !tbaa !4
  %12 = load i32, i32* @last_char, align 4, !tbaa !4
  br label %13

13:                                               ; preds = %15, %8
  %14 = phi i32 [ %16, %15 ], [ %12, %8 ]
  switch i32 %14, label %17 [
    i32 32, label %15
    i32 10, label %15
  ]

15:                                               ; preds = %13, %13
  %16 = tail call noundef i32 @_Z5getchv()
  store i32 %16, i32* @last_char, align 4, !tbaa !4
  br label %13, !llvm.loop !8

17:                                               ; preds = %13
  %18 = add i32 %14, -58
  %19 = icmp ult i32 %18, -10
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = add nsw i32 %14, -48
  store i32 %21, i32* @num, align 4, !tbaa !4
  %22 = tail call noundef i32 @_Z5getchv()
  store i32 %22, i32* @last_char, align 4, !tbaa !4
  %23 = add i32 %22, -58
  %24 = icmp ult i32 %23, -10
  br i1 %24, label %154, label %25

25:                                               ; preds = %20, %25
  %26 = phi i32 [ %31, %25 ], [ %22, %20 ]
  %27 = load i32, i32* @num, align 4, !tbaa !4
  %28 = mul nsw i32 %27, 10
  %29 = add nsw i32 %26, -48
  %30 = add i32 %29, %28
  store i32 %30, i32* @num, align 4, !tbaa !4
  %31 = tail call noundef i32 @_Z5getchv()
  store i32 %31, i32* @last_char, align 4, !tbaa !4
  %32 = add i32 %31, -58
  %33 = icmp ult i32 %32, -10
  br i1 %33, label %154, label %25, !llvm.loop !10

34:                                               ; preds = %17
  store i32 %14, i32* @other, align 4, !tbaa !4
  %35 = tail call noundef i32 @_Z5getchv()
  store i32 %35, i32* @last_char, align 4, !tbaa !4
  store i32 1, i32* @cur_token, align 4, !tbaa !4
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  br label %39

37:                                               ; preds = %137
  store i32 %134, i32* @other, align 4, !tbaa !4
  %38 = tail call noundef i32 @_Z5getchv()
  store i32 %38, i32* @last_char, align 4, !tbaa !4
  store i32 1, i32* @cur_token, align 4, !tbaa !4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %37 ]
  %41 = load i32, i32* @other, align 4, !tbaa !4
  switch i32 %41, label %156 [
    i32 45, label %42
    i32 43, label %42
    i32 47, label %42
    i32 42, label %42
    i32 37, label %42
  ]

42:                                               ; preds = %39, %39, %39, %39, %39
  br label %43

43:                                               ; preds = %42, %45
  %44 = phi i32 [ %46, %45 ], [ %40, %42 ]
  switch i32 %44, label %47 [
    i32 32, label %45
    i32 10, label %45
  ]

45:                                               ; preds = %43, %43
  %46 = tail call noundef i32 @_Z5getchv()
  store i32 %46, i32* @last_char, align 4, !tbaa !4
  br label %43, !llvm.loop !8

47:                                               ; preds = %43
  %48 = add i32 %44, -58
  %49 = icmp ult i32 %48, -10
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = add nsw i32 %44, -48
  store i32 %51, i32* @num, align 4, !tbaa !4
  %52 = tail call noundef i32 @_Z5getchv()
  store i32 %52, i32* @last_char, align 4, !tbaa !4
  %53 = add i32 %52, -58
  %54 = icmp ult i32 %53, -10
  br i1 %54, label %66, label %55

55:                                               ; preds = %50, %55
  %56 = phi i32 [ %61, %55 ], [ %52, %50 ]
  %57 = load i32, i32* @num, align 4, !tbaa !4
  %58 = mul nsw i32 %57, 10
  %59 = add nsw i32 %56, -48
  %60 = add i32 %59, %58
  store i32 %60, i32* @num, align 4, !tbaa !4
  %61 = tail call noundef i32 @_Z5getchv()
  store i32 %61, i32* @last_char, align 4, !tbaa !4
  %62 = add i32 %61, -58
  %63 = icmp ult i32 %62, -10
  br i1 %63, label %66, label %55, !llvm.loop !10

64:                                               ; preds = %47
  store i32 %44, i32* @other, align 4, !tbaa !4
  %65 = tail call noundef i32 @_Z5getchv()
  store i32 %65, i32* @last_char, align 4, !tbaa !4
  br label %66

66:                                               ; preds = %55, %50, %64
  %67 = phi i32 [ %52, %50 ], [ %65, %64 ], [ %61, %55 ]
  %68 = phi i1 [ true, %50 ], [ false, %64 ], [ true, %55 ]
  %69 = phi i32 [ 0, %50 ], [ 1, %64 ], [ 0, %55 ]
  store i32 %69, i32* @cur_token, align 4, !tbaa !4
  %70 = load i32, i32* %36, align 16, !tbaa !4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %121, label %72

72:                                               ; preds = %66
  %73 = sext i32 %70 to i64
  %74 = add i32 %41, -37
  %75 = icmp ult i32 %74, 11
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [11 x i32], [11 x i32]* @switch.table._Z4evalv.1, i64 0, i64 %76
  br label %78

78:                                               ; preds = %72, %115
  %79 = phi i64 [ %73, %72 ], [ %96, %115 ]
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !4
  %82 = add i32 %81, -37
  %83 = icmp ult i32 %82, 11
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = sext i32 %82 to i64
  %86 = getelementptr inbounds [11 x i32], [11 x i32]* @switch.table._Z4evalv.1, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %78, %84
  %89 = phi i32 [ %87, %84 ], [ 0, %78 ]
  br i1 %75, label %90, label %92

90:                                               ; preds = %88
  %91 = load i32, i32* %77, align 4
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i32 [ %91, %90 ], [ 0, %88 ]
  %94 = icmp ult i32 %89, %93
  br i1 %94, label %119, label %95

95:                                               ; preds = %92
  %96 = add nsw i64 %79, -1
  %97 = load i32, i32* %9, align 16, !tbaa !4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !4
  %101 = add nsw i32 %97, -1
  store i32 %101, i32* %9, align 16, !tbaa !4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !4
  switch i32 %81, label %115 [
    i32 43, label %105
    i32 45, label %107
    i32 42, label %109
    i32 47, label %111
    i32 37, label %113
  ]

105:                                              ; preds = %95
  %106 = add nsw i32 %104, %100
  br label %115

107:                                              ; preds = %95
  %108 = sub nsw i32 %104, %100
  br label %115

109:                                              ; preds = %95
  %110 = mul nsw i32 %104, %100
  br label %115

111:                                              ; preds = %95
  %112 = sdiv i32 %104, %100
  br label %115

113:                                              ; preds = %95
  %114 = srem i32 %104, %100
  br label %115

115:                                              ; preds = %95, %105, %107, %109, %111, %113
  %116 = phi i32 [ %106, %105 ], [ %108, %107 ], [ %110, %109 ], [ %112, %111 ], [ %114, %113 ], [ 0, %95 ]
  store i32 %116, i32* %103, align 4, !tbaa !4
  %117 = trunc i64 %96 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %78, !llvm.loop !11

119:                                              ; preds = %92
  %120 = trunc i64 %79 to i32
  br label %121

121:                                              ; preds = %115, %119, %66
  %122 = phi i32 [ 0, %66 ], [ %120, %119 ], [ 0, %115 ]
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %36, align 16, !tbaa !4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %124
  store i32 %41, i32* %125, align 4, !tbaa !4
  br i1 %68, label %127, label %126

126:                                              ; preds = %121
  tail call void @_Z5putchi(i32 noundef 112)
  tail call void @_Z5putchi(i32 noundef 97)
  tail call void @_Z5putchi(i32 noundef 110)
  tail call void @_Z5putchi(i32 noundef 105)
  tail call void @_Z5putchi(i32 noundef 99)
  tail call void @_Z5putchi(i32 noundef 33)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %220

127:                                              ; preds = %121
  %128 = load i32, i32* @num, align 4, !tbaa !4
  %129 = load i32, i32* %9, align 16, !tbaa !4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 16, !tbaa !4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %131
  store i32 %128, i32* %132, align 4, !tbaa !4
  br label %133

133:                                              ; preds = %135, %127
  %134 = phi i32 [ %136, %135 ], [ %67, %127 ]
  switch i32 %134, label %137 [
    i32 32, label %135
    i32 10, label %135
  ]

135:                                              ; preds = %133, %133
  %136 = tail call noundef i32 @_Z5getchv()
  store i32 %136, i32* @last_char, align 4, !tbaa !4
  br label %133, !llvm.loop !8

137:                                              ; preds = %133
  %138 = add i32 %134, -58
  %139 = icmp ult i32 %138, -10
  br i1 %139, label %37, label %140

140:                                              ; preds = %137
  %141 = add nsw i32 %134, -48
  store i32 %141, i32* @num, align 4, !tbaa !4
  %142 = tail call noundef i32 @_Z5getchv()
  store i32 %142, i32* @last_char, align 4, !tbaa !4
  %143 = add i32 %142, -58
  %144 = icmp ult i32 %143, -10
  br i1 %144, label %154, label %145

145:                                              ; preds = %140, %145
  %146 = phi i32 [ %151, %145 ], [ %142, %140 ]
  %147 = load i32, i32* @num, align 4, !tbaa !4
  %148 = mul nsw i32 %147, 10
  %149 = add nsw i32 %146, -48
  %150 = add i32 %149, %148
  store i32 %150, i32* @num, align 4, !tbaa !4
  %151 = tail call noundef i32 @_Z5getchv()
  store i32 %151, i32* @last_char, align 4, !tbaa !4
  %152 = add i32 %151, -58
  %153 = icmp ult i32 %152, -10
  br i1 %153, label %154, label %145, !llvm.loop !10

154:                                              ; preds = %25, %145, %140, %20
  %155 = phi i32 [ %22, %20 ], [ %142, %140 ], [ %151, %145 ], [ %31, %25 ]
  store i32 0, i32* @cur_token, align 4, !tbaa !4
  br label %156

156:                                              ; preds = %39, %154
  %157 = phi i32 [ %155, %154 ], [ %40, %39 ]
  br label %158

158:                                              ; preds = %156, %160
  %159 = phi i32 [ %161, %160 ], [ %157, %156 ]
  switch i32 %159, label %162 [
    i32 32, label %160
    i32 10, label %160
  ]

160:                                              ; preds = %158, %158
  %161 = tail call noundef i32 @_Z5getchv()
  store i32 %161, i32* @last_char, align 4, !tbaa !4
  br label %158, !llvm.loop !8

162:                                              ; preds = %158
  %163 = add i32 %159, -58
  %164 = icmp ult i32 %163, -10
  br i1 %164, label %179, label %165

165:                                              ; preds = %162
  %166 = add nsw i32 %159, -48
  store i32 %166, i32* @num, align 4, !tbaa !4
  %167 = tail call noundef i32 @_Z5getchv()
  store i32 %167, i32* @last_char, align 4, !tbaa !4
  %168 = add i32 %167, -58
  %169 = icmp ult i32 %168, -10
  br i1 %169, label %181, label %170

170:                                              ; preds = %165, %170
  %171 = phi i32 [ %176, %170 ], [ %167, %165 ]
  %172 = load i32, i32* @num, align 4, !tbaa !4
  %173 = mul nsw i32 %172, 10
  %174 = add nsw i32 %171, -48
  %175 = add i32 %174, %173
  store i32 %175, i32* @num, align 4, !tbaa !4
  %176 = tail call noundef i32 @_Z5getchv()
  store i32 %176, i32* @last_char, align 4, !tbaa !4
  %177 = add i32 %176, -58
  %178 = icmp ult i32 %177, -10
  br i1 %178, label %181, label %170, !llvm.loop !10

179:                                              ; preds = %162
  store i32 %159, i32* @other, align 4, !tbaa !4
  %180 = tail call noundef i32 @_Z5getchv()
  store i32 %180, i32* @last_char, align 4, !tbaa !4
  br label %181

181:                                              ; preds = %170, %165, %179
  %182 = phi i32 [ 1, %179 ], [ 0, %165 ], [ 0, %170 ]
  store i32 %182, i32* @cur_token, align 4, !tbaa !4
  %183 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %184 = load i32, i32* %183, align 16, !tbaa !4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %215, label %186

186:                                              ; preds = %181
  %187 = sext i32 %184 to i64
  br label %188

188:                                              ; preds = %186, %211
  %189 = phi i64 [ %187, %186 ], [ %192, %211 ]
  %190 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4, !tbaa !4
  %192 = add nsw i64 %189, -1
  %193 = load i32, i32* %9, align 16, !tbaa !4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4, !tbaa !4
  %197 = add nsw i32 %193, -1
  store i32 %197, i32* %9, align 16, !tbaa !4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4, !tbaa !4
  switch i32 %191, label %211 [
    i32 43, label %201
    i32 45, label %203
    i32 42, label %205
    i32 47, label %207
    i32 37, label %209
  ]

201:                                              ; preds = %188
  %202 = add nsw i32 %200, %196
  br label %211

203:                                              ; preds = %188
  %204 = sub nsw i32 %200, %196
  br label %211

205:                                              ; preds = %188
  %206 = mul nsw i32 %200, %196
  br label %211

207:                                              ; preds = %188
  %208 = sdiv i32 %200, %196
  br label %211

209:                                              ; preds = %188
  %210 = srem i32 %200, %196
  br label %211

211:                                              ; preds = %188, %201, %203, %205, %207, %209
  %212 = phi i32 [ %202, %201 ], [ %204, %203 ], [ %206, %205 ], [ %208, %207 ], [ %210, %209 ], [ 0, %188 ]
  store i32 %212, i32* %199, align 4, !tbaa !4
  %213 = trunc i64 %192 to i32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %188, !llvm.loop !12

215:                                              ; preds = %211, %181
  %216 = load i32, i32* %9, align 16, !tbaa !4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4, !tbaa !4
  br label %220

220:                                              ; preds = %126, %215, %7
  %221 = phi i32 [ -1, %7 ], [ %219, %215 ], [ -1, %126 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #8
  ret i32 %221
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #7 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z5getchv()
  %3 = load i32, i32* @last_char, align 4, !tbaa !4
  br label %4

4:                                                ; preds = %6, %0
  %5 = phi i32 [ %7, %6 ], [ %3, %0 ]
  switch i32 %5, label %8 [
    i32 32, label %6
    i32 10, label %6
  ]

6:                                                ; preds = %4, %4
  %7 = tail call noundef i32 @_Z5getchv()
  store i32 %7, i32* @last_char, align 4, !tbaa !4
  br label %4, !llvm.loop !8

8:                                                ; preds = %4
  %9 = add i32 %5, -58
  %10 = icmp ult i32 %9, -10
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = add nsw i32 %5, -48
  store i32 %12, i32* @num, align 4, !tbaa !4
  %13 = tail call noundef i32 @_Z5getchv()
  store i32 %13, i32* @last_char, align 4, !tbaa !4
  %14 = add i32 %13, -58
  %15 = icmp ult i32 %14, -10
  br i1 %15, label %27, label %16

16:                                               ; preds = %11, %16
  %17 = phi i32 [ %22, %16 ], [ %13, %11 ]
  %18 = load i32, i32* @num, align 4, !tbaa !4
  %19 = mul nsw i32 %18, 10
  %20 = add nsw i32 %17, -48
  %21 = add i32 %20, %19
  store i32 %21, i32* @num, align 4, !tbaa !4
  %22 = tail call noundef i32 @_Z5getchv()
  store i32 %22, i32* @last_char, align 4, !tbaa !4
  %23 = add i32 %22, -58
  %24 = icmp ult i32 %23, -10
  br i1 %24, label %27, label %16, !llvm.loop !10

25:                                               ; preds = %8
  store i32 %5, i32* @other, align 4, !tbaa !4
  %26 = tail call noundef i32 @_Z5getchv()
  store i32 %26, i32* @last_char, align 4, !tbaa !4
  br label %27

27:                                               ; preds = %16, %11, %25
  %28 = phi i32 [ 1, %25 ], [ 0, %11 ], [ 0, %16 ]
  store i32 %28, i32* @cur_token, align 4, !tbaa !4
  %29 = icmp eq i32 %1, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27, %30
  %31 = phi i32 [ %33, %30 ], [ %1, %27 ]
  %32 = tail call noundef i32 @_Z4evalv()
  tail call void @_Z6putinti(i32 noundef %32)
  tail call void @_Z5putchi(i32 noundef 10)
  %33 = add nsw i32 %31, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %30, !llvm.loop !13

35:                                               ; preds = %30, %27
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
