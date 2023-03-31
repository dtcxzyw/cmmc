; ModuleID = 'tests//SysY2022/hidden_functional/18_prim.sy'
source_filename = "tests//SysY2022/hidden_functional/18_prim.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@u = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16
@v = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16
@fa = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16

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

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4findi(i32 noundef %0) local_unnamed_addr #2 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4, !tbaa !8
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1, %8
  %7 = phi i32 [ %9, %8 ], [ %0, %1 ]
  ret i32 %7

8:                                                ; preds = %1
  %9 = tail call noundef i32 @_Z4findi(i32 noundef %4)
  store i32 %9, i32* %3, align 4, !tbaa !8
  br label %6
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4sameii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_Z4findi(i32 noundef %0)
  %4 = tail call noundef i32 @_Z4findi(i32 noundef %1)
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4primv() local_unnamed_addr #2 {
  %1 = load i32, i32* @m, align 4, !tbaa !8
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  %5 = zext i32 %1 to i64
  br label %64

6:                                                ; preds = %86, %64
  %7 = add nuw nsw i64 %66, 1
  %8 = icmp eq i64 %67, %5
  br i1 %8, label %9, label %64, !llvm.loop !12

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @n, align 4, !tbaa !8
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %95, label %12

12:                                               ; preds = %9
  %13 = add nuw i32 %10, 1
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %62, label %17

17:                                               ; preds = %12
  %18 = and i64 %15, -8
  %19 = or i64 %18, 1
  %20 = add nsw i64 %18, -8
  %21 = lshr exact i64 %20, 3
  %22 = add nuw nsw i64 %21, 1
  %23 = and i64 %22, 1
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %17
  %26 = and i64 %22, 4611686018427387902
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %44, %27 ]
  %29 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %25 ], [ %45, %27 ]
  %30 = phi i64 [ 0, %25 ], [ %46, %27 ]
  %31 = or i64 %28, 1
  %32 = add <4 x i32> %29, <i32 4, i32 4, i32 4, i32 4>
  %33 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %31
  %34 = bitcast i32* %33 to <4 x i32>*
  store <4 x i32> %29, <4 x i32>* %34, align 4, !tbaa !8
  %35 = getelementptr inbounds i32, i32* %33, i64 4
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> %32, <4 x i32>* %36, align 4, !tbaa !8
  %37 = add <4 x i32> %29, <i32 8, i32 8, i32 8, i32 8>
  %38 = or i64 %28, 9
  %39 = add <4 x i32> %29, <i32 12, i32 12, i32 12, i32 12>
  %40 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %38
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> %37, <4 x i32>* %41, align 4, !tbaa !8
  %42 = getelementptr inbounds i32, i32* %40, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> %39, <4 x i32>* %43, align 4, !tbaa !8
  %44 = add nuw i64 %28, 16
  %45 = add <4 x i32> %29, <i32 16, i32 16, i32 16, i32 16>
  %46 = add i64 %30, 2
  %47 = icmp eq i64 %46, %26
  br i1 %47, label %48, label %27, !llvm.loop !13

48:                                               ; preds = %27
  %49 = or i64 %44, 1
  br label %50

50:                                               ; preds = %48, %17
  %51 = phi i64 [ 1, %17 ], [ %49, %48 ]
  %52 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %17 ], [ %45, %48 ]
  %53 = icmp eq i64 %23, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = add <4 x i32> %52, <i32 4, i32 4, i32 4, i32 4>
  %56 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %51
  %57 = bitcast i32* %56 to <4 x i32>*
  store <4 x i32> %52, <4 x i32>* %57, align 4, !tbaa !8
  %58 = getelementptr inbounds i32, i32* %56, i64 4
  %59 = bitcast i32* %58 to <4 x i32>*
  store <4 x i32> %55, <4 x i32>* %59, align 4, !tbaa !8
  br label %60

60:                                               ; preds = %50, %54
  %61 = icmp eq i64 %15, %18
  br i1 %61, label %95, label %62

62:                                               ; preds = %12, %60
  %63 = phi i64 [ 1, %12 ], [ %19, %60 ]
  br label %89

64:                                               ; preds = %3, %6
  %65 = phi i64 [ 0, %3 ], [ %67, %6 ]
  %66 = phi i64 [ 1, %3 ], [ %7, %6 ]
  %67 = add nuw nsw i64 %65, 1
  %68 = icmp ult i64 %67, %4
  br i1 %68, label %69, label %6

69:                                               ; preds = %64
  %70 = getelementptr inbounds [1005 x i32], [1005 x i32]* @c, i64 0, i64 %65
  %71 = getelementptr inbounds [1005 x i32], [1005 x i32]* @u, i64 0, i64 %65
  %72 = getelementptr inbounds [1005 x i32], [1005 x i32]* @v, i64 0, i64 %65
  br label %73

73:                                               ; preds = %69, %86
  %74 = phi i64 [ %66, %69 ], [ %87, %86 ]
  %75 = load i32, i32* %70, align 4, !tbaa !8
  %76 = getelementptr inbounds [1005 x i32], [1005 x i32]* @c, i64 0, i64 %74
  %77 = load i32, i32* %76, align 4, !tbaa !8
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i32, i32* %71, align 4, !tbaa !8
  %81 = getelementptr inbounds [1005 x i32], [1005 x i32]* @u, i64 0, i64 %74
  %82 = load i32, i32* %81, align 4, !tbaa !8
  store i32 %82, i32* %71, align 4, !tbaa !8
  store i32 %80, i32* %81, align 4, !tbaa !8
  %83 = load i32, i32* %72, align 4, !tbaa !8
  %84 = getelementptr inbounds [1005 x i32], [1005 x i32]* @v, i64 0, i64 %74
  %85 = load i32, i32* %84, align 4, !tbaa !8
  store i32 %85, i32* %72, align 4, !tbaa !8
  store i32 %83, i32* %84, align 4, !tbaa !8
  store i32 %77, i32* %70, align 4, !tbaa !8
  store i32 %75, i32* %76, align 4, !tbaa !8
  br label %86

86:                                               ; preds = %79, %73
  %87 = add nuw nsw i64 %74, 1
  %88 = icmp eq i64 %87, %5
  br i1 %88, label %6, label %73, !llvm.loop !15

89:                                               ; preds = %62, %89
  %90 = phi i64 [ %93, %89 ], [ %63, %62 ]
  %91 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %90
  %92 = trunc i64 %90 to i32
  store i32 %92, i32* %91, align 4, !tbaa !8
  %93 = add nuw nsw i64 %90, 1
  %94 = icmp eq i64 %93, %14
  br i1 %94, label %95, label %89, !llvm.loop !16

95:                                               ; preds = %89, %60, %9
  br label %116

96:                                               ; preds = %116, %100
  %97 = load i32, i32* @m, align 4, !tbaa !8
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %117, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load i32, i32* %119, align 4, !tbaa !8
  %102 = load i32, i32* %120, align 4, !tbaa !8
  %103 = tail call noundef i32 @_Z4findi(i32 noundef %101) #4
  %104 = tail call noundef i32 @_Z4findi(i32 noundef %102) #4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %96, label %106, !llvm.loop !18

106:                                              ; preds = %100
  %107 = getelementptr inbounds [1005 x i32], [1005 x i32]* @c, i64 0, i64 %117
  %108 = load i32, i32* %107, align 4, !tbaa !8
  %109 = add nsw i32 %108, %118
  %110 = load i32, i32* %120, align 4, !tbaa !8
  %111 = load i32, i32* %119, align 4, !tbaa !8
  %112 = tail call noundef i32 @_Z4findi(i32 noundef %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %113
  store i32 %110, i32* %114, align 4, !tbaa !8
  %115 = add nuw nsw i64 %117, 1
  br label %116, !llvm.loop !18

116:                                              ; preds = %95, %106
  %117 = phi i64 [ %115, %106 ], [ 0, %95 ]
  %118 = phi i32 [ %109, %106 ], [ 0, %95 ]
  %119 = getelementptr inbounds [1005 x i32], [1005 x i32]* @u, i64 0, i64 %117
  %120 = getelementptr inbounds [1005 x i32], [1005 x i32]* @v, i64 0, i64 %117
  br label %96

121:                                              ; preds = %96
  ret i32 %118
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z5getchv()
  %2 = add i32 %1, -58
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %4, label %8

4:                                                ; preds = %0, %4
  %5 = tail call noundef i32 @_Z5getchv()
  %6 = add i32 %5, -58
  %7 = icmp ult i32 %6, -10
  br i1 %7, label %4, label %8, !llvm.loop !5

8:                                                ; preds = %4, %0
  br label %9

9:                                                ; preds = %8, %9
  %10 = tail call noundef i32 @_Z5getchv()
  %11 = add i32 %10, -48
  %12 = icmp ult i32 %11, 10
  br i1 %12, label %9, label %13, !llvm.loop !7

13:                                               ; preds = %9
  %14 = tail call noundef i32 @_Z5getchv()
  %15 = add i32 %14, -58
  %16 = icmp ult i32 %15, -10
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %13
  %18 = phi i32 [ %14, %13 ], [ %25, %20 ]
  %19 = phi i32 [ 0, %13 ], [ %24, %20 ]
  br label %28

20:                                               ; preds = %13, %20
  %21 = phi i32 [ %24, %20 ], [ 0, %13 ]
  %22 = phi i32 [ %25, %20 ], [ %14, %13 ]
  %23 = icmp eq i32 %22, 45
  %24 = select i1 %23, i32 1, i32 %21
  %25 = tail call noundef i32 @_Z5getchv()
  %26 = add i32 %25, -58
  %27 = icmp ult i32 %26, -10
  br i1 %27, label %20, label %17, !llvm.loop !5

28:                                               ; preds = %28, %17
  %29 = phi i32 [ %33, %28 ], [ 0, %17 ]
  %30 = phi i32 [ %34, %28 ], [ %18, %17 ]
  %31 = mul nsw i32 %29, 10
  %32 = add nsw i32 %30, -48
  %33 = add i32 %32, %31
  %34 = tail call noundef i32 @_Z5getchv()
  %35 = add i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %28, label %37, !llvm.loop !7

37:                                               ; preds = %28
  %38 = icmp eq i32 %19, 0
  %39 = sub nsw i32 0, %33
  %40 = select i1 %38, i32 %33, i32 %39
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %132

42:                                               ; preds = %37
  %43 = zext i32 %40 to i64
  br label %44

44:                                               ; preds = %42, %125
  %45 = phi i64 [ 0, %42 ], [ %130, %125 ]
  %46 = tail call noundef i32 @_Z5getchv()
  %47 = add i32 %46, -58
  %48 = icmp ult i32 %47, -10
  br i1 %48, label %52, label %49

49:                                               ; preds = %52, %44
  %50 = phi i32 [ %46, %44 ], [ %57, %52 ]
  %51 = phi i32 [ 0, %44 ], [ %56, %52 ]
  br label %60

52:                                               ; preds = %44, %52
  %53 = phi i32 [ %56, %52 ], [ 0, %44 ]
  %54 = phi i32 [ %57, %52 ], [ %46, %44 ]
  %55 = icmp eq i32 %54, 45
  %56 = select i1 %55, i32 1, i32 %53
  %57 = tail call noundef i32 @_Z5getchv()
  %58 = add i32 %57, -58
  %59 = icmp ult i32 %58, -10
  br i1 %59, label %52, label %49, !llvm.loop !5

60:                                               ; preds = %60, %49
  %61 = phi i32 [ %65, %60 ], [ 0, %49 ]
  %62 = phi i32 [ %66, %60 ], [ %50, %49 ]
  %63 = mul nsw i32 %61, 10
  %64 = add nsw i32 %62, -48
  %65 = add i32 %64, %63
  %66 = tail call noundef i32 @_Z5getchv()
  %67 = add i32 %66, -48
  %68 = icmp ult i32 %67, 10
  br i1 %68, label %60, label %69, !llvm.loop !7

69:                                               ; preds = %60
  %70 = icmp eq i32 %51, 0
  %71 = sub nsw i32 0, %65
  %72 = select i1 %70, i32 %65, i32 %71
  %73 = getelementptr inbounds [1005 x i32], [1005 x i32]* @u, i64 0, i64 %45
  store i32 %72, i32* %73, align 4, !tbaa !8
  %74 = tail call noundef i32 @_Z5getchv()
  %75 = add i32 %74, -58
  %76 = icmp ult i32 %75, -10
  br i1 %76, label %80, label %77

77:                                               ; preds = %80, %69
  %78 = phi i32 [ %74, %69 ], [ %85, %80 ]
  %79 = phi i32 [ 0, %69 ], [ %84, %80 ]
  br label %88

80:                                               ; preds = %69, %80
  %81 = phi i32 [ %84, %80 ], [ 0, %69 ]
  %82 = phi i32 [ %85, %80 ], [ %74, %69 ]
  %83 = icmp eq i32 %82, 45
  %84 = select i1 %83, i32 1, i32 %81
  %85 = tail call noundef i32 @_Z5getchv()
  %86 = add i32 %85, -58
  %87 = icmp ult i32 %86, -10
  br i1 %87, label %80, label %77, !llvm.loop !5

88:                                               ; preds = %88, %77
  %89 = phi i32 [ %93, %88 ], [ 0, %77 ]
  %90 = phi i32 [ %94, %88 ], [ %78, %77 ]
  %91 = mul nsw i32 %89, 10
  %92 = add nsw i32 %90, -48
  %93 = add i32 %92, %91
  %94 = tail call noundef i32 @_Z5getchv()
  %95 = add i32 %94, -48
  %96 = icmp ult i32 %95, 10
  br i1 %96, label %88, label %97, !llvm.loop !7

97:                                               ; preds = %88
  %98 = icmp eq i32 %79, 0
  %99 = sub nsw i32 0, %93
  %100 = select i1 %98, i32 %93, i32 %99
  %101 = getelementptr inbounds [1005 x i32], [1005 x i32]* @v, i64 0, i64 %45
  store i32 %100, i32* %101, align 4, !tbaa !8
  %102 = tail call noundef i32 @_Z5getchv()
  %103 = add i32 %102, -58
  %104 = icmp ult i32 %103, -10
  br i1 %104, label %108, label %105

105:                                              ; preds = %108, %97
  %106 = phi i32 [ %102, %97 ], [ %113, %108 ]
  %107 = phi i32 [ 0, %97 ], [ %112, %108 ]
  br label %116

108:                                              ; preds = %97, %108
  %109 = phi i32 [ %112, %108 ], [ 0, %97 ]
  %110 = phi i32 [ %113, %108 ], [ %102, %97 ]
  %111 = icmp eq i32 %110, 45
  %112 = select i1 %111, i32 1, i32 %109
  %113 = tail call noundef i32 @_Z5getchv()
  %114 = add i32 %113, -58
  %115 = icmp ult i32 %114, -10
  br i1 %115, label %108, label %105, !llvm.loop !5

116:                                              ; preds = %116, %105
  %117 = phi i32 [ %121, %116 ], [ 0, %105 ]
  %118 = phi i32 [ %122, %116 ], [ %106, %105 ]
  %119 = mul nsw i32 %117, 10
  %120 = add nsw i32 %118, -48
  %121 = add i32 %120, %119
  %122 = tail call noundef i32 @_Z5getchv()
  %123 = add i32 %122, -48
  %124 = icmp ult i32 %123, 10
  br i1 %124, label %116, label %125, !llvm.loop !7

125:                                              ; preds = %116
  %126 = icmp eq i32 %107, 0
  %127 = sub nsw i32 0, %121
  %128 = select i1 %126, i32 %121, i32 %127
  %129 = getelementptr inbounds [1005 x i32], [1005 x i32]* @c, i64 0, i64 %45
  store i32 %128, i32* %129, align 4, !tbaa !8
  %130 = add nuw nsw i64 %45, 1
  %131 = icmp eq i64 %130, %43
  br i1 %131, label %132, label %44, !llvm.loop !19

132:                                              ; preds = %125, %37
  %133 = tail call noundef i32 @_Z4primv()
  ret i32 %133
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!13 = distinct !{!13, !6, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6, !17, !14}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
