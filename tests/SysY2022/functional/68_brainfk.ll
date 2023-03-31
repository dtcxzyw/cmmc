; ModuleID = 'tests//SysY2022/functional/68_brainfk.sy'
source_filename = "tests//SysY2022/functional/68_brainfk.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@tape = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16
@program = dso_local global [32768 x i32] zeroinitializer, align 16
@ptr = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12read_programv() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %9, %5 ]
  %7 = tail call noundef i32 @_Z5getchv()
  %8 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i64 0, i64 %6
  store i32 %7, i32* %8, align 4, !tbaa !5
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, %4
  br i1 %10, label %11, label %5, !llvm.loop !9

11:                                               ; preds = %5
  %12 = zext i32 %1 to i64
  br label %13

13:                                               ; preds = %0, %11
  %14 = phi i64 [ %12, %11 ], [ 0, %0 ]
  %15 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i64 0, i64 %14
  store i32 0, i32* %15, align 4, !tbaa !5
  ret void
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare noundef i32 @_Z5getchv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9interpretPi(i32* nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %56, %1
  %3 = phi i32 [ 0, %1 ], [ %58, %56 ]
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !5
  switch i32 %6, label %56 [
    i32 0, label %59
    i32 62, label %7
    i32 60, label %10
    i32 43, label %13
    i32 45, label %19
    i32 46, label %25
    i32 44, label %30
    i32 93, label %35
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @ptr, align 4, !tbaa !5
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @ptr, align 4, !tbaa !5
  br label %56

10:                                               ; preds = %2
  %11 = load i32, i32* @ptr, align 4, !tbaa !5
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @ptr, align 4, !tbaa !5
  br label %56

13:                                               ; preds = %2
  %14 = load i32, i32* @ptr, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !5
  br label %56

19:                                               ; preds = %2
  %20 = load i32, i32* @ptr, align 4, !tbaa !5
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4, !tbaa !5
  br label %56

25:                                               ; preds = %2
  %26 = load i32, i32* @ptr, align 4, !tbaa !5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  tail call void @_Z5putchi(i32 noundef %29)
  br label %56

30:                                               ; preds = %2
  %31 = tail call noundef i32 @_Z5getchv()
  %32 = load i32, i32* @ptr, align 4, !tbaa !5
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %33
  store i32 %31, i32* %34, align 4, !tbaa !5
  br label %56

35:                                               ; preds = %2
  %36 = load i32, i32* @ptr, align 4, !tbaa !5
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %35, %51
  %42 = phi i64 [ %44, %51 ], [ %4, %35 ]
  %43 = phi i32 [ %52, %51 ], [ 1, %35 ]
  %44 = add i64 %42, -1
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  switch i32 %46, label %51 [
    i32 91, label %47
    i32 93, label %49
  ]

47:                                               ; preds = %41
  %48 = add nsw i32 %43, -1
  br label %51

49:                                               ; preds = %41
  %50 = add nuw nsw i32 %43, 1
  br label %51

51:                                               ; preds = %41, %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ], [ %43, %41 ]
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %41, label %54, !llvm.loop !11

54:                                               ; preds = %51
  %55 = trunc i64 %44 to i32
  br label %56

56:                                               ; preds = %54, %2, %10, %19, %30, %35, %25, %13, %7
  %57 = phi i32 [ %3, %7 ], [ %3, %10 ], [ %3, %13 ], [ %3, %19 ], [ %3, %25 ], [ %3, %30 ], [ %3, %35 ], [ %3, %2 ], [ %55, %54 ]
  %58 = add nsw i32 %57, 1
  br label %2, !llvm.loop !12

59:                                               ; preds = %2
  ret void
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 0, %3 ], [ %9, %5 ]
  %7 = tail call noundef i32 @_Z5getchv()
  %8 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i64 0, i64 %6
  store i32 %7, i32* %8, align 4, !tbaa !5
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, %4
  br i1 %10, label %11, label %5, !llvm.loop !9

11:                                               ; preds = %5, %0
  %12 = phi i64 [ 0, %0 ], [ %4, %5 ]
  %13 = getelementptr inbounds [32768 x i32], [32768 x i32]* @program, i64 0, i64 %12
  store i32 0, i32* %13, align 4, !tbaa !5
  tail call void @_Z9interpretPi(i32* noundef getelementptr inbounds ([32768 x i32], [32768 x i32]* @program, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
