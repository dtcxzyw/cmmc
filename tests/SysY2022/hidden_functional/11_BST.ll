; ModuleID = 'tests//SysY2022/hidden_functional/11_BST.sy'
source_filename = "tests//SysY2022/hidden_functional/11_BST.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@value = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@left_child = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@right_child = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@now = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6searchii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, -1
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %10
  %5 = phi i32 [ %14, %10 ], [ %0, %2 ]
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [10000 x i32], [10000 x i32]* @value, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = icmp slt i32 %8, %1
  %12 = select i1 %11, [10000 x i32]* @right_child, [10000 x i32]* @left_child
  %13 = getelementptr inbounds [10000 x i32], [10000 x i32]* %12, i64 0, i64 %6
  %14 = load i32, i32* %13, align 4, !tbaa !4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %4

16:                                               ; preds = %4, %10, %2
  %17 = phi i32 [ -1, %2 ], [ -1, %10 ], [ %5, %4 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z12find_minimumi(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i32 [ %0, %1 ], [ %8, %5 ]
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [10000 x i32], [10000 x i32]* @left_child, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %2

10:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z8new_nodei(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load i32, i32* @now, align 4, !tbaa !4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [10000 x i32], [10000 x i32]* @value, i64 0, i64 %3
  store i32 %0, i32* %4, align 4, !tbaa !4
  %5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @left_child, i64 0, i64 %3
  store i32 -1, i32* %5, align 4, !tbaa !4
  %6 = getelementptr inbounds [10000 x i32], [10000 x i32]* @right_child, i64 0, i64 %3
  store i32 -1, i32* %6, align 4, !tbaa !4
  %7 = add nsw i32 %2, 1
  store i32 %7, i32* @now, align 4, !tbaa !4
  ret i32 %2
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6insertii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, -1
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = load i32, i32* @now, align 4, !tbaa !4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [10000 x i32], [10000 x i32]* @value, i64 0, i64 %6
  store i32 %1, i32* %7, align 4, !tbaa !4
  %8 = getelementptr inbounds [10000 x i32], [10000 x i32]* @left_child, i64 0, i64 %6
  store i32 -1, i32* %8, align 4, !tbaa !4
  %9 = getelementptr inbounds [10000 x i32], [10000 x i32]* @right_child, i64 0, i64 %6
  store i32 -1, i32* %9, align 4, !tbaa !4
  %10 = add nsw i32 %5, 1
  store i32 %10, i32* @now, align 4, !tbaa !4
  br label %16

11:                                               ; preds = %2
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [10000 x i32], [10000 x i32]* @value, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !4
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %18, label %22

16:                                               ; preds = %4, %22, %18
  %17 = phi i32 [ %0, %18 ], [ %0, %22 ], [ %5, %4 ]
  ret i32 %17

18:                                               ; preds = %11
  %19 = getelementptr inbounds [10000 x i32], [10000 x i32]* @right_child, i64 0, i64 %12
  %20 = load i32, i32* %19, align 4, !tbaa !4
  %21 = tail call noundef i32 @_Z6insertii(i32 noundef %20, i32 noundef %1)
  store i32 %21, i32* %19, align 4, !tbaa !4
  br label %16

22:                                               ; preds = %11
  %23 = getelementptr inbounds [10000 x i32], [10000 x i32]* @left_child, i64 0, i64 %12
  %24 = load i32, i32* %23, align 4, !tbaa !4
  %25 = tail call noundef i32 @_Z6insertii(i32 noundef %24, i32 noundef %1)
  store i32 %25, i32* %23, align 4, !tbaa !4
  br label %16
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z7delete_ii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, -1
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [10000 x i32], [10000 x i32]* @value, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %11, label %15

9:                                                ; preds = %21, %2, %25, %33, %19, %11
  %10 = phi i32 [ %0, %11 ], [ %0, %19 ], [ %0, %33 ], [ -1, %2 ], [ %18, %25 ], [ %24, %21 ]
  ret i32 %10

11:                                               ; preds = %4
  %12 = getelementptr inbounds [10000 x i32], [10000 x i32]* @right_child, i64 0, i64 %5
  %13 = load i32, i32* %12, align 4, !tbaa !4
  %14 = tail call noundef i32 @_Z7delete_ii(i32 noundef %13, i32 noundef %1)
  store i32 %14, i32* %12, align 4, !tbaa !4
  br label %9

15:                                               ; preds = %4
  %16 = icmp sgt i32 %7, %1
  %17 = getelementptr inbounds [10000 x i32], [10000 x i32]* @left_child, i64 0, i64 %5
  %18 = load i32, i32* %17, align 4, !tbaa !4
  br i1 %16, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call noundef i32 @_Z7delete_ii(i32 noundef %18, i32 noundef %1)
  store i32 %20, i32* %17, align 4, !tbaa !4
  br label %9

21:                                               ; preds = %15
  %22 = icmp eq i32 %18, -1
  %23 = getelementptr inbounds [10000 x i32], [10000 x i32]* @right_child, i64 0, i64 %5
  %24 = load i32, i32* %23, align 4, !tbaa !4
  br i1 %22, label %9, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %24, -1
  br i1 %26, label %9, label %27

27:                                               ; preds = %25, %27
  %28 = phi i32 [ %31, %27 ], [ %24, %25 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10000 x i32], [10000 x i32]* @left_child, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %27

33:                                               ; preds = %27
  %34 = getelementptr inbounds [10000 x i32], [10000 x i32]* @value, i64 0, i64 %29
  %35 = load i32, i32* %34, align 4, !tbaa !4
  store i32 %35, i32* %6, align 4, !tbaa !4
  %36 = load i32, i32* %34, align 4, !tbaa !4
  %37 = tail call noundef i32 @_Z7delete_ii(i32 noundef %24, i32 noundef %36)
  store i32 %37, i32* %23, align 4, !tbaa !4
  br label %9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7inorderi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, -1
  br i1 %2, label %13, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %11, %3 ], [ %0, %1 ]
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [10000 x i32], [10000 x i32]* @left_child, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !4
  tail call void @_Z7inorderi(i32 noundef %7)
  %8 = getelementptr inbounds [10000 x i32], [10000 x i32]* @value, i64 0, i64 %5
  %9 = load i32, i32* %8, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %9)
  tail call void @_Z5putchi(i32 noundef 32)
  %10 = getelementptr inbounds [10000 x i32], [10000 x i32]* @right_child, i64 0, i64 %5
  %11 = load i32, i32* %10, align 4, !tbaa !4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %3

13:                                               ; preds = %3, %1
  ret void
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  store i32 0, i32* @now, align 4, !tbaa !4
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %30, label %3

3:                                                ; preds = %0
  %4 = tail call noundef i32 @_Z6getintv()
  %5 = load i32, i32* @now, align 4, !tbaa !4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [10000 x i32], [10000 x i32]* @value, i64 0, i64 %6
  store i32 %4, i32* %7, align 4, !tbaa !4
  %8 = getelementptr inbounds [10000 x i32], [10000 x i32]* @left_child, i64 0, i64 %6
  store i32 -1, i32* %8, align 4, !tbaa !4
  %9 = getelementptr inbounds [10000 x i32], [10000 x i32]* @right_child, i64 0, i64 %6
  store i32 -1, i32* %9, align 4, !tbaa !4
  %10 = add nsw i32 %5, 1
  store i32 %10, i32* @now, align 4, !tbaa !4
  %11 = icmp sgt i32 %1, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %16, %12 ], [ 1, %3 ]
  %14 = tail call noundef i32 @_Z6getintv()
  %15 = tail call noundef i32 @_Z6insertii(i32 noundef %5, i32 noundef %14)
  %16 = add nuw nsw i32 %13, 1
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %12, !llvm.loop !8

18:                                               ; preds = %12, %3
  tail call void @_Z7inorderi(i32 noundef %5)
  tail call void @_Z5putchi(i32 noundef 10)
  %19 = tail call noundef i32 @_Z6getintv()
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18, %21
  %22 = phi i32 [ %26, %21 ], [ 0, %18 ]
  %23 = phi i32 [ %25, %21 ], [ %5, %18 ]
  %24 = tail call noundef i32 @_Z6getintv()
  %25 = tail call noundef i32 @_Z7delete_ii(i32 noundef %23, i32 noundef %24)
  %26 = add nuw nsw i32 %22, 1
  %27 = icmp eq i32 %26, %19
  br i1 %27, label %28, label %21, !llvm.loop !10

28:                                               ; preds = %21, %18
  %29 = phi i32 [ %5, %18 ], [ %25, %21 ]
  tail call void @_Z7inorderi(i32 noundef %29)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %30

30:                                               ; preds = %0, %28
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
