; ModuleID = 'tests//SysY2022/hidden_functional/09_BFS.sy'
source_filename = "tests//SysY2022/hidden_functional/09_BFS.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@to = dso_local local_unnamed_addr global [5005 x i32] zeroinitializer, align 16
@next = dso_local local_unnamed_addr global [5005 x i32] zeroinitializer, align 16
@head = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16
@cnt = dso_local local_unnamed_addr global i32 0, align 4
@que = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16
@h = dso_local local_unnamed_addr global i32 0, align 4
@tail = dso_local local_unnamed_addr global i32 0, align 4
@inq = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z8add_edgeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, i32* @cnt, align 4, !tbaa !7
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %4
  store i32 %1, i32* %5, align 4, !tbaa !7
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !7
  %9 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %4
  store i32 %8, i32* %9, align 4, !tbaa !7
  store i32 %3, i32* %7, align 4, !tbaa !7
  %10 = add nsw i32 %3, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %11
  store i32 %0, i32* %12, align 4, !tbaa !7
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %11
  store i32 %15, i32* %16, align 4, !tbaa !7
  store i32 %10, i32* %14, align 4, !tbaa !7
  %17 = add nsw i32 %3, 2
  store i32 %17, i32* @cnt, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z4initv() local_unnamed_addr #3 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4020) bitcast ([1005 x i32]* @head to i8*), i8 -1, i64 4020, i1 false), !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z7inqueuei(i32 noundef %0) local_unnamed_addr #2 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %2
  store i32 1, i32* %3, align 4, !tbaa !7
  %4 = load i32, i32* @tail, align 4, !tbaa !7
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @tail, align 4, !tbaa !7
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %6
  store i32 %0, i32* %7, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z9pop_queuev() local_unnamed_addr #2 {
  %1 = load i32, i32* @h, align 4, !tbaa !7
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @h, align 4, !tbaa !7
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !7
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z4sameii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %3
  store i32 1, i32* %4, align 4, !tbaa !7
  store i32 1, i32* @tail, align 4, !tbaa !7
  store i32 %0, i32* getelementptr inbounds ([1005 x i32], [1005 x i32]* @que, i64 0, i64 1), align 4, !tbaa !7
  br label %20

5:                                                ; preds = %48, %20
  %6 = phi i32 [ %23, %20 ], [ %49, %48 ]
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %24, %7
  br i1 %8, label %20, label %9, !llvm.loop !11

9:                                                ; preds = %5
  %10 = trunc i64 %24 to i32
  store i32 %10, i32* @h, align 4, !tbaa !7
  %11 = icmp slt i32 %6, 0
  br i1 %11, label %92, label %12

12:                                               ; preds = %9
  %13 = add nuw i32 %6, 1
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = and i64 %14, 3
  %17 = icmp ult i64 %15, 3
  br i1 %17, label %79, label %18

18:                                               ; preds = %12
  %19 = and i64 %14, 4294967292
  br label %54

20:                                               ; preds = %5, %2
  %21 = phi i64 [ 0, %2 ], [ %24, %5 ]
  %22 = phi i32 [ 0, %2 ], [ %28, %5 ]
  %23 = phi i32 [ 1, %2 ], [ %6, %5 ]
  %24 = add nuw nsw i64 %21, 1
  %25 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = icmp eq i32 %26, %1
  %28 = select i1 %27, i32 1, i32 %22
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %5, label %33

33:                                               ; preds = %20, %48
  %34 = phi i32 [ %49, %48 ], [ %23, %20 ]
  %35 = phi i32 [ %52, %48 ], [ %31, %20 ]
  %36 = phi i32 [ %50, %48 ], [ %23, %20 ]
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !7
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  store i32 1, i32* %41, align 4, !tbaa !7
  %45 = add nsw i32 %36, 1
  store i32 %45, i32* @tail, align 4, !tbaa !7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %46
  store i32 %39, i32* %47, align 4, !tbaa !7
  br label %48

48:                                               ; preds = %44, %33
  %49 = phi i32 [ %45, %44 ], [ %34, %33 ]
  %50 = phi i32 [ %45, %44 ], [ %36, %33 ]
  %51 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %37
  %52 = load i32, i32* %51, align 4, !tbaa !7
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %5, label %33, !llvm.loop !12

54:                                               ; preds = %54, %18
  %55 = phi i64 [ 0, %18 ], [ %76, %54 ]
  %56 = phi i64 [ 0, %18 ], [ %77, %54 ]
  %57 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %55
  %58 = load i32, i32* %57, align 16, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %59
  store i32 0, i32* %60, align 4, !tbaa !7
  %61 = or i64 %55, 1
  %62 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !7
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %64
  store i32 0, i32* %65, align 4, !tbaa !7
  %66 = or i64 %55, 2
  %67 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %66
  %68 = load i32, i32* %67, align 8, !tbaa !7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %69
  store i32 0, i32* %70, align 4, !tbaa !7
  %71 = or i64 %55, 3
  %72 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !7
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %74
  store i32 0, i32* %75, align 4, !tbaa !7
  %76 = add nuw nsw i64 %55, 4
  %77 = add i64 %56, 4
  %78 = icmp eq i64 %77, %19
  br i1 %78, label %79, label %54, !llvm.loop !13

79:                                               ; preds = %54, %12
  %80 = phi i64 [ 0, %12 ], [ %76, %54 ]
  %81 = icmp eq i64 %16, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79, %82
  %83 = phi i64 [ %89, %82 ], [ %80, %79 ]
  %84 = phi i64 [ %90, %82 ], [ 0, %79 ]
  %85 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %83
  %86 = load i32, i32* %85, align 4, !tbaa !7
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %87
  store i32 0, i32* %88, align 4, !tbaa !7
  %89 = add nuw nsw i64 %83, 1
  %90 = add i64 %84, 1
  %91 = icmp eq i64 %90, %16
  br i1 %91, label %92, label %82, !llvm.loop !14

92:                                               ; preds = %79, %82, %9
  ret i32 %28
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
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
  br i1 %41, label %34, label %31, !llvm.loop !4

42:                                               ; preds = %42, %31
  %43 = phi i32 [ %47, %42 ], [ 0, %31 ]
  %44 = phi i32 [ %48, %42 ], [ %32, %31 ]
  %45 = mul nsw i32 %43, 10
  %46 = add nsw i32 %44, -48
  %47 = add i32 %46, %45
  %48 = tail call noundef i32 @_Z5getchv()
  %49 = add i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %42, label %51, !llvm.loop !6

51:                                               ; preds = %42
  %52 = icmp eq i32 %33, 0
  %53 = sub nsw i32 0, %47
  %54 = select i1 %52, i32 %47, i32 %53
  store i32 %54, i32* @m, align 4, !tbaa !7
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4020) bitcast ([1005 x i32]* @head to i8*), i8 -1, i64 4020, i1 false) #7, !tbaa !7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %283, label %56

56:                                               ; preds = %51, %279
  %57 = tail call noundef i32 @_Z5getchv()
  %58 = and i32 %57, -5
  %59 = icmp eq i32 %58, 81
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %60
  %61 = tail call noundef i32 @_Z5getchv()
  %62 = and i32 %61, -5
  %63 = icmp eq i32 %62, 81
  br i1 %63, label %64, label %60, !llvm.loop !16

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %57, %56 ], [ %61, %60 ]
  %66 = icmp eq i32 %65, 81
  %67 = tail call noundef i32 @_Z5getchv()
  %68 = add i32 %67, -58
  %69 = icmp ult i32 %68, -10
  br i1 %66, label %70, label %212

70:                                               ; preds = %64
  br i1 %69, label %74, label %71

71:                                               ; preds = %74, %70
  %72 = phi i32 [ %67, %70 ], [ %79, %74 ]
  %73 = phi i32 [ 0, %70 ], [ %78, %74 ]
  br label %82

74:                                               ; preds = %70, %74
  %75 = phi i32 [ %78, %74 ], [ 0, %70 ]
  %76 = phi i32 [ %79, %74 ], [ %67, %70 ]
  %77 = icmp eq i32 %76, 45
  %78 = select i1 %77, i32 1, i32 %75
  %79 = tail call noundef i32 @_Z5getchv()
  %80 = add i32 %79, -58
  %81 = icmp ult i32 %80, -10
  br i1 %81, label %74, label %71, !llvm.loop !4

82:                                               ; preds = %82, %71
  %83 = phi i32 [ %87, %82 ], [ 0, %71 ]
  %84 = phi i32 [ %88, %82 ], [ %72, %71 ]
  %85 = mul nsw i32 %83, 10
  %86 = add nsw i32 %84, -48
  %87 = add i32 %86, %85
  %88 = tail call noundef i32 @_Z5getchv()
  %89 = add i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %82, label %91, !llvm.loop !6

91:                                               ; preds = %82
  %92 = icmp eq i32 %73, 0
  %93 = sub nsw i32 0, %87
  %94 = select i1 %92, i32 %87, i32 %93
  %95 = tail call noundef i32 @_Z5getchv()
  %96 = add i32 %95, -58
  %97 = icmp ult i32 %96, -10
  br i1 %97, label %101, label %98

98:                                               ; preds = %101, %91
  %99 = phi i32 [ %95, %91 ], [ %106, %101 ]
  %100 = phi i32 [ 0, %91 ], [ %105, %101 ]
  br label %109

101:                                              ; preds = %91, %101
  %102 = phi i32 [ %105, %101 ], [ 0, %91 ]
  %103 = phi i32 [ %106, %101 ], [ %95, %91 ]
  %104 = icmp eq i32 %103, 45
  %105 = select i1 %104, i32 1, i32 %102
  %106 = tail call noundef i32 @_Z5getchv()
  %107 = add i32 %106, -58
  %108 = icmp ult i32 %107, -10
  br i1 %108, label %101, label %98, !llvm.loop !4

109:                                              ; preds = %109, %98
  %110 = phi i32 [ %114, %109 ], [ 0, %98 ]
  %111 = phi i32 [ %115, %109 ], [ %99, %98 ]
  %112 = mul nsw i32 %110, 10
  %113 = add nsw i32 %111, -48
  %114 = add i32 %113, %112
  %115 = tail call noundef i32 @_Z5getchv()
  %116 = add i32 %115, -48
  %117 = icmp ult i32 %116, 10
  br i1 %117, label %109, label %118, !llvm.loop !6

118:                                              ; preds = %109
  %119 = icmp eq i32 %100, 0
  %120 = sub nsw i32 0, %114
  %121 = select i1 %119, i32 %114, i32 %120
  %122 = sext i32 %94 to i64
  %123 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %122
  store i32 1, i32* %123, align 4, !tbaa !7
  store i32 1, i32* @tail, align 4, !tbaa !7
  store i32 %94, i32* getelementptr inbounds ([1005 x i32], [1005 x i32]* @que, i64 0, i64 1), align 4, !tbaa !7
  br label %139

124:                                              ; preds = %167, %139
  %125 = phi i32 [ %142, %139 ], [ %168, %167 ]
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %143, %126
  br i1 %127, label %139, label %128, !llvm.loop !11

128:                                              ; preds = %124
  %129 = trunc i64 %143 to i32
  store i32 %129, i32* @h, align 4, !tbaa !7
  %130 = icmp slt i32 %125, 0
  br i1 %130, label %211, label %131

131:                                              ; preds = %128
  %132 = add nuw i32 %125, 1
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %133, -1
  %135 = and i64 %133, 3
  %136 = icmp ult i64 %134, 3
  br i1 %136, label %198, label %137

137:                                              ; preds = %131
  %138 = and i64 %133, 4294967292
  br label %173

139:                                              ; preds = %124, %118
  %140 = phi i64 [ 0, %118 ], [ %143, %124 ]
  %141 = phi i32 [ 0, %118 ], [ %147, %124 ]
  %142 = phi i32 [ 1, %118 ], [ %125, %124 ]
  %143 = add nuw nsw i64 %140, 1
  %144 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4, !tbaa !7
  %146 = icmp eq i32 %145, %121
  %147 = select i1 %146, i32 1, i32 %141
  %148 = sext i32 %145 to i64
  %149 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4, !tbaa !7
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %124, label %152

152:                                              ; preds = %139, %167
  %153 = phi i32 [ %168, %167 ], [ %142, %139 ]
  %154 = phi i32 [ %171, %167 ], [ %150, %139 ]
  %155 = phi i32 [ %169, %167 ], [ %142, %139 ]
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4, !tbaa !7
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4, !tbaa !7
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %152
  store i32 1, i32* %160, align 4, !tbaa !7
  %164 = add nsw i32 %155, 1
  store i32 %164, i32* @tail, align 4, !tbaa !7
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %165
  store i32 %158, i32* %166, align 4, !tbaa !7
  br label %167

167:                                              ; preds = %163, %152
  %168 = phi i32 [ %164, %163 ], [ %153, %152 ]
  %169 = phi i32 [ %164, %163 ], [ %155, %152 ]
  %170 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %156
  %171 = load i32, i32* %170, align 4, !tbaa !7
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %124, label %152, !llvm.loop !12

173:                                              ; preds = %173, %137
  %174 = phi i64 [ 0, %137 ], [ %195, %173 ]
  %175 = phi i64 [ 0, %137 ], [ %196, %173 ]
  %176 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %174
  %177 = load i32, i32* %176, align 16, !tbaa !7
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %178
  store i32 0, i32* %179, align 4, !tbaa !7
  %180 = or i64 %174, 1
  %181 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4, !tbaa !7
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %183
  store i32 0, i32* %184, align 4, !tbaa !7
  %185 = or i64 %174, 2
  %186 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %185
  %187 = load i32, i32* %186, align 8, !tbaa !7
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %188
  store i32 0, i32* %189, align 4, !tbaa !7
  %190 = or i64 %174, 3
  %191 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4, !tbaa !7
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %193
  store i32 0, i32* %194, align 4, !tbaa !7
  %195 = add nuw nsw i64 %174, 4
  %196 = add i64 %175, 4
  %197 = icmp eq i64 %196, %138
  br i1 %197, label %198, label %173, !llvm.loop !13

198:                                              ; preds = %173, %131
  %199 = phi i64 [ 0, %131 ], [ %195, %173 ]
  %200 = icmp eq i64 %135, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %198, %201
  %202 = phi i64 [ %208, %201 ], [ %199, %198 ]
  %203 = phi i64 [ %209, %201 ], [ 0, %198 ]
  %204 = getelementptr inbounds [1005 x i32], [1005 x i32]* @que, i64 0, i64 %202
  %205 = load i32, i32* %204, align 4, !tbaa !7
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [1005 x i32], [1005 x i32]* @inq, i64 0, i64 %206
  store i32 0, i32* %207, align 4, !tbaa !7
  %208 = add nuw nsw i64 %202, 1
  %209 = add i64 %203, 1
  %210 = icmp eq i64 %209, %135
  br i1 %210, label %211, label %201, !llvm.loop !17

211:                                              ; preds = %198, %201, %128
  tail call void @_Z6putinti(i32 noundef %147)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %279

212:                                              ; preds = %64
  br i1 %69, label %216, label %213

213:                                              ; preds = %216, %212
  %214 = phi i32 [ %67, %212 ], [ %221, %216 ]
  %215 = phi i32 [ 0, %212 ], [ %220, %216 ]
  br label %224

216:                                              ; preds = %212, %216
  %217 = phi i32 [ %220, %216 ], [ 0, %212 ]
  %218 = phi i32 [ %221, %216 ], [ %67, %212 ]
  %219 = icmp eq i32 %218, 45
  %220 = select i1 %219, i32 1, i32 %217
  %221 = tail call noundef i32 @_Z5getchv()
  %222 = add i32 %221, -58
  %223 = icmp ult i32 %222, -10
  br i1 %223, label %216, label %213, !llvm.loop !4

224:                                              ; preds = %224, %213
  %225 = phi i32 [ %229, %224 ], [ 0, %213 ]
  %226 = phi i32 [ %230, %224 ], [ %214, %213 ]
  %227 = mul nsw i32 %225, 10
  %228 = add nsw i32 %226, -48
  %229 = add i32 %228, %227
  %230 = tail call noundef i32 @_Z5getchv()
  %231 = add i32 %230, -48
  %232 = icmp ult i32 %231, 10
  br i1 %232, label %224, label %233, !llvm.loop !6

233:                                              ; preds = %224
  %234 = icmp eq i32 %215, 0
  %235 = sub nsw i32 0, %229
  %236 = select i1 %234, i32 %229, i32 %235
  %237 = tail call noundef i32 @_Z5getchv()
  %238 = add i32 %237, -58
  %239 = icmp ult i32 %238, -10
  br i1 %239, label %243, label %240

240:                                              ; preds = %243, %233
  %241 = phi i32 [ %237, %233 ], [ %248, %243 ]
  %242 = phi i32 [ 0, %233 ], [ %247, %243 ]
  br label %251

243:                                              ; preds = %233, %243
  %244 = phi i32 [ %247, %243 ], [ 0, %233 ]
  %245 = phi i32 [ %248, %243 ], [ %237, %233 ]
  %246 = icmp eq i32 %245, 45
  %247 = select i1 %246, i32 1, i32 %244
  %248 = tail call noundef i32 @_Z5getchv()
  %249 = add i32 %248, -58
  %250 = icmp ult i32 %249, -10
  br i1 %250, label %243, label %240, !llvm.loop !4

251:                                              ; preds = %251, %240
  %252 = phi i32 [ %256, %251 ], [ 0, %240 ]
  %253 = phi i32 [ %257, %251 ], [ %241, %240 ]
  %254 = mul nsw i32 %252, 10
  %255 = add nsw i32 %253, -48
  %256 = add i32 %255, %254
  %257 = tail call noundef i32 @_Z5getchv()
  %258 = add i32 %257, -48
  %259 = icmp ult i32 %258, 10
  br i1 %259, label %251, label %260, !llvm.loop !6

260:                                              ; preds = %251
  %261 = icmp eq i32 %242, 0
  %262 = sub nsw i32 0, %256
  %263 = select i1 %261, i32 %256, i32 %262
  %264 = load i32, i32* @cnt, align 4, !tbaa !7
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %265
  store i32 %263, i32* %266, align 4, !tbaa !7
  %267 = sext i32 %236 to i64
  %268 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4, !tbaa !7
  %270 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %265
  store i32 %269, i32* %270, align 4, !tbaa !7
  store i32 %264, i32* %268, align 4, !tbaa !7
  %271 = add nsw i32 %264, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %272
  store i32 %236, i32* %273, align 4, !tbaa !7
  %274 = sext i32 %263 to i64
  %275 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4, !tbaa !7
  %277 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %272
  store i32 %276, i32* %277, align 4, !tbaa !7
  store i32 %271, i32* %275, align 4, !tbaa !7
  %278 = add nsw i32 %264, 2
  store i32 %278, i32* @cnt, align 4, !tbaa !7
  br label %279

279:                                              ; preds = %260, %211
  %280 = load i32, i32* @m, align 4, !tbaa !7
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* @m, align 4, !tbaa !7
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %56, !llvm.loop !18

283:                                              ; preds = %279, %51
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

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
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !5}
