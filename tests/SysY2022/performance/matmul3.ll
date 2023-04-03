; ModuleID = 'tests//SysY2022/performance/matmul3.sy'
source_filename = "tests//SysY2022/performance/matmul3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [1000 x [1000 x i32]] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [1000 x [1000 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %4

1:                                                ; preds = %4
  %2 = add nuw nsw i64 %5, 1
  %3 = icmp eq i64 %2, 1000
  br i1 %3, label %9, label %4, !llvm.loop !4

4:                                                ; preds = %0, %1
  %5 = phi i64 [ 0, %0 ], [ %2, %1 ]
  %6 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %5, i64 0
  %7 = tail call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %6)
  %8 = icmp eq i32 %7, 1000
  br i1 %8, label %1, label %159

9:                                                ; preds = %1
  tail call void @_Z15_sysy_starttimei(i32 noundef 23)
  br label %10

10:                                               ; preds = %9, %31
  %11 = phi i64 [ 0, %9 ], [ %32, %31 ]
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %29, %12 ]
  %14 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %13, i64 %11
  %15 = load i32, i32* %14, align 4, !tbaa !6
  %16 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %11, i64 %13
  store i32 %15, i32* %16, align 16, !tbaa !6
  %17 = or i64 %13, 1
  %18 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %17, i64 %11
  %19 = load i32, i32* %18, align 4, !tbaa !6
  %20 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %11, i64 %17
  store i32 %19, i32* %20, align 4, !tbaa !6
  %21 = or i64 %13, 2
  %22 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %21, i64 %11
  %23 = load i32, i32* %22, align 4, !tbaa !6
  %24 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %11, i64 %21
  store i32 %23, i32* %24, align 8, !tbaa !6
  %25 = or i64 %13, 3
  %26 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %25, i64 %11
  %27 = load i32, i32* %26, align 4, !tbaa !6
  %28 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %11, i64 %25
  store i32 %27, i32* %28, align 4, !tbaa !6
  %29 = add nuw nsw i64 %13, 4
  %30 = icmp eq i64 %29, 1000
  br i1 %30, label %31, label %12, !llvm.loop !10

31:                                               ; preds = %12
  %32 = add nuw nsw i64 %11, 1
  %33 = icmp eq i64 %32, 1000
  br i1 %33, label %34, label %10, !llvm.loop !11

34:                                               ; preds = %31, %60
  %35 = phi i64 [ %61, %60 ], [ 0, %31 ]
  br label %36

36:                                               ; preds = %34, %56
  %37 = phi i64 [ 0, %34 ], [ %58, %56 ]
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %54, %38 ]
  %40 = phi i32 [ 0, %36 ], [ %53, %38 ]
  %41 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %35, i64 %39
  %42 = load i32, i32* %41, align 8, !tbaa !6
  %43 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %39, i64 %37
  %44 = load i32, i32* %43, align 4, !tbaa !6
  %45 = mul nsw i32 %44, %42
  %46 = add nsw i32 %45, %40
  %47 = or i64 %39, 1
  %48 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %35, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !6
  %50 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %47, i64 %37
  %51 = load i32, i32* %50, align 4, !tbaa !6
  %52 = mul nsw i32 %51, %49
  %53 = add nsw i32 %52, %46
  %54 = add nuw nsw i64 %39, 2
  %55 = icmp eq i64 %54, 1000
  br i1 %55, label %56, label %38, !llvm.loop !12

56:                                               ; preds = %38
  %57 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %35, i64 %37
  store i32 %53, i32* %57, align 4, !tbaa !6
  %58 = add nuw nsw i64 %37, 1
  %59 = icmp eq i64 %58, 1000
  br i1 %59, label %60, label %36, !llvm.loop !13

60:                                               ; preds = %56
  %61 = add nuw nsw i64 %35, 1
  %62 = icmp eq i64 %61, 1000
  br i1 %62, label %63, label %34, !llvm.loop !14

63:                                               ; preds = %60, %107
  %64 = phi i64 [ %108, %107 ], [ 0, %60 ]
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i64 [ 0, %63 ], [ %92, %65 ]
  %67 = phi i32 [ 2147483647, %63 ], [ %91, %65 ]
  %68 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %66
  %69 = load i32, i32* %68, align 4, !tbaa !6
  %70 = icmp slt i32 %69, %67
  %71 = select i1 %70, i32 %69, i32 %67
  %72 = add nuw nsw i64 %66, 1
  %73 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !6
  %75 = icmp slt i32 %74, %71
  %76 = select i1 %75, i32 %74, i32 %71
  %77 = add nuw nsw i64 %66, 2
  %78 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !6
  %80 = icmp slt i32 %79, %76
  %81 = select i1 %80, i32 %79, i32 %76
  %82 = add nuw nsw i64 %66, 3
  %83 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !6
  %85 = icmp slt i32 %84, %81
  %86 = select i1 %85, i32 %84, i32 %81
  %87 = add nuw nsw i64 %66, 4
  %88 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !6
  %90 = icmp slt i32 %89, %86
  %91 = select i1 %90, i32 %89, i32 %86
  %92 = add nuw nsw i64 %66, 5
  %93 = icmp eq i64 %92, 1000
  br i1 %93, label %94, label %65, !llvm.loop !15

94:                                               ; preds = %65, %94
  %95 = phi i64 [ %105, %94 ], [ 0, %65 ]
  %96 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %95
  store i32 %91, i32* %96, align 4, !tbaa !6
  %97 = add nuw nsw i64 %95, 1
  %98 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %97
  store i32 %91, i32* %98, align 4, !tbaa !6
  %99 = add nuw nsw i64 %95, 2
  %100 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %99
  store i32 %91, i32* %100, align 4, !tbaa !6
  %101 = add nuw nsw i64 %95, 3
  %102 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %101
  store i32 %91, i32* %102, align 4, !tbaa !6
  %103 = add nuw nsw i64 %95, 4
  %104 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %64, i64 %103
  store i32 %91, i32* %104, align 4, !tbaa !6
  %105 = add nuw nsw i64 %95, 5
  %106 = icmp eq i64 %105, 1000
  br i1 %106, label %107, label %94, !llvm.loop !16

107:                                              ; preds = %94
  %108 = add nuw nsw i64 %64, 1
  %109 = icmp eq i64 %108, 1000
  br i1 %109, label %110, label %63, !llvm.loop !17

110:                                              ; preds = %107, %125
  %111 = phi i64 [ %126, %125 ], [ 0, %107 ]
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i64 [ 0, %110 ], [ %123, %112 ]
  %114 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %113, i64 %111
  %115 = load i32, i32* %114, align 4, !tbaa !6
  %116 = sub nsw i32 0, %115
  %117 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %111, i64 %113
  store i32 %116, i32* %117, align 8, !tbaa !6
  %118 = or i64 %113, 1
  %119 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %118, i64 %111
  %120 = load i32, i32* %119, align 4, !tbaa !6
  %121 = sub nsw i32 0, %120
  %122 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %111, i64 %118
  store i32 %121, i32* %122, align 4, !tbaa !6
  %123 = add nuw nsw i64 %113, 2
  %124 = icmp eq i64 %123, 1000
  br i1 %124, label %125, label %112, !llvm.loop !18

125:                                              ; preds = %112
  %126 = add nuw nsw i64 %111, 1
  %127 = icmp eq i64 %126, 1000
  br i1 %127, label %128, label %110, !llvm.loop !19

128:                                              ; preds = %125, %155
  %129 = phi i64 [ %156, %155 ], [ 0, %125 ]
  %130 = phi i32 [ %152, %155 ], [ 0, %125 ]
  br label %131

131:                                              ; preds = %131, %128
  %132 = phi i64 [ 0, %128 ], [ %153, %131 ]
  %133 = phi i32 [ %130, %128 ], [ %152, %131 ]
  %134 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %129, i64 %132
  %135 = load i32, i32* %134, align 4, !tbaa !6
  %136 = add nsw i32 %135, %133
  %137 = add nuw nsw i64 %132, 1
  %138 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %129, i64 %137
  %139 = load i32, i32* %138, align 4, !tbaa !6
  %140 = add nsw i32 %139, %136
  %141 = add nuw nsw i64 %132, 2
  %142 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %129, i64 %141
  %143 = load i32, i32* %142, align 4, !tbaa !6
  %144 = add nsw i32 %143, %140
  %145 = add nuw nsw i64 %132, 3
  %146 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %129, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !6
  %148 = add nsw i32 %147, %144
  %149 = add nuw nsw i64 %132, 4
  %150 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %129, i64 %149
  %151 = load i32, i32* %150, align 4, !tbaa !6
  %152 = add nsw i32 %151, %148
  %153 = add nuw nsw i64 %132, 5
  %154 = icmp eq i64 %153, 1000
  br i1 %154, label %155, label %131, !llvm.loop !20

155:                                              ; preds = %131
  %156 = add nuw nsw i64 %129, 1
  %157 = icmp eq i64 %156, 1000
  br i1 %157, label %158, label %128, !llvm.loop !21

158:                                              ; preds = %155
  tail call void @_Z14_sysy_stoptimei(i32 noundef 92)
  tail call void @_Z6putinti(i32 noundef %152)
  br label %159

159:                                              ; preds = %4, %158
  %160 = phi i32 [ 0, %158 ], [ %7, %4 ]
  ret i32 %160
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #1

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #1

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
