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
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = and i32 %1, 7
  %7 = icmp ult i32 %5, 7
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, -8
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 1, %8 ], [ %20, %10 ]
  %12 = phi i32 [ 0, %8 ], [ %21, %10 ]
  %13 = mul nsw i32 %11, %0
  %14 = mul nsw i32 %13, %0
  %15 = mul nsw i32 %14, %0
  %16 = mul nsw i32 %15, %0
  %17 = mul nsw i32 %16, %0
  %18 = mul nsw i32 %17, %0
  %19 = mul nsw i32 %18, %0
  %20 = mul nsw i32 %19, %0
  %21 = add i32 %12, 8
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %10, !llvm.loop !4

23:                                               ; preds = %10, %4
  %24 = phi i32 [ undef, %4 ], [ %20, %10 ]
  %25 = phi i32 [ 1, %4 ], [ %20, %10 ]
  %26 = icmp eq i32 %6, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ %30, %27 ], [ %25, %23 ]
  %29 = phi i32 [ %31, %27 ], [ 0, %23 ]
  %30 = mul nsw i32 %28, %0
  %31 = add i32 %29, 1
  %32 = icmp eq i32 %31, %6
  br i1 %32, label %33, label %27, !llvm.loop !6

33:                                               ; preds = %23, %27, %2
  %34 = phi i32 [ 1, %2 ], [ %24, %23 ], [ %30, %27 ]
  ret i32 %34
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
  store i32 %4, i32* %6, align 4, !tbaa !8
  %7 = add nuw i64 %3, 1
  br label %2, !llvm.loop !12

8:                                                ; preds = %2, %2
  %9 = trunc i64 %3 to i32
  ret i32 %9
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z7intpushi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, i32* @intt, align 4, !tbaa !8
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @intt, align 4, !tbaa !8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %4
  store i32 %0, i32* %5, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z7chapushi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, i32* @chat, align 4, !tbaa !8
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @chat, align 4, !tbaa !8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %4
  store i32 %0, i32* %5, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z6intpopv() local_unnamed_addr #3 {
  %1 = load i32, i32* @intt, align 4, !tbaa !8
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @intt, align 4, !tbaa !8
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !8
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z6chapopv() local_unnamed_addr #3 {
  %1 = load i32, i32* @chat, align 4, !tbaa !8
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @chat, align 4, !tbaa !8
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !8
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z6intaddi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, i32* @intt, align 4, !tbaa !8
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !8
  %6 = mul nsw i32 %5, 10
  %7 = add nsw i32 %6, %0
  store i32 %7, i32* %4, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4findv() local_unnamed_addr #3 {
  %1 = load i32, i32* @chat, align 4, !tbaa !8
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @chat, align 4, !tbaa !8
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !8
  store i32 %5, i32* @c, align 4, !tbaa !8
  %6 = load i32, i32* @ii, align 4, !tbaa !8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %7
  store i32 32, i32* %8, align 4, !tbaa !8
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %10
  store i32 %5, i32* %11, align 4, !tbaa !8
  %12 = add nsw i32 %6, 2
  store i32 %12, i32* @ii, align 4, !tbaa !8
  %13 = icmp ne i32 %2, 0
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  store i32 0, i32* @intt, align 4, !tbaa !8
  store i32 0, i32* @chat, align 4, !tbaa !8
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
  store i32 %3, i32* %5, align 4, !tbaa !8
  %6 = add nuw i64 %2, 1
  br label %1, !llvm.loop !12

7:                                                ; preds = %1, %1
  %8 = trunc i64 %2 to i32
  %9 = load i32, i32* @i, align 4, !tbaa !8
  %10 = load i32, i32* @chat, align 4, !tbaa !8
  %11 = load i32, i32* @ii, align 4, !tbaa !8
  %12 = icmp slt i32 %9, %8
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = sext i32 %9 to i64
  %15 = shl i64 %2, 32
  %16 = ashr exact i64 %15, 32
  br label %40

17:                                               ; preds = %228
  store i32 %234, i32* @ii, align 4, !tbaa !8
  br label %18

18:                                               ; preds = %17, %7
  %19 = phi i32 [ %234, %17 ], [ %11, %7 ]
  %20 = phi i32 [ %231, %17 ], [ %10, %7 ]
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %258

22:                                               ; preds = %18
  %23 = zext i32 %20 to i64
  %24 = sext i32 %19 to i64
  %25 = and i64 %23, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = add nsw i64 %23, -1
  %29 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %23
  %30 = load i32, i32* %29, align 4, !tbaa !8
  %31 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %24
  store i32 32, i32* %31, align 4, !tbaa !8
  %32 = add nsw i64 %24, 1
  %33 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %32
  store i32 %30, i32* %33, align 4, !tbaa !8
  %34 = add nsw i64 %24, 2
  br label %35

35:                                               ; preds = %27, %22
  %36 = phi i64 [ %24, %22 ], [ %34, %27 ]
  %37 = phi i64 [ %23, %22 ], [ %28, %27 ]
  %38 = phi i64 [ undef, %22 ], [ %34, %27 ]
  %39 = icmp eq i32 %20, 1
  br i1 %39, label %255, label %237

40:                                               ; preds = %13, %228
  %41 = phi i64 [ %14, %13 ], [ %235, %228 ]
  %42 = phi i32 [ %10, %13 ], [ %231, %228 ]
  %43 = phi i32 [ %11, %13 ], [ %234, %228 ]
  %44 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get, i64 0, i64 %41
  %45 = load i32, i32* %44, align 4, !tbaa !8
  %46 = add i32 %45, -48
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %228, label %48

48:                                               ; preds = %40
  switch i32 %45, label %228 [
    i32 40, label %58
    i32 94, label %62
    i32 41, label %49
    i32 43, label %84
    i32 45, label %111
    i32 42, label %140
    i32 47, label %169
    i32 37, label %199
  ]

49:                                               ; preds = %48
  %50 = add i32 %42, -1
  %51 = sext i32 %42 to i64
  %52 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !8
  %54 = icmp eq i32 %53, 40
  br i1 %54, label %81, label %55

55:                                               ; preds = %49
  %56 = sext i32 %50 to i64
  %57 = sext i32 %43 to i64
  br label %66

58:                                               ; preds = %48
  %59 = add nsw i32 %42, 1
  store i32 %59, i32* @chat, align 4, !tbaa !8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %60
  store i32 40, i32* %61, align 4, !tbaa !8
  br label %228

62:                                               ; preds = %48
  %63 = add nsw i32 %42, 1
  store i32 %63, i32* @chat, align 4, !tbaa !8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %64
  store i32 94, i32* %65, align 4, !tbaa !8
  br label %228

66:                                               ; preds = %55, %66
  %67 = phi i64 [ %57, %55 ], [ %73, %66 ]
  %68 = phi i64 [ %56, %55 ], [ %74, %66 ]
  %69 = phi i32 [ %53, %55 ], [ %76, %66 ]
  %70 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %67
  store i32 32, i32* %70, align 4, !tbaa !8
  %71 = add nsw i64 %67, 1
  %72 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %71
  store i32 %69, i32* %72, align 4, !tbaa !8
  %73 = add i64 %67, 2
  %74 = add i64 %68, -1
  %75 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %68
  %76 = load i32, i32* %75, align 4, !tbaa !8
  %77 = icmp eq i32 %76, 40
  br i1 %77, label %78, label %66, !llvm.loop !13

78:                                               ; preds = %66
  %79 = trunc i64 %73 to i32
  %80 = trunc i64 %74 to i32
  br label %81

81:                                               ; preds = %78, %49
  %82 = phi i32 [ %43, %49 ], [ %79, %78 ]
  %83 = phi i32 [ %50, %49 ], [ %80, %78 ]
  store i32 %83, i32* @chat, align 4, !tbaa !8
  store i32 40, i32* @c, align 4, !tbaa !8
  br label %228

84:                                               ; preds = %48
  %85 = sext i32 %43 to i64
  %86 = sext i32 %42 to i64
  %87 = shl i32 %42, 1
  %88 = add i32 %43, %87
  br label %89

89:                                               ; preds = %84, %94
  %90 = phi i64 [ %86, %84 ], [ %95, %94 ]
  %91 = phi i64 [ %85, %84 ], [ %100, %94 ]
  %92 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %90
  %93 = load i32, i32* %92, align 4, !tbaa !8
  switch i32 %93, label %102 [
    i32 43, label %94
    i32 45, label %94
    i32 42, label %94
    i32 47, label %94
    i32 37, label %94
    i32 94, label %94
  ]

94:                                               ; preds = %89, %89, %89, %89, %89, %89
  %95 = add nsw i64 %90, -1
  %96 = trunc i64 %95 to i32
  store i32 %93, i32* @c, align 4, !tbaa !8
  %97 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %91
  store i32 32, i32* %97, align 4, !tbaa !8
  %98 = add nsw i64 %91, 1
  %99 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %98
  store i32 %93, i32* %99, align 4, !tbaa !8
  %100 = add nsw i64 %91, 2
  %101 = icmp eq i32 %96, 0
  br i1 %101, label %105, label %89, !llvm.loop !14

102:                                              ; preds = %89
  %103 = trunc i64 %91 to i32
  %104 = trunc i64 %90 to i32
  br label %105

105:                                              ; preds = %94, %102
  %106 = phi i32 [ %103, %102 ], [ %88, %94 ]
  %107 = phi i32 [ %104, %102 ], [ 0, %94 ]
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @chat, align 4, !tbaa !8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %109
  store i32 43, i32* %110, align 4, !tbaa !8
  switch i32 %45, label %228 [
    i32 45, label %111
    i32 42, label %140
    i32 47, label %169
    i32 37, label %199
  ]

111:                                              ; preds = %105, %48
  %112 = phi i32 [ %106, %105 ], [ %43, %48 ]
  %113 = phi i32 [ %108, %105 ], [ %42, %48 ]
  %114 = sext i32 %112 to i64
  %115 = sext i32 %113 to i64
  %116 = shl i32 %113, 1
  %117 = add i32 %112, %116
  br label %118

118:                                              ; preds = %111, %123
  %119 = phi i64 [ %115, %111 ], [ %124, %123 ]
  %120 = phi i64 [ %114, %111 ], [ %129, %123 ]
  %121 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %119
  %122 = load i32, i32* %121, align 4, !tbaa !8
  switch i32 %122, label %131 [
    i32 43, label %123
    i32 45, label %123
    i32 42, label %123
    i32 47, label %123
    i32 37, label %123
    i32 94, label %123
  ]

123:                                              ; preds = %118, %118, %118, %118, %118, %118
  %124 = add nsw i64 %119, -1
  %125 = trunc i64 %124 to i32
  store i32 %122, i32* @c, align 4, !tbaa !8
  %126 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %120
  store i32 32, i32* %126, align 4, !tbaa !8
  %127 = add nsw i64 %120, 1
  %128 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %127
  store i32 %122, i32* %128, align 4, !tbaa !8
  %129 = add nsw i64 %120, 2
  %130 = icmp eq i32 %125, 0
  br i1 %130, label %134, label %118, !llvm.loop !15

131:                                              ; preds = %118
  %132 = trunc i64 %120 to i32
  %133 = trunc i64 %119 to i32
  br label %134

134:                                              ; preds = %123, %131
  %135 = phi i32 [ %132, %131 ], [ %117, %123 ]
  %136 = phi i32 [ %133, %131 ], [ 0, %123 ]
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @chat, align 4, !tbaa !8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %138
  store i32 45, i32* %139, align 4, !tbaa !8
  switch i32 %45, label %228 [
    i32 42, label %140
    i32 47, label %169
    i32 37, label %199
  ]

140:                                              ; preds = %134, %105, %48
  %141 = phi i32 [ %135, %134 ], [ %106, %105 ], [ %43, %48 ]
  %142 = phi i32 [ %137, %134 ], [ %108, %105 ], [ %42, %48 ]
  %143 = sext i32 %141 to i64
  %144 = sext i32 %142 to i64
  %145 = shl i32 %142, 1
  %146 = add i32 %141, %145
  br label %147

147:                                              ; preds = %140, %152
  %148 = phi i64 [ %144, %140 ], [ %153, %152 ]
  %149 = phi i64 [ %143, %140 ], [ %158, %152 ]
  %150 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %148
  %151 = load i32, i32* %150, align 4, !tbaa !8
  switch i32 %151, label %160 [
    i32 42, label %152
    i32 47, label %152
    i32 37, label %152
    i32 94, label %152
  ]

152:                                              ; preds = %147, %147, %147, %147
  %153 = add nsw i64 %148, -1
  %154 = trunc i64 %153 to i32
  store i32 %151, i32* @c, align 4, !tbaa !8
  %155 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %149
  store i32 32, i32* %155, align 4, !tbaa !8
  %156 = add nsw i64 %149, 1
  %157 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %156
  store i32 %151, i32* %157, align 4, !tbaa !8
  %158 = add nsw i64 %149, 2
  %159 = icmp eq i32 %154, 0
  br i1 %159, label %163, label %147, !llvm.loop !16

160:                                              ; preds = %147
  %161 = trunc i64 %149 to i32
  %162 = trunc i64 %148 to i32
  br label %163

163:                                              ; preds = %152, %160
  %164 = phi i32 [ %161, %160 ], [ %146, %152 ]
  %165 = phi i32 [ %162, %160 ], [ 0, %152 ]
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @chat, align 4, !tbaa !8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %167
  store i32 42, i32* %168, align 4, !tbaa !8
  switch i32 %45, label %228 [
    i32 47, label %169
    i32 37, label %199
  ]

169:                                              ; preds = %163, %134, %105, %48
  %170 = phi i32 [ %164, %163 ], [ %135, %134 ], [ %106, %105 ], [ %43, %48 ]
  %171 = phi i32 [ %166, %163 ], [ %137, %134 ], [ %108, %105 ], [ %42, %48 ]
  %172 = sext i32 %170 to i64
  %173 = sext i32 %171 to i64
  %174 = shl i32 %171, 1
  %175 = add i32 %170, %174
  br label %176

176:                                              ; preds = %169, %181
  %177 = phi i64 [ %173, %169 ], [ %182, %181 ]
  %178 = phi i64 [ %172, %169 ], [ %187, %181 ]
  %179 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %177
  %180 = load i32, i32* %179, align 4, !tbaa !8
  switch i32 %180, label %189 [
    i32 42, label %181
    i32 47, label %181
    i32 37, label %181
    i32 94, label %181
  ]

181:                                              ; preds = %176, %176, %176, %176
  %182 = add nsw i64 %177, -1
  %183 = trunc i64 %182 to i32
  store i32 %180, i32* @c, align 4, !tbaa !8
  %184 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %178
  store i32 32, i32* %184, align 4, !tbaa !8
  %185 = add nsw i64 %178, 1
  %186 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %185
  store i32 %180, i32* %186, align 4, !tbaa !8
  %187 = add nsw i64 %178, 2
  %188 = icmp eq i32 %183, 0
  br i1 %188, label %192, label %176, !llvm.loop !17

189:                                              ; preds = %176
  %190 = trunc i64 %178 to i32
  %191 = trunc i64 %177 to i32
  br label %192

192:                                              ; preds = %181, %189
  %193 = phi i32 [ %190, %189 ], [ %175, %181 ]
  %194 = phi i32 [ %191, %189 ], [ 0, %181 ]
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* @chat, align 4, !tbaa !8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %196
  store i32 47, i32* %197, align 4, !tbaa !8
  %198 = icmp eq i32 %45, 37
  br i1 %198, label %199, label %228

199:                                              ; preds = %192, %163, %134, %105, %48
  %200 = phi i32 [ %193, %192 ], [ %164, %163 ], [ %135, %134 ], [ %106, %105 ], [ %43, %48 ]
  %201 = phi i32 [ %195, %192 ], [ %166, %163 ], [ %137, %134 ], [ %108, %105 ], [ %42, %48 ]
  %202 = sext i32 %200 to i64
  %203 = sext i32 %201 to i64
  %204 = shl i32 %201, 1
  %205 = add i32 %200, %204
  br label %206

206:                                              ; preds = %199, %211
  %207 = phi i64 [ %203, %199 ], [ %212, %211 ]
  %208 = phi i64 [ %202, %199 ], [ %217, %211 ]
  %209 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %207
  %210 = load i32, i32* %209, align 4, !tbaa !8
  switch i32 %210, label %219 [
    i32 42, label %211
    i32 47, label %211
    i32 37, label %211
    i32 94, label %211
  ]

211:                                              ; preds = %206, %206, %206, %206
  %212 = add nsw i64 %207, -1
  %213 = trunc i64 %212 to i32
  store i32 %210, i32* @c, align 4, !tbaa !8
  %214 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %208
  store i32 32, i32* %214, align 4, !tbaa !8
  %215 = add nsw i64 %208, 1
  %216 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %215
  store i32 %210, i32* %216, align 4, !tbaa !8
  %217 = add nsw i64 %208, 2
  %218 = icmp eq i32 %213, 0
  br i1 %218, label %222, label %206, !llvm.loop !18

219:                                              ; preds = %206
  %220 = trunc i64 %208 to i32
  %221 = trunc i64 %207 to i32
  br label %222

222:                                              ; preds = %211, %219
  %223 = phi i32 [ %220, %219 ], [ %205, %211 ]
  %224 = phi i32 [ %221, %219 ], [ 0, %211 ]
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* @chat, align 4, !tbaa !8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %226
  store i32 37, i32* %227, align 4, !tbaa !8
  br label %228

228:                                              ; preds = %192, %222, %62, %58, %163, %134, %105, %48, %81, %40
  %229 = phi i32 [ %43, %40 ], [ %43, %48 ], [ %82, %81 ], [ %106, %105 ], [ %135, %134 ], [ %164, %163 ], [ %43, %58 ], [ %43, %62 ], [ %223, %222 ], [ %193, %192 ]
  %230 = phi i32 [ %45, %40 ], [ 32, %48 ], [ 32, %81 ], [ 32, %105 ], [ 32, %134 ], [ 32, %163 ], [ 32, %58 ], [ 32, %62 ], [ 32, %222 ], [ 32, %192 ]
  %231 = phi i32 [ %42, %40 ], [ %42, %48 ], [ %83, %81 ], [ %108, %105 ], [ %137, %134 ], [ %166, %163 ], [ %59, %58 ], [ %63, %62 ], [ %225, %222 ], [ %195, %192 ]
  %232 = sext i32 %229 to i64
  %233 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %232
  store i32 %230, i32* %233, align 4, !tbaa !8
  %234 = add nsw i32 %229, 1
  %235 = add nsw i64 %41, 1
  %236 = icmp eq i64 %235, %16
  br i1 %236, label %17, label %40, !llvm.loop !19

237:                                              ; preds = %35, %237
  %238 = phi i64 [ %253, %237 ], [ %36, %35 ]
  %239 = phi i64 [ %247, %237 ], [ %37, %35 ]
  %240 = add nsw i64 %239, -1
  %241 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %239
  %242 = load i32, i32* %241, align 4, !tbaa !8
  %243 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %238
  store i32 32, i32* %243, align 4, !tbaa !8
  %244 = add nsw i64 %238, 1
  %245 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %244
  store i32 %242, i32* %245, align 4, !tbaa !8
  %246 = add nsw i64 %238, 2
  %247 = add nsw i64 %239, -2
  %248 = getelementptr inbounds [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %240
  %249 = load i32, i32* %248, align 4, !tbaa !8
  %250 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %246
  store i32 32, i32* %250, align 4, !tbaa !8
  %251 = add nsw i64 %238, 3
  %252 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %251
  store i32 %249, i32* %252, align 4, !tbaa !8
  %253 = add nsw i64 %238, 4
  %254 = icmp ugt i64 %240, 1
  br i1 %254, label %237, label %255, !llvm.loop !20

255:                                              ; preds = %237, %35
  %256 = phi i64 [ %38, %35 ], [ %253, %237 ]
  %257 = trunc i64 %256 to i32
  store i32 0, i32* @chat, align 4, !tbaa !8
  store i32 %257, i32* @ii, align 4, !tbaa !8
  br label %258

258:                                              ; preds = %255, %18
  %259 = phi i32 [ %257, %255 ], [ %19, %18 ]
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %260
  store i32 64, i32* %261, align 4, !tbaa !8
  %262 = load i32, i32* @intt, align 4, !tbaa !8
  br label %263

263:                                              ; preds = %353, %258
  %264 = phi i32 [ %262, %258 ], [ %354, %353 ]
  %265 = phi i32 [ 1, %258 ], [ %357, %353 ]
  %266 = phi i32 [ undef, %258 ], [ %356, %353 ]
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4, !tbaa !8
  switch i32 %269, label %324 [
    i32 64, label %358
    i32 43, label %270
    i32 45, label %270
    i32 42, label %270
    i32 47, label %270
    i32 37, label %270
    i32 94, label %270
    i32 32, label %353
  ]

270:                                              ; preds = %263, %263, %263, %263, %263, %263
  %271 = add nsw i32 %264, -1
  %272 = sext i32 %264 to i64
  %273 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4, !tbaa !8
  %275 = sext i32 %271 to i64
  %276 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4, !tbaa !8
  %278 = icmp eq i32 %269, 43
  %279 = add nsw i32 %277, %274
  %280 = select i1 %278, i32 %279, i32 %266
  %281 = icmp eq i32 %269, 45
  %282 = sub nsw i32 %277, %274
  %283 = select i1 %281, i32 %282, i32 %280
  %284 = icmp eq i32 %269, 42
  %285 = mul nsw i32 %277, %274
  %286 = select i1 %284, i32 %285, i32 %283
  switch i32 %269, label %322 [
    i32 47, label %287
    i32 37, label %289
    i32 94, label %291
  ]

287:                                              ; preds = %270
  %288 = sdiv i32 %277, %274
  br label %322

289:                                              ; preds = %270
  %290 = srem i32 %277, %274
  br label %322

291:                                              ; preds = %270
  %292 = icmp eq i32 %274, 0
  br i1 %292, label %322, label %293

293:                                              ; preds = %291
  %294 = add i32 %274, -1
  %295 = and i32 %274, 7
  %296 = icmp ult i32 %294, 7
  br i1 %296, label %312, label %297

297:                                              ; preds = %293
  %298 = and i32 %274, -8
  br label %299

299:                                              ; preds = %299, %297
  %300 = phi i32 [ 1, %297 ], [ %309, %299 ]
  %301 = phi i32 [ 0, %297 ], [ %310, %299 ]
  %302 = mul nsw i32 %300, %277
  %303 = mul nsw i32 %302, %277
  %304 = mul nsw i32 %303, %277
  %305 = mul nsw i32 %304, %277
  %306 = mul nsw i32 %305, %277
  %307 = mul nsw i32 %306, %277
  %308 = mul nsw i32 %307, %277
  %309 = mul nsw i32 %308, %277
  %310 = add i32 %301, 8
  %311 = icmp eq i32 %310, %298
  br i1 %311, label %312, label %299, !llvm.loop !4

312:                                              ; preds = %299, %293
  %313 = phi i32 [ undef, %293 ], [ %309, %299 ]
  %314 = phi i32 [ 1, %293 ], [ %309, %299 ]
  %315 = icmp eq i32 %295, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %312, %316
  %317 = phi i32 [ %319, %316 ], [ %314, %312 ]
  %318 = phi i32 [ %320, %316 ], [ 0, %312 ]
  %319 = mul nsw i32 %317, %277
  %320 = add i32 %318, 1
  %321 = icmp eq i32 %320, %295
  br i1 %321, label %322, label %316, !llvm.loop !21

322:                                              ; preds = %312, %316, %270, %289, %287, %291
  %323 = phi i32 [ 1, %291 ], [ %288, %287 ], [ %290, %289 ], [ %286, %270 ], [ %313, %312 ], [ %319, %316 ]
  store i32 %271, i32* @intt, align 4, !tbaa !8
  store i32 %323, i32* %276, align 4, !tbaa !8
  br label %353

324:                                              ; preds = %263
  %325 = add nsw i32 %269, -48
  %326 = add nsw i32 %264, 1
  store i32 %326, i32* @intt, align 4, !tbaa !8
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %327
  store i32 %325, i32* %328, align 4, !tbaa !8
  %329 = add nsw i32 %265, 1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4, !tbaa !8
  %333 = icmp eq i32 %332, 32
  br i1 %333, label %349, label %334

334:                                              ; preds = %324, %334
  %335 = phi i64 [ %341, %334 ], [ 1, %324 ]
  %336 = phi i32 [ %340, %334 ], [ %325, %324 ]
  %337 = phi i32 [ %344, %334 ], [ %332, %324 ]
  %338 = add nsw i32 %337, -48
  %339 = mul nsw i32 %336, 10
  %340 = add nsw i32 %338, %339
  %341 = add nuw nsw i64 %335, 1
  %342 = add nsw i64 %341, %267
  %343 = getelementptr inbounds [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4, !tbaa !8
  %345 = icmp eq i32 %344, 32
  br i1 %345, label %346, label %334, !llvm.loop !22

346:                                              ; preds = %334
  %347 = trunc i64 %341 to i32
  %348 = trunc i64 %342 to i32
  store i32 %340, i32* %328, align 4, !tbaa !8
  br label %349

349:                                              ; preds = %346, %324
  %350 = phi i32 [ %347, %346 ], [ 1, %324 ]
  %351 = phi i32 [ %348, %346 ], [ %329, %324 ]
  store i32 %350, i32* @ii, align 4, !tbaa !8
  %352 = add nsw i32 %351, -1
  br label %353

353:                                              ; preds = %263, %349, %322
  %354 = phi i32 [ %271, %322 ], [ %326, %349 ], [ %264, %263 ]
  %355 = phi i32 [ %265, %322 ], [ %352, %349 ], [ %265, %263 ]
  %356 = phi i32 [ %323, %322 ], [ %266, %349 ], [ %266, %263 ]
  %357 = add nsw i32 %355, 1
  br label %263, !llvm.loop !23

358:                                              ; preds = %263
  store i32 %265, i32* @i, align 4, !tbaa !8
  %359 = load i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @ints, i64 0, i64 1), align 4, !tbaa !8
  tail call void @_Z6putinti(i32 noundef %359)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
