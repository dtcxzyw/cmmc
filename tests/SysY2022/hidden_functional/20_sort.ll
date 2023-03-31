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
  br i1 %14, label %7, label %4, !llvm.loop !4

15:                                               ; preds = %4, %15
  %16 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %21, %15 ], [ %5, %4 ]
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add i32 %19, %18
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %15, label %24, !llvm.loop !6

24:                                               ; preds = %15
  %25 = icmp eq i32 %6, 0
  %26 = sub nsw i32 0, %20
  %27 = select i1 %25, i32 %20, i32 %26
  ret i32 %27
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5sortAPi(i32* nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @n, align 4, !tbaa !7
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
  br i1 %9, label %11, label %36, !llvm.loop !11

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
  %24 = load i32, i32* %19, align 4, !tbaa !7
  %25 = getelementptr inbounds i32, i32* %0, i64 %23
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  store i32 %26, i32* %19, align 4, !tbaa !7
  store i32 %24, i32* %25, align 4, !tbaa !7
  %29 = load i32, i32* @n, align 4, !tbaa !7
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi i32 [ %29, %28 ], [ %21, %20 ]
  %32 = phi i32 [ %29, %28 ], [ %22, %20 ]
  %33 = add nuw nsw i64 %23, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %20, label %4, !llvm.loop !12

36:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5sortBPi(i32* nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @n, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %103

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
  %17 = load i32, i32* %16, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4, !tbaa !7
  %22 = load i32, i32* %16, align 4, !tbaa !7
  %23 = icmp sgt i32 %22, %13
  %24 = select i1 %23, i32 %22, i32 %13
  br label %25

25:                                               ; preds = %10, %15
  %26 = phi i32 [ %11, %10 ], [ %24, %15 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %103, label %28

28:                                               ; preds = %25
  %29 = add nuw i32 %26, 1
  %30 = zext i32 %29 to i64
  br label %57

31:                                               ; preds = %31, %8
  %32 = phi i64 [ 0, %8 ], [ %54, %31 ]
  %33 = phi i32 [ -100, %8 ], [ %53, %31 ]
  %34 = phi i64 [ 0, %8 ], [ %55, %31 ]
  %35 = getelementptr inbounds i32, i32* %0, i64 %32
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4, !tbaa !7
  %41 = load i32, i32* %35, align 4, !tbaa !7
  %42 = icmp sgt i32 %41, %33
  %43 = select i1 %42, i32 %41, i32 %33
  %44 = or i64 %32, 1
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !7
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !7
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4, !tbaa !7
  %51 = load i32, i32* %45, align 4, !tbaa !7
  %52 = icmp sgt i32 %51, %43
  %53 = select i1 %52, i32 %51, i32 %43
  %54 = add nuw nsw i64 %32, 2
  %55 = add i64 %34, 2
  %56 = icmp eq i64 %55, %9
  br i1 %56, label %10, label %31, !llvm.loop !13

57:                                               ; preds = %28, %99
  %58 = phi i64 [ 0, %28 ], [ %101, %99 ]
  %59 = phi i32 [ 0, %28 ], [ %100, %99 ]
  %60 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %58
  %61 = load i32, i32* %60, align 4, !tbaa !7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %99, label %63

63:                                               ; preds = %57
  %64 = sext i32 %59 to i64
  %65 = trunc i64 %58 to i32
  %66 = add i32 %61, -1
  %67 = and i32 %61, 3
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63, %69
  %70 = phi i64 [ %74, %69 ], [ %64, %63 ]
  %71 = phi i32 [ %75, %69 ], [ %61, %63 ]
  %72 = phi i32 [ %76, %69 ], [ 0, %63 ]
  %73 = getelementptr inbounds i32, i32* %0, i64 %70
  store i32 %65, i32* %73, align 4, !tbaa !7
  %74 = add nsw i64 %70, 1
  %75 = add nsw i32 %71, -1
  %76 = add i32 %72, 1
  %77 = icmp eq i32 %76, %67
  br i1 %77, label %78, label %69, !llvm.loop !14

78:                                               ; preds = %69, %63
  %79 = phi i64 [ undef, %63 ], [ %74, %69 ]
  %80 = phi i64 [ %64, %63 ], [ %74, %69 ]
  %81 = phi i32 [ %61, %63 ], [ %75, %69 ]
  %82 = icmp ult i32 %66, 3
  br i1 %82, label %96, label %83

83:                                               ; preds = %78, %83
  %84 = phi i64 [ %93, %83 ], [ %80, %78 ]
  %85 = phi i32 [ %94, %83 ], [ %81, %78 ]
  %86 = getelementptr inbounds i32, i32* %0, i64 %84
  store i32 %65, i32* %86, align 4, !tbaa !7
  %87 = add nsw i64 %84, 1
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  store i32 %65, i32* %88, align 4, !tbaa !7
  %89 = add nsw i64 %84, 2
  %90 = getelementptr inbounds i32, i32* %0, i64 %89
  store i32 %65, i32* %90, align 4, !tbaa !7
  %91 = add nsw i64 %84, 3
  %92 = getelementptr inbounds i32, i32* %0, i64 %91
  store i32 %65, i32* %92, align 4, !tbaa !7
  %93 = add nsw i64 %84, 4
  %94 = add nsw i32 %85, -4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %83, !llvm.loop !16

96:                                               ; preds = %83, %78
  %97 = phi i64 [ %79, %78 ], [ %93, %83 ]
  %98 = trunc i64 %97 to i32
  br label %99

99:                                               ; preds = %96, %57
  %100 = phi i32 [ %59, %57 ], [ %98, %96 ]
  %101 = add nuw nsw i64 %58, 1
  %102 = icmp eq i64 %101, %30
  br i1 %102, label %103, label %57, !llvm.loop !17

103:                                              ; preds = %99, %1, %25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5sortCPi(i32* nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @n, align 4, !tbaa !7
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
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = icmp slt i32 %18, %21
  %23 = trunc i64 %15 to i32
  %24 = select i1 %22, i32 %23, i32 %16
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, %13
  br i1 %26, label %27, label %14, !llvm.loop !18

27:                                               ; preds = %14, %4
  %28 = phi i32 [ %11, %4 ], [ %24, %14 ]
  %29 = getelementptr inbounds i32, i32* %0, i64 %5
  %30 = load i32, i32* %29, align 4, !tbaa !7
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !7
  store i32 %33, i32* %29, align 4, !tbaa !7
  store i32 %30, i32* %32, align 4, !tbaa !7
  %34 = load i32, i32* @n, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %8, %35
  %37 = add nuw nsw i64 %6, 1
  br i1 %36, label %4, label %38, !llvm.loop !19

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
  br i1 %14, label %7, label %4, !llvm.loop !4

15:                                               ; preds = %15, %4
  %16 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %21, %15 ], [ %5, %4 ]
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add i32 %19, %18
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %15, label %24, !llvm.loop !6

24:                                               ; preds = %15
  %25 = icmp eq i32 %6, 0
  %26 = sub nsw i32 0, %20
  %27 = select i1 %25, i32 %20, i32 %26
  store i32 %27, i32* @n, align 4, !tbaa !7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %301, label %29

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
  br i1 %44, label %37, label %34, !llvm.loop !4

45:                                               ; preds = %45, %34
  %46 = phi i32 [ %50, %45 ], [ 0, %34 ]
  %47 = phi i32 [ %51, %45 ], [ %35, %34 ]
  %48 = mul nsw i32 %46, 10
  %49 = add nsw i32 %47, -48
  %50 = add i32 %49, %48
  %51 = tail call noundef i32 @_Z5getchv()
  %52 = add i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %45, label %54, !llvm.loop !6

54:                                               ; preds = %45
  %55 = icmp eq i32 %36, 0
  %56 = sub nsw i32 0, %50
  %57 = select i1 %55, i32 %50, i32 %56
  %58 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %30
  store i32 %57, i32* %58, align 4, !tbaa !7
  %59 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %30
  store i32 %57, i32* %59, align 4, !tbaa !7
  %60 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %30
  store i32 %57, i32* %60, align 4, !tbaa !7
  %61 = add nuw i64 %30, 1
  %62 = load i32, i32* @n, align 4, !tbaa !7
  %63 = zext i32 %62 to i64
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %29, !llvm.loop !20

65:                                               ; preds = %54
  %66 = icmp sgt i32 %62, 0
  br i1 %66, label %67, label %243

67:                                               ; preds = %65
  %68 = add i32 %62, -2
  %69 = sext i32 %62 to i64
  %70 = sext i32 %62 to i64
  br label %75

71:                                               ; preds = %96, %113, %75
  %72 = phi i64 [ %69, %75 ], [ %70, %113 ], [ %70, %96 ]
  %73 = icmp slt i64 %79, %72
  %74 = add nuw nsw i64 %77, 1
  br i1 %73, label %75, label %117, !llvm.loop !11

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
  %89 = load i32, i32* %85, align 4, !tbaa !7
  %90 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %77
  %91 = load i32, i32* %90, align 4, !tbaa !7
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 %91, i32* %85, align 4, !tbaa !7
  store i32 %89, i32* %90, align 4, !tbaa !7
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
  %101 = load i32, i32* %85, align 4, !tbaa !7
  %102 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %100
  %103 = load i32, i32* %102, align 4, !tbaa !7
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 %103, i32* %85, align 4, !tbaa !7
  store i32 %101, i32* %102, align 4, !tbaa !7
  br label %106

106:                                              ; preds = %105, %99
  %107 = add nuw nsw i64 %100, 1
  %108 = load i32, i32* %85, align 4, !tbaa !7
  %109 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %107
  %110 = load i32, i32* %109, align 4, !tbaa !7
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 %110, i32* %85, align 4, !tbaa !7
  store i32 %108, i32* %109, align 4, !tbaa !7
  br label %113

113:                                              ; preds = %112, %106
  %114 = add nuw nsw i64 %100, 2
  %115 = trunc i64 %114 to i32
  %116 = icmp sgt i32 %62, %115
  br i1 %116, label %99, label %71, !llvm.loop !12

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
  %130 = load i32, i32* %129, align 4, !tbaa !7
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4, !tbaa !7
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4, !tbaa !7
  %135 = icmp sgt i32 %130, %126
  %136 = select i1 %135, i32 %130, i32 %126
  br label %137

137:                                              ; preds = %123, %128
  %138 = phi i32 [ %124, %123 ], [ %136, %128 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %213, label %140

140:                                              ; preds = %137
  %141 = add nuw i32 %138, 1
  %142 = zext i32 %141 to i64
  br label %167

143:                                              ; preds = %143, %121
  %144 = phi i64 [ 0, %121 ], [ %164, %143 ]
  %145 = phi i32 [ -100, %121 ], [ %163, %143 ]
  %146 = phi i64 [ 0, %121 ], [ %165, %143 ]
  %147 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %144
  %148 = load i32, i32* %147, align 8, !tbaa !7
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4, !tbaa !7
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4, !tbaa !7
  %153 = icmp sgt i32 %148, %145
  %154 = select i1 %153, i32 %148, i32 %145
  %155 = or i64 %144, 1
  %156 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4, !tbaa !7
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !7
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4, !tbaa !7
  %162 = icmp sgt i32 %157, %154
  %163 = select i1 %162, i32 %157, i32 %154
  %164 = add nuw nsw i64 %144, 2
  %165 = add i64 %146, 2
  %166 = icmp eq i64 %165, %122
  br i1 %166, label %123, label %143, !llvm.loop !13

167:                                              ; preds = %209, %140
  %168 = phi i64 [ 0, %140 ], [ %211, %209 ]
  %169 = phi i32 [ 0, %140 ], [ %210, %209 ]
  %170 = getelementptr inbounds [400020 x i32], [400020 x i32]* @cnt, i64 0, i64 %168
  %171 = load i32, i32* %170, align 4, !tbaa !7
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %209, label %173

173:                                              ; preds = %167
  %174 = sext i32 %169 to i64
  %175 = trunc i64 %168 to i32
  %176 = add i32 %171, -1
  %177 = and i32 %171, 3
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %173, %179
  %180 = phi i64 [ %184, %179 ], [ %174, %173 ]
  %181 = phi i32 [ %185, %179 ], [ %171, %173 ]
  %182 = phi i32 [ %186, %179 ], [ 0, %173 ]
  %183 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %180
  store i32 %175, i32* %183, align 4, !tbaa !7
  %184 = add nsw i64 %180, 1
  %185 = add nsw i32 %181, -1
  %186 = add i32 %182, 1
  %187 = icmp eq i32 %186, %177
  br i1 %187, label %188, label %179, !llvm.loop !21

188:                                              ; preds = %179, %173
  %189 = phi i64 [ undef, %173 ], [ %184, %179 ]
  %190 = phi i64 [ %174, %173 ], [ %184, %179 ]
  %191 = phi i32 [ %171, %173 ], [ %185, %179 ]
  %192 = icmp ult i32 %176, 3
  br i1 %192, label %206, label %193

193:                                              ; preds = %188, %193
  %194 = phi i64 [ %203, %193 ], [ %190, %188 ]
  %195 = phi i32 [ %204, %193 ], [ %191, %188 ]
  %196 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %194
  store i32 %175, i32* %196, align 4, !tbaa !7
  %197 = add nsw i64 %194, 1
  %198 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %197
  store i32 %175, i32* %198, align 4, !tbaa !7
  %199 = add nsw i64 %194, 2
  %200 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %199
  store i32 %175, i32* %200, align 4, !tbaa !7
  %201 = add nsw i64 %194, 3
  %202 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %201
  store i32 %175, i32* %202, align 4, !tbaa !7
  %203 = add nsw i64 %194, 4
  %204 = add nsw i32 %195, -4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %193, !llvm.loop !16

206:                                              ; preds = %193, %188
  %207 = phi i64 [ %189, %188 ], [ %203, %193 ]
  %208 = trunc i64 %207 to i32
  br label %209

209:                                              ; preds = %206, %167
  %210 = phi i32 [ %169, %167 ], [ %208, %206 ]
  %211 = add nuw nsw i64 %168, 1
  %212 = icmp eq i64 %211, %142
  br i1 %212, label %213, label %167, !llvm.loop !17

213:                                              ; preds = %209, %137
  %214 = sext i32 %62 to i64
  br label %215

215:                                              ; preds = %213, %234
  %216 = phi i64 [ %218, %234 ], [ 0, %213 ]
  %217 = phi i64 [ %241, %234 ], [ 1, %213 ]
  %218 = add nuw nsw i64 %216, 1
  %219 = icmp slt i64 %218, %214
  %220 = trunc i64 %216 to i32
  br i1 %219, label %221, label %234

221:                                              ; preds = %215, %221
  %222 = phi i64 [ %232, %221 ], [ %217, %215 ]
  %223 = phi i32 [ %231, %221 ], [ %220, %215 ]
  %224 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %222
  %225 = load i32, i32* %224, align 4, !tbaa !7
  %226 = sext i32 %223 to i64
  %227 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4, !tbaa !7
  %229 = icmp slt i32 %225, %228
  %230 = trunc i64 %222 to i32
  %231 = select i1 %229, i32 %230, i32 %223
  %232 = add nuw nsw i64 %222, 1
  %233 = icmp eq i64 %232, %118
  br i1 %233, label %234, label %221, !llvm.loop !18

234:                                              ; preds = %221, %215
  %235 = phi i32 [ %220, %215 ], [ %231, %221 ]
  %236 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %216
  %237 = load i32, i32* %236, align 4, !tbaa !7
  %238 = sext i32 %235 to i64
  %239 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4, !tbaa !7
  store i32 %240, i32* %236, align 4, !tbaa !7
  store i32 %237, i32* %239, align 4, !tbaa !7
  %241 = add nuw nsw i64 %217, 1
  %242 = icmp eq i64 %218, %214
  br i1 %242, label %243, label %215, !llvm.loop !19

243:                                              ; preds = %234, %65
  %244 = icmp eq i32 %62, 0
  br i1 %244, label %301, label %245

245:                                              ; preds = %243
  %246 = zext i32 %62 to i64
  %247 = and i64 %246, 1
  %248 = icmp eq i32 %62, 1
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = and i64 %246, 4294967294
  br label %266

251:                                              ; preds = %266, %245
  %252 = phi i64 [ 0, %245 ], [ %286, %266 ]
  %253 = icmp eq i64 %247, 0
  br i1 %253, label %263, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %252
  %256 = load i32, i32* %255, align 4, !tbaa !7
  %257 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %252
  %258 = load i32, i32* %257, align 4, !tbaa !7
  %259 = sub nsw i32 %256, %258
  store i32 %259, i32* %255, align 4, !tbaa !7
  %260 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %252
  %261 = load i32, i32* %260, align 4, !tbaa !7
  %262 = sub i32 %261, %256
  store i32 %262, i32* %260, align 4, !tbaa !7
  br label %263

263:                                              ; preds = %251, %254
  br i1 %244, label %301, label %264

264:                                              ; preds = %263
  %265 = zext i32 %62 to i64
  br label %291

266:                                              ; preds = %266, %249
  %267 = phi i64 [ 0, %249 ], [ %286, %266 ]
  %268 = phi i64 [ 0, %249 ], [ %287, %266 ]
  %269 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %267
  %270 = load i32, i32* %269, align 8, !tbaa !7
  %271 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %267
  %272 = load i32, i32* %271, align 8, !tbaa !7
  %273 = sub nsw i32 %270, %272
  store i32 %273, i32* %269, align 8, !tbaa !7
  %274 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %267
  %275 = load i32, i32* %274, align 8, !tbaa !7
  %276 = sub i32 %275, %270
  store i32 %276, i32* %274, align 8, !tbaa !7
  %277 = or i64 %267, 1
  %278 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4, !tbaa !7
  %280 = getelementptr inbounds [100005 x i32], [100005 x i32]* @a, i64 0, i64 %277
  %281 = load i32, i32* %280, align 4, !tbaa !7
  %282 = sub nsw i32 %279, %281
  store i32 %282, i32* %278, align 4, !tbaa !7
  %283 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %277
  %284 = load i32, i32* %283, align 4, !tbaa !7
  %285 = sub i32 %284, %279
  store i32 %285, i32* %283, align 4, !tbaa !7
  %286 = add nuw nsw i64 %267, 2
  %287 = add i64 %268, 2
  %288 = icmp eq i64 %287, %250
  br i1 %288, label %251, label %266, !llvm.loop !22

289:                                              ; preds = %296
  %290 = icmp eq i64 %300, %265
  br i1 %290, label %301, label %291, !llvm.loop !23

291:                                              ; preds = %264, %289
  %292 = phi i64 [ 0, %264 ], [ %300, %289 ]
  %293 = getelementptr inbounds [100005 x i32], [100005 x i32]* @b, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4, !tbaa !7
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = getelementptr inbounds [100005 x i32], [100005 x i32]* @c, i64 0, i64 %292
  %298 = load i32, i32* %297, align 4, !tbaa !7
  %299 = icmp eq i32 %298, 0
  %300 = add nuw nsw i64 %292, 1
  br i1 %299, label %289, label %301

301:                                              ; preds = %291, %296, %289, %24, %243, %263
  %302 = phi i32 [ -123, %263 ], [ -123, %243 ], [ -123, %24 ], [ -123, %289 ], [ 2, %296 ], [ 1, %291 ]
  ret i32 %302
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
