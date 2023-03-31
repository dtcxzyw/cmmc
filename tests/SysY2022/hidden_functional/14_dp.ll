; ModuleID = 'tests//SysY2022/hidden_functional/14_dp.sy'
source_filename = "tests//SysY2022/hidden_functional/14_dp.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@t = dso_local local_unnamed_addr global [1005 x [2 x i32]] zeroinitializer, align 16
@dp = dso_local local_unnamed_addr global [1005 x [35 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %43, label %4

4:                                                ; preds = %0
  %5 = add nuw i32 %1, 1
  %6 = zext i32 %5 to i64
  br label %18

7:                                                ; preds = %18
  %8 = icmp slt i32 %2, 1
  %9 = or i1 %3, %8
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = add nuw i32 %1, 1
  %12 = zext i32 %11 to i64
  %13 = zext i32 %2 to i64
  %14 = and i64 %13, 1
  %15 = icmp eq i32 %2, 1
  %16 = and i64 %13, 4294967294
  %17 = icmp eq i64 %14, 0
  br label %33

18:                                               ; preds = %4, %18
  %19 = phi i64 [ 1, %4 ], [ %31, %18 ]
  %20 = tail call noundef i32 @_Z6getintv()
  %21 = srem i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %19, i64 %22
  store i32 1, i32* %23, align 4, !tbaa !4
  %24 = add nsw i64 %19, -1
  %25 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %24, i64 0
  %26 = load i32, i32* %25, align 4, !tbaa !4
  %27 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %19, i64 1
  %28 = load i32, i32* %27, align 4, !tbaa !4
  %29 = add nsw i32 %28, %26
  %30 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %19, i64 0
  store i32 %29, i32* %30, align 4, !tbaa !4
  %31 = add nuw nsw i64 %19, 1
  %32 = icmp eq i64 %31, %6
  br i1 %32, label %7, label %18, !llvm.loop !8

33:                                               ; preds = %10, %88
  %34 = phi i64 [ 1, %10 ], [ %89, %88 ]
  %35 = add nsw i64 %34, -1
  %36 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %35, i64 0
  %37 = load i32, i32* %36, align 4, !tbaa !4
  br i1 %15, label %74, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %34, i64 0
  %40 = load i32, i32* %39, align 8, !tbaa !4
  %41 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %34, i64 1
  %42 = load i32, i32* %41, align 4, !tbaa !4
  br label %54

43:                                               ; preds = %88, %0, %7
  %44 = icmp slt i32 %2, 0
  br i1 %44, label %133, label %45

45:                                               ; preds = %43
  %46 = sext i32 %1 to i64
  %47 = add nuw i32 %2, 1
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, -1
  %50 = and i64 %48, 3
  %51 = icmp ult i64 %49, 3
  br i1 %51, label %117, label %52

52:                                               ; preds = %45
  %53 = and i64 %48, 4294967292
  br label %91

54:                                               ; preds = %54, %38
  %55 = phi i32 [ %37, %38 ], [ %66, %54 ]
  %56 = phi i64 [ 1, %38 ], [ %67, %54 ]
  %57 = phi i64 [ 0, %38 ], [ %72, %54 ]
  %58 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %35, i64 %56
  %59 = load i32, i32* %58, align 4, !tbaa !4
  %60 = add nuw nsw i64 %56, 1
  %61 = icmp sgt i32 %59, %55
  %62 = select i1 %61, i32 %59, i32 %55
  %63 = add nsw i32 %40, %62
  %64 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %34, i64 %56
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %35, i64 %60
  %66 = load i32, i32* %65, align 4, !tbaa !4
  %67 = add nuw nsw i64 %56, 2
  %68 = icmp sgt i32 %66, %59
  %69 = select i1 %68, i32 %66, i32 %59
  %70 = add nsw i32 %42, %69
  %71 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %34, i64 %60
  store i32 %70, i32* %71, align 4
  %72 = add i64 %57, 2
  %73 = icmp eq i64 %72, %16
  br i1 %73, label %74, label %54, !llvm.loop !10

74:                                               ; preds = %54, %33
  %75 = phi i32 [ %37, %33 ], [ %66, %54 ]
  %76 = phi i64 [ 1, %33 ], [ %67, %54 ]
  br i1 %17, label %88, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %35, i64 %76
  %79 = load i32, i32* %78, align 4, !tbaa !4
  %80 = and i64 %76, 1
  %81 = xor i64 %80, 1
  %82 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %34, i64 %81
  %83 = load i32, i32* %82, align 4, !tbaa !4
  %84 = icmp sgt i32 %79, %75
  %85 = select i1 %84, i32 %79, i32 %75
  %86 = add nsw i32 %83, %85
  %87 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %34, i64 %76
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %74, %77
  %89 = add nuw nsw i64 %34, 1
  %90 = icmp eq i64 %89, %12
  br i1 %90, label %43, label %33, !llvm.loop !11

91:                                               ; preds = %91, %52
  %92 = phi i64 [ 0, %52 ], [ %114, %91 ]
  %93 = phi i32 [ 0, %52 ], [ %113, %91 ]
  %94 = phi i64 [ 0, %52 ], [ %115, %91 ]
  %95 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %92
  %96 = load i32, i32* %95, align 4, !tbaa !4
  %97 = icmp slt i32 %93, %96
  %98 = select i1 %97, i32 %96, i32 %93
  %99 = or i64 %92, 1
  %100 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !4
  %102 = icmp slt i32 %98, %101
  %103 = select i1 %102, i32 %101, i32 %98
  %104 = or i64 %92, 2
  %105 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %104
  %106 = load i32, i32* %105, align 4, !tbaa !4
  %107 = icmp slt i32 %103, %106
  %108 = select i1 %107, i32 %106, i32 %103
  %109 = or i64 %92, 3
  %110 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !4
  %112 = icmp slt i32 %108, %111
  %113 = select i1 %112, i32 %111, i32 %108
  %114 = add nuw nsw i64 %92, 4
  %115 = add i64 %94, 4
  %116 = icmp eq i64 %115, %53
  br i1 %116, label %117, label %91, !llvm.loop !12

117:                                              ; preds = %91, %45
  %118 = phi i32 [ undef, %45 ], [ %113, %91 ]
  %119 = phi i64 [ 0, %45 ], [ %114, %91 ]
  %120 = phi i32 [ 0, %45 ], [ %113, %91 ]
  %121 = icmp eq i64 %50, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %117, %122
  %123 = phi i64 [ %130, %122 ], [ %119, %117 ]
  %124 = phi i32 [ %129, %122 ], [ %120, %117 ]
  %125 = phi i64 [ %131, %122 ], [ 0, %117 ]
  %126 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %123
  %127 = load i32, i32* %126, align 4, !tbaa !4
  %128 = icmp slt i32 %124, %127
  %129 = select i1 %128, i32 %127, i32 %124
  %130 = add nuw nsw i64 %123, 1
  %131 = add i64 %125, 1
  %132 = icmp eq i64 %131, %50
  br i1 %132, label %133, label %122, !llvm.loop !13

133:                                              ; preds = %117, %122, %43
  %134 = phi i32 [ 0, %43 ], [ %118, %117 ], [ %129, %122 ]
  ret i32 %134
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
