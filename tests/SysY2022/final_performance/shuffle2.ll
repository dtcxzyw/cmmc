; ModuleID = 'tests//SysY2022/final_performance/shuffle2.sy'
source_filename = "tests//SysY2022/final_performance/shuffle2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@hashmod = dso_local local_unnamed_addr global i32 0, align 4
@bucket = dso_local local_unnamed_addr global [10000000 x i32] zeroinitializer, align 16
@head = dso_local local_unnamed_addr global [10000000 x i32] zeroinitializer, align 16
@next = dso_local local_unnamed_addr global [10000000 x i32] zeroinitializer, align 16
@nextvalue = dso_local local_unnamed_addr global [10000000 x i32] zeroinitializer, align 16
@key = dso_local local_unnamed_addr global [10000000 x i32] zeroinitializer, align 16
@value = dso_local local_unnamed_addr global [10000000 x i32] zeroinitializer, align 16
@cnt = dso_local local_unnamed_addr global i32 0, align 4
@keys = dso_local global [10000000 x i32] zeroinitializer, align 16
@values = dso_local global [10000000 x i32] zeroinitializer, align 16
@requests = dso_local global [10000000 x i32] zeroinitializer, align 16
@ans = dso_local global [10000000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z4hashi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @hashmod, align 4, !tbaa !4
  %3 = srem i32 %0, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z6insertii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, i32* @hashmod, align 4, !tbaa !4
  %4 = srem i32 %0, %3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @head, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* @cnt, align 4, !tbaa !4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @cnt, align 4, !tbaa !4
  store i32 %11, i32* %6, align 4, !tbaa !4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @key, i64 0, i64 %12
  store i32 %0, i32* %13, align 4, !tbaa !4
  %14 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @value, i64 0, i64 %12
  store i32 %1, i32* %14, align 4, !tbaa !4
  %15 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @next, i64 0, i64 %12
  store i32 0, i32* %15, align 4, !tbaa !4
  %16 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %12
  store i32 0, i32* %16, align 4, !tbaa !4
  br label %43

17:                                               ; preds = %2, %31
  %18 = phi i32 [ %33, %31 ], [ %7, %2 ]
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @key, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !4
  %22 = icmp eq i32 %21, %0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* @cnt, align 4, !tbaa !4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @cnt, align 4, !tbaa !4
  %26 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %19
  %27 = load i32, i32* %26, align 4, !tbaa !4
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %28
  store i32 %27, i32* %29, align 4, !tbaa !4
  store i32 %25, i32* %26, align 4, !tbaa !4
  %30 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @value, i64 0, i64 %28
  store i32 %1, i32* %30, align 4, !tbaa !4
  br label %43

31:                                               ; preds = %17
  %32 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @next, i64 0, i64 %19
  %33 = load i32, i32* %32, align 4, !tbaa !4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %17, !llvm.loop !8

35:                                               ; preds = %31
  %36 = load i32, i32* @cnt, align 4, !tbaa !4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @cnt, align 4, !tbaa !4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @next, i64 0, i64 %38
  store i32 %7, i32* %39, align 4, !tbaa !4
  store i32 %37, i32* %6, align 4, !tbaa !4
  %40 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @key, i64 0, i64 %38
  store i32 %0, i32* %40, align 4, !tbaa !4
  %41 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @value, i64 0, i64 %38
  store i32 %1, i32* %41, align 4, !tbaa !4
  %42 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %38
  store i32 0, i32* %42, align 4, !tbaa !4
  br label %43

43:                                               ; preds = %23, %35, %9
  %44 = phi i32 [ 0, %9 ], [ 1, %23 ], [ 0, %35 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6reducei(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @hashmod, align 4, !tbaa !4
  %3 = srem i32 %0, %2
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @head, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1, %24
  %9 = phi i32 [ %26, %24 ], [ %6, %1 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @key, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !4
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8, %14
  %15 = phi i32 [ %22, %14 ], [ %9, %8 ]
  %16 = phi i32 [ %20, %14 ], [ 0, %8 ]
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @value, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !4
  %20 = add nsw i32 %19, %16
  %21 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %17
  %22 = load i32, i32* %21, align 4, !tbaa !4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %14, !llvm.loop !10

24:                                               ; preds = %8
  %25 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @next, i64 0, i64 %10
  %26 = load i32, i32* %25, align 4, !tbaa !4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %8, !llvm.loop !11

28:                                               ; preds = %24, %14, %1
  %29 = phi i32 [ 0, %1 ], [ %20, %14 ], [ 0, %24 ]
  ret i32 %29
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @hashmod, align 4, !tbaa !4
  %2 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @keys, i64 0, i64 0))
  %3 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @values, i64 0, i64 0))
  %4 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @requests, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 78)
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @cnt, align 4, !tbaa !4
  %8 = load i32, i32* @hashmod, align 4, !tbaa !4
  %9 = zext i32 %2 to i64
  br label %15

10:                                               ; preds = %58, %0
  %11 = icmp sgt i32 %4, 0
  br i1 %11, label %12, label %96

12:                                               ; preds = %10
  %13 = load i32, i32* @hashmod, align 4, !tbaa !4
  %14 = zext i32 %4 to i64
  br label %62

15:                                               ; preds = %6, %58
  %16 = phi i64 [ 0, %6 ], [ %60, %58 ]
  %17 = phi i32 [ %7, %6 ], [ %59, %58 ]
  %18 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @keys, i64 0, i64 %16
  %19 = load i32, i32* %18, align 4, !tbaa !4
  %20 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @values, i64 0, i64 %16
  %21 = load i32, i32* %20, align 4, !tbaa !4
  %22 = srem i32 %19, %8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @head, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = add nsw i32 %17, 1
  store i32 %28, i32* @cnt, align 4, !tbaa !4
  store i32 %28, i32* %24, align 4, !tbaa !4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @key, i64 0, i64 %29
  store i32 %19, i32* %30, align 4, !tbaa !4
  %31 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @value, i64 0, i64 %29
  store i32 %21, i32* %31, align 4, !tbaa !4
  %32 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @next, i64 0, i64 %29
  store i32 0, i32* %32, align 4, !tbaa !4
  %33 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %29
  store i32 0, i32* %33, align 4, !tbaa !4
  br label %58

34:                                               ; preds = %15, %47
  %35 = phi i32 [ %49, %47 ], [ %25, %15 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @key, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !4
  %39 = icmp eq i32 %38, %19
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = add nsw i32 %17, 1
  store i32 %41, i32* @cnt, align 4, !tbaa !4
  %42 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %36
  %43 = load i32, i32* %42, align 4, !tbaa !4
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %44
  store i32 %43, i32* %45, align 4, !tbaa !4
  store i32 %41, i32* %42, align 4, !tbaa !4
  %46 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @value, i64 0, i64 %44
  store i32 %21, i32* %46, align 4, !tbaa !4
  br label %58

47:                                               ; preds = %34
  %48 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @next, i64 0, i64 %36
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %34, !llvm.loop !8

51:                                               ; preds = %47
  %52 = add nsw i32 %17, 1
  store i32 %52, i32* @cnt, align 4, !tbaa !4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @next, i64 0, i64 %53
  store i32 %25, i32* %54, align 4, !tbaa !4
  store i32 %52, i32* %24, align 4, !tbaa !4
  %55 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @key, i64 0, i64 %53
  store i32 %19, i32* %55, align 4, !tbaa !4
  %56 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @value, i64 0, i64 %53
  store i32 %21, i32* %56, align 4, !tbaa !4
  %57 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %53
  store i32 0, i32* %57, align 4, !tbaa !4
  br label %58

58:                                               ; preds = %27, %40, %51
  %59 = phi i32 [ %28, %27 ], [ %41, %40 ], [ %52, %51 ]
  %60 = add nuw nsw i64 %16, 1
  %61 = icmp eq i64 %60, %9
  br i1 %61, label %10, label %15, !llvm.loop !12

62:                                               ; preds = %12, %91
  %63 = phi i64 [ 0, %12 ], [ %94, %91 ]
  %64 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @requests, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !4
  %66 = srem i32 %65, %13
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @head, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %62, %87
  %72 = phi i32 [ %89, %87 ], [ %69, %62 ]
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @key, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !4
  %76 = icmp eq i32 %75, %65
  br i1 %76, label %77, label %87

77:                                               ; preds = %71, %77
  %78 = phi i32 [ %85, %77 ], [ %72, %71 ]
  %79 = phi i32 [ %83, %77 ], [ 0, %71 ]
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @value, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !4
  %83 = add nsw i32 %82, %79
  %84 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @nextvalue, i64 0, i64 %80
  %85 = load i32, i32* %84, align 4, !tbaa !4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %77, !llvm.loop !10

87:                                               ; preds = %71
  %88 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @next, i64 0, i64 %73
  %89 = load i32, i32* %88, align 4, !tbaa !4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %71, !llvm.loop !11

91:                                               ; preds = %87, %77, %62
  %92 = phi i32 [ 0, %62 ], [ %83, %77 ], [ 0, %87 ]
  %93 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @ans, i64 0, i64 %63
  store i32 %92, i32* %93, align 4, !tbaa !4
  %94 = add nuw nsw i64 %63, 1
  %95 = icmp eq i64 %94, %14
  br i1 %95, label %96, label %62, !llvm.loop !13

96:                                               ; preds = %91, %10
  tail call void @_Z14_sysy_stoptimei(i32 noundef 90)
  tail call void @_Z8putarrayiPi(i32 noundef %4, i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @ans, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #3

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #3

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #3

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!13 = distinct !{!13, !9}
