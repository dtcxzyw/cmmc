; ModuleID = 'tests//SysY2022/functional/61_sort_test7.sy'
source_filename = "tests//SysY2022/functional/61_sort_test7.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@buf = dso_local global [2 x [100 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z10merge_sortii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, 1
  %4 = icmp slt i32 %3, %1
  br i1 %4, label %5, label %156

5:                                                ; preds = %2
  %6 = add nsw i32 %1, %0
  %7 = sdiv i32 %6, 2
  tail call void @_Z10merge_sortii(i32 noundef %0, i32 noundef %7)
  tail call void @_Z10merge_sortii(i32 noundef %7, i32 noundef %1)
  %8 = icmp sgt i32 %7, %0
  %9 = icmp slt i32 %7, %1
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = sext i32 %0 to i64
  br label %40

13:                                               ; preds = %40
  %14 = trunc i64 %58 to i32
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ %0, %5 ], [ %53, %13 ]
  %17 = phi i32 [ %7, %5 ], [ %56, %13 ]
  %18 = phi i32 [ %0, %5 ], [ %14, %13 ]
  %19 = icmp slt i32 %16, %7
  br i1 %19, label %20, label %65

20:                                               ; preds = %15
  %21 = sext i32 %18 to i64
  %22 = sext i32 %16 to i64
  %23 = sext i32 %7 to i64
  %24 = sub nsw i64 %23, %22
  %25 = xor i64 %22, -1
  %26 = and i64 %24, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %22
  %30 = load i32, i32* %29, align 4, !tbaa !4
  %31 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %21
  store i32 %30, i32* %31, align 4, !tbaa !4
  %32 = add nsw i64 %22, 1
  %33 = add nsw i64 %21, 1
  br label %34

34:                                               ; preds = %28, %20
  %35 = phi i64 [ undef, %20 ], [ %33, %28 ]
  %36 = phi i64 [ %22, %20 ], [ %32, %28 ]
  %37 = phi i64 [ %21, %20 ], [ %33, %28 ]
  %38 = sub nsw i64 0, %23
  %39 = icmp eq i64 %25, %38
  br i1 %39, label %62, label %87

40:                                               ; preds = %11, %40
  %41 = phi i64 [ %12, %11 ], [ %58, %40 ]
  %42 = phi i32 [ %7, %11 ], [ %56, %40 ]
  %43 = phi i32 [ %0, %11 ], [ %53, %40 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !4
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = icmp slt i32 %46, %49
  %51 = select i1 %50, i32 %46, i32 %49
  %52 = zext i1 %50 to i32
  %53 = add nsw i32 %43, %52
  %54 = xor i1 %50, true
  %55 = zext i1 %54 to i32
  %56 = add nsw i32 %42, %55
  %57 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %41
  store i32 %51, i32* %57, align 4
  %58 = add i64 %41, 1
  %59 = icmp slt i32 %53, %7
  %60 = icmp slt i32 %56, %1
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %40, label %13, !llvm.loop !8

62:                                               ; preds = %87, %34
  %63 = phi i64 [ %35, %34 ], [ %99, %87 ]
  %64 = trunc i64 %63 to i32
  br label %65

65:                                               ; preds = %62, %15
  %66 = phi i32 [ %18, %15 ], [ %64, %62 ]
  %67 = icmp slt i32 %17, %1
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = sext i32 %66 to i64
  %70 = sext i32 %17 to i64
  %71 = sext i32 %1 to i64
  %72 = sub nsw i64 %71, %70
  %73 = xor i64 %70, -1
  %74 = and i64 %72, 1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %70
  %78 = load i32, i32* %77, align 4, !tbaa !4
  %79 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %69
  store i32 %78, i32* %79, align 4, !tbaa !4
  %80 = add nsw i64 %70, 1
  %81 = add nsw i64 %69, 1
  br label %82

82:                                               ; preds = %76, %68
  %83 = phi i64 [ %70, %68 ], [ %80, %76 ]
  %84 = phi i64 [ %69, %68 ], [ %81, %76 ]
  %85 = sub nsw i64 0, %71
  %86 = icmp eq i64 %73, %85
  br i1 %86, label %101, label %123

87:                                               ; preds = %34, %87
  %88 = phi i64 [ %98, %87 ], [ %36, %34 ]
  %89 = phi i64 [ %99, %87 ], [ %37, %34 ]
  %90 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %88
  %91 = load i32, i32* %90, align 4, !tbaa !4
  %92 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %89
  store i32 %91, i32* %92, align 4, !tbaa !4
  %93 = add nsw i64 %88, 1
  %94 = add nsw i64 %89, 1
  %95 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %93
  %96 = load i32, i32* %95, align 4, !tbaa !4
  %97 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %94
  store i32 %96, i32* %97, align 4, !tbaa !4
  %98 = add nsw i64 %88, 2
  %99 = add nsw i64 %89, 2
  %100 = icmp eq i64 %98, %23
  br i1 %100, label %62, label %87, !llvm.loop !10

101:                                              ; preds = %82, %123, %65
  %102 = icmp slt i32 %0, %1
  br i1 %102, label %103, label %156

103:                                              ; preds = %101
  %104 = sext i32 %0 to i64
  %105 = sext i32 %1 to i64
  %106 = sub nsw i64 %105, %104
  %107 = xor i64 %104, -1
  %108 = add nsw i64 %107, %105
  %109 = and i64 %106, 3
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %103, %111
  %112 = phi i64 [ %117, %111 ], [ %104, %103 ]
  %113 = phi i64 [ %118, %111 ], [ 0, %103 ]
  %114 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %112
  %115 = load i32, i32* %114, align 4, !tbaa !4
  %116 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %112
  store i32 %115, i32* %116, align 4, !tbaa !4
  %117 = add nsw i64 %112, 1
  %118 = add i64 %113, 1
  %119 = icmp eq i64 %118, %109
  br i1 %119, label %120, label %111, !llvm.loop !11

120:                                              ; preds = %111, %103
  %121 = phi i64 [ %104, %103 ], [ %117, %111 ]
  %122 = icmp ult i64 %108, 3
  br i1 %122, label %156, label %137

123:                                              ; preds = %82, %123
  %124 = phi i64 [ %134, %123 ], [ %83, %82 ]
  %125 = phi i64 [ %135, %123 ], [ %84, %82 ]
  %126 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %124
  %127 = load i32, i32* %126, align 4, !tbaa !4
  %128 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %125
  store i32 %127, i32* %128, align 4, !tbaa !4
  %129 = add nsw i64 %124, 1
  %130 = add nsw i64 %125, 1
  %131 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %129
  %132 = load i32, i32* %131, align 4, !tbaa !4
  %133 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %130
  store i32 %132, i32* %133, align 4, !tbaa !4
  %134 = add nsw i64 %124, 2
  %135 = add nsw i64 %125, 2
  %136 = icmp eq i64 %134, %71
  br i1 %136, label %101, label %123, !llvm.loop !13

137:                                              ; preds = %120, %137
  %138 = phi i64 [ %154, %137 ], [ %121, %120 ]
  %139 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %138
  %140 = load i32, i32* %139, align 4, !tbaa !4
  %141 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %138
  store i32 %140, i32* %141, align 4, !tbaa !4
  %142 = add nsw i64 %138, 1
  %143 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %142
  %144 = load i32, i32* %143, align 4, !tbaa !4
  %145 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %142
  store i32 %144, i32* %145, align 4, !tbaa !4
  %146 = add nsw i64 %138, 2
  %147 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %146
  %148 = load i32, i32* %147, align 4, !tbaa !4
  %149 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %146
  store i32 %148, i32* %149, align 4, !tbaa !4
  %150 = add nsw i64 %138, 3
  %151 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %150
  %152 = load i32, i32* %151, align 4, !tbaa !4
  %153 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %150
  store i32 %152, i32* %153, align 4, !tbaa !4
  %154 = add nsw i64 %138, 4
  %155 = icmp eq i64 %154, %105
  br i1 %155, label %156, label %137, !llvm.loop !14

156:                                              ; preds = %120, %137, %101, %2
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 0))
  tail call void @_Z10merge_sortii(i32 noundef 0, i32 noundef %1)
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef getelementptr inbounds ([2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #2

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
