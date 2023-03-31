; ModuleID = 'tests//SysY2022/functional/60_sort_test6.sy'
source_filename = "tests//SysY2022/functional/60_sort_test6.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z13counting_sortPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [10 x i32], align 16
  %5 = bitcast [10 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8 0, i64 40, i1 false), !tbaa !4
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %3
  %8 = zext i32 %2 to i64
  %9 = add nsw i64 %8, -1
  %10 = and i64 %8, 3
  %11 = icmp ult i64 %9, 3
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = and i64 %8, 4294967292
  br label %78

14:                                               ; preds = %78, %7
  %15 = phi i64 [ 0, %7 ], [ %108, %78 ]
  %16 = icmp eq i64 %10, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ %26, %17 ], [ %15, %14 ]
  %19 = phi i64 [ %27, %17 ], [ 0, %14 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %18
  %21 = load i32, i32* %20, align 4, !tbaa !4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4, !tbaa !4
  %26 = add nuw nsw i64 %18, 1
  %27 = add i64 %19, 1
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %17, !llvm.loop !8

29:                                               ; preds = %17, %14
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 1
  %31 = load i32, i32* %30, align 4, !tbaa !4
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %33 = load i32, i32* %32, align 16, !tbaa !4
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 2
  %35 = load i32, i32* %34, align 8, !tbaa !4
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 3
  %37 = load i32, i32* %36, align 4, !tbaa !4
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 4
  %39 = load i32, i32* %38, align 16, !tbaa !4
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 5
  %41 = load i32, i32* %40, align 4, !tbaa !4
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 6
  %43 = load i32, i32* %42, align 8, !tbaa !4
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 7
  %45 = load i32, i32* %44, align 4, !tbaa !4
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 8
  %47 = load i32, i32* %46, align 16, !tbaa !4
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 9
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = add nsw i32 %33, %31
  br label %51

51:                                               ; preds = %29, %3
  %52 = phi i32 [ %49, %29 ], [ 0, %3 ]
  %53 = phi i32 [ %47, %29 ], [ 0, %3 ]
  %54 = phi i32 [ %45, %29 ], [ 0, %3 ]
  %55 = phi i32 [ %43, %29 ], [ 0, %3 ]
  %56 = phi i32 [ %41, %29 ], [ 0, %3 ]
  %57 = phi i32 [ %39, %29 ], [ 0, %3 ]
  %58 = phi i32 [ %37, %29 ], [ 0, %3 ]
  %59 = phi i32 [ %35, %29 ], [ 0, %3 ]
  %60 = phi i32 [ %50, %29 ], [ 0, %3 ]
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 1
  store i32 %60, i32* %61, align 4, !tbaa !4
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 2
  %63 = add nsw i32 %60, %59
  store i32 %63, i32* %62, align 8, !tbaa !4
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 3
  %65 = add nsw i32 %63, %58
  store i32 %65, i32* %64, align 4, !tbaa !4
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 4
  %67 = add nsw i32 %65, %57
  store i32 %67, i32* %66, align 16, !tbaa !4
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 5
  %69 = add nsw i32 %67, %56
  store i32 %69, i32* %68, align 4, !tbaa !4
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 6
  %71 = add nsw i32 %69, %55
  store i32 %71, i32* %70, align 8, !tbaa !4
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 7
  %73 = add nsw i32 %71, %54
  store i32 %73, i32* %72, align 4, !tbaa !4
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 8
  %75 = add nsw i32 %73, %53
  store i32 %75, i32* %74, align 16, !tbaa !4
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 9
  %77 = add nsw i32 %75, %52
  store i32 %77, i32* %76, align 4, !tbaa !4
  br i1 %6, label %111, label %152

78:                                               ; preds = %78, %12
  %79 = phi i64 [ 0, %12 ], [ %108, %78 ]
  %80 = phi i64 [ 0, %12 ], [ %109, %78 ]
  %81 = getelementptr inbounds i32, i32* %0, i64 %79
  %82 = load i32, i32* %81, align 4, !tbaa !4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4, !tbaa !4
  %87 = or i64 %79, 1
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4, !tbaa !4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4, !tbaa !4
  %94 = or i64 %79, 2
  %95 = getelementptr inbounds i32, i32* %0, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4, !tbaa !4
  %101 = or i64 %79, 3
  %102 = getelementptr inbounds i32, i32* %0, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4, !tbaa !4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4, !tbaa !4
  %108 = add nuw nsw i64 %79, 4
  %109 = add i64 %80, 4
  %110 = icmp eq i64 %109, %13
  br i1 %110, label %14, label %78, !llvm.loop !10

111:                                              ; preds = %51
  %112 = zext i32 %2 to i64
  %113 = and i64 %112, 1
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = add nsw i64 %112, -1
  %117 = and i64 %116, 4294967295
  %118 = getelementptr inbounds i32, i32* %0, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 4, !tbaa !4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %1, i64 %124
  store i32 %119, i32* %125, align 4, !tbaa !4
  br label %126

126:                                              ; preds = %115, %111
  %127 = phi i64 [ %112, %111 ], [ %116, %115 ]
  %128 = icmp eq i32 %2, 1
  br i1 %128, label %152, label %129

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %141, %129 ], [ %127, %126 ]
  %131 = add nsw i64 %130, -1
  %132 = and i64 %131, 4294967295
  %133 = getelementptr inbounds i32, i32* %0, i64 %132
  %134 = load i32, i32* %133, align 4, !tbaa !4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4, !tbaa !4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 4, !tbaa !4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %1, i64 %139
  store i32 %134, i32* %140, align 4, !tbaa !4
  %141 = add nsw i64 %130, -2
  %142 = and i64 %141, 4294967295
  %143 = getelementptr inbounds i32, i32* %0, i64 %142
  %144 = load i32, i32* %143, align 4, !tbaa !4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4, !tbaa !4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %1, i64 %149
  store i32 %144, i32* %150, align 4, !tbaa !4
  %151 = icmp ugt i64 %131, 1
  br i1 %151, label %129, label %152, !llvm.loop !12

152:                                              ; preds = %126, %129, %51
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [10 x i32], align 16
  store i32 10, i32* @n, align 4, !tbaa !4
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #5
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 8
  store i32 8, i32* %3, align 16, !tbaa !4
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 7
  store i32 7, i32* %4, align 4, !tbaa !4
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 5
  store i32 5, i32* %5, align 4, !tbaa !4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 6
  store i32 6, i32* %6, align 8, !tbaa !4
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  store i32 1, i32* %7, align 4, !tbaa !4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  store i32 0, i32* %8, align 16, !tbaa !4
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  store i32 2, i32* %9, align 8, !tbaa !4
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  store i32 9, i32* %10, align 4, !tbaa !4
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  store i32 3, i32* %11, align 4, !tbaa !4
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  store i32 4, i32* %12, align 16, !tbaa !4
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z5putchi(i32 noundef 10)
  %13 = load i32, i32* @n, align 4, !tbaa !4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %23, !llvm.loop !13

15:                                               ; preds = %0, %15
  %16 = phi i64 [ %19, %15 ], [ 1, %0 ]
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %18)
  tail call void @_Z5putchi(i32 noundef 10)
  %19 = add nuw nsw i64 %16, 1
  %20 = load i32, i32* @n, align 4, !tbaa !4
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %15, label %23, !llvm.loop !13

23:                                               ; preds = %15, %0
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #5
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
