; ModuleID = 'tests//SysY2022/hidden_functional/20_sort.sy'
source_filename = "tests//SysY2022/hidden_functional/20_sort.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4
@cnt = dso_local local_unnamed_addr global [400020 x i32] zeroinitializer, align 16
@x = dso_local local_unnamed_addr global [100005 x i32] zeroinitializer, align 16
@a = dso_local local_unnamed_addr global [100005 x i32] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [100005 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [100005 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z10quick_readv() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z5getchv()
  %2 = add i32 %1, -58
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %7, label %4

4:                                                ; preds = %7, %0
  %5 = phi i32 [ %1, %0 ], [ %12, %7 ]
  %6 = phi i32 [ 0, %0 ], [ %11, %7 ]
  br label %15

7:                                                ; preds = %0, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %0 ]
  %9 = phi i32 [ %12, %7 ], [ %1, %0 ]
  %10 = icmp eq i32 %9, 45
  %11 = select i1 %10, i32 1, i32 %8
  %12 = tail call noundef i32 @_Z5getchv()
  %13 = add i32 %12, -58
  %14 = icmp ult i32 %13, -10
  br i1 %14, label %7, label %4, !llvm.loop !5

15:                                               ; preds = %4, %15
  %16 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %21, %15 ], [ %5, %4 ]
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add i32 %19, %18
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %15, label %24, !llvm.loop !7

24:                                               ; preds = %15
  %25 = icmp eq i32 %6, 0
  %26 = sub nsw i32 0, %20
  %27 = select i1 %25, i32 %20, i32 %26
  ret i32 %27
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5sortAPi(i32* nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @n, align 4, !tbaa !8
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %11, label %36

4:                                                ; preds = %30
  %5 = sext i32 %31 to i64
  br label %6

6:                                                ; preds = %4, %11
  %7 = phi i64 [ %5, %4 ], [ %16, %11 ]
  %8 = phi i32 [ %31, %4 ], [ %12, %11 ]
  %9 = icmp slt i64 %15, %7
  %10 = add nuw nsw i64 %14, 1
  br i1 %9, label %11, label %36, !llvm.loop !12

11:                                               ; preds = %1, %6
  %12 = phi i32 [ %8, %6 ], [ %2, %1 ]
  %13 = phi i64 [ %15, %6 ], [ 0, %1 ]
  %14 = phi i64 [ %10, %6 ], [ 1, %1 ]
  %15 = add nuw nsw i64 %13, 1
  %16 = sext i32 %12 to i64
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %6

18:                                               ; preds = %11
  %19 = getelementptr inbounds i32, i32* %0, i64 %13
  br label %20

20:                                               ; preds = %18, %30
  %21 = phi i32 [ %12, %18 ], [ %31, %30 ]
  %22 = phi i32 [ %12, %18 ], [ %32, %30 ]
  %23 = phi i64 [ %14, %18 ], [ %33, %30 ]
  %24 = load i32, i32* %19, align 4, !tbaa !8
  %25 = getelementptr inbounds i32, i32* %0, i64 %23
  %26 = load i32, i32* %25, align 4, !tbaa !8
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  store i32 %26, i32* %19, align 4, !tbaa !8
  store i32 %24, i32* %25, align 4, !tbaa !8
  %29 = load i32, i32* @n, align 4, !tbaa !8
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi i32 [ %29, %28 ], [ %21, %20 ]
  %32 = phi i32 [ %29, %28 ], [ %22, %20 ]
  %33 = add nuw nsw i64 %23, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %20, label %4, !llvm.loop !13

36:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5sortBPi(i32* nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @n, align 4, !tbaa !8
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %148

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967294
  br label %31

10:                                               ; preds = %31, %4
  %11 = phi i32 [ undef, %4 ], [ %53, %31 ]
  %12 = phi i64 [ 0, %4 ], [ %54, %31 ]
  %13 = phi i32 [ -100, %4 ], [ %53, %31 ]
  %14 = icmp eq i64 %6, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i32, i32* %0, i64 %12
  %17 = load i32, i32* %16, align 4, !tbaa !8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4, !tbaa !8
  %22 = load i32, i32* %16, align 4, !tbaa !8
  %23 = icmp sgt i32 %22, %13
  %24 = select i1 %23, i32 %22, i32 %13
  br label %25

25:                                               ; preds = %10, %15
  %26 = phi i32 [ %11, %10 ], [ %24, %15 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %148, label %28

28:                                               ; preds = %25
  %29 = add nuw i32 %26, 1
  %30 = zext i32 %29 to i64
  br label %57

31:                                               ; preds = %31, %8
  %32 = phi i64 [ 0, %8 ], [ %54, %31 ]
  %33 = phi i32 [ -100, %8 ], [ %53, %31 ]
  %34 = phi i64 [ 0, %8 ], [ %55, %31 ]
  %35 = getelementptr inbounds i32, i32* %0, i64 %32
  %36 = load i32, i32* %35, align 4, !tbaa !8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4, !tbaa !8
  %41 = load i32, i32* %35, align 4, !tbaa !8
  %42 = icmp sgt i32 %41, %33
  %43 = select i1 %42, i32 %41, i32 %33
  %44 = or i64 %32, 1
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4, !tbaa !8
  %51 = load i32, i32* %45, align 4, !tbaa !8
  %52 = icmp sgt i32 %51, %43
  %53 = select i1 %52, i32 %51, i32 %43
  %54 = add nuw nsw i64 %32, 2
  %55 = add i64 %34, 2
  %56 = icmp eq i64 %55, %9
  br i1 %56, label %10, label %31, !llvm.loop !14

57:                                               ; preds = %28, %144
  %58 = phi i64 [ 0, %28 ], [ %146, %144 ]
  %59 = phi i32 [ 0, %28 ], [ %145, %144 ]
  %60 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %58
  %61 = load i32, i32* %60, align 4, !tbaa !8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %144, label %63

63:                                               ; preds = %57
  %64 = sext i32 %59 to i64
  %65 = trunc i64 %58 to i32
  %66 = add i32 %61, -1
  %67 = zext i32 %66 to i64
  %68 = add nuw nsw i64 %67, 1
  %69 = icmp ult i32 %66, 7
  br i1 %69, label %131, label %70

70:                                               ; preds = %63
  %71 = and i64 %68, 8589934584
  %72 = add nsw i64 %71, %64
  %73 = trunc i64 %71 to i32
  %74 = sub i32 %61, %73
  %75 = insertelement <4 x i32> poison, i32 %65, i64 0
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> zeroinitializer
  %77 = insertelement <4 x i32> poison, i32 %65, i64 0
  %78 = shufflevector <4 x i32> %77, <4 x i32> poison, <4 x i32> zeroinitializer
  %79 = add nsw i64 %71, -8
  %80 = lshr exact i64 %79, 3
  %81 = add nuw nsw i64 %80, 1
  %82 = and i64 %81, 3
  %83 = icmp ult i64 %79, 24
  br i1 %83, label %115, label %84

84:                                               ; preds = %70
  %85 = and i64 %81, 4611686018427387900
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i64 [ 0, %84 ], [ %112, %86 ]
  %88 = phi i64 [ 0, %84 ], [ %113, %86 ]
  %89 = add i64 %87, %64
  %90 = getelementptr inbounds i32, i32* %0, i64 %89
  %91 = bitcast i32* %90 to <4 x i32>*
  store <4 x i32> %76, <4 x i32>* %91, align 4, !tbaa !8
  %92 = getelementptr inbounds i32, i32* %90, i64 4
  %93 = bitcast i32* %92 to <4 x i32>*
  store <4 x i32> %78, <4 x i32>* %93, align 4, !tbaa !8
  %94 = or i64 %87, 8
  %95 = add i64 %94, %64
  %96 = getelementptr inbounds i32, i32* %0, i64 %95
  %97 = bitcast i32* %96 to <4 x i32>*
  store <4 x i32> %76, <4 x i32>* %97, align 4, !tbaa !8
  %98 = getelementptr inbounds i32, i32* %96, i64 4
  %99 = bitcast i32* %98 to <4 x i32>*
  store <4 x i32> %78, <4 x i32>* %99, align 4, !tbaa !8
  %100 = or i64 %87, 16
  %101 = add i64 %100, %64
  %102 = getelementptr inbounds i32, i32* %0, i64 %101
  %103 = bitcast i32* %102 to <4 x i32>*
  store <4 x i32> %76, <4 x i32>* %103, align 4, !tbaa !8
  %104 = getelementptr inbounds i32, i32* %102, i64 4
  %105 = bitcast i32* %104 to <4 x i32>*
  store <4 x i32> %78, <4 x i32>* %105, align 4, !tbaa !8
  %106 = or i64 %87, 24
  %107 = add i64 %106, %64
  %108 = getelementptr inbounds i32, i32* %0, i64 %107
  %109 = bitcast i32* %108 to <4 x i32>*
  store <4 x i32> %76, <4 x i32>* %109, align 4, !tbaa !8
  %110 = getelementptr inbounds i32, i32* %108, i64 4
  %111 = bitcast i32* %110 to <4 x i32>*
  store <4 x i32> %78, <4 x i32>* %111, align 4, !tbaa !8
  %112 = add nuw i64 %87, 32
  %113 = add i64 %88, 4
  %114 = icmp eq i64 %113, %85
  br i1 %114, label %115, label %86, !llvm.loop !15

115:                                              ; preds = %86, %70
  %116 = phi i64 [ 0, %70 ], [ %112, %86 ]
  %117 = icmp eq i64 %82, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %126, %118 ], [ %116, %115 ]
  %120 = phi i64 [ %127, %118 ], [ 0, %115 ]
  %121 = add i64 %119, %64
  %122 = getelementptr inbounds i32, i32* %0, i64 %121
  %123 = bitcast i32* %122 to <4 x i32>*
  store <4 x i32> %76, <4 x i32>* %123, align 4, !tbaa !8
  %124 = getelementptr inbounds i32, i32* %122, i64 4
  %125 = bitcast i32* %124 to <4 x i32>*
  store <4 x i32> %78, <4 x i32>* %125, align 4, !tbaa !8
  %126 = add nuw i64 %119, 8
  %127 = add i64 %120, 1
  %128 = icmp eq i64 %127, %82
  br i1 %128, label %129, label %118, !llvm.loop !17

129:                                              ; preds = %118, %115
  %130 = icmp eq i64 %68, %71
  br i1 %130, label %141, label %131

131:                                              ; preds = %63, %129
  %132 = phi i64 [ %64, %63 ], [ %72, %129 ]
  %133 = phi i32 [ %61, %63 ], [ %74, %129 ]
  br label %134

134:                                              ; preds = %131, %134
  %135 = phi i64 [ %138, %134 ], [ %132, %131 ]
  %136 = phi i32 [ %139, %134 ], [ %133, %131 ]
  %137 = getelementptr inbounds i32, i32* %0, i64 %135
  store i32 %65, i32* %137, align 4, !tbaa !8
  %138 = add nsw i64 %135, 1
  %139 = add nsw i32 %136, -1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %134, !llvm.loop !19

141:                                              ; preds = %134, %129
  %142 = phi i64 [ %72, %129 ], [ %138, %134 ]
  %143 = trunc i64 %142 to i32
  br label %144

144:                                              ; preds = %141, %57
  %145 = phi i32 [ %59, %57 ], [ %143, %141 ]
  %146 = add nuw nsw i64 %58, 1
  %147 = icmp eq i64 %146, %30
  br i1 %147, label %148, label %57, !llvm.loop !21

148:                                              ; preds = %144, %1, %25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5sortCPi(i32* nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @n, align 4, !tbaa !8
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %38

4:                                                ; preds = %1, %27
  %5 = phi i64 [ %8, %27 ], [ 0, %1 ]
  %6 = phi i64 [ %37, %27 ], [ 1, %1 ]
  %7 = phi i32 [ %34, %27 ], [ %2, %1 ]
  %8 = add nuw nsw i64 %5, 1
  %9 = sext i32 %7 to i64
  %10 = icmp slt i64 %8, %9
  %11 = trunc i64 %5 to i32
  br i1 %10, label %12, label %27

12:                                               ; preds = %4
  %13 = zext i32 %7 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %6, %12 ], [ %25, %14 ]
  %16 = phi i32 [ %11, %12 ], [ %24, %14 ]
  %17 = getelementptr inbounds i32, i32* %0, i64 %15
  %18 = load i32, i32* %17, align 4, !tbaa !8
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !8
  %22 = icmp slt i32 %18, %21
  %23 = trunc i64 %15 to i32
  %24 = select i1 %22, i32 %23, i32 %16
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, %13
  br i1 %26, label %27, label %14, !llvm.loop !22

27:                                               ; preds = %14, %4
  %28 = phi i32 [ %11, %4 ], [ %24, %14 ]
  %29 = getelementptr inbounds i32, i32* %0, i64 %5
  %30 = load i32, i32* %29, align 4, !tbaa !8
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !8
  store i32 %33, i32* %29, align 4, !tbaa !8
  store i32 %30, i32* %32, align 4, !tbaa !8
  %34 = load i32, i32* @n, align 4, !tbaa !8
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %8, %35
  %37 = add nuw nsw i64 %6, 1
  br i1 %36, label %4, label %38, !llvm.loop !23

38:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z5getchv()
  %2 = add i32 %1, -58
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %7, label %4

4:                                                ; preds = %7, %0
  %5 = phi i32 [ %1, %0 ], [ %12, %7 ]
  %6 = phi i32 [ 0, %0 ], [ %11, %7 ]
  br label %15

7:                                                ; preds = %0, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %0 ]
  %9 = phi i32 [ %12, %7 ], [ %1, %0 ]
  %10 = icmp eq i32 %9, 45
  %11 = select i1 %10, i32 1, i32 %8
  %12 = tail call noundef i32 @_Z5getchv()
  %13 = add i32 %12, -58
  %14 = icmp ult i32 %13, -10
  br i1 %14, label %7, label %4, !llvm.loop !5

15:                                               ; preds = %15, %4
  %16 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %21, %15 ], [ %5, %4 ]
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add i32 %19, %18
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %15, label %24, !llvm.loop !7

24:                                               ; preds = %15
  %25 = icmp eq i32 %6, 0
  %26 = sub nsw i32 0, %20
  %27 = select i1 %25, i32 %20, i32 %26
  store i32 %27, i32* @n, align 4, !tbaa !8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %356, label %29

29:                                               ; preds = %24, %54
  %30 = phi i64 [ %61, %54 ], [ 0, %24 ]
  %31 = tail call noundef i32 @_Z5getchv()
  %32 = add i32 %31, -58
  %33 = icmp ult i32 %32, -10
  br i1 %33, label %37, label %34

34:                                               ; preds = %37, %29
  %35 = phi i32 [ %31, %29 ], [ %42, %37 ]
  %36 = phi i32 [ 0, %29 ], [ %41, %37 ]
  br label %45

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %41, %37 ], [ 0, %29 ]
  %39 = phi i32 [ %42, %37 ], [ %31, %29 ]
  %40 = icmp eq i32 %39, 45
  %41 = select i1 %40, i32 1, i32 %38
  %42 = tail call noundef i32 @_Z5getchv()
  %43 = add i32 %42, -58
  %44 = icmp ult i32 %43, -10
  br i1 %44, label %37, label %34, !llvm.loop !5

45:                                               ; preds = %45, %34
  %46 = phi i32 [ %50, %45 ], [ 0, %34 ]
  %47 = phi i32 [ %51, %45 ], [ %35, %34 ]
  %48 = mul nsw i32 %46, 10
  %49 = add nsw i32 %47, -48
  %50 = add i32 %49, %48
  %51 = tail call noundef i32 @_Z5getchv()
  %52 = add i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %45, label %54, !llvm.loop !7

54:                                               ; preds = %45
  %55 = icmp eq i32 %36, 0
  %56 = sub nsw i32 0, %50
  %57 = select i1 %55, i32 %50, i32 %56
  %58 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %30
  store i32 %57, i32* %58, align 4, !tbaa !8
  %59 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %30
  store i32 %57, i32* %59, align 4, !tbaa !8
  %60 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %30
  store i32 %57, i32* %60, align 4, !tbaa !8
  %61 = add nuw i64 %30, 1
  %62 = load i32, i32* @n, align 4, !tbaa !8
  %63 = zext i32 %62 to i64
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %29, !llvm.loop !24

65:                                               ; preds = %54
  %66 = icmp sgt i32 %62, 0
  br i1 %66, label %67, label %288

67:                                               ; preds = %65
  %68 = add i32 %62, -2
  %69 = sext i32 %62 to i64
  %70 = sext i32 %62 to i64
  br label %75

71:                                               ; preds = %96, %113, %75
  %72 = phi i64 [ %69, %75 ], [ %70, %113 ], [ %70, %96 ]
  %73 = icmp slt i64 %79, %72
  %74 = add nuw nsw i64 %77, 1
  br i1 %73, label %75, label %117, !llvm.loop !12

75:                                               ; preds = %67, %71
  %76 = phi i64 [ %79, %71 ], [ 0, %67 ]
  %77 = phi i64 [ %74, %71 ], [ 1, %67 ]
  %78 = trunc i64 %76 to i32
  %79 = add nuw nsw i64 %76, 1
  %80 = icmp slt i64 %79, %69
  br i1 %80, label %81, label %71

81:                                               ; preds = %75
  %82 = trunc i64 %76 to i32
  %83 = xor i32 %82, -1
  %84 = add i32 %62, %83
  %85 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %76
  %86 = and i32 %84, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %85, align 4, !tbaa !8
  %90 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %77
  %91 = load i32, i32* %90, align 4, !tbaa !8
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 %91, i32* %85, align 4, !tbaa !8
  store i32 %89, i32* %90, align 4, !tbaa !8
  br label %94

94:                                               ; preds = %93, %88
  %95 = add nuw nsw i64 %77, 1
  br label %96

96:                                               ; preds = %94, %81
  %97 = phi i64 [ %77, %81 ], [ %95, %94 ]
  %98 = icmp eq i32 %68, %78
  br i1 %98, label %71, label %99

99:                                               ; preds = %96, %113
  %100 = phi i64 [ %114, %113 ], [ %97, %96 ]
  %101 = load i32, i32* %85, align 4, !tbaa !8
  %102 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %100
  %103 = load i32, i32* %102, align 4, !tbaa !8
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 %103, i32* %85, align 4, !tbaa !8
  store i32 %101, i32* %102, align 4, !tbaa !8
  br label %106

106:                                              ; preds = %105, %99
  %107 = add nuw nsw i64 %100, 1
  %108 = load i32, i32* %85, align 4, !tbaa !8
  %109 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %107
  %110 = load i32, i32* %109, align 4, !tbaa !8
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 %110, i32* %85, align 4, !tbaa !8
  store i32 %108, i32* %109, align 4, !tbaa !8
  br label %113

113:                                              ; preds = %112, %106
  %114 = add nuw nsw i64 %100, 2
  %115 = trunc i64 %114 to i32
  %116 = icmp sgt i32 %62, %115
  br i1 %116, label %99, label %71, !llvm.loop !13

117:                                              ; preds = %71
  %118 = zext i32 %62 to i64
  %119 = and i64 %118, 1
  %120 = icmp eq i32 %62, 1
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = and i64 %118, 4294967294
  br label %143

123:                                              ; preds = %143, %117
  %124 = phi i32 [ undef, %117 ], [ %163, %143 ]
  %125 = phi i64 [ 0, %117 ], [ %164, %143 ]
  %126 = phi i32 [ -100, %117 ], [ %163, %143 ]
  %127 = icmp eq i64 %119, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %125
  %130 = load i32, i32* %129, align 4, !tbaa !8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4, !tbaa !8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4, !tbaa !8
  %135 = icmp sgt i32 %130, %126
  %136 = select i1 %135, i32 %130, i32 %126
  br label %137

137:                                              ; preds = %123, %128
  %138 = phi i32 [ %124, %123 ], [ %136, %128 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %258, label %140

140:                                              ; preds = %137
  %141 = add nuw i32 %138, 1
  %142 = zext i32 %141 to i64
  br label %167

143:                                              ; preds = %143, %121
  %144 = phi i64 [ 0, %121 ], [ %164, %143 ]
  %145 = phi i32 [ -100, %121 ], [ %163, %143 ]
  %146 = phi i64 [ 0, %121 ], [ %165, %143 ]
  %147 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %144
  %148 = load i32, i32* %147, align 8, !tbaa !8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4, !tbaa !8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4, !tbaa !8
  %153 = icmp sgt i32 %148, %145
  %154 = select i1 %153, i32 %148, i32 %145
  %155 = or i64 %144, 1
  %156 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4, !tbaa !8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4, !tbaa !8
  %162 = icmp sgt i32 %157, %154
  %163 = select i1 %162, i32 %157, i32 %154
  %164 = add nuw nsw i64 %144, 2
  %165 = add i64 %146, 2
  %166 = icmp eq i64 %165, %122
  br i1 %166, label %123, label %143, !llvm.loop !14

167:                                              ; preds = %254, %140
  %168 = phi i64 [ 0, %140 ], [ %256, %254 ]
  %169 = phi i32 [ 0, %140 ], [ %255, %254 ]
  %170 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %168
  %171 = load i32, i32* %170, align 4, !tbaa !8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %254, label %173

173:                                              ; preds = %167
  %174 = sext i32 %169 to i64
  %175 = trunc i64 %168 to i32
  %176 = add i32 %171, -1
  %177 = zext i32 %176 to i64
  %178 = add nuw nsw i64 %177, 1
  %179 = icmp ult i32 %176, 7
  br i1 %179, label %241, label %180

180:                                              ; preds = %173
  %181 = and i64 %178, 8589934584
  %182 = add nsw i64 %181, %174
  %183 = trunc i64 %181 to i32
  %184 = sub i32 %171, %183
  %185 = insertelement <4 x i32> poison, i32 %175, i64 0
  %186 = shufflevector <4 x i32> %185, <4 x i32> poison, <4 x i32> zeroinitializer
  %187 = insertelement <4 x i32> poison, i32 %175, i64 0
  %188 = shufflevector <4 x i32> %187, <4 x i32> poison, <4 x i32> zeroinitializer
  %189 = add nsw i64 %181, -8
  %190 = lshr exact i64 %189, 3
  %191 = add nuw nsw i64 %190, 1
  %192 = and i64 %191, 3
  %193 = icmp ult i64 %189, 24
  br i1 %193, label %225, label %194

194:                                              ; preds = %180
  %195 = and i64 %191, 4611686018427387900
  br label %196

196:                                              ; preds = %196, %194
  %197 = phi i64 [ 0, %194 ], [ %222, %196 ]
  %198 = phi i64 [ 0, %194 ], [ %223, %196 ]
  %199 = add i64 %197, %174
  %200 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %199
  %201 = bitcast i32* %200 to <4 x i32>*
  store <4 x i32> %186, <4 x i32>* %201, align 4, !tbaa !8
  %202 = getelementptr inbounds i32, i32* %200, i64 4
  %203 = bitcast i32* %202 to <4 x i32>*
  store <4 x i32> %188, <4 x i32>* %203, align 4, !tbaa !8
  %204 = or i64 %197, 8
  %205 = add i64 %204, %174
  %206 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %205
  %207 = bitcast i32* %206 to <4 x i32>*
  store <4 x i32> %186, <4 x i32>* %207, align 4, !tbaa !8
  %208 = getelementptr inbounds i32, i32* %206, i64 4
  %209 = bitcast i32* %208 to <4 x i32>*
  store <4 x i32> %188, <4 x i32>* %209, align 4, !tbaa !8
  %210 = or i64 %197, 16
  %211 = add i64 %210, %174
  %212 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %211
  %213 = bitcast i32* %212 to <4 x i32>*
  store <4 x i32> %186, <4 x i32>* %213, align 4, !tbaa !8
  %214 = getelementptr inbounds i32, i32* %212, i64 4
  %215 = bitcast i32* %214 to <4 x i32>*
  store <4 x i32> %188, <4 x i32>* %215, align 4, !tbaa !8
  %216 = or i64 %197, 24
  %217 = add i64 %216, %174
  %218 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %217
  %219 = bitcast i32* %218 to <4 x i32>*
  store <4 x i32> %186, <4 x i32>* %219, align 4, !tbaa !8
  %220 = getelementptr inbounds i32, i32* %218, i64 4
  %221 = bitcast i32* %220 to <4 x i32>*
  store <4 x i32> %188, <4 x i32>* %221, align 4, !tbaa !8
  %222 = add nuw i64 %197, 32
  %223 = add i64 %198, 4
  %224 = icmp eq i64 %223, %195
  br i1 %224, label %225, label %196, !llvm.loop !25

225:                                              ; preds = %196, %180
  %226 = phi i64 [ 0, %180 ], [ %222, %196 ]
  %227 = icmp eq i64 %192, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %225, %228
  %229 = phi i64 [ %236, %228 ], [ %226, %225 ]
  %230 = phi i64 [ %237, %228 ], [ 0, %225 ]
  %231 = add i64 %229, %174
  %232 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %231
  %233 = bitcast i32* %232 to <4 x i32>*
  store <4 x i32> %186, <4 x i32>* %233, align 4, !tbaa !8
  %234 = getelementptr inbounds i32, i32* %232, i64 4
  %235 = bitcast i32* %234 to <4 x i32>*
  store <4 x i32> %188, <4 x i32>* %235, align 4, !tbaa !8
  %236 = add nuw i64 %229, 8
  %237 = add i64 %230, 1
  %238 = icmp eq i64 %237, %192
  br i1 %238, label %239, label %228, !llvm.loop !26

239:                                              ; preds = %228, %225
  %240 = icmp eq i64 %178, %181
  br i1 %240, label %251, label %241

241:                                              ; preds = %173, %239
  %242 = phi i64 [ %174, %173 ], [ %182, %239 ]
  %243 = phi i32 [ %171, %173 ], [ %184, %239 ]
  br label %244

244:                                              ; preds = %241, %244
  %245 = phi i64 [ %248, %244 ], [ %242, %241 ]
  %246 = phi i32 [ %249, %244 ], [ %243, %241 ]
  %247 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %245
  store i32 %175, i32* %247, align 4, !tbaa !8
  %248 = add nsw i64 %245, 1
  %249 = add nsw i32 %246, -1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %244, !llvm.loop !27

251:                                              ; preds = %244, %239
  %252 = phi i64 [ %182, %239 ], [ %248, %244 ]
  %253 = trunc i64 %252 to i32
  br label %254

254:                                              ; preds = %251, %167
  %255 = phi i32 [ %169, %167 ], [ %253, %251 ]
  %256 = add nuw nsw i64 %168, 1
  %257 = icmp eq i64 %256, %142
  br i1 %257, label %258, label %167, !llvm.loop !21

258:                                              ; preds = %254, %137
  %259 = sext i32 %62 to i64
  br label %260

260:                                              ; preds = %258, %279
  %261 = phi i64 [ %263, %279 ], [ 0, %258 ]
  %262 = phi i64 [ %286, %279 ], [ 1, %258 ]
  %263 = add nuw nsw i64 %261, 1
  %264 = icmp slt i64 %263, %259
  %265 = trunc i64 %261 to i32
  br i1 %264, label %266, label %279

266:                                              ; preds = %260, %266
  %267 = phi i64 [ %277, %266 ], [ %262, %260 ]
  %268 = phi i32 [ %276, %266 ], [ %265, %260 ]
  %269 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %267
  %270 = load i32, i32* %269, align 4, !tbaa !8
  %271 = sext i32 %268 to i64
  %272 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4, !tbaa !8
  %274 = icmp slt i32 %270, %273
  %275 = trunc i64 %267 to i32
  %276 = select i1 %274, i32 %275, i32 %268
  %277 = add nuw nsw i64 %267, 1
  %278 = icmp eq i64 %277, %118
  br i1 %278, label %279, label %266, !llvm.loop !22

279:                                              ; preds = %266, %260
  %280 = phi i32 [ %265, %260 ], [ %276, %266 ]
  %281 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %261
  %282 = load i32, i32* %281, align 4, !tbaa !8
  %283 = sext i32 %280 to i64
  %284 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4, !tbaa !8
  store i32 %285, i32* %281, align 4, !tbaa !8
  store i32 %282, i32* %284, align 4, !tbaa !8
  %286 = add nuw nsw i64 %262, 1
  %287 = icmp eq i64 %263, %259
  br i1 %287, label %288, label %260, !llvm.loop !23

288:                                              ; preds = %279, %65
  %289 = icmp eq i32 %62, 0
  br i1 %289, label %356, label %290

290:                                              ; preds = %288
  %291 = zext i32 %62 to i64
  %292 = icmp ult i32 %62, 8
  br i1 %292, label %327, label %293

293:                                              ; preds = %290
  %294 = and i64 %291, 4294967288
  br label %295

295:                                              ; preds = %295, %293
  %296 = phi i64 [ 0, %293 ], [ %323, %295 ]
  %297 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %296
  %298 = bitcast i32* %297 to <4 x i32>*
  %299 = load <4 x i32>, <4 x i32>* %298, align 16, !tbaa !8
  %300 = getelementptr inbounds i32, i32* %297, i64 4
  %301 = bitcast i32* %300 to <4 x i32>*
  %302 = load <4 x i32>, <4 x i32>* %301, align 16, !tbaa !8
  %303 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %296
  %304 = bitcast i32* %303 to <4 x i32>*
  %305 = load <4 x i32>, <4 x i32>* %304, align 16, !tbaa !8
  %306 = getelementptr inbounds i32, i32* %303, i64 4
  %307 = bitcast i32* %306 to <4 x i32>*
  %308 = load <4 x i32>, <4 x i32>* %307, align 16, !tbaa !8
  %309 = sub nsw <4 x i32> %299, %305
  %310 = sub nsw <4 x i32> %302, %308
  %311 = bitcast i32* %297 to <4 x i32>*
  store <4 x i32> %309, <4 x i32>* %311, align 16, !tbaa !8
  %312 = bitcast i32* %300 to <4 x i32>*
  store <4 x i32> %310, <4 x i32>* %312, align 16, !tbaa !8
  %313 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %296
  %314 = bitcast i32* %313 to <4 x i32>*
  %315 = load <4 x i32>, <4 x i32>* %314, align 16, !tbaa !8
  %316 = getelementptr inbounds i32, i32* %313, i64 4
  %317 = bitcast i32* %316 to <4 x i32>*
  %318 = load <4 x i32>, <4 x i32>* %317, align 16, !tbaa !8
  %319 = sub <4 x i32> %315, %299
  %320 = sub <4 x i32> %318, %302
  %321 = bitcast i32* %313 to <4 x i32>*
  store <4 x i32> %319, <4 x i32>* %321, align 16, !tbaa !8
  %322 = bitcast i32* %316 to <4 x i32>*
  store <4 x i32> %320, <4 x i32>* %322, align 16, !tbaa !8
  %323 = add nuw i64 %296, 8
  %324 = icmp eq i64 %323, %294
  br i1 %324, label %325, label %295, !llvm.loop !28

325:                                              ; preds = %295
  %326 = icmp eq i64 %294, %291
  br i1 %326, label %329, label %327

327:                                              ; preds = %290, %325
  %328 = phi i64 [ 0, %290 ], [ %294, %325 ]
  br label %332

329:                                              ; preds = %332, %325
  br i1 %289, label %356, label %330

330:                                              ; preds = %329
  %331 = zext i32 %62 to i64
  br label %346

332:                                              ; preds = %327, %332
  %333 = phi i64 [ %342, %332 ], [ %328, %327 ]
  %334 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4, !tbaa !8
  %336 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %333
  %337 = load i32, i32* %336, align 4, !tbaa !8
  %338 = sub nsw i32 %335, %337
  store i32 %338, i32* %334, align 4, !tbaa !8
  %339 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %333
  %340 = load i32, i32* %339, align 4, !tbaa !8
  %341 = sub i32 %340, %335
  store i32 %341, i32* %339, align 4, !tbaa !8
  %342 = add nuw nsw i64 %333, 1
  %343 = icmp eq i64 %342, %291
  br i1 %343, label %329, label %332, !llvm.loop !29

344:                                              ; preds = %351
  %345 = icmp eq i64 %355, %331
  br i1 %345, label %356, label %346, !llvm.loop !30

346:                                              ; preds = %330, %344
  %347 = phi i64 [ 0, %330 ], [ %355, %344 ]
  %348 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4, !tbaa !8
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %346
  %352 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %347
  %353 = load i32, i32* %352, align 4, !tbaa !8
  %354 = icmp eq i32 %353, 0
  %355 = add nuw nsw i64 %347, 1
  br i1 %354, label %344, label %356

356:                                              ; preds = %346, %351, %344, %24, %288, %329
  %357 = phi i32 [ -123, %329 ], [ -123, %288 ], [ -123, %24 ], [ -123, %344 ], [ 2, %351 ], [ 1, %346 ]
  ret i32 %357
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6, !16}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !6, !20, !16}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6, !16}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !6, !20, !16}
!28 = distinct !{!28, !6, !16}
!29 = distinct !{!29, !6, !20, !16}
!30 = distinct !{!30, !6}
