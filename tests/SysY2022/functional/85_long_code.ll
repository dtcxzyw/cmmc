; ModuleID = 'tests//SysY2022/functional/85_long_code.sy'
source_filename = "tests//SysY2022/functional/85_long_code.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z10bubblesortPi(i32* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @n, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %36

4:                                                ; preds = %1, %31
  %5 = phi i32 [ %32, %31 ], [ %2, %1 ]
  %6 = phi i32 [ %33, %31 ], [ 0, %1 ]
  %7 = xor i32 %6, -1
  %8 = add i32 %5, %7
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  %11 = load i32, i32* %0, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %10, %24
  %13 = phi i32 [ %5, %10 ], [ %25, %24 ]
  %14 = phi i32 [ %5, %10 ], [ %26, %24 ]
  %15 = phi i32 [ %11, %10 ], [ %27, %24 ]
  %16 = phi i64 [ 0, %10 ], [ %17, %24 ]
  %17 = add nuw nsw i64 %16, 1
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds i32, i32* %0, i64 %16
  store i32 %15, i32* %18, align 4, !tbaa !5
  store i32 %19, i32* %22, align 4, !tbaa !5
  %23 = load i32, i32* @n, align 4, !tbaa !5
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi i32 [ %23, %21 ], [ %13, %12 ]
  %26 = phi i32 [ %23, %21 ], [ %14, %12 ]
  %27 = phi i32 [ %15, %21 ], [ %19, %12 ]
  %28 = add i32 %26, %7
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %17, %29
  br i1 %30, label %12, label %31, !llvm.loop !9

31:                                               ; preds = %24, %4
  %32 = phi i32 [ %5, %4 ], [ %25, %24 ]
  %33 = add nuw nsw i32 %6, 1
  %34 = add nsw i32 %32, -1
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %4, label %36, !llvm.loop !11

36:                                               ; preds = %31, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z10insertsortPi(i32* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @n, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %27

4:                                                ; preds = %1, %18
  %5 = phi i64 [ %23, %18 ], [ 1, %1 ]
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %4, %15
  %9 = phi i64 [ %5, %4 ], [ %10, %15 ]
  %10 = add nsw i64 %9, -1
  %11 = and i64 %10, 4294967295
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds i32, i32* %0, i64 %9
  store i32 %13, i32* %16, align 4, !tbaa !5
  %17 = icmp sgt i64 %9, 1
  br i1 %17, label %8, label %18, !llvm.loop !12

18:                                               ; preds = %15, %8
  %19 = phi i64 [ 0, %15 ], [ %9, %8 ]
  %20 = shl i64 %19, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  store i32 %7, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %5, 1
  %24 = load i32, i32* @n, align 4, !tbaa !5
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %4, label %27, !llvm.loop !13

27:                                               ; preds = %18, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z9QuickSortPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %67

5:                                                ; preds = %3, %59
  %6 = phi i32 [ %65, %59 ], [ %1, %3 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = icmp slt i32 %6, %2
  br i1 %10, label %11, label %59

11:                                               ; preds = %5, %52
  %12 = phi i32 [ %53, %52 ], [ %6, %5 ]
  %13 = phi i32 [ %54, %52 ], [ %2, %5 ]
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = sext i32 %13 to i64
  %17 = sext i32 %12 to i64
  br label %18

18:                                               ; preds = %15, %23
  %19 = phi i64 [ %16, %15 ], [ %24, %23 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = icmp slt i32 %21, %9
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add nsw i64 %19, -1
  %25 = icmp sgt i64 %24, %17
  br i1 %25, label %18, label %30, !llvm.loop !14

26:                                               ; preds = %18
  %27 = trunc i64 %19 to i32
  %28 = getelementptr inbounds i32, i32* %0, i64 %17
  store i32 %21, i32* %28, align 4, !tbaa !5
  %29 = add nsw i32 %12, 1
  br label %32

30:                                               ; preds = %23
  %31 = trunc i64 %24 to i32
  br label %32

32:                                               ; preds = %30, %11, %26
  %33 = phi i32 [ %27, %26 ], [ %13, %11 ], [ %31, %30 ]
  %34 = phi i32 [ %29, %26 ], [ %12, %11 ], [ %12, %30 ]
  %35 = icmp slt i32 %34, %33
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = sext i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %43
  %39 = phi i64 [ %37, %36 ], [ %44, %43 ]
  %40 = getelementptr inbounds i32, i32* %0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = icmp slt i32 %41, %9
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = add nsw i64 %39, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %33, %45
  br i1 %46, label %56, label %38, !llvm.loop !15

47:                                               ; preds = %38
  %48 = trunc i64 %39 to i32
  %49 = sext i32 %33 to i64
  %50 = getelementptr inbounds i32, i32* %0, i64 %49
  store i32 %41, i32* %50, align 4, !tbaa !5
  %51 = add nsw i32 %33, -1
  br label %52

52:                                               ; preds = %32, %47
  %53 = phi i32 [ %48, %47 ], [ %34, %32 ]
  %54 = phi i32 [ %51, %47 ], [ %33, %32 ]
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %11, label %56, !llvm.loop !16

56:                                               ; preds = %52, %43
  %57 = phi i32 [ %33, %43 ], [ %53, %52 ]
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %56, %5
  %60 = phi i64 [ %58, %56 ], [ %7, %5 ]
  %61 = phi i32 [ %57, %56 ], [ %6, %5 ]
  %62 = getelementptr inbounds i32, i32* %0, i64 %60
  store i32 %9, i32* %62, align 4, !tbaa !5
  %63 = add nsw i32 %61, -1
  %64 = tail call noundef i32 @_Z9QuickSortPiii(i32* noundef %0, i32 noundef %6, i32 noundef %63)
  %65 = add nsw i32 %61, 1
  %66 = icmp slt i32 %65, %2
  br i1 %66, label %5, label %67

67:                                               ; preds = %59, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6getMidPi(i32* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, i32* @n, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  %5 = sdiv i32 %2, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !5
  br i1 %4, label %9, label %16

9:                                                ; preds = %1
  %10 = add nsw i32 %5, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = add nsw i32 %13, %8
  %15 = sdiv i32 %14, 2
  br label %16

16:                                               ; preds = %1, %9
  %17 = phi i32 [ %15, %9 ], [ %8, %1 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z7getMostPi(i32* nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca [1000 x i32], align 16
  %3 = bitcast [1000 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* nonnull %3) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4000) %3, i8 0, i64 4000, i1 false), !tbaa !5
  %4 = load i32, i32* @n, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %53

6:                                                ; preds = %1
  %7 = zext i32 %4 to i64
  %8 = and i64 %7, 1
  %9 = icmp eq i32 %4, 1
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = and i64 %7, 4294967294
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %36, %12 ]
  %14 = phi i32 [ undef, %10 ], [ %35, %12 ]
  %15 = phi i32 [ 0, %10 ], [ %34, %12 ]
  %16 = phi i64 [ 0, %10 ], [ %37, %12 ]
  %17 = getelementptr inbounds i32, i32* %0, i64 %13
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1000 x i32], [1000 x i32]* %2, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !5
  %23 = icmp slt i32 %21, %15
  %24 = select i1 %23, i32 %15, i32 %22
  %25 = select i1 %23, i32 %14, i32 %18
  %26 = or i64 %13, 1
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1000 x i32], [1000 x i32]* %2, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4, !tbaa !5
  %33 = icmp slt i32 %31, %24
  %34 = select i1 %33, i32 %24, i32 %32
  %35 = select i1 %33, i32 %25, i32 %28
  %36 = add nuw nsw i64 %13, 2
  %37 = add i64 %16, 2
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %39, label %12, !llvm.loop !17

39:                                               ; preds = %12, %6
  %40 = phi i64 [ 0, %6 ], [ %36, %12 ]
  %41 = phi i32 [ undef, %6 ], [ %35, %12 ]
  %42 = phi i32 [ 0, %6 ], [ %34, %12 ]
  %43 = icmp eq i64 %8, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i32, i32* %0, i64 %40
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1000 x i32], [1000 x i32]* %2, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4, !tbaa !5
  %51 = icmp slt i32 %49, %42
  %52 = select i1 %51, i32 %41, i32 %46
  br label %53

53:                                               ; preds = %44, %39, %1
  %54 = phi i32 [ undef, %1 ], [ %41, %39 ], [ %52, %44 ]
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* nonnull %3) #12
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6revertPi(i32* nocapture readnone %0) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z7arrCopyPiS_(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @n, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, i32* %1, i64 %6
  store i32 %8, i32* %9, align 4, !tbaa !5
  %10 = add nuw nsw i64 %6, 1
  %11 = load i32, i32* @n, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %5, label %14, !llvm.loop !18

14:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z6calSumPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @n, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = add nsw i32 %1, -1
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %18, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %17, %7 ]
  %10 = getelementptr inbounds i32, i32* %0, i64 %8
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = add nsw i32 %11, %9
  %13 = trunc i64 %8 to i32
  %14 = srem i32 %13, %1
  %15 = icmp eq i32 %14, %6
  %16 = select i1 %15, i32 %12, i32 0
  %17 = select i1 %15, i32 0, i32 %12
  store i32 %16, i32* %10, align 4, !tbaa !5
  %18 = add nuw nsw i64 %8, 1
  %19 = load i32, i32* @n, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %7, label %22, !llvm.loop !19

22:                                               ; preds = %7, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z10avgPoolingPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @n, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %2
  %6 = add nsw i32 %1, -1
  %7 = sub i32 1, %1
  %8 = zext i32 %6 to i64
  %9 = sext i32 %6 to i64
  br label %10

10:                                               ; preds = %5, %35
  %11 = phi i64 [ 0, %5 ], [ %38, %35 ]
  %12 = phi i32 [ undef, %5 ], [ %37, %35 ]
  %13 = phi i32 [ 0, %5 ], [ %36, %35 ]
  %14 = icmp slt i64 %11, %9
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds i32, i32* %0, i64 %11
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = add nsw i32 %17, %13
  br label %35

19:                                               ; preds = %10
  %20 = icmp eq i64 %11, %8
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32, i32* %0, align 4, !tbaa !5
  %23 = sdiv i32 %13, %1
  store i32 %23, i32* %0, align 4, !tbaa !5
  br label %35

24:                                               ; preds = %19
  %25 = getelementptr inbounds i32, i32* %0, i64 %11
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = sub i32 %13, %12
  %28 = add i32 %27, %26
  %29 = trunc i64 %11 to i32
  %30 = add i32 %7, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = sdiv i32 %28, %1
  store i32 %34, i32* %32, align 4, !tbaa !5
  br label %35

35:                                               ; preds = %21, %24, %15
  %36 = phi i32 [ %18, %15 ], [ %13, %21 ], [ %28, %24 ]
  %37 = phi i32 [ %12, %15 ], [ %22, %21 ], [ %33, %24 ]
  %38 = add nuw nsw i64 %11, 1
  %39 = load i32, i32* @n, align 4, !tbaa !5
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %10, label %42, !llvm.loop !20

42:                                               ; preds = %35, %2
  %43 = phi i32 [ %3, %2 ], [ %39, %35 ]
  %44 = sub nsw i32 %43, %1
  %45 = add i32 %44, 1
  %46 = icmp slt i32 %45, %43
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = sext i32 %45 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %48, %47 ], [ %52, %49 ]
  %51 = getelementptr inbounds i32, i32* %0, i64 %50
  store i32 0, i32* %51, align 4, !tbaa !5
  %52 = add nsw i64 %50, 1
  %53 = load i32, i32* @n, align 4, !tbaa !5
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %49, label %56, !llvm.loop !21

56:                                               ; preds = %49, %42
  ret i32 0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
  %1 = alloca [1000 x i32], align 16
  %2 = alloca [32 x i32], align 16
  %3 = bitcast [32 x i32]* %2 to i8*
  %4 = alloca [32 x i32], align 16
  %5 = bitcast [32 x i32]* %4 to i8*
  store i32 32, i32* @n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3)
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #12
  %6 = bitcast [32 x i32]* %2 to <4 x i32>*
  store <4 x i32> <i32 7, i32 23, i32 89, i32 26>, <4 x i32>* %6, align 16, !tbaa !5
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 4
  %8 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 282, i32 254, i32 27, i32 5>, <4 x i32>* %8, align 16, !tbaa !5
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 8
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 83, i32 273, i32 574, i32 905>, <4 x i32>* %10, align 16, !tbaa !5
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 12
  %12 = bitcast i32* %11 to <4 x i32>*
  store <4 x i32> <i32 354, i32 657, i32 935, i32 264>, <4 x i32>* %12, align 16, !tbaa !5
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 16
  %14 = bitcast i32* %13 to <4 x i32>*
  store <4 x i32> <i32 639, i32 459, i32 29, i32 68>, <4 x i32>* %14, align 16, !tbaa !5
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 20
  %16 = bitcast i32* %15 to <4 x i32>*
  store <4 x i32> <i32 929, i32 756, i32 452, i32 279>, <4 x i32>* %16, align 16, !tbaa !5
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 24
  %18 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> <i32 58, i32 87, i32 96, i32 36>, <4 x i32>* %18, align 16, !tbaa !5
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 28
  %20 = bitcast i32* %19 to <4 x i32>*
  store <4 x i32> <i32 39, i32 28, i32 1, i32 290>, <4 x i32>* %20, align 16, !tbaa !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %5, i8* noundef nonnull align 16 dereferenceable(128) %3, i64 128, i1 false), !tbaa !5
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %22 = load i32, i32* %21, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %22)
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 1
  %24 = load i32, i32* %23, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %24)
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 2
  %26 = load i32, i32* %25, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %26)
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 3
  %28 = load i32, i32* %27, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %28)
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 4
  %30 = load i32, i32* %29, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %30)
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 5
  %32 = load i32, i32* %31, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %32)
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 6
  %34 = load i32, i32* %33, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %34)
  %35 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 7
  %36 = load i32, i32* %35, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %36)
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 8
  %38 = load i32, i32* %37, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %38)
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 9
  %40 = load i32, i32* %39, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %40)
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 10
  %42 = load i32, i32* %41, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %42)
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 11
  %44 = load i32, i32* %43, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %44)
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 12
  %46 = load i32, i32* %45, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %46)
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 13
  %48 = load i32, i32* %47, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %48)
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 14
  %50 = load i32, i32* %49, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %50)
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 15
  %52 = load i32, i32* %51, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %52)
  %53 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 16
  %54 = load i32, i32* %53, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %54)
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 17
  %56 = load i32, i32* %55, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %56)
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 18
  %58 = load i32, i32* %57, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %58)
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 19
  %60 = load i32, i32* %59, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %60)
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 20
  %62 = load i32, i32* %61, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %62)
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 21
  %64 = load i32, i32* %63, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %64)
  %65 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 22
  %66 = load i32, i32* %65, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %66)
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 23
  %68 = load i32, i32* %67, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %68)
  %69 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 24
  %70 = load i32, i32* %69, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %70)
  %71 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 25
  %72 = load i32, i32* %71, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %72)
  %73 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 26
  %74 = load i32, i32* %73, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %74)
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 27
  %76 = load i32, i32* %75, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %76)
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 28
  %78 = load i32, i32* %77, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %78)
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 29
  %80 = load i32, i32* %79, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %80)
  %81 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 30
  %82 = load i32, i32* %81, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %82)
  %83 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 31
  %84 = load i32, i32* %83, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %84)
  %85 = load i32, i32* @n, align 4, !tbaa !5
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %171

87:                                               ; preds = %0
  %88 = add i32 %85, -1
  br label %89

89:                                               ; preds = %87, %135
  %90 = phi i32 [ 0, %87 ], [ %136, %135 ]
  %91 = sub i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = xor i32 %90, -1
  %94 = add i32 %85, %93
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %135

96:                                               ; preds = %89
  %97 = load i32, i32* %21, align 16, !tbaa !5
  %98 = and i64 %92, 1
  %99 = icmp eq i32 %91, 1
  br i1 %99, label %124, label %100

100:                                              ; preds = %96
  %101 = and i64 %92, -2
  br label %102

102:                                              ; preds = %120, %100
  %103 = phi i32 [ %97, %100 ], [ %121, %120 ]
  %104 = phi i64 [ 0, %100 ], [ %114, %120 ]
  %105 = phi i64 [ 0, %100 ], [ %122, %120 ]
  %106 = or i64 %104, 1
  %107 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %109 = icmp sgt i32 %103, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %104
  store i32 %103, i32* %107, align 4, !tbaa !5
  store i32 %108, i32* %111, align 8, !tbaa !5
  br label %112

112:                                              ; preds = %110, %102
  %113 = phi i32 [ %103, %110 ], [ %108, %102 ]
  %114 = add nuw nsw i64 %104, 2
  %115 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %114
  %116 = load i32, i32* %115, align 8, !tbaa !5
  %117 = icmp sgt i32 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %106
  store i32 %113, i32* %115, align 8, !tbaa !5
  store i32 %116, i32* %119, align 4, !tbaa !5
  br label %120

120:                                              ; preds = %118, %112
  %121 = phi i32 [ %113, %118 ], [ %116, %112 ]
  %122 = add i64 %105, 2
  %123 = icmp eq i64 %122, %101
  br i1 %123, label %124, label %102, !llvm.loop !9

124:                                              ; preds = %120, %96
  %125 = phi i32 [ %97, %96 ], [ %121, %120 ]
  %126 = phi i64 [ 0, %96 ], [ %114, %120 ]
  %127 = icmp eq i64 %98, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %124
  %129 = add nuw nsw i64 %126, 1
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !5
  %132 = icmp sgt i32 %125, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %126
  store i32 %125, i32* %130, align 4, !tbaa !5
  store i32 %131, i32* %134, align 4, !tbaa !5
  br label %135

135:                                              ; preds = %124, %133, %128, %89
  %136 = add nuw nsw i32 %90, 1
  %137 = icmp eq i32 %136, %88
  br i1 %137, label %138, label %89, !llvm.loop !11

138:                                              ; preds = %135
  %139 = load i32, i32* %21, align 16, !tbaa !5
  %140 = load i32, i32* %23, align 4, !tbaa !5
  %141 = load i32, i32* %25, align 8, !tbaa !5
  %142 = load i32, i32* %27, align 4, !tbaa !5
  %143 = load i32, i32* %29, align 16, !tbaa !5
  %144 = load i32, i32* %31, align 4, !tbaa !5
  %145 = load i32, i32* %33, align 8, !tbaa !5
  %146 = load i32, i32* %35, align 4, !tbaa !5
  %147 = load i32, i32* %37, align 16, !tbaa !5
  %148 = load i32, i32* %39, align 4, !tbaa !5
  %149 = load i32, i32* %41, align 8, !tbaa !5
  %150 = load i32, i32* %43, align 4, !tbaa !5
  %151 = load i32, i32* %45, align 16, !tbaa !5
  %152 = load i32, i32* %47, align 4, !tbaa !5
  %153 = load i32, i32* %49, align 8, !tbaa !5
  %154 = load i32, i32* %51, align 4, !tbaa !5
  %155 = load i32, i32* %53, align 16, !tbaa !5
  %156 = load i32, i32* %55, align 4, !tbaa !5
  %157 = load i32, i32* %57, align 8, !tbaa !5
  %158 = load i32, i32* %59, align 4, !tbaa !5
  %159 = load i32, i32* %61, align 16, !tbaa !5
  %160 = load i32, i32* %63, align 4, !tbaa !5
  %161 = load i32, i32* %65, align 8, !tbaa !5
  %162 = load i32, i32* %67, align 4, !tbaa !5
  %163 = load i32, i32* %69, align 16, !tbaa !5
  %164 = load i32, i32* %71, align 4, !tbaa !5
  %165 = load i32, i32* %73, align 8, !tbaa !5
  %166 = load i32, i32* %75, align 4, !tbaa !5
  %167 = load i32, i32* %77, align 16, !tbaa !5
  %168 = load i32, i32* %79, align 4, !tbaa !5
  %169 = load i32, i32* %81, align 8, !tbaa !5
  %170 = load i32, i32* %83, align 4, !tbaa !5
  br label %171

171:                                              ; preds = %138, %0
  %172 = phi i32 [ %170, %138 ], [ %84, %0 ]
  %173 = phi i32 [ %169, %138 ], [ %82, %0 ]
  %174 = phi i32 [ %168, %138 ], [ %80, %0 ]
  %175 = phi i32 [ %167, %138 ], [ %78, %0 ]
  %176 = phi i32 [ %166, %138 ], [ %76, %0 ]
  %177 = phi i32 [ %165, %138 ], [ %74, %0 ]
  %178 = phi i32 [ %164, %138 ], [ %72, %0 ]
  %179 = phi i32 [ %163, %138 ], [ %70, %0 ]
  %180 = phi i32 [ %162, %138 ], [ %68, %0 ]
  %181 = phi i32 [ %161, %138 ], [ %66, %0 ]
  %182 = phi i32 [ %160, %138 ], [ %64, %0 ]
  %183 = phi i32 [ %159, %138 ], [ %62, %0 ]
  %184 = phi i32 [ %158, %138 ], [ %60, %0 ]
  %185 = phi i32 [ %157, %138 ], [ %58, %0 ]
  %186 = phi i32 [ %156, %138 ], [ %56, %0 ]
  %187 = phi i32 [ %155, %138 ], [ %54, %0 ]
  %188 = phi i32 [ %154, %138 ], [ %52, %0 ]
  %189 = phi i32 [ %153, %138 ], [ %50, %0 ]
  %190 = phi i32 [ %152, %138 ], [ %48, %0 ]
  %191 = phi i32 [ %151, %138 ], [ %46, %0 ]
  %192 = phi i32 [ %150, %138 ], [ %44, %0 ]
  %193 = phi i32 [ %149, %138 ], [ %42, %0 ]
  %194 = phi i32 [ %148, %138 ], [ %40, %0 ]
  %195 = phi i32 [ %147, %138 ], [ %38, %0 ]
  %196 = phi i32 [ %146, %138 ], [ %36, %0 ]
  %197 = phi i32 [ %145, %138 ], [ %34, %0 ]
  %198 = phi i32 [ %144, %138 ], [ %32, %0 ]
  %199 = phi i32 [ %143, %138 ], [ %30, %0 ]
  %200 = phi i32 [ %142, %138 ], [ %28, %0 ]
  %201 = phi i32 [ %141, %138 ], [ %26, %0 ]
  %202 = phi i32 [ %140, %138 ], [ %24, %0 ]
  %203 = phi i32 [ %139, %138 ], [ %22, %0 ]
  tail call void @_Z6putinti(i32 noundef %203)
  tail call void @_Z6putinti(i32 noundef %202)
  tail call void @_Z6putinti(i32 noundef %201)
  tail call void @_Z6putinti(i32 noundef %200)
  tail call void @_Z6putinti(i32 noundef %199)
  tail call void @_Z6putinti(i32 noundef %198)
  tail call void @_Z6putinti(i32 noundef %197)
  tail call void @_Z6putinti(i32 noundef %196)
  tail call void @_Z6putinti(i32 noundef %195)
  tail call void @_Z6putinti(i32 noundef %194)
  tail call void @_Z6putinti(i32 noundef %193)
  tail call void @_Z6putinti(i32 noundef %192)
  tail call void @_Z6putinti(i32 noundef %191)
  tail call void @_Z6putinti(i32 noundef %190)
  tail call void @_Z6putinti(i32 noundef %189)
  tail call void @_Z6putinti(i32 noundef %188)
  tail call void @_Z6putinti(i32 noundef %187)
  tail call void @_Z6putinti(i32 noundef %186)
  tail call void @_Z6putinti(i32 noundef %185)
  tail call void @_Z6putinti(i32 noundef %184)
  tail call void @_Z6putinti(i32 noundef %183)
  tail call void @_Z6putinti(i32 noundef %182)
  tail call void @_Z6putinti(i32 noundef %181)
  tail call void @_Z6putinti(i32 noundef %180)
  tail call void @_Z6putinti(i32 noundef %179)
  tail call void @_Z6putinti(i32 noundef %178)
  tail call void @_Z6putinti(i32 noundef %177)
  tail call void @_Z6putinti(i32 noundef %176)
  tail call void @_Z6putinti(i32 noundef %175)
  tail call void @_Z6putinti(i32 noundef %174)
  tail call void @_Z6putinti(i32 noundef %173)
  tail call void @_Z6putinti(i32 noundef %172)
  %204 = load i32, i32* @n, align 4, !tbaa !5
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  %207 = sdiv i32 %204, 2
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4, !tbaa !5
  br i1 %206, label %211, label %218

211:                                              ; preds = %171
  %212 = add nsw i32 %207, -1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4, !tbaa !5
  %216 = add nsw i32 %215, %210
  %217 = sdiv i32 %216, 2
  br label %218

218:                                              ; preds = %171, %211
  %219 = phi i32 [ %217, %211 ], [ %210, %171 ]
  tail call void @_Z6putinti(i32 noundef %219)
  %220 = bitcast [1000 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* nonnull %220) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4000) %220, i8 0, i64 4000, i1 false) #12, !tbaa !5
  %221 = load i32, i32* @n, align 4, !tbaa !5
  %222 = icmp sgt i32 %221, 0
  tail call void @llvm.assume(i1 %222)
  %223 = sext i32 %203 to i64
  %224 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4, !tbaa !5
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4, !tbaa !5
  %227 = icmp eq i32 %221, 1
  br i1 %227, label %283, label %228, !llvm.loop !17

228:                                              ; preds = %218
  %229 = zext i32 %221 to i64
  %230 = icmp slt i32 %225, 0
  %231 = add nsw i64 %229, -1
  %232 = and i64 %231, 1
  %233 = icmp eq i32 %221, 2
  br i1 %233, label %265, label %234

234:                                              ; preds = %228
  %235 = and i64 %231, -2
  br label %236

236:                                              ; preds = %236, %234
  %237 = phi i64 [ 1, %234 ], [ %262, %236 ]
  %238 = phi i32 [ %203, %234 ], [ %261, %236 ]
  %239 = phi i1 [ %230, %234 ], [ %260, %236 ]
  %240 = phi i32 [ %226, %234 ], [ %259, %236 ]
  %241 = phi i32 [ 0, %234 ], [ %253, %236 ]
  %242 = phi i64 [ 0, %234 ], [ %263, %236 ]
  %243 = select i1 %239, i32 %241, i32 %240
  %244 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %237
  %245 = load i32, i32* %244, align 4, !tbaa !5
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4, !tbaa !5
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4, !tbaa !5
  %250 = icmp slt i32 %248, %243
  %251 = select i1 %250, i32 %238, i32 %245
  %252 = add nuw nsw i64 %237, 1
  %253 = select i1 %250, i32 %243, i32 %249
  %254 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %252
  %255 = load i32, i32* %254, align 4, !tbaa !5
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4, !tbaa !5
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4, !tbaa !5
  %260 = icmp slt i32 %258, %253
  %261 = select i1 %260, i32 %251, i32 %255
  %262 = add nuw nsw i64 %237, 2
  %263 = add i64 %242, 2
  %264 = icmp eq i64 %263, %235
  br i1 %264, label %265, label %236, !llvm.loop !17

265:                                              ; preds = %236, %228
  %266 = phi i32 [ undef, %228 ], [ %261, %236 ]
  %267 = phi i64 [ 1, %228 ], [ %262, %236 ]
  %268 = phi i32 [ %203, %228 ], [ %261, %236 ]
  %269 = phi i1 [ %230, %228 ], [ %260, %236 ]
  %270 = phi i32 [ %226, %228 ], [ %259, %236 ]
  %271 = phi i32 [ 0, %228 ], [ %253, %236 ]
  %272 = icmp eq i64 %232, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %265
  %274 = select i1 %269, i32 %271, i32 %270
  %275 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %267
  %276 = load i32, i32* %275, align 4, !tbaa !5
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4, !tbaa !5
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 4, !tbaa !5
  %281 = icmp slt i32 %279, %274
  %282 = select i1 %281, i32 %268, i32 %276
  br label %283

283:                                              ; preds = %273, %265, %218
  %284 = phi i32 [ %203, %218 ], [ %266, %265 ], [ %282, %273 ]
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* nonnull %220) #12
  tail call void @_Z6putinti(i32 noundef %284)
  %285 = load i32, i32* @n, align 4, !tbaa !5
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %342

287:                                              ; preds = %283
  %288 = zext i32 %285 to i64
  %289 = shl nuw nsw i64 %288, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* nonnull align 16 %3, i64 %289, i1 false), !tbaa !5
  %290 = icmp eq i32 %285, 1
  br i1 %290, label %342, label %291

291:                                              ; preds = %287
  %292 = add i32 %285, -1
  br label %293

293:                                              ; preds = %291, %339
  %294 = phi i32 [ 0, %291 ], [ %340, %339 ]
  %295 = sub i32 %292, %294
  %296 = sext i32 %295 to i64
  %297 = xor i32 %294, -1
  %298 = add i32 %285, %297
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %339

300:                                              ; preds = %293
  %301 = load i32, i32* %21, align 16, !tbaa !5
  %302 = and i64 %296, 1
  %303 = icmp eq i32 %295, 1
  br i1 %303, label %328, label %304

304:                                              ; preds = %300
  %305 = and i64 %296, -2
  br label %306

306:                                              ; preds = %324, %304
  %307 = phi i32 [ %301, %304 ], [ %325, %324 ]
  %308 = phi i64 [ 0, %304 ], [ %318, %324 ]
  %309 = phi i64 [ 0, %304 ], [ %326, %324 ]
  %310 = or i64 %308, 1
  %311 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4, !tbaa !5
  %313 = icmp sgt i32 %307, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %306
  %315 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %308
  store i32 %307, i32* %311, align 4, !tbaa !5
  store i32 %312, i32* %315, align 8, !tbaa !5
  br label %316

316:                                              ; preds = %314, %306
  %317 = phi i32 [ %307, %314 ], [ %312, %306 ]
  %318 = add nuw nsw i64 %308, 2
  %319 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %318
  %320 = load i32, i32* %319, align 8, !tbaa !5
  %321 = icmp sgt i32 %317, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %310
  store i32 %317, i32* %319, align 8, !tbaa !5
  store i32 %320, i32* %323, align 4, !tbaa !5
  br label %324

324:                                              ; preds = %322, %316
  %325 = phi i32 [ %317, %322 ], [ %320, %316 ]
  %326 = add i64 %309, 2
  %327 = icmp eq i64 %326, %305
  br i1 %327, label %328, label %306, !llvm.loop !9

328:                                              ; preds = %324, %300
  %329 = phi i32 [ %301, %300 ], [ %325, %324 ]
  %330 = phi i64 [ 0, %300 ], [ %318, %324 ]
  %331 = icmp eq i64 %302, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %328
  %333 = add nuw nsw i64 %330, 1
  %334 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4, !tbaa !5
  %336 = icmp sgt i32 %329, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %332
  %338 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %330
  store i32 %329, i32* %334, align 4, !tbaa !5
  store i32 %335, i32* %338, align 4, !tbaa !5
  br label %339

339:                                              ; preds = %328, %337, %332, %293
  %340 = add nuw nsw i32 %294, 1
  %341 = icmp eq i32 %340, %292
  br i1 %341, label %342, label %293, !llvm.loop !11

342:                                              ; preds = %339, %283, %287
  %343 = load i32, i32* %21, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %343)
  %344 = load i32, i32* %23, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %344)
  %345 = load i32, i32* %25, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %345)
  %346 = load i32, i32* %27, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %346)
  %347 = load i32, i32* %29, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %347)
  %348 = load i32, i32* %31, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %348)
  %349 = load i32, i32* %33, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %349)
  %350 = load i32, i32* %35, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %350)
  %351 = load i32, i32* %37, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %351)
  %352 = load i32, i32* %39, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %352)
  %353 = load i32, i32* %41, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %353)
  %354 = load i32, i32* %43, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %354)
  %355 = load i32, i32* %45, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %355)
  %356 = load i32, i32* %47, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %356)
  %357 = load i32, i32* %49, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %357)
  %358 = load i32, i32* %51, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %358)
  %359 = load i32, i32* %53, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %359)
  %360 = load i32, i32* %55, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %360)
  %361 = load i32, i32* %57, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %361)
  %362 = load i32, i32* %59, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %362)
  %363 = load i32, i32* %61, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %363)
  %364 = load i32, i32* %63, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %364)
  %365 = load i32, i32* %65, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %365)
  %366 = load i32, i32* %67, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %366)
  %367 = load i32, i32* %69, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %367)
  %368 = load i32, i32* %71, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %368)
  %369 = load i32, i32* %73, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %369)
  %370 = load i32, i32* %75, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %370)
  %371 = load i32, i32* %77, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %371)
  %372 = load i32, i32* %79, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %372)
  %373 = load i32, i32* %81, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %373)
  %374 = load i32, i32* %83, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %374)
  %375 = load i32, i32* @n, align 4, !tbaa !5
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %402

377:                                              ; preds = %342
  %378 = zext i32 %375 to i64
  %379 = shl nuw nsw i64 %378, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* nonnull align 16 %3, i64 %379, i1 false), !tbaa !5
  %380 = icmp eq i32 %375, 1
  br i1 %380, label %402, label %381

381:                                              ; preds = %377, %395
  %382 = phi i64 [ %400, %395 ], [ 1, %377 ]
  %383 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %382
  %384 = load i32, i32* %383, align 4, !tbaa !5
  br label %385

385:                                              ; preds = %392, %381
  %386 = phi i64 [ %382, %381 ], [ %387, %392 ]
  %387 = add nsw i64 %386, -1
  %388 = and i64 %387, 4294967295
  %389 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %388
  %390 = load i32, i32* %389, align 4, !tbaa !5
  %391 = icmp slt i32 %384, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %385
  %393 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %386
  store i32 %390, i32* %393, align 4, !tbaa !5
  %394 = icmp sgt i64 %386, 1
  br i1 %394, label %385, label %395, !llvm.loop !12

395:                                              ; preds = %392, %385
  %396 = phi i64 [ 0, %392 ], [ %386, %385 ]
  %397 = shl i64 %396, 32
  %398 = ashr exact i64 %397, 32
  %399 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %398
  store i32 %384, i32* %399, align 4, !tbaa !5
  %400 = add nuw nsw i64 %382, 1
  %401 = icmp eq i64 %400, %378
  br i1 %401, label %402, label %381, !llvm.loop !13

402:                                              ; preds = %395, %342, %377
  %403 = load i32, i32* %21, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %403)
  %404 = load i32, i32* %23, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %404)
  %405 = load i32, i32* %25, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %405)
  %406 = load i32, i32* %27, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %406)
  %407 = load i32, i32* %29, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %407)
  %408 = load i32, i32* %31, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %408)
  %409 = load i32, i32* %33, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %409)
  %410 = load i32, i32* %35, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %410)
  %411 = load i32, i32* %37, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %411)
  %412 = load i32, i32* %39, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %412)
  %413 = load i32, i32* %41, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %413)
  %414 = load i32, i32* %43, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %414)
  %415 = load i32, i32* %45, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %415)
  %416 = load i32, i32* %47, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %416)
  %417 = load i32, i32* %49, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %417)
  %418 = load i32, i32* %51, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %418)
  %419 = load i32, i32* %53, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %419)
  %420 = load i32, i32* %55, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %420)
  %421 = load i32, i32* %57, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %421)
  %422 = load i32, i32* %59, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %422)
  %423 = load i32, i32* %61, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %423)
  %424 = load i32, i32* %63, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %424)
  %425 = load i32, i32* %65, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %425)
  %426 = load i32, i32* %67, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %426)
  %427 = load i32, i32* %69, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %427)
  %428 = load i32, i32* %71, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %428)
  %429 = load i32, i32* %73, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %429)
  %430 = load i32, i32* %75, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %430)
  %431 = load i32, i32* %77, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %431)
  %432 = load i32, i32* %79, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %432)
  %433 = load i32, i32* %81, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %433)
  %434 = load i32, i32* %83, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %434)
  %435 = load i32, i32* @n, align 4, !tbaa !5
  %436 = icmp sgt i32 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %402
  %438 = zext i32 %435 to i64
  %439 = shl nuw nsw i64 %438, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* nonnull align 16 %3, i64 %439, i1 false), !tbaa !5
  br label %440

440:                                              ; preds = %437, %402
  %441 = call noundef i32 @_Z9QuickSortPiii(i32* noundef nonnull %21, i32 noundef 0, i32 noundef 31)
  %442 = load i32, i32* %21, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %442)
  %443 = load i32, i32* %23, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %443)
  %444 = load i32, i32* %25, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %444)
  %445 = load i32, i32* %27, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %445)
  %446 = load i32, i32* %29, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %446)
  %447 = load i32, i32* %31, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %447)
  %448 = load i32, i32* %33, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %448)
  %449 = load i32, i32* %35, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %449)
  %450 = load i32, i32* %37, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %450)
  %451 = load i32, i32* %39, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %451)
  %452 = load i32, i32* %41, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %452)
  %453 = load i32, i32* %43, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %453)
  %454 = load i32, i32* %45, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %454)
  %455 = load i32, i32* %47, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %455)
  %456 = load i32, i32* %49, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %456)
  %457 = load i32, i32* %51, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %457)
  %458 = load i32, i32* %53, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %458)
  %459 = load i32, i32* %55, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %459)
  %460 = load i32, i32* %57, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %460)
  %461 = load i32, i32* %59, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %461)
  %462 = load i32, i32* %61, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %462)
  %463 = load i32, i32* %63, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %463)
  %464 = load i32, i32* %65, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %464)
  %465 = load i32, i32* %67, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %465)
  %466 = load i32, i32* %69, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %466)
  %467 = load i32, i32* %71, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %467)
  %468 = load i32, i32* %73, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %468)
  %469 = load i32, i32* %75, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %469)
  %470 = load i32, i32* %77, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %470)
  %471 = load i32, i32* %79, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %471)
  %472 = load i32, i32* %81, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %472)
  %473 = load i32, i32* %83, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %473)
  %474 = load i32, i32* @n, align 4, !tbaa !5
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %514

476:                                              ; preds = %440
  %477 = zext i32 %474 to i64
  %478 = shl nuw nsw i64 %477, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* nonnull align 16 %3, i64 %478, i1 false), !tbaa !5
  %479 = and i64 %477, 1
  %480 = icmp eq i32 %474, 1
  br i1 %480, label %502, label %481

481:                                              ; preds = %476
  %482 = and i64 %477, 4294967294
  br label %483

483:                                              ; preds = %483, %481
  %484 = phi i64 [ 0, %481 ], [ %499, %483 ]
  %485 = phi i32 [ 0, %481 ], [ %498, %483 ]
  %486 = phi i64 [ 0, %481 ], [ %500, %483 ]
  %487 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %484
  %488 = load i32, i32* %487, align 8, !tbaa !5
  %489 = add nsw i32 %488, %485
  store i32 0, i32* %487, align 8, !tbaa !5
  %490 = or i64 %484, 1
  %491 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %490
  %492 = load i32, i32* %491, align 4, !tbaa !5
  %493 = add nsw i32 %492, %489
  %494 = trunc i64 %490 to i32
  %495 = srem i32 %494, 4
  %496 = icmp eq i32 %495, 3
  %497 = select i1 %496, i32 %493, i32 0
  %498 = select i1 %496, i32 0, i32 %493
  store i32 %497, i32* %491, align 4, !tbaa !5
  %499 = add nuw nsw i64 %484, 2
  %500 = add i64 %486, 2
  %501 = icmp eq i64 %500, %482
  br i1 %501, label %502, label %483, !llvm.loop !19

502:                                              ; preds = %483, %476
  %503 = phi i64 [ 0, %476 ], [ %499, %483 ]
  %504 = phi i32 [ 0, %476 ], [ %498, %483 ]
  %505 = icmp eq i64 %479, 0
  br i1 %505, label %514, label %506

506:                                              ; preds = %502
  %507 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %503
  %508 = load i32, i32* %507, align 4, !tbaa !5
  %509 = add nsw i32 %508, %504
  %510 = trunc i64 %503 to i32
  %511 = srem i32 %510, 4
  %512 = icmp eq i32 %511, 3
  %513 = select i1 %512, i32 %509, i32 0
  store i32 %513, i32* %507, align 4, !tbaa !5
  br label %514

514:                                              ; preds = %506, %502, %440
  %515 = load i32, i32* %21, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %515)
  %516 = load i32, i32* %23, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %516)
  %517 = load i32, i32* %25, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %517)
  %518 = load i32, i32* %27, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %518)
  %519 = load i32, i32* %29, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %519)
  %520 = load i32, i32* %31, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %520)
  %521 = load i32, i32* %33, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %521)
  %522 = load i32, i32* %35, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %522)
  %523 = load i32, i32* %37, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %523)
  %524 = load i32, i32* %39, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %524)
  %525 = load i32, i32* %41, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %525)
  %526 = load i32, i32* %43, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %526)
  %527 = load i32, i32* %45, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %527)
  %528 = load i32, i32* %47, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %528)
  %529 = load i32, i32* %49, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %529)
  %530 = load i32, i32* %51, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %530)
  %531 = load i32, i32* %53, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %531)
  %532 = load i32, i32* %55, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %532)
  %533 = load i32, i32* %57, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %533)
  %534 = load i32, i32* %59, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %534)
  %535 = load i32, i32* %61, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %535)
  %536 = load i32, i32* %63, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %536)
  %537 = load i32, i32* %65, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %537)
  %538 = load i32, i32* %67, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %538)
  %539 = load i32, i32* %69, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %539)
  %540 = load i32, i32* %71, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %540)
  %541 = load i32, i32* %73, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %541)
  %542 = load i32, i32* %75, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %542)
  %543 = load i32, i32* %77, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %543)
  %544 = load i32, i32* %79, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %544)
  %545 = load i32, i32* %81, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %545)
  %546 = load i32, i32* %83, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %546)
  %547 = load i32, i32* @n, align 4, !tbaa !5
  %548 = icmp sgt i32 %547, 0
  br i1 %548, label %551, label %549

549:                                              ; preds = %514
  %550 = sext i32 %547 to i64
  br label %579

551:                                              ; preds = %514
  %552 = zext i32 %547 to i64
  %553 = shl nuw nsw i64 %552, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* nonnull align 16 %3, i64 %553, i1 false), !tbaa !5
  %554 = load i32, i32* %21, align 16, !tbaa !5
  %555 = icmp eq i32 %547, 1
  br i1 %555, label %579, label %556

556:                                              ; preds = %551
  %557 = load i32, i32* %23, align 4, !tbaa !5
  %558 = add nsw i32 %557, %554
  %559 = icmp eq i32 %547, 2
  br i1 %559, label %579, label %560

560:                                              ; preds = %556
  %561 = sdiv i32 %558, 3
  store i32 %561, i32* %21, align 16, !tbaa !5
  %562 = icmp eq i32 %547, 3
  br i1 %562, label %579, label %563

563:                                              ; preds = %560, %563
  %564 = phi i64 [ %577, %563 ], [ 3, %560 ]
  %565 = phi i32 [ %575, %563 ], [ %554, %560 ]
  %566 = phi i32 [ %570, %563 ], [ %558, %560 ]
  %567 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %564
  %568 = load i32, i32* %567, align 4, !tbaa !5
  %569 = sub i32 %566, %565
  %570 = add i32 %568, %569
  %571 = shl i64 %564, 32
  %572 = add nsw i64 %571, -8589934592
  %573 = ashr exact i64 %572, 32
  %574 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %573
  %575 = load i32, i32* %574, align 4, !tbaa !5
  %576 = sdiv i32 %570, 3
  store i32 %576, i32* %574, align 4, !tbaa !5
  %577 = add nuw nsw i64 %564, 1
  %578 = icmp eq i64 %577, %552
  br i1 %578, label %579, label %563, !llvm.loop !22

579:                                              ; preds = %563, %551, %556, %560, %549
  %580 = phi i64 [ %550, %549 ], [ 3, %560 ], [ 2, %556 ], [ 1, %551 ], [ %552, %563 ]
  %581 = add nsw i32 %547, -2
  %582 = sext i32 %581 to i64
  %583 = getelementptr [32 x i32], [32 x i32]* %4, i64 0, i64 %582
  %584 = bitcast i32* %583 to i8*
  %585 = add nsw i64 %582, 1
  %586 = call i64 @llvm.smax.i64(i64 %585, i64 %580)
  %587 = sub i64 %586, %582
  %588 = shl i64 %587, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %584, i8 0, i64 %588, i1 false), !tbaa !5
  %589 = load i32, i32* %21, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %589)
  %590 = load i32, i32* %23, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %590)
  %591 = load i32, i32* %25, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %591)
  %592 = load i32, i32* %27, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %592)
  %593 = load i32, i32* %29, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %593)
  %594 = load i32, i32* %31, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %594)
  %595 = load i32, i32* %33, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %595)
  %596 = load i32, i32* %35, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %596)
  %597 = load i32, i32* %37, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %597)
  %598 = load i32, i32* %39, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %598)
  %599 = load i32, i32* %41, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %599)
  %600 = load i32, i32* %43, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %600)
  %601 = load i32, i32* %45, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %601)
  %602 = load i32, i32* %47, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %602)
  %603 = load i32, i32* %49, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %603)
  %604 = load i32, i32* %51, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %604)
  %605 = load i32, i32* %53, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %605)
  %606 = load i32, i32* %55, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %606)
  %607 = load i32, i32* %57, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %607)
  %608 = load i32, i32* %59, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %608)
  %609 = load i32, i32* %61, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %609)
  %610 = load i32, i32* %63, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %610)
  %611 = load i32, i32* %65, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %611)
  %612 = load i32, i32* %67, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %612)
  %613 = load i32, i32* %69, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %613)
  %614 = load i32, i32* %71, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %614)
  %615 = load i32, i32* %73, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %615)
  %616 = load i32, i32* %75, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %616)
  %617 = load i32, i32* %77, align 16, !tbaa !5
  call void @_Z6putinti(i32 noundef %617)
  %618 = load i32, i32* %79, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %618)
  %619 = load i32, i32* %81, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %619)
  %620 = load i32, i32* %83, align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %620)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }

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
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10, !23}
!23 = !{!"llvm.loop.peeled.count", i32 3}
