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

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4findi(i32 noundef %0) local_unnamed_addr #2 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4, !tbaa !7
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1, %8
  %7 = phi i32 [ %9, %8 ], [ %0, %1 ]
  ret i32 %7

8:                                                ; preds = %1
  %9 = tail call noundef i32 @_Z4findi(i32 noundef %4)
  store i32 %9, i32* %3, align 4, !tbaa !7
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
  %1 = load i32, i32* @m, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  %5 = zext i32 %1 to i64
  br label %21

6:                                                ; preds = %43, %21
  %7 = add nuw nsw i64 %23, 1
  %8 = icmp eq i64 %24, %5
  br i1 %8, label %9, label %21, !llvm.loop !11

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @n, align 4, !tbaa !7
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %74, label %12

12:                                               ; preds = %9
  %13 = add nuw i32 %10, 1
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = add nsw i64 %14, -2
  %17 = and i64 %15, 3
  %18 = icmp ult i64 %16, 3
  br i1 %18, label %63, label %19

19:                                               ; preds = %12
  %20 = and i64 %15, -4
  br label %46

21:                                               ; preds = %3, %6
  %22 = phi i64 [ 0, %3 ], [ %24, %6 ]
  %23 = phi i64 [ 1, %3 ], [ %7, %6 ]
  %24 = add nuw nsw i64 %22, 1
  %25 = icmp ult i64 %24, %4
  br i1 %25, label %26, label %6

26:                                               ; preds = %21
  %27 = getelementptr inbounds [1005 x i32], [1005 x i32]* @c, i64 0, i64 %22
  %28 = getelementptr inbounds [1005 x i32], [1005 x i32]* @u, i64 0, i64 %22
  %29 = getelementptr inbounds [1005 x i32], [1005 x i32]* @v, i64 0, i64 %22
  br label %30

30:                                               ; preds = %26, %43
  %31 = phi i64 [ %23, %26 ], [ %44, %43 ]
  %32 = load i32, i32* %27, align 4, !tbaa !7
  %33 = getelementptr inbounds [1005 x i32], [1005 x i32]* @c, i64 0, i64 %31
  %34 = load i32, i32* %33, align 4, !tbaa !7
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* %28, align 4, !tbaa !7
  %38 = getelementptr inbounds [1005 x i32], [1005 x i32]* @u, i64 0, i64 %31
  %39 = load i32, i32* %38, align 4, !tbaa !7
  store i32 %39, i32* %28, align 4, !tbaa !7
  store i32 %37, i32* %38, align 4, !tbaa !7
  %40 = load i32, i32* %29, align 4, !tbaa !7
  %41 = getelementptr inbounds [1005 x i32], [1005 x i32]* @v, i64 0, i64 %31
  %42 = load i32, i32* %41, align 4, !tbaa !7
  store i32 %42, i32* %29, align 4, !tbaa !7
  store i32 %40, i32* %41, align 4, !tbaa !7
  store i32 %34, i32* %27, align 4, !tbaa !7
  store i32 %32, i32* %33, align 4, !tbaa !7
  br label %43

43:                                               ; preds = %36, %30
  %44 = add nuw nsw i64 %31, 1
  %45 = icmp eq i64 %44, %5
  br i1 %45, label %6, label %30, !llvm.loop !12

46:                                               ; preds = %46, %19
  %47 = phi i64 [ 1, %19 ], [ %60, %46 ]
  %48 = phi i64 [ 0, %19 ], [ %61, %46 ]
  %49 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %47
  %50 = trunc i64 %47 to i32
  store i32 %50, i32* %49, align 4, !tbaa !7
  %51 = add nuw nsw i64 %47, 1
  %52 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %51
  %53 = trunc i64 %51 to i32
  store i32 %53, i32* %52, align 4, !tbaa !7
  %54 = add nuw nsw i64 %47, 2
  %55 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %54
  %56 = trunc i64 %54 to i32
  store i32 %56, i32* %55, align 4, !tbaa !7
  %57 = add nuw nsw i64 %47, 3
  %58 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %57
  %59 = trunc i64 %57 to i32
  store i32 %59, i32* %58, align 4, !tbaa !7
  %60 = add nuw nsw i64 %47, 4
  %61 = add i64 %48, 4
  %62 = icmp eq i64 %61, %20
  br i1 %62, label %63, label %46, !llvm.loop !13

63:                                               ; preds = %46, %12
  %64 = phi i64 [ 1, %12 ], [ %60, %46 ]
  %65 = icmp eq i64 %17, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %63, %66
  %67 = phi i64 [ %71, %66 ], [ %64, %63 ]
  %68 = phi i64 [ %72, %66 ], [ 0, %63 ]
  %69 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %67
  %70 = trunc i64 %67 to i32
  store i32 %70, i32* %69, align 4, !tbaa !7
  %71 = add nuw nsw i64 %67, 1
  %72 = add i64 %68, 1
  %73 = icmp eq i64 %72, %17
  br i1 %73, label %74, label %66, !llvm.loop !14

74:                                               ; preds = %63, %66, %9
  br label %95

75:                                               ; preds = %95, %79
  %76 = load i32, i32* @m, align 4, !tbaa !7
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %96, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load i32, i32* %98, align 4, !tbaa !7
  %81 = load i32, i32* %99, align 4, !tbaa !7
  %82 = tail call noundef i32 @_Z4findi(i32 noundef %80) #4
  %83 = tail call noundef i32 @_Z4findi(i32 noundef %81) #4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %75, label %85, !llvm.loop !16

85:                                               ; preds = %79
  %86 = getelementptr inbounds [1005 x i32], [1005 x i32]* @c, i64 0, i64 %96
  %87 = load i32, i32* %86, align 4, !tbaa !7
  %88 = add nsw i32 %87, %97
  %89 = load i32, i32* %99, align 4, !tbaa !7
  %90 = load i32, i32* %98, align 4, !tbaa !7
  %91 = tail call noundef i32 @_Z4findi(i32 noundef %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1005 x i32], [1005 x i32]* @fa, i64 0, i64 %92
  store i32 %89, i32* %93, align 4, !tbaa !7
  %94 = add nuw nsw i64 %96, 1
  br label %95, !llvm.loop !16

95:                                               ; preds = %74, %85
  %96 = phi i64 [ %94, %85 ], [ 0, %74 ]
  %97 = phi i32 [ %88, %85 ], [ 0, %74 ]
  %98 = getelementptr inbounds [1005 x i32], [1005 x i32]* @u, i64 0, i64 %96
  %99 = getelementptr inbounds [1005 x i32], [1005 x i32]* @v, i64 0, i64 %96
  br label %75

100:                                              ; preds = %75
  ret i32 %97
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
  br i1 %7, label %4, label %8, !llvm.loop !4

8:                                                ; preds = %4, %0
  br label %9

9:                                                ; preds = %8, %9
  %10 = tail call noundef i32 @_Z5getchv()
  %11 = add i32 %10, -48
  %12 = icmp ult i32 %11, 10
  br i1 %12, label %9, label %13, !llvm.loop !6

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
  br i1 %27, label %20, label %17, !llvm.loop !4

28:                                               ; preds = %28, %17
  %29 = phi i32 [ %33, %28 ], [ 0, %17 ]
  %30 = phi i32 [ %34, %28 ], [ %18, %17 ]
  %31 = mul nsw i32 %29, 10
  %32 = add nsw i32 %30, -48
  %33 = add i32 %32, %31
  %34 = tail call noundef i32 @_Z5getchv()
  %35 = add i32 %34, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %28, label %37, !llvm.loop !6

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
  br i1 %59, label %52, label %49, !llvm.loop !4

60:                                               ; preds = %60, %49
  %61 = phi i32 [ %65, %60 ], [ 0, %49 ]
  %62 = phi i32 [ %66, %60 ], [ %50, %49 ]
  %63 = mul nsw i32 %61, 10
  %64 = add nsw i32 %62, -48
  %65 = add i32 %64, %63
  %66 = tail call noundef i32 @_Z5getchv()
  %67 = add i32 %66, -48
  %68 = icmp ult i32 %67, 10
  br i1 %68, label %60, label %69, !llvm.loop !6

69:                                               ; preds = %60
  %70 = icmp eq i32 %51, 0
  %71 = sub nsw i32 0, %65
  %72 = select i1 %70, i32 %65, i32 %71
  %73 = getelementptr inbounds [1005 x i32], [1005 x i32]* @u, i64 0, i64 %45
  store i32 %72, i32* %73, align 4, !tbaa !7
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
  br i1 %87, label %80, label %77, !llvm.loop !4

88:                                               ; preds = %88, %77
  %89 = phi i32 [ %93, %88 ], [ 0, %77 ]
  %90 = phi i32 [ %94, %88 ], [ %78, %77 ]
  %91 = mul nsw i32 %89, 10
  %92 = add nsw i32 %90, -48
  %93 = add i32 %92, %91
  %94 = tail call noundef i32 @_Z5getchv()
  %95 = add i32 %94, -48
  %96 = icmp ult i32 %95, 10
  br i1 %96, label %88, label %97, !llvm.loop !6

97:                                               ; preds = %88
  %98 = icmp eq i32 %79, 0
  %99 = sub nsw i32 0, %93
  %100 = select i1 %98, i32 %93, i32 %99
  %101 = getelementptr inbounds [1005 x i32], [1005 x i32]* @v, i64 0, i64 %45
  store i32 %100, i32* %101, align 4, !tbaa !7
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
  br i1 %115, label %108, label %105, !llvm.loop !4

116:                                              ; preds = %116, %105
  %117 = phi i32 [ %121, %116 ], [ 0, %105 ]
  %118 = phi i32 [ %122, %116 ], [ %106, %105 ]
  %119 = mul nsw i32 %117, 10
  %120 = add nsw i32 %118, -48
  %121 = add i32 %120, %119
  %122 = tail call noundef i32 @_Z5getchv()
  %123 = add i32 %122, -48
  %124 = icmp ult i32 %123, 10
  br i1 %124, label %116, label %125, !llvm.loop !6

125:                                              ; preds = %116
  %126 = icmp eq i32 %107, 0
  %127 = sub nsw i32 0, %121
  %128 = select i1 %126, i32 %121, i32 %127
  %129 = getelementptr inbounds [1005 x i32], [1005 x i32]* @c, i64 0, i64 %45
  store i32 %128, i32* %129, align 4, !tbaa !7
  %130 = add nuw nsw i64 %45, 1
  %131 = icmp eq i64 %130, %43
  br i1 %131, label %132, label %44, !llvm.loop !17

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
