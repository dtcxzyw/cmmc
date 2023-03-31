; ModuleID = 'tests//SysY2022/functional/55_sort_test1.sy'
source_filename = "tests//SysY2022/functional/55_sort_test1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z10bubblesortPi(i32* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @n, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %36

4:                                                ; preds = %1, %31
  %5 = phi i32 [ %32, %31 ], [ %2, %1 ]
  %6 = phi i32 [ %33, %31 ], [ 0, %1 ]
  %7 = xor i32 %6, -1
  %8 = add i32 %5, %7
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  %11 = load i32, i32* %0, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %10, %24
  %13 = phi i32 [ %5, %10 ], [ %25, %24 ]
  %14 = phi i32 [ %5, %10 ], [ %26, %24 ]
  %15 = phi i32 [ %11, %10 ], [ %27, %24 ]
  %16 = phi i64 [ 0, %10 ], [ %17, %24 ]
  %17 = add nuw nsw i64 %16, 1
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds i32, i32* %0, i64 %16
  store i32 %15, i32* %18, align 4, !tbaa !5
  store i32 %19, i32* %22, align 4, !tbaa !5
  %23 = load i32, i32* @n, align 4, !tbaa !5
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi i32 [ %23, %21 ], [ %13, %12 ]
  %26 = phi i32 [ %23, %21 ], [ %14, %12 ]
  %27 = phi i32 [ %15, %21 ], [ %19, %12 ]
  %28 = add i32 %26, %7
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %17, %29
  br i1 %30, label %12, label %31, !llvm.loop !9

31:                                               ; preds = %24, %4
  %32 = phi i32 [ %5, %4 ], [ %25, %24 ]
  %33 = add nuw nsw i32 %6, 1
  %34 = add nsw i32 %32, -1
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %4, label %36, !llvm.loop !11

36:                                               ; preds = %31, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [10 x i32], align 16
  store i32 10, i32* @n, align 4, !tbaa !5
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 8
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  store i32 9, i32* %5, align 4, !tbaa !5
  store i32 8, i32* %4, align 16, !tbaa !5
  %6 = bitcast i32* %3 to <4 x i32>*
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, <4 x i32>* %6, align 16, !tbaa !5
  %7 = bitcast [10 x i32]* %1 to <4 x i32>*
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <4 x i32>* %7, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z5putchi(i32 noundef 10)
  %8 = load i32, i32* @n, align 4, !tbaa !5
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %18, !llvm.loop !12

10:                                               ; preds = %0, %10
  %11 = phi i64 [ %14, %10 ], [ 1, %0 ]
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %13)
  tail call void @_Z5putchi(i32 noundef 10)
  %14 = add nuw nsw i64 %11, 1
  %15 = load i32, i32* @n, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %10, label %18, !llvm.loop !12

18:                                               ; preds = %10, %0
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
