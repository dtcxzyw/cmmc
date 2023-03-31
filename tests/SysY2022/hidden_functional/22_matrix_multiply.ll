; ModuleID = 'tests//SysY2022/hidden_functional/22_matrix_multiply.sy'
source_filename = "tests//SysY2022/hidden_functional/22_matrix_multiply.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@res = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@n1 = dso_local local_unnamed_addr global i32 0, align 4
@m1 = dso_local local_unnamed_addr global i32 0, align 4
@n2 = dso_local local_unnamed_addr global i32 0, align 4
@m2 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z15matrix_multiplyv() local_unnamed_addr #0 {
  %1 = load i32, i32* @m1, align 4, !tbaa !4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %61

3:                                                ; preds = %0
  %4 = load i32, i32* @n2, align 4, !tbaa !4
  %5 = icmp sgt i32 %4, 0
  %6 = load i32, i32* @n1, align 4
  %7 = icmp sgt i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %61

9:                                                ; preds = %3
  %10 = zext i32 %1 to i64
  %11 = zext i32 %4 to i64
  %12 = zext i32 %6 to i64
  %13 = and i64 %12, 1
  %14 = icmp eq i32 %6, 1
  %15 = and i64 %12, 4294967294
  %16 = icmp eq i64 %13, 0
  br label %17

17:                                               ; preds = %9, %58
  %18 = phi i64 [ 0, %9 ], [ %59, %58 ]
  br label %19

19:                                               ; preds = %54, %17
  %20 = phi i64 [ %56, %54 ], [ 0, %17 ]
  %21 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @res, i64 0, i64 %18, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !4
  br i1 %14, label %43, label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %40, %23 ], [ 0, %19 ]
  %25 = phi i32 [ %39, %23 ], [ %22, %19 ]
  %26 = phi i64 [ %41, %23 ], [ 0, %19 ]
  %27 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %18, i64 %24
  %28 = load i32, i32* %27, align 8, !tbaa !4
  %29 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %24, i64 %20
  %30 = load i32, i32* %29, align 4, !tbaa !4
  %31 = mul nsw i32 %30, %28
  %32 = add nsw i32 %31, %25
  %33 = or i64 %24, 1
  %34 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %18, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !4
  %36 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %33, i64 %20
  %37 = load i32, i32* %36, align 4, !tbaa !4
  %38 = mul nsw i32 %37, %35
  %39 = add nsw i32 %38, %32
  %40 = add nuw nsw i64 %24, 2
  %41 = add i64 %26, 2
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %43, label %23, !llvm.loop !8

43:                                               ; preds = %23, %19
  %44 = phi i32 [ undef, %19 ], [ %39, %23 ]
  %45 = phi i64 [ 0, %19 ], [ %40, %23 ]
  %46 = phi i32 [ %22, %19 ], [ %39, %23 ]
  br i1 %16, label %54, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %18, i64 %45
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %45, i64 %20
  %51 = load i32, i32* %50, align 4, !tbaa !4
  %52 = mul nsw i32 %51, %49
  %53 = add nsw i32 %52, %46
  br label %54

54:                                               ; preds = %43, %47
  %55 = phi i32 [ %44, %43 ], [ %53, %47 ]
  store i32 %55, i32* %21, align 4, !tbaa !4
  %56 = add nuw nsw i64 %20, 1
  %57 = icmp eq i64 %56, %11
  br i1 %57, label %58, label %19, !llvm.loop !10

58:                                               ; preds = %54
  %59 = add nuw nsw i64 %18, 1
  %60 = icmp eq i64 %59, %10
  br i1 %60, label %61, label %17, !llvm.loop !11

61:                                               ; preds = %58, %3, %0
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @m1, align 4, !tbaa !4
  %2 = tail call noundef i32 @_Z6getintv()
  store i32 %2, i32* @n1, align 4, !tbaa !4
  %3 = load i32, i32* @m1, align 4, !tbaa !4
  %4 = icmp sgt i32 %3, 0
  %5 = icmp sgt i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %0, %22
  %8 = phi i32 [ %23, %22 ], [ %3, %0 ]
  %9 = phi i32 [ %24, %22 ], [ %2, %0 ]
  %10 = phi i64 [ %25, %22 ], [ 0, %0 ]
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %16, %12 ], [ 0, %7 ]
  %14 = tail call noundef i32 @_Z6getintv()
  %15 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %10, i64 %13
  store i32 %14, i32* %15, align 4, !tbaa !4
  %16 = add nuw nsw i64 %13, 1
  %17 = load i32, i32* @n1, align 4, !tbaa !4
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %12, label %20, !llvm.loop !12

20:                                               ; preds = %12
  %21 = load i32, i32* @m1, align 4, !tbaa !4
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi i32 [ %21, %20 ], [ %8, %7 ]
  %24 = phi i32 [ %17, %20 ], [ %9, %7 ]
  %25 = add nuw nsw i64 %10, 1
  %26 = sext i32 %23 to i64
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %7, label %28, !llvm.loop !13

28:                                               ; preds = %22, %0
  %29 = tail call noundef i32 @_Z6getintv()
  store i32 %29, i32* @m2, align 4, !tbaa !4
  %30 = tail call noundef i32 @_Z6getintv()
  store i32 %30, i32* @n2, align 4, !tbaa !4
  %31 = load i32, i32* @m2, align 4, !tbaa !4
  %32 = icmp sgt i32 %31, 0
  %33 = icmp sgt i32 %30, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %28, %50
  %36 = phi i32 [ %51, %50 ], [ %31, %28 ]
  %37 = phi i32 [ %52, %50 ], [ %30, %28 ]
  %38 = phi i64 [ %53, %50 ], [ 0, %28 ]
  %39 = icmp sgt i32 %37, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35, %40
  %41 = phi i64 [ %44, %40 ], [ 0, %35 ]
  %42 = tail call noundef i32 @_Z6getintv()
  %43 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %38, i64 %41
  store i32 %42, i32* %43, align 4, !tbaa !4
  %44 = add nuw nsw i64 %41, 1
  %45 = load i32, i32* @n2, align 4, !tbaa !4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %40, label %48, !llvm.loop !15

48:                                               ; preds = %40
  %49 = load i32, i32* @m2, align 4, !tbaa !4
  br label %50

50:                                               ; preds = %48, %35
  %51 = phi i32 [ %49, %48 ], [ %36, %35 ]
  %52 = phi i32 [ %45, %48 ], [ %37, %35 ]
  %53 = add nuw nsw i64 %38, 1
  %54 = sext i32 %51 to i64
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %35, label %56, !llvm.loop !16

56:                                               ; preds = %50, %28
  %57 = phi i32 [ %30, %28 ], [ %52, %50 ]
  %58 = load i32, i32* @m1, align 4, !tbaa !4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %138

60:                                               ; preds = %56
  %61 = icmp sgt i32 %57, 0
  %62 = load i32, i32* @n1, align 4
  %63 = icmp sgt i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %118

65:                                               ; preds = %60
  %66 = zext i32 %58 to i64
  %67 = zext i32 %57 to i64
  %68 = zext i32 %62 to i64
  %69 = and i64 %68, 1
  %70 = icmp eq i32 %62, 1
  %71 = and i64 %68, 4294967294
  %72 = icmp eq i64 %69, 0
  br label %73

73:                                               ; preds = %114, %65
  %74 = phi i64 [ 0, %65 ], [ %115, %114 ]
  br label %75

75:                                               ; preds = %110, %73
  %76 = phi i64 [ %112, %110 ], [ 0, %73 ]
  %77 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @res, i64 0, i64 %74, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !4
  br i1 %70, label %99, label %79

79:                                               ; preds = %75, %79
  %80 = phi i64 [ %96, %79 ], [ 0, %75 ]
  %81 = phi i32 [ %95, %79 ], [ %78, %75 ]
  %82 = phi i64 [ %97, %79 ], [ 0, %75 ]
  %83 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %74, i64 %80
  %84 = load i32, i32* %83, align 8, !tbaa !4
  %85 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %80, i64 %76
  %86 = load i32, i32* %85, align 4, !tbaa !4
  %87 = mul nsw i32 %86, %84
  %88 = add nsw i32 %87, %81
  %89 = or i64 %80, 1
  %90 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %74, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !4
  %92 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %89, i64 %76
  %93 = load i32, i32* %92, align 4, !tbaa !4
  %94 = mul nsw i32 %93, %91
  %95 = add nsw i32 %94, %88
  %96 = add nuw nsw i64 %80, 2
  %97 = add i64 %82, 2
  %98 = icmp eq i64 %97, %71
  br i1 %98, label %99, label %79, !llvm.loop !8

99:                                               ; preds = %79, %75
  %100 = phi i32 [ undef, %75 ], [ %95, %79 ]
  %101 = phi i64 [ 0, %75 ], [ %96, %79 ]
  %102 = phi i32 [ %78, %75 ], [ %95, %79 ]
  br i1 %72, label %110, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %74, i64 %101
  %105 = load i32, i32* %104, align 4, !tbaa !4
  %106 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %101, i64 %76
  %107 = load i32, i32* %106, align 4, !tbaa !4
  %108 = mul nsw i32 %107, %105
  %109 = add nsw i32 %108, %102
  br label %110

110:                                              ; preds = %99, %103
  %111 = phi i32 [ %100, %99 ], [ %109, %103 ]
  store i32 %111, i32* %77, align 4, !tbaa !4
  %112 = add nuw nsw i64 %76, 1
  %113 = icmp eq i64 %112, %67
  br i1 %113, label %114, label %75, !llvm.loop !10

114:                                              ; preds = %110
  %115 = add nuw nsw i64 %74, 1
  %116 = icmp eq i64 %115, %66
  br i1 %116, label %117, label %73, !llvm.loop !11

117:                                              ; preds = %114
  br i1 %59, label %118, label %138

118:                                              ; preds = %60, %117
  br label %119

119:                                              ; preds = %118, %136
  %120 = phi i32 [ %137, %136 ], [ %57, %118 ]
  %121 = phi i64 [ %132, %136 ], [ 0, %118 ]
  %122 = icmp sgt i32 %120, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %119, %123
  %124 = phi i64 [ %127, %123 ], [ 0, %119 ]
  %125 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @res, i64 0, i64 %121, i64 %124
  %126 = load i32, i32* %125, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %126)
  tail call void @_Z5putchi(i32 noundef 32)
  %127 = add nuw nsw i64 %124, 1
  %128 = load i32, i32* @n2, align 4, !tbaa !4
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %123, label %131, !llvm.loop !17

131:                                              ; preds = %123, %119
  tail call void @_Z5putchi(i32 noundef 10)
  %132 = add nuw nsw i64 %121, 1
  %133 = load i32, i32* @m1, align 4, !tbaa !4
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %136, label %138, !llvm.loop !18

136:                                              ; preds = %131
  %137 = load i32, i32* @n2, align 4, !tbaa !4
  br label %119

138:                                              ; preds = %131, %56, %117
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!13 = distinct !{!13, !9, !14}
!14 = !{!"llvm.loop.unswitch.partial.disable"}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9, !14}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
