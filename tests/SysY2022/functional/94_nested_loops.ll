; ModuleID = 'tests//SysY2022/functional/94_nested_loops.sy'
source_filename = "tests//SysY2022/functional/94_nested_loops.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@arr1 = dso_local local_unnamed_addr global [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]] zeroinitializer, align 16
@arr2 = dso_local local_unnamed_addr global [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z5loop1ii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 0
  %4 = icmp sgt i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %145

6:                                                ; preds = %2
  %7 = add nuw i32 %1, %0
  %8 = add nsw i32 %1, -1
  %9 = add nsw i32 %0, -1
  %10 = call i32 @llvm.umin.i32(i32 %8, i32 %9)
  %11 = add nuw nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  br label %13

13:                                               ; preds = %6, %142
  %14 = phi i64 [ 0, %6 ], [ %143, %142 ]
  %15 = trunc i64 %14 to i32
  %16 = add i32 %7, %15
  br label %17

17:                                               ; preds = %13, %141
  %18 = phi i1 [ true, %13 ], [ false, %141 ]
  %19 = phi i64 [ 0, %13 ], [ 1, %141 ]
  %20 = trunc i64 %19 to i32
  %21 = add i32 %16, %20
  br label %22

22:                                               ; preds = %17, %138
  %23 = phi i64 [ 0, %17 ], [ %139, %138 ]
  %24 = trunc i64 %23 to i32
  %25 = add i32 %21, %24
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ 0, %22 ], [ %136, %26 ]
  %28 = trunc i64 %27 to i32
  %29 = add i32 %25, %28
  %30 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 0, i64 0
  store i32 %29, i32* %30, align 16, !tbaa !4
  %31 = add i32 %29, 1
  %32 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 0, i64 1
  store i32 %31, i32* %32, align 4, !tbaa !4
  %33 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 1, i64 0
  store i32 %31, i32* %33, align 8, !tbaa !4
  %34 = add i32 %29, 2
  %35 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 1, i64 1
  store i32 %34, i32* %35, align 4, !tbaa !4
  %36 = add i32 %29, 2
  %37 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 2, i64 0
  store i32 %36, i32* %37, align 16, !tbaa !4
  %38 = add i32 %29, 3
  %39 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 2, i64 1
  store i32 %38, i32* %39, align 4, !tbaa !4
  %40 = add i32 %29, 3
  %41 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 3, i64 0
  store i32 %40, i32* %41, align 8, !tbaa !4
  %42 = add i32 %29, 4
  %43 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 3, i64 1
  store i32 %42, i32* %43, align 4, !tbaa !4
  %44 = add i32 %29, 4
  %45 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 4, i64 0
  store i32 %44, i32* %45, align 16, !tbaa !4
  %46 = add i32 %29, 5
  %47 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 4, i64 1
  store i32 %46, i32* %47, align 4, !tbaa !4
  %48 = add i32 %29, 5
  %49 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 5, i64 0
  store i32 %48, i32* %49, align 8, !tbaa !4
  %50 = add i32 %29, 6
  %51 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 0, i64 5, i64 1
  store i32 %50, i32* %51, align 4, !tbaa !4
  %52 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 0, i64 0
  store i32 %31, i32* %52, align 16, !tbaa !4
  %53 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 0, i64 1
  store i32 %34, i32* %53, align 4, !tbaa !4
  %54 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 1, i64 0
  store i32 %34, i32* %54, align 8, !tbaa !4
  %55 = add i32 %29, 3
  %56 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 1, i64 1
  store i32 %55, i32* %56, align 4, !tbaa !4
  %57 = add i32 %29, 3
  %58 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 2, i64 0
  store i32 %57, i32* %58, align 16, !tbaa !4
  %59 = add i32 %29, 4
  %60 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 2, i64 1
  store i32 %59, i32* %60, align 4, !tbaa !4
  %61 = add i32 %29, 4
  %62 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 3, i64 0
  store i32 %61, i32* %62, align 8, !tbaa !4
  %63 = add i32 %29, 5
  %64 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 3, i64 1
  store i32 %63, i32* %64, align 4, !tbaa !4
  %65 = add i32 %29, 5
  %66 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 4, i64 0
  store i32 %65, i32* %66, align 16, !tbaa !4
  %67 = add i32 %29, 6
  %68 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 4, i64 1
  store i32 %67, i32* %68, align 4, !tbaa !4
  %69 = add i32 %29, 6
  %70 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 5, i64 0
  store i32 %69, i32* %70, align 8, !tbaa !4
  %71 = add i32 %29, 7
  %72 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 1, i64 5, i64 1
  store i32 %71, i32* %72, align 4, !tbaa !4
  %73 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 0, i64 0
  store i32 %36, i32* %73, align 16, !tbaa !4
  %74 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 0, i64 1
  store i32 %38, i32* %74, align 4, !tbaa !4
  %75 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 1, i64 0
  store i32 %38, i32* %75, align 8, !tbaa !4
  %76 = add i32 %29, 4
  %77 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 1, i64 1
  store i32 %76, i32* %77, align 4, !tbaa !4
  %78 = add i32 %29, 4
  %79 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 2, i64 0
  store i32 %78, i32* %79, align 16, !tbaa !4
  %80 = add i32 %29, 5
  %81 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 2, i64 1
  store i32 %80, i32* %81, align 4, !tbaa !4
  %82 = add i32 %29, 5
  %83 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 3, i64 0
  store i32 %82, i32* %83, align 8, !tbaa !4
  %84 = add i32 %29, 6
  %85 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 3, i64 1
  store i32 %84, i32* %85, align 4, !tbaa !4
  %86 = add i32 %29, 6
  %87 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 4, i64 0
  store i32 %86, i32* %87, align 16, !tbaa !4
  %88 = add i32 %29, 7
  %89 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 4, i64 1
  store i32 %88, i32* %89, align 4, !tbaa !4
  %90 = add i32 %29, 7
  %91 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 5, i64 0
  store i32 %90, i32* %91, align 8, !tbaa !4
  %92 = add i32 %29, 8
  %93 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 2, i64 5, i64 1
  store i32 %92, i32* %93, align 4, !tbaa !4
  %94 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 0, i64 0
  store i32 %40, i32* %94, align 16, !tbaa !4
  %95 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 0, i64 1
  store i32 %42, i32* %95, align 4, !tbaa !4
  %96 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 1, i64 0
  store i32 %42, i32* %96, align 8, !tbaa !4
  %97 = add i32 %29, 5
  %98 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 1, i64 1
  store i32 %97, i32* %98, align 4, !tbaa !4
  %99 = add i32 %29, 5
  %100 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 2, i64 0
  store i32 %99, i32* %100, align 16, !tbaa !4
  %101 = add i32 %29, 6
  %102 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 2, i64 1
  store i32 %101, i32* %102, align 4, !tbaa !4
  %103 = add i32 %29, 6
  %104 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 3, i64 0
  store i32 %103, i32* %104, align 8, !tbaa !4
  %105 = add i32 %29, 7
  %106 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 3, i64 1
  store i32 %105, i32* %106, align 4, !tbaa !4
  %107 = add i32 %29, 7
  %108 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 4, i64 0
  store i32 %107, i32* %108, align 16, !tbaa !4
  %109 = add i32 %29, 8
  %110 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 4, i64 1
  store i32 %109, i32* %110, align 4, !tbaa !4
  %111 = add i32 %29, 8
  %112 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 5, i64 0
  store i32 %111, i32* %112, align 8, !tbaa !4
  %113 = add i32 %29, 9
  %114 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 3, i64 5, i64 1
  store i32 %113, i32* %114, align 4, !tbaa !4
  %115 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 0, i64 0
  store i32 %44, i32* %115, align 16, !tbaa !4
  %116 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 0, i64 1
  store i32 %46, i32* %116, align 4, !tbaa !4
  %117 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 1, i64 0
  store i32 %46, i32* %117, align 8, !tbaa !4
  %118 = add i32 %29, 6
  %119 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 1, i64 1
  store i32 %118, i32* %119, align 4, !tbaa !4
  %120 = add i32 %29, 6
  %121 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 2, i64 0
  store i32 %120, i32* %121, align 16, !tbaa !4
  %122 = add i32 %29, 7
  %123 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 2, i64 1
  store i32 %122, i32* %123, align 4, !tbaa !4
  %124 = add i32 %29, 7
  %125 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 3, i64 0
  store i32 %124, i32* %125, align 8, !tbaa !4
  %126 = add i32 %29, 8
  %127 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 3, i64 1
  store i32 %126, i32* %127, align 4, !tbaa !4
  %128 = add i32 %29, 8
  %129 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 4, i64 0
  store i32 %128, i32* %129, align 16, !tbaa !4
  %130 = add i32 %29, 9
  %131 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 4, i64 1
  store i32 %130, i32* %131, align 4, !tbaa !4
  %132 = add i32 %29, 9
  %133 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 5, i64 0
  store i32 %132, i32* %133, align 8, !tbaa !4
  %134 = add i32 %29, 10
  %135 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %14, i64 %19, i64 %23, i64 %27, i64 4, i64 5, i64 1
  store i32 %134, i32* %135, align 4, !tbaa !4
  %136 = add nuw nsw i64 %27, 1
  %137 = icmp eq i64 %136, 4
  br i1 %137, label %138, label %26, !llvm.loop !8

138:                                              ; preds = %26
  %139 = add nuw nsw i64 %23, 1
  %140 = icmp eq i64 %139, 3
  br i1 %140, label %141, label %22, !llvm.loop !10

141:                                              ; preds = %138
  br i1 %18, label %17, label %142, !llvm.loop !11

142:                                              ; preds = %141
  %143 = add nuw nsw i64 %14, 1
  %144 = icmp eq i64 %143, %12
  br i1 %144, label %145, label %13, !llvm.loop !12

145:                                              ; preds = %142, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z5loop2v() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %91
  %2 = phi i64 [ 0, %0 ], [ %92, %91 ]
  br label %3

3:                                                ; preds = %1, %90
  %4 = phi i1 [ true, %1 ], [ false, %90 ]
  %5 = phi i64 [ 0, %1 ], [ 1, %90 ]
  %6 = add nuw nsw i64 %5, %2
  br label %7

7:                                                ; preds = %3, %87
  %8 = phi i64 [ 0, %3 ], [ %88, %87 ]
  br label %9

9:                                                ; preds = %7, %86
  %10 = phi i1 [ true, %7 ], [ false, %86 ]
  %11 = phi i64 [ 0, %7 ], [ 1, %86 ]
  %12 = add nuw nsw i64 %6, %11
  %13 = trunc i64 %12 to i32
  %14 = trunc i64 %12 to i32
  %15 = add i32 %14, 1
  %16 = trunc i64 %12 to i32
  %17 = add i32 %16, 2
  %18 = trunc i64 %12 to i32
  %19 = add i32 %18, 3
  %20 = trunc i64 %12 to i32
  %21 = add i32 %20, 4
  %22 = trunc i64 %12 to i32
  %23 = add i32 %22, 5
  %24 = trunc i64 %12 to i32
  %25 = add i32 %24, 6
  br label %26

26:                                               ; preds = %9, %26
  %27 = phi i64 [ 0, %9 ], [ %84, %26 ]
  %28 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 0, i64 0
  store i32 %13, i32* %28, align 16, !tbaa !4
  %29 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 0, i64 1
  store i32 %15, i32* %29, align 4, !tbaa !4
  %30 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 0, i64 2
  store i32 %17, i32* %30, align 8, !tbaa !4
  %31 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 0, i64 3
  store i32 %19, i32* %31, align 4, !tbaa !4
  %32 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 0, i64 4
  store i32 %21, i32* %32, align 16, !tbaa !4
  %33 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 0, i64 5
  store i32 %23, i32* %33, align 4, !tbaa !4
  %34 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 0, i64 6
  store i32 %25, i32* %34, align 8, !tbaa !4
  %35 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 1, i64 0
  store i32 %13, i32* %35, align 4, !tbaa !4
  %36 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 1, i64 1
  store i32 %15, i32* %36, align 16, !tbaa !4
  %37 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 1, i64 2
  store i32 %17, i32* %37, align 4, !tbaa !4
  %38 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 1, i64 3
  store i32 %19, i32* %38, align 8, !tbaa !4
  %39 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 1, i64 4
  store i32 %21, i32* %39, align 4, !tbaa !4
  %40 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 1, i64 5
  store i32 %23, i32* %40, align 16, !tbaa !4
  %41 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 1, i64 6
  store i32 %25, i32* %41, align 4, !tbaa !4
  %42 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 2, i64 0
  store i32 %13, i32* %42, align 8, !tbaa !4
  %43 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 2, i64 1
  store i32 %15, i32* %43, align 4, !tbaa !4
  %44 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 2, i64 2
  store i32 %17, i32* %44, align 16, !tbaa !4
  %45 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 2, i64 3
  store i32 %19, i32* %45, align 4, !tbaa !4
  %46 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 2, i64 4
  store i32 %21, i32* %46, align 8, !tbaa !4
  %47 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 2, i64 5
  store i32 %23, i32* %47, align 4, !tbaa !4
  %48 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 2, i64 6
  store i32 %25, i32* %48, align 16, !tbaa !4
  %49 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 3, i64 0
  store i32 %13, i32* %49, align 4, !tbaa !4
  %50 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 3, i64 1
  store i32 %15, i32* %50, align 8, !tbaa !4
  %51 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 3, i64 2
  store i32 %17, i32* %51, align 4, !tbaa !4
  %52 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 3, i64 3
  store i32 %19, i32* %52, align 16, !tbaa !4
  %53 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 3, i64 4
  store i32 %21, i32* %53, align 4, !tbaa !4
  %54 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 3, i64 5
  store i32 %23, i32* %54, align 8, !tbaa !4
  %55 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 3, i64 6
  store i32 %25, i32* %55, align 4, !tbaa !4
  %56 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 4, i64 0
  store i32 %13, i32* %56, align 16, !tbaa !4
  %57 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 4, i64 1
  store i32 %15, i32* %57, align 4, !tbaa !4
  %58 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 4, i64 2
  store i32 %17, i32* %58, align 8, !tbaa !4
  %59 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 4, i64 3
  store i32 %19, i32* %59, align 4, !tbaa !4
  %60 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 4, i64 4
  store i32 %21, i32* %60, align 16, !tbaa !4
  %61 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 4, i64 5
  store i32 %23, i32* %61, align 4, !tbaa !4
  %62 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 4, i64 6
  store i32 %25, i32* %62, align 8, !tbaa !4
  %63 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 5, i64 0
  store i32 %13, i32* %63, align 4, !tbaa !4
  %64 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 5, i64 1
  store i32 %15, i32* %64, align 16, !tbaa !4
  %65 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 5, i64 2
  store i32 %17, i32* %65, align 4, !tbaa !4
  %66 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 5, i64 3
  store i32 %19, i32* %66, align 8, !tbaa !4
  %67 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 5, i64 4
  store i32 %21, i32* %67, align 4, !tbaa !4
  %68 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 5, i64 5
  store i32 %23, i32* %68, align 16, !tbaa !4
  %69 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 5, i64 6
  store i32 %25, i32* %69, align 4, !tbaa !4
  %70 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 6, i64 0
  store i32 %13, i32* %70, align 8, !tbaa !4
  %71 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 6, i64 1
  store i32 %15, i32* %71, align 4, !tbaa !4
  %72 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 6, i64 2
  store i32 %17, i32* %72, align 16, !tbaa !4
  %73 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 6, i64 3
  store i32 %19, i32* %73, align 4, !tbaa !4
  %74 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 6, i64 4
  store i32 %21, i32* %74, align 8, !tbaa !4
  %75 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 6, i64 5
  store i32 %23, i32* %75, align 4, !tbaa !4
  %76 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 6, i64 6
  store i32 %25, i32* %76, align 16, !tbaa !4
  %77 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 7, i64 0
  store i32 %13, i32* %77, align 4, !tbaa !4
  %78 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 7, i64 1
  store i32 %15, i32* %78, align 8, !tbaa !4
  %79 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 7, i64 2
  store i32 %17, i32* %79, align 4, !tbaa !4
  %80 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 7, i64 3
  store i32 %19, i32* %80, align 16, !tbaa !4
  %81 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 7, i64 4
  store i32 %21, i32* %81, align 4, !tbaa !4
  %82 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 7, i64 5
  store i32 %23, i32* %82, align 8, !tbaa !4
  %83 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %2, i64 %5, i64 %8, i64 %11, i64 %27, i64 7, i64 6
  store i32 %25, i32* %83, align 4, !tbaa !4
  %84 = add nuw nsw i64 %27, 1
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %26, !llvm.loop !13

86:                                               ; preds = %26
  br i1 %10, label %9, label %87, !llvm.loop !14

87:                                               ; preds = %86
  %88 = add nuw nsw i64 %8, 1
  %89 = icmp eq i64 %88, 3
  br i1 %89, label %90, label %7, !llvm.loop !15

90:                                               ; preds = %87
  br i1 %4, label %3, label %91, !llvm.loop !16

91:                                               ; preds = %90
  %92 = add nuw nsw i64 %2, 1
  %93 = icmp eq i64 %92, 10
  br i1 %93, label %94, label %1, !llvm.loop !17

94:                                               ; preds = %91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z5loop3iiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = sext i32 %6 to i64
  %9 = sext i32 %5 to i64
  %10 = sext i32 %4 to i64
  %11 = sext i32 %3 to i64
  %12 = sext i32 %2 to i64
  %13 = sext i32 %1 to i64
  %14 = sext i32 %0 to i64
  br label %15

15:                                               ; preds = %7, %72
  %16 = phi i64 [ 0, %7 ], [ %73, %72 ]
  %17 = phi i32 [ 0, %7 ], [ %42, %72 ]
  br label %18

18:                                               ; preds = %15, %67
  %19 = phi i64 [ 0, %15 ], [ %68, %67 ]
  %20 = phi i32 [ %17, %15 ], [ %42, %67 ]
  br label %21

21:                                               ; preds = %18, %62
  %22 = phi i64 [ 0, %18 ], [ %63, %62 ]
  %23 = phi i32 [ %20, %18 ], [ %42, %62 ]
  br label %24

24:                                               ; preds = %21, %57
  %25 = phi i64 [ 0, %21 ], [ %58, %57 ]
  %26 = phi i32 [ %23, %21 ], [ %42, %57 ]
  br label %27

27:                                               ; preds = %24, %52
  %28 = phi i64 [ 0, %24 ], [ %53, %52 ]
  %29 = phi i32 [ %26, %24 ], [ %42, %52 ]
  br label %30

30:                                               ; preds = %27, %47
  %31 = phi i64 [ 0, %27 ], [ %48, %47 ]
  %32 = phi i32 [ %29, %27 ], [ %42, %47 ]
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ 0, %30 ], [ %43, %33 ]
  %35 = phi i32 [ %32, %30 ], [ %42, %33 ]
  %36 = srem i32 %35, 817
  %37 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %16, i64 %19, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34
  %38 = load i32, i32* %37, align 4, !tbaa !4
  %39 = add nsw i32 %36, %38
  %40 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %16, i64 %19, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34
  %41 = load i32, i32* %40, align 4, !tbaa !4
  %42 = add nsw i32 %39, %41
  %43 = add nuw nsw i64 %34, 1
  %44 = icmp slt i64 %43, %8
  %45 = icmp ult i64 %34, 9999999
  %46 = and i1 %45, %44
  br i1 %46, label %33, label %47, !llvm.loop !18

47:                                               ; preds = %33
  %48 = add nuw nsw i64 %31, 1
  %49 = icmp slt i64 %48, %9
  %50 = icmp ult i64 %31, 999999
  %51 = and i1 %50, %49
  br i1 %51, label %30, label %52, !llvm.loop !19

52:                                               ; preds = %47
  %53 = add nuw nsw i64 %28, 1
  %54 = icmp slt i64 %53, %10
  %55 = icmp ult i64 %28, 99999
  %56 = and i1 %55, %54
  br i1 %56, label %27, label %57, !llvm.loop !20

57:                                               ; preds = %52
  %58 = add nuw nsw i64 %25, 1
  %59 = icmp slt i64 %58, %11
  %60 = icmp ult i64 %25, 9999
  %61 = and i1 %60, %59
  br i1 %61, label %24, label %62, !llvm.loop !21

62:                                               ; preds = %57
  %63 = add nuw nsw i64 %22, 1
  %64 = icmp slt i64 %63, %12
  %65 = icmp ult i64 %22, 999
  %66 = and i1 %65, %64
  br i1 %66, label %21, label %67, !llvm.loop !22

67:                                               ; preds = %62
  %68 = add nuw nsw i64 %19, 1
  %69 = icmp slt i64 %68, %13
  %70 = icmp ult i64 %19, 99
  %71 = and i1 %70, %69
  br i1 %71, label %18, label %72, !llvm.loop !23

72:                                               ; preds = %67
  %73 = add nuw nsw i64 %16, 1
  %74 = icmp slt i64 %73, %14
  %75 = icmp ult i64 %16, 9
  %76 = and i1 %75, %74
  br i1 %76, label %15, label %77, !llvm.loop !24

77:                                               ; preds = %72
  ret i32 %42
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = tail call noundef i32 @_Z6getintv()
  %4 = tail call noundef i32 @_Z6getintv()
  %5 = tail call noundef i32 @_Z6getintv()
  %6 = tail call noundef i32 @_Z6getintv()
  %7 = tail call noundef i32 @_Z6getintv()
  %8 = tail call noundef i32 @_Z6getintv()
  %9 = tail call noundef i32 @_Z6getintv()
  tail call void @_Z5loop1ii(i32 noundef %1, i32 noundef %2)
  tail call void @_Z5loop2v()
  %10 = sext i32 %9 to i64
  %11 = sext i32 %8 to i64
  %12 = sext i32 %7 to i64
  %13 = sext i32 %6 to i64
  %14 = sext i32 %5 to i64
  %15 = sext i32 %4 to i64
  %16 = sext i32 %3 to i64
  br label %17

17:                                               ; preds = %74, %0
  %18 = phi i64 [ 0, %0 ], [ %75, %74 ]
  %19 = phi i32 [ 0, %0 ], [ %44, %74 ]
  br label %20

20:                                               ; preds = %69, %17
  %21 = phi i64 [ 0, %17 ], [ %70, %69 ]
  %22 = phi i32 [ %19, %17 ], [ %44, %69 ]
  br label %23

23:                                               ; preds = %64, %20
  %24 = phi i64 [ 0, %20 ], [ %65, %64 ]
  %25 = phi i32 [ %22, %20 ], [ %44, %64 ]
  br label %26

26:                                               ; preds = %59, %23
  %27 = phi i64 [ 0, %23 ], [ %60, %59 ]
  %28 = phi i32 [ %25, %23 ], [ %44, %59 ]
  br label %29

29:                                               ; preds = %54, %26
  %30 = phi i64 [ 0, %26 ], [ %55, %54 ]
  %31 = phi i32 [ %28, %26 ], [ %44, %54 ]
  br label %32

32:                                               ; preds = %49, %29
  %33 = phi i64 [ 0, %29 ], [ %50, %49 ]
  %34 = phi i32 [ %31, %29 ], [ %44, %49 ]
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %45, %35 ]
  %37 = phi i32 [ %34, %32 ], [ %44, %35 ]
  %38 = srem i32 %37, 817
  %39 = getelementptr inbounds [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]]* @arr1, i64 0, i64 %18, i64 %21, i64 %24, i64 %27, i64 %30, i64 %33, i64 %36
  %40 = load i32, i32* %39, align 4, !tbaa !4
  %41 = add nsw i32 %38, %40
  %42 = getelementptr inbounds [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]]* @arr2, i64 0, i64 %18, i64 %21, i64 %24, i64 %27, i64 %30, i64 %33, i64 %36
  %43 = load i32, i32* %42, align 4, !tbaa !4
  %44 = add nsw i32 %41, %43
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp slt i64 %45, %10
  %47 = icmp ult i64 %36, 9999999
  %48 = and i1 %47, %46
  br i1 %48, label %35, label %49, !llvm.loop !18

49:                                               ; preds = %35
  %50 = add nuw nsw i64 %33, 1
  %51 = icmp slt i64 %50, %11
  %52 = icmp ult i64 %33, 999999
  %53 = and i1 %52, %51
  br i1 %53, label %32, label %54, !llvm.loop !19

54:                                               ; preds = %49
  %55 = add nuw nsw i64 %30, 1
  %56 = icmp slt i64 %55, %12
  %57 = icmp ult i64 %30, 99999
  %58 = and i1 %57, %56
  br i1 %58, label %29, label %59, !llvm.loop !20

59:                                               ; preds = %54
  %60 = add nuw nsw i64 %27, 1
  %61 = icmp slt i64 %60, %13
  %62 = icmp ult i64 %27, 9999
  %63 = and i1 %62, %61
  br i1 %63, label %26, label %64, !llvm.loop !21

64:                                               ; preds = %59
  %65 = add nuw nsw i64 %24, 1
  %66 = icmp slt i64 %65, %14
  %67 = icmp ult i64 %24, 999
  %68 = and i1 %67, %66
  br i1 %68, label %23, label %69, !llvm.loop !22

69:                                               ; preds = %64
  %70 = add nuw nsw i64 %21, 1
  %71 = icmp slt i64 %70, %15
  %72 = icmp ult i64 %21, 99
  %73 = and i1 %72, %71
  br i1 %73, label %20, label %74, !llvm.loop !23

74:                                               ; preds = %69
  %75 = add nuw nsw i64 %18, 1
  %76 = icmp slt i64 %75, %16
  %77 = icmp ult i64 %18, 9
  %78 = and i1 %77, %76
  br i1 %78, label %17, label %79, !llvm.loop !24

79:                                               ; preds = %74
  ret i32 %44
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }

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
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
