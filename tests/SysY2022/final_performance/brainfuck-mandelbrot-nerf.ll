; ModuleID = 'tests//SysY2022/final_performance/brainfuck-mandelbrot-nerf.sy'
source_filename = "tests//SysY2022/final_performance/brainfuck-mandelbrot-nerf.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@program_length = dso_local local_unnamed_addr global i32 0, align 4
@program = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16
@tape = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16
@input = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16
@input_length = dso_local local_unnamed_addr global i32 0, align 4
@output = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16
@output_length = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z11get_bf_charv() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = tail call noundef i32 @_Z5getchv()
  switch i32 %2, label %1 [
    i32 93, label %3
    i32 91, label %3
    i32 62, label %3
    i32 60, label %3
    i32 46, label %3
    i32 45, label %3
    i32 44, label %3
    i32 43, label %3
    i32 35, label %3
  ], !llvm.loop !4

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare noundef i32 @_Z5getchv() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12read_programv() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = tail call noundef i32 @_Z5getchv()
  switch i32 %2, label %1 [
    i32 35, label %16
    i32 43, label %3
    i32 44, label %3
    i32 45, label %3
    i32 46, label %3
    i32 60, label %3
    i32 62, label %3
    i32 91, label %3
    i32 93, label %3
  ]

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %4 = load i32, i32* @program_length, align 4, !tbaa !6
  br label %5

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %14, %12 ], [ %4, %3 ]
  %7 = phi i32 [ %11, %12 ], [ %2, %3 ]
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [65536 x i32], [65536 x i32]* @program, i64 0, i64 %8
  store i32 %7, i32* %9, align 4, !tbaa !6
  br label %10

10:                                               ; preds = %10, %5
  %11 = tail call noundef i32 @_Z5getchv()
  switch i32 %11, label %10 [
    i32 93, label %12
    i32 91, label %12
    i32 62, label %12
    i32 60, label %12
    i32 46, label %12
    i32 45, label %12
    i32 44, label %12
    i32 43, label %12
    i32 35, label %12
  ], !llvm.loop !4

12:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10
  %13 = load i32, i32* @program_length, align 4, !tbaa !6
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @program_length, align 4, !tbaa !6
  %15 = icmp eq i32 %11, 35
  br i1 %15, label %16, label %5, !llvm.loop !10

16:                                               ; preds = %1, %12
  %17 = tail call noundef i32 @_Z5getchv()
  %18 = icmp eq i32 %17, 105
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = tail call noundef i32 @_Z6getintv()
  store i32 %20, i32* @input_length, align 4, !tbaa !6
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = load i32, i32* @input_length, align 4, !tbaa !6
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19, %24
  %25 = phi i64 [ %28, %24 ], [ 0, %19 ]
  %26 = tail call noundef i32 @_Z5getchv()
  %27 = getelementptr inbounds [65536 x i32], [65536 x i32]* @input, i64 0, i64 %25
  store i32 %26, i32* %27, align 4, !tbaa !6
  %28 = add nuw nsw i64 %25, 1
  %29 = load i32, i32* @input_length, align 4, !tbaa !6
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %24, label %32, !llvm.loop !11

32:                                               ; preds = %24, %19, %16
  ret void
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z11run_programv() local_unnamed_addr #3 {
  %1 = alloca [512 x i32], align 16
  %2 = bitcast [512 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %2) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %2, i8 0, i64 2048, i1 false)
  store i32 0, i32* @output_length, align 4, !tbaa !6
  %3 = load i32, i32* @program_length, align 4, !tbaa !6
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %91

5:                                                ; preds = %0
  %6 = load i32, i32* @input_length, align 4
  br label %7

7:                                                ; preds = %5, %83
  %8 = phi i32 [ 0, %5 ], [ %89, %83 ]
  %9 = phi i32 [ 0, %5 ], [ %87, %83 ]
  %10 = phi i32 [ 0, %5 ], [ %86, %83 ]
  %11 = phi i32 [ 0, %5 ], [ %85, %83 ]
  %12 = phi i32 [ 0, %5 ], [ %84, %83 ]
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds [65536 x i32], [65536 x i32]* @program, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !6
  switch i32 %15, label %83 [
    i32 62, label %16
    i32 60, label %18
    i32 43, label %20
    i32 45, label %25
    i32 91, label %30
    i32 93, label %52
    i32 46, label %62
    i32 44, label %69
  ]

16:                                               ; preds = %7
  %17 = add nsw i32 %9, 1
  br label %83

18:                                               ; preds = %7
  %19 = add nsw i32 %9, -1
  br label %83

20:                                               ; preds = %7
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !6
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4, !tbaa !6
  br label %83

25:                                               ; preds = %7
  %26 = sext i32 %9 to i64
  %27 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !6
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4, !tbaa !6
  br label %83

30:                                               ; preds = %7
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = sext i32 %11 to i64
  %37 = getelementptr inbounds [512 x i32], [512 x i32]* %1, i64 0, i64 %36
  store i32 %8, i32* %37, align 4, !tbaa !6
  %38 = add nsw i32 %11, 1
  br label %83

39:                                               ; preds = %30, %39
  %40 = phi i64 [ %42, %39 ], [ %13, %30 ]
  %41 = phi i32 [ %50, %39 ], [ 1, %30 ]
  %42 = add i64 %40, 1
  %43 = getelementptr inbounds [65536 x i32], [65536 x i32]* @program, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !6
  %45 = icmp eq i32 %44, 93
  %46 = sext i1 %45 to i32
  %47 = add nsw i32 %41, %46
  %48 = icmp eq i32 %44, 91
  %49 = zext i1 %48 to i32
  %50 = add nuw nsw i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %81, label %39

52:                                               ; preds = %7
  %53 = sext i32 %9 to i64
  %54 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !6
  %56 = icmp eq i32 %55, 0
  %57 = add nsw i32 %11, -1
  br i1 %56, label %83, label %58

58:                                               ; preds = %52
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [512 x i32], [512 x i32]* %1, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !6
  br label %83

62:                                               ; preds = %7
  %63 = sext i32 %9 to i64
  %64 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !6
  %66 = sext i32 %12 to i64
  %67 = getelementptr inbounds [65536 x i32], [65536 x i32]* @output, i64 0, i64 %66
  store i32 %65, i32* %67, align 4, !tbaa !6
  %68 = add nsw i32 %12, 1
  store i32 %68, i32* @output_length, align 4, !tbaa !6
  br label %83

69:                                               ; preds = %7
  %70 = icmp slt i32 %10, %6
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = sext i32 %9 to i64
  %73 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %72
  store i32 0, i32* %73, align 4, !tbaa !6
  br label %83

74:                                               ; preds = %69
  %75 = sext i32 %10 to i64
  %76 = getelementptr inbounds [65536 x i32], [65536 x i32]* @input, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !6
  %78 = sext i32 %9 to i64
  %79 = getelementptr inbounds [65536 x i32], [65536 x i32]* @tape, i64 0, i64 %78
  store i32 %77, i32* %79, align 4, !tbaa !6
  %80 = add nsw i32 %10, 1
  br label %83

81:                                               ; preds = %39
  %82 = trunc i64 %42 to i32
  br label %83

83:                                               ; preds = %52, %81, %7, %58, %35, %18, %25, %74, %71, %62, %20, %16
  %84 = phi i32 [ %12, %16 ], [ %12, %18 ], [ %12, %20 ], [ %12, %25 ], [ %68, %62 ], [ %12, %71 ], [ %12, %74 ], [ %12, %35 ], [ %12, %58 ], [ %12, %7 ], [ %12, %81 ], [ %12, %52 ]
  %85 = phi i32 [ %11, %16 ], [ %11, %18 ], [ %11, %20 ], [ %11, %25 ], [ %11, %62 ], [ %11, %71 ], [ %11, %74 ], [ %38, %35 ], [ %11, %58 ], [ %11, %7 ], [ %11, %81 ], [ %57, %52 ]
  %86 = phi i32 [ %10, %16 ], [ %10, %18 ], [ %10, %20 ], [ %10, %25 ], [ %10, %62 ], [ %10, %71 ], [ %80, %74 ], [ %10, %35 ], [ %10, %58 ], [ %10, %7 ], [ %10, %81 ], [ %10, %52 ]
  %87 = phi i32 [ %17, %16 ], [ %19, %18 ], [ %9, %20 ], [ %9, %25 ], [ %9, %62 ], [ %9, %71 ], [ %9, %74 ], [ %9, %35 ], [ %9, %58 ], [ %9, %7 ], [ %9, %81 ], [ %9, %52 ]
  %88 = phi i32 [ %8, %16 ], [ %8, %18 ], [ %8, %20 ], [ %8, %25 ], [ %8, %62 ], [ %8, %71 ], [ %8, %74 ], [ %8, %35 ], [ %61, %58 ], [ %8, %7 ], [ %82, %81 ], [ %8, %52 ]
  %89 = add nsw i32 %88, 1
  %90 = icmp slt i32 %89, %3
  br i1 %90, label %7, label %91, !llvm.loop !12

91:                                               ; preds = %83, %0
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7output_v() local_unnamed_addr #0 {
  %1 = load i32, i32* @output_length, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %7, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [65536 x i32], [65536 x i32]* @output, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !6
  tail call void @_Z5putchi(i32 noundef %6)
  %7 = add nuw nsw i64 %4, 1
  %8 = load i32, i32* @output_length, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %3, label %11, !llvm.loop !13

11:                                               ; preds = %3, %0
  ret void
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  tail call void @_Z12read_programv()
  tail call void @_Z15_sysy_starttimei(i32 noundef 116)
  tail call void @_Z11run_programv()
  tail call void @_Z14_sysy_stoptimei(i32 noundef 118)
  %1 = load i32, i32* @output_length, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %7, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [65536 x i32], [65536 x i32]* @output, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !6
  tail call void @_Z5putchi(i32 noundef %6)
  %7 = add nuw nsw i64 %4, 1
  %8 = load i32, i32* @output_length, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %3, label %11, !llvm.loop !13

11:                                               ; preds = %3, %0
  ret i32 0
}

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
