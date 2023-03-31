; ModuleID = 'tests//SysY2022/final_performance/gameoflife-p61glidergun.sy'
source_filename = "tests//SysY2022/final_performance/gameoflife-p61glidergun.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@sheet1 = dso_local local_unnamed_addr global [500 x [500 x i32]] zeroinitializer, align 16
@sheet2 = dso_local local_unnamed_addr global [500 x [500 x i32]] zeroinitializer, align 16
@active = dso_local local_unnamed_addr global i32 1, align 4
@width = dso_local local_unnamed_addr global i32 0, align 4
@height = dso_local local_unnamed_addr global i32 0, align 4
@steps = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8read_mapv() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @width, align 4, !tbaa !4
  %2 = tail call noundef i32 @_Z6getintv()
  store i32 %2, i32* @height, align 4, !tbaa !4
  %3 = tail call noundef i32 @_Z6getintv()
  store i32 %3, i32* @steps, align 4, !tbaa !4
  %4 = tail call noundef i32 @_Z5getchv()
  %5 = load i32, i32* @height, align 4, !tbaa !4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %27, label %7

7:                                                ; preds = %0, %21
  %8 = phi i64 [ %23, %21 ], [ 1, %0 ]
  %9 = load i32, i32* @width, align 4, !tbaa !4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %21, label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ %17, %11 ], [ 1, %7 ]
  %13 = tail call noundef i32 @_Z5getchv()
  %14 = icmp eq i32 %13, 35
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %8, i64 %12
  store i32 %15, i32* %16, align 4
  %17 = add nuw nsw i64 %12, 1
  %18 = load i32, i32* @width, align 4, !tbaa !4
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %12, %19
  br i1 %20, label %11, label %21, !llvm.loop !8

21:                                               ; preds = %11, %7
  %22 = tail call noundef i32 @_Z5getchv()
  %23 = add nuw nsw i64 %8, 1
  %24 = load i32, i32* @height, align 4, !tbaa !4
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %8, %25
  br i1 %26, label %7, label %27, !llvm.loop !10

27:                                               ; preds = %21, %0
  ret void
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare noundef i32 @_Z5getchv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7put_mapv() local_unnamed_addr #0 {
  %1 = load i32, i32* @height, align 4, !tbaa !4
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %22, label %3

3:                                                ; preds = %0, %17
  %4 = phi i64 [ %18, %17 ], [ 1, %0 ]
  %5 = load i32, i32* @width, align 4, !tbaa !4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %13, %7 ], [ 1, %3 ]
  %9 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %4, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !4
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, i32 35, i32 46
  tail call void @_Z5putchi(i32 noundef %12)
  %13 = add nuw nsw i64 %8, 1
  %14 = load i32, i32* @width, align 4, !tbaa !4
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %8, %15
  br i1 %16, label %7, label %17, !llvm.loop !11

17:                                               ; preds = %7, %3
  tail call void @_Z5putchi(i32 noundef 10)
  %18 = add nuw nsw i64 %4, 1
  %19 = load i32, i32* @height, align 4, !tbaa !4
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %4, %20
  br i1 %21, label %3, label %22, !llvm.loop !12

22:                                               ; preds = %17, %0
  ret void
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z6swap12v() local_unnamed_addr #2 {
  %1 = load i32, i32* @height, align 4, !tbaa !4
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %39, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @width, align 4, !tbaa !4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %39, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = zext i32 %1 to i64
  %10 = and i64 %9, 1
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = and i64 %9, 4294967294
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %22, %14 ]
  %16 = phi i64 [ 0, %12 ], [ %27, %14 ]
  %17 = or i64 %15, 1
  %18 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %17, i64 1
  %19 = bitcast i32* %18 to i8*
  %20 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %17, i64 1
  %21 = bitcast i32* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %21, i64 %8, i1 false), !tbaa !4
  %22 = add nuw nsw i64 %15, 2
  %23 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %22, i64 1
  %24 = bitcast i32* %23 to i8*
  %25 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %22, i64 1
  %26 = bitcast i32* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %26, i64 %8, i1 false), !tbaa !4
  %27 = add i64 %16, 2
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %29, label %14, !llvm.loop !13

29:                                               ; preds = %14
  %30 = add nuw i64 %15, 3
  br label %31

31:                                               ; preds = %29, %6
  %32 = phi i64 [ 1, %6 ], [ %30, %29 ]
  %33 = icmp eq i64 %10, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %32, i64 1
  %36 = bitcast i32* %35 to i8*
  %37 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %32, i64 1
  %38 = bitcast i32* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %38, i64 %8, i1 false), !tbaa !4
  br label %39

39:                                               ; preds = %34, %31, %3, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z4stepPA500_iS0_([500 x i32]* nocapture noundef readonly %0, [500 x i32]* nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = load i32, i32* @height, align 4, !tbaa !4
  %4 = icmp slt i32 %3, 1
  %5 = load i32, i32* @width, align 4
  %6 = icmp slt i32 %5, 1
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %70, label %8

8:                                                ; preds = %2, %64
  %9 = phi i32 [ %66, %64 ], [ %3, %2 ]
  %10 = phi i32 [ %67, %64 ], [ %5, %2 ]
  %11 = phi i64 [ %65, %64 ], [ 1, %2 ]
  %12 = icmp slt i32 %10, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %11, 1
  br label %64

15:                                               ; preds = %8
  %16 = add nsw i64 %11, -1
  %17 = add nuw nsw i64 %11, 1
  %18 = and i64 %17, 4294967295
  br label %19

19:                                               ; preds = %15, %58
  %20 = phi i64 [ 1, %15 ], [ %27, %58 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %16, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !4
  %24 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %16, i64 %20
  %25 = load i32, i32* %24, align 4, !tbaa !4
  %26 = add nsw i32 %25, %23
  %27 = add nuw nsw i64 %20, 1
  %28 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %16, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !4
  %30 = add nsw i32 %26, %29
  %31 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %11, i64 %21
  %32 = load i32, i32* %31, align 4, !tbaa !4
  %33 = add nsw i32 %30, %32
  %34 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %11, i64 %27
  %35 = load i32, i32* %34, align 4, !tbaa !4
  %36 = add nsw i32 %33, %35
  %37 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %18, i64 %21
  %38 = load i32, i32* %37, align 4, !tbaa !4
  %39 = add nsw i32 %36, %38
  %40 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %18, i64 %20
  %41 = load i32, i32* %40, align 4, !tbaa !4
  %42 = add nsw i32 %39, %41
  %43 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %18, i64 %27
  %44 = load i32, i32* %43, align 4, !tbaa !4
  %45 = add nsw i32 %42, %44
  %46 = getelementptr inbounds [500 x i32], [500 x i32]* %0, i64 %11, i64 %20
  %47 = load i32, i32* %46, align 4, !tbaa !4
  %48 = icmp eq i32 %47, 1
  %49 = icmp eq i32 %45, 2
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %53

51:                                               ; preds = %19
  %52 = getelementptr inbounds [500 x i32], [500 x i32]* %1, i64 %11, i64 %20
  store i32 1, i32* %52, align 4, !tbaa !4
  br label %58

53:                                               ; preds = %19
  %54 = icmp eq i32 %45, 3
  %55 = getelementptr inbounds [500 x i32], [500 x i32]* %1, i64 %11, i64 %20
  br i1 %54, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %55, align 4, !tbaa !4
  br label %58

57:                                               ; preds = %53
  store i32 0, i32* %55, align 4, !tbaa !4
  br label %58

58:                                               ; preds = %56, %57, %51
  %59 = load i32, i32* @width, align 4, !tbaa !4
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %20, %60
  br i1 %61, label %19, label %62, !llvm.loop !14

62:                                               ; preds = %58
  %63 = load i32, i32* @height, align 4, !tbaa !4
  br label %64

64:                                               ; preds = %13, %62
  %65 = phi i64 [ %14, %13 ], [ %17, %62 ]
  %66 = phi i32 [ %9, %13 ], [ %63, %62 ]
  %67 = phi i32 [ %10, %13 ], [ %59, %62 ]
  %68 = sext i32 %66 to i64
  %69 = icmp slt i64 %11, %68
  br i1 %69, label %8, label %70, !llvm.loop !15

70:                                               ; preds = %64, %2
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  tail call void @_Z8read_mapv()
  tail call void @_Z15_sysy_starttimei(i32 noundef 95)
  %1 = load i32, i32* @steps, align 4, !tbaa !4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %129

3:                                                ; preds = %0
  %4 = load i32, i32* @active, align 4, !tbaa !4
  %5 = load i32, i32* @height, align 4
  %6 = icmp slt i32 %5, 1
  %7 = load i32, i32* @width, align 4
  %8 = icmp slt i32 %7, 1
  %9 = select i1 %6, i1 true, i1 %8
  %10 = sext i32 %5 to i64
  %11 = sext i32 %7 to i64
  br label %12

12:                                               ; preds = %3, %124
  %13 = phi i32 [ %1, %3 ], [ %126, %124 ]
  %14 = phi i32 [ %4, %3 ], [ %125, %124 ]
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  br i1 %9, label %124, label %17

17:                                               ; preds = %16
  %18 = load i32, i32* getelementptr inbounds ([500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 0, i64 0), align 16, !tbaa !4
  %19 = load i32, i32* getelementptr inbounds ([500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 0, i64 1), align 4, !tbaa !4
  %20 = load i32, i32* getelementptr inbounds ([500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 1, i64 0), align 16, !tbaa !4
  %21 = load i32, i32* getelementptr inbounds ([500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 1, i64 1), align 4, !tbaa !4
  br label %22

22:                                               ; preds = %17, %68
  %23 = phi i32 [ %33, %68 ], [ %21, %17 ]
  %24 = phi i32 [ %31, %68 ], [ %20, %17 ]
  %25 = phi i32 [ %23, %68 ], [ %19, %17 ]
  %26 = phi i32 [ %24, %68 ], [ %18, %17 ]
  %27 = phi i64 [ %29, %68 ], [ 1, %17 ]
  %28 = add nsw i64 %27, -1
  %29 = add nuw nsw i64 %27, 1
  %30 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %29, i64 0
  %31 = load i32, i32* %30, align 16, !tbaa !4
  %32 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %29, i64 1
  %33 = load i32, i32* %32, align 4, !tbaa !4
  br label %34

34:                                               ; preds = %66, %22
  %35 = phi i32 [ %23, %22 ], [ %49, %66 ]
  %36 = phi i32 [ %33, %22 ], [ %54, %66 ]
  %37 = phi i32 [ %31, %22 ], [ %36, %66 ]
  %38 = phi i32 [ %24, %22 ], [ %35, %66 ]
  %39 = phi i32 [ %25, %22 ], [ %45, %66 ]
  %40 = phi i32 [ %26, %22 ], [ %39, %66 ]
  %41 = phi i64 [ 1, %22 ], [ %43, %66 ]
  %42 = add nsw i32 %39, %40
  %43 = add nuw nsw i64 %41, 1
  %44 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %28, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !4
  %46 = add nsw i32 %42, %45
  %47 = add nsw i32 %46, %38
  %48 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %27, i64 %43
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = add nsw i32 %47, %49
  %51 = add nsw i32 %50, %37
  %52 = add nsw i32 %51, %36
  %53 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %29, i64 %43
  %54 = load i32, i32* %53, align 4, !tbaa !4
  %55 = add nsw i32 %52, %54
  %56 = icmp eq i32 %35, 1
  %57 = icmp eq i32 %55, 2
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %34
  %60 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %27, i64 %41
  store i32 1, i32* %60, align 4, !tbaa !4
  br label %66

61:                                               ; preds = %34
  %62 = icmp eq i32 %55, 3
  %63 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %27, i64 %41
  br i1 %62, label %64, label %65

64:                                               ; preds = %61
  store i32 1, i32* %63, align 4, !tbaa !4
  br label %66

65:                                               ; preds = %61
  store i32 0, i32* %63, align 4, !tbaa !4
  br label %66

66:                                               ; preds = %65, %64, %59
  %67 = icmp eq i64 %41, %11
  br i1 %67, label %68, label %34, !llvm.loop !14

68:                                               ; preds = %66
  %69 = icmp eq i64 %27, %10
  br i1 %69, label %124, label %22, !llvm.loop !15

70:                                               ; preds = %12
  br i1 %9, label %124, label %71

71:                                               ; preds = %70
  %72 = load i32, i32* getelementptr inbounds ([500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 0, i64 0), align 16, !tbaa !4
  %73 = load i32, i32* getelementptr inbounds ([500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 0, i64 1), align 4, !tbaa !4
  %74 = load i32, i32* getelementptr inbounds ([500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 1, i64 0), align 16, !tbaa !4
  %75 = load i32, i32* getelementptr inbounds ([500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 1, i64 1), align 4, !tbaa !4
  br label %76

76:                                               ; preds = %71, %122
  %77 = phi i32 [ %87, %122 ], [ %75, %71 ]
  %78 = phi i32 [ %85, %122 ], [ %74, %71 ]
  %79 = phi i32 [ %77, %122 ], [ %73, %71 ]
  %80 = phi i32 [ %78, %122 ], [ %72, %71 ]
  %81 = phi i64 [ %83, %122 ], [ 1, %71 ]
  %82 = add nsw i64 %81, -1
  %83 = add nuw nsw i64 %81, 1
  %84 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %83, i64 0
  %85 = load i32, i32* %84, align 16, !tbaa !4
  %86 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %83, i64 1
  %87 = load i32, i32* %86, align 4, !tbaa !4
  br label %88

88:                                               ; preds = %120, %76
  %89 = phi i32 [ %77, %76 ], [ %103, %120 ]
  %90 = phi i32 [ %87, %76 ], [ %108, %120 ]
  %91 = phi i32 [ %85, %76 ], [ %90, %120 ]
  %92 = phi i32 [ %78, %76 ], [ %89, %120 ]
  %93 = phi i32 [ %79, %76 ], [ %99, %120 ]
  %94 = phi i32 [ %80, %76 ], [ %93, %120 ]
  %95 = phi i64 [ 1, %76 ], [ %97, %120 ]
  %96 = add nsw i32 %93, %94
  %97 = add nuw nsw i64 %95, 1
  %98 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %82, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !4
  %100 = add nsw i32 %96, %99
  %101 = add nsw i32 %100, %92
  %102 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %81, i64 %97
  %103 = load i32, i32* %102, align 4, !tbaa !4
  %104 = add nsw i32 %101, %103
  %105 = add nsw i32 %104, %91
  %106 = add nsw i32 %105, %90
  %107 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %83, i64 %97
  %108 = load i32, i32* %107, align 4, !tbaa !4
  %109 = add nsw i32 %106, %108
  %110 = icmp eq i32 %89, 1
  %111 = icmp eq i32 %109, 2
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %115

113:                                              ; preds = %88
  %114 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %81, i64 %95
  store i32 1, i32* %114, align 4, !tbaa !4
  br label %120

115:                                              ; preds = %88
  %116 = icmp eq i32 %109, 3
  %117 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %81, i64 %95
  br i1 %116, label %118, label %119

118:                                              ; preds = %115
  store i32 1, i32* %117, align 4, !tbaa !4
  br label %120

119:                                              ; preds = %115
  store i32 0, i32* %117, align 4, !tbaa !4
  br label %120

120:                                              ; preds = %119, %118, %113
  %121 = icmp eq i64 %95, %11
  br i1 %121, label %122, label %88, !llvm.loop !14

122:                                              ; preds = %120
  %123 = icmp eq i64 %81, %10
  br i1 %123, label %124, label %76, !llvm.loop !15

124:                                              ; preds = %122, %68, %70, %16
  %125 = phi i32 [ 2, %16 ], [ 1, %70 ], [ 2, %68 ], [ 1, %122 ]
  %126 = add nsw i32 %13, -1
  %127 = icmp sgt i32 %13, 1
  br i1 %127, label %12, label %128, !llvm.loop !17

128:                                              ; preds = %124
  store i32 %125, i32* @active, align 4, !tbaa !4
  store i32 0, i32* @steps, align 4, !tbaa !4
  br label %129

129:                                              ; preds = %128, %0
  tail call void @_Z14_sysy_stoptimei(i32 noundef 106)
  %130 = load i32, i32* @active, align 4, !tbaa !4
  %131 = icmp eq i32 %130, 2
  %132 = load i32, i32* @height, align 4, !tbaa !4
  br i1 %131, label %133, label %171

133:                                              ; preds = %129
  %134 = icmp slt i32 %132, 1
  br i1 %134, label %193, label %135

135:                                              ; preds = %133
  %136 = load i32, i32* @width, align 4, !tbaa !4
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %173, label %138

138:                                              ; preds = %135
  %139 = zext i32 %136 to i64
  %140 = shl nuw nsw i64 %139, 2
  %141 = zext i32 %132 to i64
  %142 = and i64 %141, 1
  %143 = icmp eq i32 %132, 1
  br i1 %143, label %163, label %144

144:                                              ; preds = %138
  %145 = and i64 %141, 4294967294
  br label %146

146:                                              ; preds = %146, %144
  %147 = phi i64 [ 0, %144 ], [ %154, %146 ]
  %148 = phi i64 [ 0, %144 ], [ %159, %146 ]
  %149 = or i64 %147, 1
  %150 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %149, i64 1
  %151 = bitcast i32* %150 to i8*
  %152 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %149, i64 1
  %153 = bitcast i32* %152 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %153, i64 %140, i1 false) #5, !tbaa !4
  %154 = add nuw nsw i64 %147, 2
  %155 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %154, i64 1
  %156 = bitcast i32* %155 to i8*
  %157 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %154, i64 1
  %158 = bitcast i32* %157 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 4 %158, i64 %140, i1 false) #5, !tbaa !4
  %159 = add i64 %148, 2
  %160 = icmp eq i64 %159, %145
  br i1 %160, label %161, label %146, !llvm.loop !13

161:                                              ; preds = %146
  %162 = add nuw i64 %147, 3
  br label %163

163:                                              ; preds = %161, %138
  %164 = phi i64 [ 1, %138 ], [ %162, %161 ]
  %165 = icmp eq i64 %142, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %164, i64 1
  %168 = bitcast i32* %167 to i8*
  %169 = getelementptr [500 x [500 x i32]], [500 x [500 x i32]]* @sheet2, i64 0, i64 %164, i64 1
  %170 = bitcast i32* %169 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %170, i64 %140, i1 false) #5, !tbaa !4
  br label %171

171:                                              ; preds = %166, %163, %129
  %172 = icmp slt i32 %132, 1
  br i1 %172, label %193, label %173

173:                                              ; preds = %135, %171
  br label %174

174:                                              ; preds = %173, %188
  %175 = phi i64 [ %189, %188 ], [ 1, %173 ]
  %176 = load i32, i32* @width, align 4, !tbaa !4
  %177 = icmp slt i32 %176, 1
  br i1 %177, label %188, label %178

178:                                              ; preds = %174, %178
  %179 = phi i64 [ %184, %178 ], [ 1, %174 ]
  %180 = getelementptr inbounds [500 x [500 x i32]], [500 x [500 x i32]]* @sheet1, i64 0, i64 %175, i64 %179
  %181 = load i32, i32* %180, align 4, !tbaa !4
  %182 = icmp eq i32 %181, 1
  %183 = select i1 %182, i32 35, i32 46
  tail call void @_Z5putchi(i32 noundef %183)
  %184 = add nuw nsw i64 %179, 1
  %185 = load i32, i32* @width, align 4, !tbaa !4
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %179, %186
  br i1 %187, label %178, label %188, !llvm.loop !11

188:                                              ; preds = %178, %174
  tail call void @_Z5putchi(i32 noundef 10)
  %189 = add nuw nsw i64 %175, 1
  %190 = load i32, i32* @height, align 4, !tbaa !4
  %191 = sext i32 %190 to i64
  %192 = icmp slt i64 %175, %191
  br i1 %192, label %174, label %193, !llvm.loop !12

193:                                              ; preds = %188, %133, %171
  ret i32 0
}

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #1

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9, !16}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = distinct !{!17, !9}
