; ModuleID = 'tests//SysY2022/hidden_functional/24_array_only.sy'
source_filename = "tests//SysY2022/hidden_functional/24_array_only.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@i = dso_local local_unnamed_addr global [1 x i32] zeroinitializer, align 4
@k = dso_local local_unnamed_addr global [1 x i32] zeroinitializer, align 4

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z8inc_implPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, i32* %0, align 4, !tbaa !5
  br i1 %3, label %22, label %5

5:                                                ; preds = %2
  %6 = add i32 %1, -1
  %7 = and i32 %1, 7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5, %9
  %10 = phi i32 [ %13, %9 ], [ %4, %5 ]
  %11 = phi i32 [ %14, %9 ], [ %1, %5 ]
  %12 = phi i32 [ %15, %9 ], [ 0, %5 ]
  %13 = shl nsw i32 %10, 1
  %14 = add nsw i32 %11, -1
  %15 = add i32 %12, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %9, !llvm.loop !9

17:                                               ; preds = %9, %5
  %18 = phi i32 [ undef, %5 ], [ %13, %9 ]
  %19 = phi i32 [ %4, %5 ], [ %13, %9 ]
  %20 = phi i32 [ %1, %5 ], [ %14, %9 ]
  %21 = icmp ult i32 %6, 7
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %25, %2
  %23 = phi i32 [ %4, %2 ], [ %18, %17 ], [ %28, %25 ]
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %0, align 4, !tbaa !5
  ret void

25:                                               ; preds = %17, %25
  %26 = phi i32 [ %28, %25 ], [ %19, %17 ]
  %27 = phi i32 [ %29, %25 ], [ %20, %17 ]
  %28 = shl i32 %26, 8
  %29 = add nsw i32 %27, -8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %22, label %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z3incPi(i32* nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @k, i64 0, i64 0), align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  %4 = load i32, i32* %0, align 4, !tbaa !5
  br i1 %3, label %28, label %5

5:                                                ; preds = %1
  %6 = add i32 %2, -1
  %7 = and i32 %2, 7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5, %9
  %10 = phi i32 [ %13, %9 ], [ %4, %5 ]
  %11 = phi i32 [ %14, %9 ], [ %2, %5 ]
  %12 = phi i32 [ %15, %9 ], [ 0, %5 ]
  %13 = shl nsw i32 %10, 1
  %14 = add nsw i32 %11, -1
  %15 = add i32 %12, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %9, !llvm.loop !11

17:                                               ; preds = %9, %5
  %18 = phi i32 [ undef, %5 ], [ %13, %9 ]
  %19 = phi i32 [ %4, %5 ], [ %13, %9 ]
  %20 = phi i32 [ %2, %5 ], [ %14, %9 ]
  %21 = icmp ult i32 %6, 7
  br i1 %21, label %28, label %22

22:                                               ; preds = %17, %22
  %23 = phi i32 [ %25, %22 ], [ %19, %17 ]
  %24 = phi i32 [ %26, %22 ], [ %20, %17 ]
  %25 = shl i32 %23, 8
  %26 = add nsw i32 %24, -8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %22

28:                                               ; preds = %17, %22, %1
  %29 = phi i32 [ %4, %1 ], [ %18, %17 ], [ %25, %22 ]
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z8add_implPiS_i(i32* nocapture noundef %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = load i32, i32* %0, align 4, !tbaa !5
  br i1 %4, label %25, label %6

6:                                                ; preds = %3
  %7 = add i32 %2, -1
  %8 = and i32 %2, 7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %14, %10 ], [ %5, %6 ]
  %12 = phi i32 [ %15, %10 ], [ %2, %6 ]
  %13 = phi i32 [ %16, %10 ], [ 0, %6 ]
  %14 = shl nsw i32 %11, 1
  %15 = add nsw i32 %12, -1
  %16 = add i32 %13, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %18, label %10, !llvm.loop !12

18:                                               ; preds = %10, %6
  %19 = phi i32 [ undef, %6 ], [ %14, %10 ]
  %20 = phi i32 [ %5, %6 ], [ %14, %10 ]
  %21 = phi i32 [ %2, %6 ], [ %15, %10 ]
  %22 = icmp ult i32 %7, 7
  br i1 %22, label %23, label %29

23:                                               ; preds = %29, %18
  %24 = phi i32 [ %19, %18 ], [ %32, %29 ]
  store i32 %24, i32* %0, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %3, %23
  %26 = phi i32 [ %24, %23 ], [ %5, %3 ]
  %27 = load i32, i32* %1, align 4, !tbaa !5
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %0, align 4, !tbaa !5
  ret void

29:                                               ; preds = %18, %29
  %30 = phi i32 [ %32, %29 ], [ %20, %18 ]
  %31 = phi i32 [ %33, %29 ], [ %21, %18 ]
  %32 = shl i32 %30, 8
  %33 = add nsw i32 %31, -8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %23, label %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z3addPiS_(i32* nocapture noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @k, i64 0, i64 0), align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  %5 = load i32, i32* %0, align 4, !tbaa !5
  br i1 %4, label %31, label %6

6:                                                ; preds = %2
  %7 = add i32 %3, -1
  %8 = and i32 %3, 7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %14, %10 ], [ %5, %6 ]
  %12 = phi i32 [ %15, %10 ], [ %3, %6 ]
  %13 = phi i32 [ %16, %10 ], [ 0, %6 ]
  %14 = shl nsw i32 %11, 1
  %15 = add nsw i32 %12, -1
  %16 = add i32 %13, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %18, label %10, !llvm.loop !13

18:                                               ; preds = %10, %6
  %19 = phi i32 [ undef, %6 ], [ %14, %10 ]
  %20 = phi i32 [ %5, %6 ], [ %14, %10 ]
  %21 = phi i32 [ %3, %6 ], [ %15, %10 ]
  %22 = icmp ult i32 %7, 7
  br i1 %22, label %23, label %25

23:                                               ; preds = %25, %18
  %24 = phi i32 [ %19, %18 ], [ %28, %25 ]
  store i32 %24, i32* %0, align 4, !tbaa !5
  br label %31

25:                                               ; preds = %18, %25
  %26 = phi i32 [ %28, %25 ], [ %20, %18 ]
  %27 = phi i32 [ %29, %25 ], [ %21, %18 ]
  %28 = shl i32 %26, 8
  %29 = add nsw i32 %27, -8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %25

31:                                               ; preds = %2, %23
  %32 = phi i32 [ %24, %23 ], [ %5, %2 ]
  %33 = load i32, i32* %1, align 4, !tbaa !5
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z8sub_implPiS_i(i32* nocapture noundef %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = load i32, i32* %0, align 4, !tbaa !5
  br i1 %4, label %25, label %6

6:                                                ; preds = %3
  %7 = add i32 %2, -1
  %8 = and i32 %2, 7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %14, %10 ], [ %5, %6 ]
  %12 = phi i32 [ %15, %10 ], [ %2, %6 ]
  %13 = phi i32 [ %16, %10 ], [ 0, %6 ]
  %14 = shl nsw i32 %11, 1
  %15 = add nsw i32 %12, -1
  %16 = add i32 %13, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %18, label %10, !llvm.loop !14

18:                                               ; preds = %10, %6
  %19 = phi i32 [ undef, %6 ], [ %14, %10 ]
  %20 = phi i32 [ %5, %6 ], [ %14, %10 ]
  %21 = phi i32 [ %2, %6 ], [ %15, %10 ]
  %22 = icmp ult i32 %7, 7
  br i1 %22, label %23, label %29

23:                                               ; preds = %29, %18
  %24 = phi i32 [ %19, %18 ], [ %32, %29 ]
  store i32 %24, i32* %0, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %3, %23
  %26 = phi i32 [ %24, %23 ], [ %5, %3 ]
  %27 = load i32, i32* %1, align 4, !tbaa !5
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %0, align 4, !tbaa !5
  ret void

29:                                               ; preds = %18, %29
  %30 = phi i32 [ %32, %29 ], [ %20, %18 ]
  %31 = phi i32 [ %33, %29 ], [ %21, %18 ]
  %32 = shl i32 %30, 8
  %33 = add nsw i32 %31, -8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %23, label %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z3subPiS_(i32* nocapture noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @k, i64 0, i64 0), align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  %5 = load i32, i32* %0, align 4, !tbaa !5
  br i1 %4, label %31, label %6

6:                                                ; preds = %2
  %7 = add i32 %3, -1
  %8 = and i32 %3, 7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %14, %10 ], [ %5, %6 ]
  %12 = phi i32 [ %15, %10 ], [ %3, %6 ]
  %13 = phi i32 [ %16, %10 ], [ 0, %6 ]
  %14 = shl nsw i32 %11, 1
  %15 = add nsw i32 %12, -1
  %16 = add i32 %13, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %18, label %10, !llvm.loop !15

18:                                               ; preds = %10, %6
  %19 = phi i32 [ undef, %6 ], [ %14, %10 ]
  %20 = phi i32 [ %5, %6 ], [ %14, %10 ]
  %21 = phi i32 [ %3, %6 ], [ %15, %10 ]
  %22 = icmp ult i32 %7, 7
  br i1 %22, label %23, label %25

23:                                               ; preds = %25, %18
  %24 = phi i32 [ %19, %18 ], [ %28, %25 ]
  store i32 %24, i32* %0, align 4, !tbaa !5
  br label %31

25:                                               ; preds = %18, %25
  %26 = phi i32 [ %28, %25 ], [ %20, %18 ]
  %27 = phi i32 [ %29, %25 ], [ %21, %18 ]
  %28 = shl i32 %26, 8
  %29 = add nsw i32 %27, -8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %25

31:                                               ; preds = %2, %23
  %32 = phi i32 [ %24, %23 ], [ %5, %2 ]
  %33 = load i32, i32* %1, align 4, !tbaa !5
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i64 4294967295, i64* %1, align 8
  %3 = tail call noundef i32 @_Z6getintv()
  store i32 %3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @k, i64 0, i64 0), align 4, !tbaa !5
  %4 = tail call noundef i32 @_Z6getintv()
  %5 = bitcast i64* %1 to i32*
  %6 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %5)
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %164, label %8

8:                                                ; preds = %0
  %9 = bitcast i64* %1 to [2 x i32]*
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %11 = load i32, i32* %5, align 8, !tbaa !5
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %10, align 4, !tbaa !5
  store i32 %14, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @i, i64 0, i64 0), align 4, !tbaa !5
  br label %164

15:                                               ; preds = %8, %159
  %16 = phi i32 [ %106, %159 ], [ %11, %8 ]
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @k, i64 0, i64 0), align 4, !tbaa !5
  br label %105

20:                                               ; preds = %15, %99
  %21 = phi i32 [ %102, %99 ], [ %16, %15 ]
  %22 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @i, i64 0, i64 0), align 4, !tbaa !5
  call void @_Z6putinti(i32 noundef %22)
  call void @_Z6putinti(i32 noundef %21)
  call void @_Z6putinti(i32 noundef %4)
  %23 = load i32, i32* %5, align 8, !tbaa !5
  call void @_Z6putinti(i32 noundef %23)
  %24 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @k, i64 0, i64 0), align 4, !tbaa !5
  %25 = icmp eq i32 %24, 0
  %26 = load i32, i32* %5, align 8, !tbaa !5
  br i1 %25, label %44, label %27

27:                                               ; preds = %20
  %28 = add i32 %24, -1
  %29 = and i32 %24, 7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27, %31
  %32 = phi i32 [ %35, %31 ], [ %26, %27 ]
  %33 = phi i32 [ %36, %31 ], [ %24, %27 ]
  %34 = phi i32 [ %37, %31 ], [ 0, %27 ]
  %35 = shl nsw i32 %32, 1
  %36 = add nsw i32 %33, -1
  %37 = add i32 %34, 1
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %39, label %31, !llvm.loop !16

39:                                               ; preds = %31, %27
  %40 = phi i32 [ undef, %27 ], [ %35, %31 ]
  %41 = phi i32 [ %26, %27 ], [ %35, %31 ]
  %42 = phi i32 [ %24, %27 ], [ %36, %31 ]
  %43 = icmp ult i32 %28, 7
  br i1 %43, label %52, label %46

44:                                               ; preds = %20
  %45 = add nsw i32 %26, %4
  br label %99

46:                                               ; preds = %39, %46
  %47 = phi i32 [ %49, %46 ], [ %41, %39 ]
  %48 = phi i32 [ %50, %46 ], [ %42, %39 ]
  %49 = shl i32 %47, 8
  %50 = add nsw i32 %48, -8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %46

52:                                               ; preds = %46, %39
  %53 = phi i32 [ %40, %39 ], [ %49, %46 ]
  %54 = add nsw i32 %53, %4
  %55 = and i32 %24, 7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52, %57
  %58 = phi i32 [ %61, %57 ], [ %21, %52 ]
  %59 = phi i32 [ %62, %57 ], [ %24, %52 ]
  %60 = phi i32 [ %63, %57 ], [ 0, %52 ]
  %61 = shl nsw i32 %58, 1
  %62 = add nsw i32 %59, -1
  %63 = add i32 %60, 1
  %64 = icmp eq i32 %63, %55
  br i1 %64, label %65, label %57, !llvm.loop !17

65:                                               ; preds = %57, %52
  %66 = phi i32 [ undef, %52 ], [ %61, %57 ]
  %67 = phi i32 [ %21, %52 ], [ %61, %57 ]
  %68 = phi i32 [ %24, %52 ], [ %62, %57 ]
  %69 = icmp ult i32 %28, 7
  br i1 %69, label %76, label %70

70:                                               ; preds = %65, %70
  %71 = phi i32 [ %73, %70 ], [ %67, %65 ]
  %72 = phi i32 [ %74, %70 ], [ %68, %65 ]
  %73 = shl i32 %71, 8
  %74 = add nsw i32 %72, -8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %70

76:                                               ; preds = %70, %65
  %77 = phi i32 [ %66, %65 ], [ %73, %70 ]
  %78 = and i32 %24, 7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76, %80
  %81 = phi i32 [ %84, %80 ], [ %54, %76 ]
  %82 = phi i32 [ %85, %80 ], [ %24, %76 ]
  %83 = phi i32 [ %86, %80 ], [ 0, %76 ]
  %84 = shl nsw i32 %81, 1
  %85 = add nsw i32 %82, -1
  %86 = add i32 %83, 1
  %87 = icmp eq i32 %86, %78
  br i1 %87, label %88, label %80, !llvm.loop !18

88:                                               ; preds = %80, %76
  %89 = phi i32 [ undef, %76 ], [ %84, %80 ]
  %90 = phi i32 [ %54, %76 ], [ %84, %80 ]
  %91 = phi i32 [ %24, %76 ], [ %85, %80 ]
  %92 = icmp ult i32 %28, 7
  br i1 %92, label %99, label %93

93:                                               ; preds = %88, %93
  %94 = phi i32 [ %96, %93 ], [ %90, %88 ]
  %95 = phi i32 [ %97, %93 ], [ %91, %88 ]
  %96 = shl i32 %94, 8
  %97 = add nsw i32 %95, -8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %93

99:                                               ; preds = %88, %93, %44
  %100 = phi i32 [ %21, %44 ], [ %77, %93 ], [ %77, %88 ]
  %101 = phi i32 [ %45, %44 ], [ %89, %88 ], [ %96, %93 ]
  %102 = add nsw i32 %100, %4
  %103 = sub nsw i32 %101, %4
  store i32 %103, i32* %5, align 8, !tbaa !5
  %104 = icmp slt i32 %102, 5
  br i1 %104, label %20, label %105, !llvm.loop !19

105:                                              ; preds = %99, %18
  %106 = phi i32 [ %16, %18 ], [ %103, %99 ]
  %107 = phi i32 [ %19, %18 ], [ %24, %99 ]
  %108 = icmp eq i32 %107, 0
  %109 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @i, i64 0, i64 0), align 4, !tbaa !5
  br i1 %108, label %127, label %110

110:                                              ; preds = %105
  %111 = add i32 %107, -1
  %112 = and i32 %107, 7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110, %114
  %115 = phi i32 [ %118, %114 ], [ %109, %110 ]
  %116 = phi i32 [ %119, %114 ], [ %107, %110 ]
  %117 = phi i32 [ %120, %114 ], [ 0, %110 ]
  %118 = shl nsw i32 %115, 1
  %119 = add nsw i32 %116, -1
  %120 = add i32 %117, 1
  %121 = icmp eq i32 %120, %112
  br i1 %121, label %122, label %114, !llvm.loop !21

122:                                              ; preds = %114, %110
  %123 = phi i32 [ undef, %110 ], [ %118, %114 ]
  %124 = phi i32 [ %109, %110 ], [ %118, %114 ]
  %125 = phi i32 [ %107, %110 ], [ %119, %114 ]
  %126 = icmp ult i32 %111, 7
  br i1 %126, label %135, label %129

127:                                              ; preds = %105
  %128 = add nsw i32 %109, 1
  br label %159

129:                                              ; preds = %122, %129
  %130 = phi i32 [ %132, %129 ], [ %124, %122 ]
  %131 = phi i32 [ %133, %129 ], [ %125, %122 ]
  %132 = shl i32 %130, 8
  %133 = add nsw i32 %131, -8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %129

135:                                              ; preds = %129, %122
  %136 = phi i32 [ %123, %122 ], [ %132, %129 ]
  %137 = or i32 %136, 1
  %138 = and i32 %107, 7
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %135, %140
  %141 = phi i32 [ %144, %140 ], [ %137, %135 ]
  %142 = phi i32 [ %145, %140 ], [ %107, %135 ]
  %143 = phi i32 [ %146, %140 ], [ 0, %135 ]
  %144 = shl nsw i32 %141, 1
  %145 = add nsw i32 %142, -1
  %146 = add i32 %143, 1
  %147 = icmp eq i32 %146, %138
  br i1 %147, label %148, label %140, !llvm.loop !22

148:                                              ; preds = %140, %135
  %149 = phi i32 [ undef, %135 ], [ %144, %140 ]
  %150 = phi i32 [ %137, %135 ], [ %144, %140 ]
  %151 = phi i32 [ %107, %135 ], [ %145, %140 ]
  %152 = icmp ult i32 %111, 7
  br i1 %152, label %159, label %153

153:                                              ; preds = %148, %153
  %154 = phi i32 [ %156, %153 ], [ %150, %148 ]
  %155 = phi i32 [ %157, %153 ], [ %151, %148 ]
  %156 = shl i32 %154, 8
  %157 = add nsw i32 %155, -8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %153

159:                                              ; preds = %148, %153, %127
  %160 = phi i32 [ %128, %127 ], [ %149, %148 ], [ %156, %153 ]
  %161 = add nsw i32 %106, %160
  store i32 %161, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @i, i64 0, i64 0), align 4, !tbaa !5
  %162 = load i32, i32* %10, align 4, !tbaa !5
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %15, !llvm.loop !23

164:                                              ; preds = %159, %13, %0
  call void @_Z5putchi(i32 noundef 10)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #4

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !20, !24}
!24 = !{!"llvm.loop.unswitch.partial.disable"}
