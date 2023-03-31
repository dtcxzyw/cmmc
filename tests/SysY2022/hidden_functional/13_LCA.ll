; ModuleID = 'tests//SysY2022/hidden_functional/13_LCA.sy'
source_filename = "tests//SysY2022/hidden_functional/13_LCA.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global [10005 x [20 x i32]] zeroinitializer, align 16
@dep = dso_local local_unnamed_addr global [10005 x i32] zeroinitializer, align 16
@to = dso_local local_unnamed_addr global [10005 x i32] zeroinitializer, align 16
@next = dso_local local_unnamed_addr global [10005 x i32] zeroinitializer, align 16
@head = dso_local local_unnamed_addr global [10005 x i32] zeroinitializer, align 16
@cnt = dso_local local_unnamed_addr global i32 0, align 4

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z8add_edgeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, i32* @cnt, align 4, !tbaa !8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10005 x i32], [10005 x i32]* @to, i64 0, i64 %4
  store i32 %1, i32* %5, align 4, !tbaa !8
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [10005 x i32], [10005 x i32]* @head, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !8
  %9 = getelementptr inbounds [10005 x i32], [10005 x i32]* @next, i64 0, i64 %4
  store i32 %8, i32* %9, align 4, !tbaa !8
  store i32 %3, i32* %7, align 4, !tbaa !8
  %10 = add nsw i32 %3, 1
  store i32 %10, i32* @cnt, align 4, !tbaa !8
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %11, i64 0
  store i32 %0, i32* %12, align 16, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z4initv() local_unnamed_addr #3 {
  store i32 1061109567, i32* getelementptr inbounds ([10005 x i32], [10005 x i32]* @dep, i64 0, i64 0), align 16, !tbaa !8
  %1 = load i32, i32* @n, align 4, !tbaa !8
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  %5 = shl nuw nsw i64 %4, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([10005 x i32], [10005 x i32]* @head, i64 0, i64 1) to i8*), i8 -1, i64 %5, i1 false), !tbaa !8
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z4treeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [10005 x i32], [10005 x i32]* @dep, i64 0, i64 %3
  store i32 %1, i32* %4, align 4, !tbaa !8
  %5 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %3, i64 0
  %6 = load i32, i32* %5, align 16, !tbaa !8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ %14, %8 ], [ 0, %2 ]
  %10 = phi i32 [ %13, %8 ], [ %6, %2 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %11, i64 %9
  %13 = load i32, i32* %12, align 4, !tbaa !8
  %14 = add nuw nsw i64 %9, 1
  %15 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %3, i64 %14
  store i32 %13, i32* %15, align 4, !tbaa !8
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %8, !llvm.loop !12

17:                                               ; preds = %8, %2
  %18 = getelementptr inbounds [10005 x i32], [10005 x i32]* @head, i64 0, i64 %3
  %19 = load i32, i32* %18, align 4, !tbaa !8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %1, 1
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i32 [ %19, %21 ], [ %29, %23 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10005 x i32], [10005 x i32]* @to, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !8
  tail call void @_Z4treeii(i32 noundef %27, i32 noundef %22)
  %28 = getelementptr inbounds [10005 x i32], [10005 x i32]* @next, i64 0, i64 %25
  %29 = load i32, i32* %28, align 4, !tbaa !8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %23, !llvm.loop !13

31:                                               ; preds = %23, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z3LCAii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [10005 x i32], [10005 x i32]* @dep, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !8
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [10005 x i32], [10005 x i32]* @dep, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !8
  %9 = icmp slt i32 %5, %8
  %10 = select i1 %9, i32 %1, i32 %0
  %11 = select i1 %9, i32 %0, i32 %1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10005 x i32], [10005 x i32]* @dep, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !8
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds [10005 x i32], [10005 x i32]* @dep, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !8
  %18 = icmp sgt i32 %17, %14
  br i1 %18, label %19, label %39

19:                                               ; preds = %2, %32
  %20 = phi i64 [ %34, %32 ], [ 19, %2 ]
  %21 = phi i64 [ %35, %32 ], [ %15, %2 ]
  %22 = phi i32 [ %33, %32 ], [ %10, %2 ]
  %23 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %21, i64 %20
  %24 = load i32, i32* %23, align 4, !tbaa !8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [10005 x i32], [10005 x i32]* @dep, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !8
  %30 = icmp slt i32 %29, %14
  %31 = select i1 %30, i32 %22, i32 %24
  br label %32

32:                                               ; preds = %26, %19
  %33 = phi i32 [ %22, %19 ], [ %31, %26 ]
  %34 = add i64 %20, -1
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [10005 x i32], [10005 x i32]* @dep, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !8
  %38 = icmp sgt i32 %37, %14
  br i1 %38, label %19, label %39, !llvm.loop !14

39:                                               ; preds = %32, %2
  %40 = phi i32 [ %10, %2 ], [ %33, %32 ]
  %41 = icmp eq i32 %40, %11
  br i1 %41, label %224, label %42

42:                                               ; preds = %39
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %43, i64 19
  %45 = load i32, i32* %44, align 4, !tbaa !8
  %46 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %12, i64 19
  %47 = load i32, i32* %46, align 4, !tbaa !8
  %48 = icmp eq i32 %45, %47
  %49 = select i1 %48, i32 %40, i32 %45
  %50 = select i1 %48, i32 %11, i32 %47
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %51, i64 18
  %53 = load i32, i32* %52, align 8, !tbaa !8
  %54 = sext i32 %50 to i64
  %55 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %54, i64 18
  %56 = load i32, i32* %55, align 8, !tbaa !8
  %57 = icmp eq i32 %53, %56
  %58 = select i1 %57, i32 %49, i32 %53
  %59 = select i1 %57, i32 %50, i32 %56
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %60, i64 17
  %62 = load i32, i32* %61, align 4, !tbaa !8
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %63, i64 17
  %65 = load i32, i32* %64, align 4, !tbaa !8
  %66 = icmp eq i32 %62, %65
  %67 = select i1 %66, i32 %58, i32 %62
  %68 = select i1 %66, i32 %59, i32 %65
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %69, i64 16
  %71 = load i32, i32* %70, align 16, !tbaa !8
  %72 = sext i32 %68 to i64
  %73 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %72, i64 16
  %74 = load i32, i32* %73, align 16, !tbaa !8
  %75 = icmp eq i32 %71, %74
  %76 = select i1 %75, i32 %67, i32 %71
  %77 = select i1 %75, i32 %68, i32 %74
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %78, i64 15
  %80 = load i32, i32* %79, align 4, !tbaa !8
  %81 = sext i32 %77 to i64
  %82 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %81, i64 15
  %83 = load i32, i32* %82, align 4, !tbaa !8
  %84 = icmp eq i32 %80, %83
  %85 = select i1 %84, i32 %76, i32 %80
  %86 = select i1 %84, i32 %77, i32 %83
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %87, i64 14
  %89 = load i32, i32* %88, align 8, !tbaa !8
  %90 = sext i32 %86 to i64
  %91 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %90, i64 14
  %92 = load i32, i32* %91, align 8, !tbaa !8
  %93 = icmp eq i32 %89, %92
  %94 = select i1 %93, i32 %85, i32 %89
  %95 = select i1 %93, i32 %86, i32 %92
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %96, i64 13
  %98 = load i32, i32* %97, align 4, !tbaa !8
  %99 = sext i32 %95 to i64
  %100 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %99, i64 13
  %101 = load i32, i32* %100, align 4, !tbaa !8
  %102 = icmp eq i32 %98, %101
  %103 = select i1 %102, i32 %94, i32 %98
  %104 = select i1 %102, i32 %95, i32 %101
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %105, i64 12
  %107 = load i32, i32* %106, align 16, !tbaa !8
  %108 = sext i32 %104 to i64
  %109 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %108, i64 12
  %110 = load i32, i32* %109, align 16, !tbaa !8
  %111 = icmp eq i32 %107, %110
  %112 = select i1 %111, i32 %103, i32 %107
  %113 = select i1 %111, i32 %104, i32 %110
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %114, i64 11
  %116 = load i32, i32* %115, align 4, !tbaa !8
  %117 = sext i32 %113 to i64
  %118 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %117, i64 11
  %119 = load i32, i32* %118, align 4, !tbaa !8
  %120 = icmp eq i32 %116, %119
  %121 = select i1 %120, i32 %112, i32 %116
  %122 = select i1 %120, i32 %113, i32 %119
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %123, i64 10
  %125 = load i32, i32* %124, align 8, !tbaa !8
  %126 = sext i32 %122 to i64
  %127 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %126, i64 10
  %128 = load i32, i32* %127, align 8, !tbaa !8
  %129 = icmp eq i32 %125, %128
  %130 = select i1 %129, i32 %121, i32 %125
  %131 = select i1 %129, i32 %122, i32 %128
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %132, i64 9
  %134 = load i32, i32* %133, align 4, !tbaa !8
  %135 = sext i32 %131 to i64
  %136 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %135, i64 9
  %137 = load i32, i32* %136, align 4, !tbaa !8
  %138 = icmp eq i32 %134, %137
  %139 = select i1 %138, i32 %130, i32 %134
  %140 = select i1 %138, i32 %131, i32 %137
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %141, i64 8
  %143 = load i32, i32* %142, align 16, !tbaa !8
  %144 = sext i32 %140 to i64
  %145 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %144, i64 8
  %146 = load i32, i32* %145, align 16, !tbaa !8
  %147 = icmp eq i32 %143, %146
  %148 = select i1 %147, i32 %139, i32 %143
  %149 = select i1 %147, i32 %140, i32 %146
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %150, i64 7
  %152 = load i32, i32* %151, align 4, !tbaa !8
  %153 = sext i32 %149 to i64
  %154 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %153, i64 7
  %155 = load i32, i32* %154, align 4, !tbaa !8
  %156 = icmp eq i32 %152, %155
  %157 = select i1 %156, i32 %148, i32 %152
  %158 = select i1 %156, i32 %149, i32 %155
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %159, i64 6
  %161 = load i32, i32* %160, align 8, !tbaa !8
  %162 = sext i32 %158 to i64
  %163 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %162, i64 6
  %164 = load i32, i32* %163, align 8, !tbaa !8
  %165 = icmp eq i32 %161, %164
  %166 = select i1 %165, i32 %157, i32 %161
  %167 = select i1 %165, i32 %158, i32 %164
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %168, i64 5
  %170 = load i32, i32* %169, align 4, !tbaa !8
  %171 = sext i32 %167 to i64
  %172 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %171, i64 5
  %173 = load i32, i32* %172, align 4, !tbaa !8
  %174 = icmp eq i32 %170, %173
  %175 = select i1 %174, i32 %166, i32 %170
  %176 = select i1 %174, i32 %167, i32 %173
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %177, i64 4
  %179 = load i32, i32* %178, align 16, !tbaa !8
  %180 = sext i32 %176 to i64
  %181 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %180, i64 4
  %182 = load i32, i32* %181, align 16, !tbaa !8
  %183 = icmp eq i32 %179, %182
  %184 = select i1 %183, i32 %175, i32 %179
  %185 = select i1 %183, i32 %176, i32 %182
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %186, i64 3
  %188 = load i32, i32* %187, align 4, !tbaa !8
  %189 = sext i32 %185 to i64
  %190 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %189, i64 3
  %191 = load i32, i32* %190, align 4, !tbaa !8
  %192 = icmp eq i32 %188, %191
  %193 = select i1 %192, i32 %184, i32 %188
  %194 = select i1 %192, i32 %185, i32 %191
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %195, i64 2
  %197 = load i32, i32* %196, align 8, !tbaa !8
  %198 = sext i32 %194 to i64
  %199 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %198, i64 2
  %200 = load i32, i32* %199, align 8, !tbaa !8
  %201 = icmp eq i32 %197, %200
  %202 = select i1 %201, i32 %193, i32 %197
  %203 = select i1 %201, i32 %194, i32 %200
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %204, i64 1
  %206 = load i32, i32* %205, align 4, !tbaa !8
  %207 = sext i32 %203 to i64
  %208 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %207, i64 1
  %209 = load i32, i32* %208, align 4, !tbaa !8
  %210 = icmp eq i32 %206, %209
  %211 = select i1 %210, i32 %202, i32 %206
  %212 = select i1 %210, i32 %203, i32 %209
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %213, i64 0
  %215 = load i32, i32* %214, align 16, !tbaa !8
  %216 = sext i32 %212 to i64
  %217 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %216, i64 0
  %218 = load i32, i32* %217, align 16, !tbaa !8
  %219 = icmp eq i32 %215, %218
  %220 = select i1 %219, i32 %211, i32 %215
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %221, i64 0
  %223 = load i32, i32* %222, align 16, !tbaa !8
  br label %224

224:                                              ; preds = %39, %42
  %225 = phi i32 [ %223, %42 ], [ %11, %39 ]
  ret i32 %225
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
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
  %28 = tail call noundef i32 @_Z5getchv()
  %29 = add i32 %28, -58
  %30 = icmp ult i32 %29, -10
  br i1 %30, label %34, label %31

31:                                               ; preds = %34, %24
  %32 = phi i32 [ %28, %24 ], [ %39, %34 ]
  %33 = phi i32 [ 0, %24 ], [ %38, %34 ]
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i32 [ %38, %34 ], [ 0, %24 ]
  %36 = phi i32 [ %39, %34 ], [ %28, %24 ]
  %37 = icmp eq i32 %36, 45
  %38 = select i1 %37, i32 1, i32 %35
  %39 = tail call noundef i32 @_Z5getchv()
  %40 = add i32 %39, -58
  %41 = icmp ult i32 %40, -10
  br i1 %41, label %34, label %31, !llvm.loop !5

42:                                               ; preds = %42, %31
  %43 = phi i32 [ %47, %42 ], [ 0, %31 ]
  %44 = phi i32 [ %48, %42 ], [ %32, %31 ]
  %45 = mul nsw i32 %43, 10
  %46 = add nsw i32 %44, -48
  %47 = add i32 %46, %45
  %48 = tail call noundef i32 @_Z5getchv()
  %49 = add i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %42, label %51, !llvm.loop !7

51:                                               ; preds = %42
  %52 = icmp eq i32 %33, 0
  %53 = sub nsw i32 0, %47
  %54 = select i1 %52, i32 %47, i32 %53
  store i32 %54, i32* @m, align 4, !tbaa !8
  store i32 1061109567, i32* getelementptr inbounds ([10005 x i32], [10005 x i32]* @dep, i64 0, i64 0), align 16, !tbaa !8
  %55 = load i32, i32* @n, align 4, !tbaa !8
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = zext i32 %55 to i64
  %59 = shl nuw nsw i64 %58, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([10005 x i32], [10005 x i32]* @head, i64 0, i64 1) to i8*), i8 -1, i64 %59, i1 false) #8, !tbaa !8
  %60 = icmp eq i32 %55, 1
  br i1 %60, label %131, label %61

61:                                               ; preds = %51, %57
  br label %62

62:                                               ; preds = %61, %114
  %63 = phi i32 [ %128, %114 ], [ 1, %61 ]
  %64 = tail call noundef i32 @_Z5getchv()
  %65 = add i32 %64, -58
  %66 = icmp ult i32 %65, -10
  br i1 %66, label %70, label %67

67:                                               ; preds = %70, %62
  %68 = phi i32 [ %64, %62 ], [ %75, %70 ]
  %69 = phi i32 [ 0, %62 ], [ %74, %70 ]
  br label %78

70:                                               ; preds = %62, %70
  %71 = phi i32 [ %74, %70 ], [ 0, %62 ]
  %72 = phi i32 [ %75, %70 ], [ %64, %62 ]
  %73 = icmp eq i32 %72, 45
  %74 = select i1 %73, i32 1, i32 %71
  %75 = tail call noundef i32 @_Z5getchv()
  %76 = add i32 %75, -58
  %77 = icmp ult i32 %76, -10
  br i1 %77, label %70, label %67, !llvm.loop !5

78:                                               ; preds = %78, %67
  %79 = phi i32 [ %83, %78 ], [ 0, %67 ]
  %80 = phi i32 [ %84, %78 ], [ %68, %67 ]
  %81 = mul nsw i32 %79, 10
  %82 = add nsw i32 %80, -48
  %83 = add i32 %82, %81
  %84 = tail call noundef i32 @_Z5getchv()
  %85 = add i32 %84, -48
  %86 = icmp ult i32 %85, 10
  br i1 %86, label %78, label %87, !llvm.loop !7

87:                                               ; preds = %78
  %88 = icmp eq i32 %69, 0
  %89 = sub nsw i32 0, %83
  %90 = select i1 %88, i32 %83, i32 %89
  %91 = tail call noundef i32 @_Z5getchv()
  %92 = add i32 %91, -58
  %93 = icmp ult i32 %92, -10
  br i1 %93, label %97, label %94

94:                                               ; preds = %97, %87
  %95 = phi i32 [ %91, %87 ], [ %102, %97 ]
  %96 = phi i32 [ 0, %87 ], [ %101, %97 ]
  br label %105

97:                                               ; preds = %87, %97
  %98 = phi i32 [ %101, %97 ], [ 0, %87 ]
  %99 = phi i32 [ %102, %97 ], [ %91, %87 ]
  %100 = icmp eq i32 %99, 45
  %101 = select i1 %100, i32 1, i32 %98
  %102 = tail call noundef i32 @_Z5getchv()
  %103 = add i32 %102, -58
  %104 = icmp ult i32 %103, -10
  br i1 %104, label %97, label %94, !llvm.loop !5

105:                                              ; preds = %105, %94
  %106 = phi i32 [ %110, %105 ], [ 0, %94 ]
  %107 = phi i32 [ %111, %105 ], [ %95, %94 ]
  %108 = mul nsw i32 %106, 10
  %109 = add nsw i32 %107, -48
  %110 = add i32 %109, %108
  %111 = tail call noundef i32 @_Z5getchv()
  %112 = add i32 %111, -48
  %113 = icmp ult i32 %112, 10
  br i1 %113, label %105, label %114, !llvm.loop !7

114:                                              ; preds = %105
  %115 = icmp eq i32 %96, 0
  %116 = sub nsw i32 0, %110
  %117 = select i1 %115, i32 %110, i32 %116
  %118 = load i32, i32* @cnt, align 4, !tbaa !8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [10005 x i32], [10005 x i32]* @to, i64 0, i64 %119
  store i32 %117, i32* %120, align 4, !tbaa !8
  %121 = sext i32 %90 to i64
  %122 = getelementptr inbounds [10005 x i32], [10005 x i32]* @head, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4, !tbaa !8
  %124 = getelementptr inbounds [10005 x i32], [10005 x i32]* @next, i64 0, i64 %119
  store i32 %123, i32* %124, align 4, !tbaa !8
  store i32 %118, i32* %122, align 4, !tbaa !8
  %125 = add nsw i32 %118, 1
  store i32 %125, i32* @cnt, align 4, !tbaa !8
  %126 = sext i32 %117 to i64
  %127 = getelementptr inbounds [10005 x [20 x i32]], [10005 x [20 x i32]]* @f, i64 0, i64 %126, i64 0
  store i32 %90, i32* %127, align 16, !tbaa !8
  %128 = add nuw nsw i32 %63, 1
  %129 = load i32, i32* @n, align 4, !tbaa !8
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %62, !llvm.loop !15

131:                                              ; preds = %114, %57
  tail call void @_Z4treeii(i32 noundef 1, i32 noundef 1)
  %132 = load i32, i32* @m, align 4, !tbaa !8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %193, label %134

134:                                              ; preds = %131, %185
  %135 = tail call noundef i32 @_Z5getchv()
  %136 = add i32 %135, -58
  %137 = icmp ult i32 %136, -10
  br i1 %137, label %141, label %138

138:                                              ; preds = %141, %134
  %139 = phi i32 [ %135, %134 ], [ %146, %141 ]
  %140 = phi i32 [ 0, %134 ], [ %145, %141 ]
  br label %149

141:                                              ; preds = %134, %141
  %142 = phi i32 [ %145, %141 ], [ 0, %134 ]
  %143 = phi i32 [ %146, %141 ], [ %135, %134 ]
  %144 = icmp eq i32 %143, 45
  %145 = select i1 %144, i32 1, i32 %142
  %146 = tail call noundef i32 @_Z5getchv()
  %147 = add i32 %146, -58
  %148 = icmp ult i32 %147, -10
  br i1 %148, label %141, label %138, !llvm.loop !5

149:                                              ; preds = %149, %138
  %150 = phi i32 [ %154, %149 ], [ 0, %138 ]
  %151 = phi i32 [ %155, %149 ], [ %139, %138 ]
  %152 = mul nsw i32 %150, 10
  %153 = add nsw i32 %151, -48
  %154 = add i32 %153, %152
  %155 = tail call noundef i32 @_Z5getchv()
  %156 = add i32 %155, -48
  %157 = icmp ult i32 %156, 10
  br i1 %157, label %149, label %158, !llvm.loop !7

158:                                              ; preds = %149
  %159 = icmp eq i32 %140, 0
  %160 = sub nsw i32 0, %154
  %161 = select i1 %159, i32 %154, i32 %160
  %162 = tail call noundef i32 @_Z5getchv()
  %163 = add i32 %162, -58
  %164 = icmp ult i32 %163, -10
  br i1 %164, label %168, label %165

165:                                              ; preds = %168, %158
  %166 = phi i32 [ %162, %158 ], [ %173, %168 ]
  %167 = phi i32 [ 0, %158 ], [ %172, %168 ]
  br label %176

168:                                              ; preds = %158, %168
  %169 = phi i32 [ %172, %168 ], [ 0, %158 ]
  %170 = phi i32 [ %173, %168 ], [ %162, %158 ]
  %171 = icmp eq i32 %170, 45
  %172 = select i1 %171, i32 1, i32 %169
  %173 = tail call noundef i32 @_Z5getchv()
  %174 = add i32 %173, -58
  %175 = icmp ult i32 %174, -10
  br i1 %175, label %168, label %165, !llvm.loop !5

176:                                              ; preds = %176, %165
  %177 = phi i32 [ %181, %176 ], [ 0, %165 ]
  %178 = phi i32 [ %182, %176 ], [ %166, %165 ]
  %179 = mul nsw i32 %177, 10
  %180 = add nsw i32 %178, -48
  %181 = add i32 %180, %179
  %182 = tail call noundef i32 @_Z5getchv()
  %183 = add i32 %182, -48
  %184 = icmp ult i32 %183, 10
  br i1 %184, label %176, label %185, !llvm.loop !7

185:                                              ; preds = %176
  %186 = icmp eq i32 %167, 0
  %187 = sub nsw i32 0, %181
  %188 = select i1 %186, i32 %181, i32 %187
  %189 = tail call noundef i32 @_Z3LCAii(i32 noundef %161, i32 noundef %188)
  tail call void @_Z6putinti(i32 noundef %189)
  tail call void @_Z5putchi(i32 noundef 10)
  %190 = load i32, i32* @m, align 4, !tbaa !8
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* @m, align 4, !tbaa !8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %134, !llvm.loop !16

193:                                              ; preds = %185, %131
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

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
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
