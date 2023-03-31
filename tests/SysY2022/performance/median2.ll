; ModuleID = 'tests//SysY2022/performance/median2.sy'
source_filename = "tests//SysY2022/performance/median2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [10000000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z20meanless_calculationii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 0
  %4 = icmp sgt i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = add nsw i32 %1, -1
  %8 = add nsw i32 %0, -1
  %9 = call i32 @llvm.umin.i32(i32 %7, i32 %8)
  %10 = add nuw i32 %0, 2
  %11 = mul i32 %9, %10
  %12 = add i32 %11, %0
  %13 = zext i32 %9 to i33
  %14 = add nsw i32 %9, -1
  %15 = zext i32 %14 to i33
  %16 = mul i33 %13, %15
  %17 = lshr i33 %16, 1
  %18 = trunc i33 %17 to i32
  %19 = add i32 %12, %18
  %20 = add i32 %19, 1
  br label %21

21:                                               ; preds = %6, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %6 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4swapPiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !4
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !4
  store i32 %9, i32* %5, align 4, !tbaa !4
  store i32 %6, i32* %8, align 4, !tbaa !4
  %10 = icmp sgt i32 %1, 0
  %11 = icmp sgt i32 %2, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = add nsw i32 %2, -1
  %15 = add nsw i32 %1, -1
  %16 = tail call i32 @llvm.umin.i32(i32 %14, i32 %15) #6
  %17 = add nuw i32 %1, 2
  %18 = mul i32 %16, %17
  %19 = zext i32 %16 to i33
  %20 = add nsw i32 %16, -1
  %21 = zext i32 %20 to i33
  %22 = mul i33 %21, %19
  %23 = lshr i33 %22, 1
  %24 = trunc i33 %23 to i32
  %25 = add nuw i32 %1, 1
  %26 = add i32 %25, %18
  %27 = add i32 %26, %24
  br label %28

28:                                               ; preds = %3, %13
  %29 = phi i32 [ 0, %3 ], [ %27, %13 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6medianPiiii(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  br label %5

5:                                                ; preds = %75, %4
  %6 = phi i32 [ %77, %75 ], [ %1, %4 ]
  %7 = phi i32 [ %11, %75 ], [ %2, %4 ]
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  br label %10

10:                                               ; preds = %5, %69
  %11 = phi i32 [ %38, %69 ], [ %7, %5 ]
  %12 = load i32, i32* %9, align 4, !tbaa !4
  %13 = add nsw i32 %11, 1
  br label %14

14:                                               ; preds = %59, %10
  %15 = phi i32 [ %6, %10 ], [ %57, %59 ]
  %16 = phi i32 [ %13, %10 ], [ %38, %59 ]
  %17 = phi i32 [ 0, %10 ], [ %56, %59 ]
  %18 = icmp slt i32 %15, %16
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = sext i32 %16 to i64
  %21 = sext i32 %15 to i64
  %22 = add i32 %16, %17
  %23 = sub i32 %22, %15
  br label %24

24:                                               ; preds = %19, %31
  %25 = phi i64 [ %20, %19 ], [ %27, %31 ]
  %26 = phi i32 [ %17, %19 ], [ %32, %31 ]
  %27 = add nsw i64 %25, -1
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !4
  %30 = icmp slt i32 %29, %12
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = add nsw i32 %26, 1
  %33 = icmp sgt i64 %27, %21
  br i1 %33, label %24, label %36, !llvm.loop !8

34:                                               ; preds = %24
  %35 = trunc i64 %27 to i32
  br label %36

36:                                               ; preds = %31, %34, %14
  %37 = phi i32 [ %17, %14 ], [ %26, %34 ], [ %23, %31 ]
  %38 = phi i32 [ %16, %14 ], [ %35, %34 ], [ %15, %31 ]
  %39 = icmp slt i32 %15, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = sext i32 %15 to i64
  %42 = sext i32 %38 to i64
  br label %43

43:                                               ; preds = %40, %50
  %44 = phi i64 [ %41, %40 ], [ %46, %50 ]
  %45 = phi i32 [ %37, %40 ], [ %51, %50 ]
  %46 = add nsw i64 %44, 1
  %47 = getelementptr inbounds i32, i32* %0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !4
  %49 = icmp slt i32 %48, %12
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = add nsw i32 %45, -1
  %52 = icmp eq i64 %46, %42
  br i1 %52, label %66, label %43, !llvm.loop !10

53:                                               ; preds = %43
  %54 = trunc i64 %46 to i32
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi i32 [ %37, %36 ], [ %45, %53 ]
  %57 = phi i32 [ %15, %36 ], [ %54, %53 ]
  %58 = icmp eq i32 %57, %38
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds i32, i32* %0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !4
  %63 = sext i32 %38 to i64
  %64 = getelementptr inbounds i32, i32* %0, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !4
  store i32 %65, i32* %61, align 4, !tbaa !4
  store i32 %62, i32* %64, align 4, !tbaa !4
  br label %14, !llvm.loop !11

66:                                               ; preds = %50
  %67 = add i32 %37, %15
  %68 = sub i32 %67, %38
  br label %69

69:                                               ; preds = %55, %66
  %70 = phi i32 [ %68, %66 ], [ %56, %55 ]
  store i32 %12, i32* %9, align 4, !tbaa !4
  %71 = sext i32 %38 to i64
  %72 = getelementptr inbounds i32, i32* %0, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !4
  store i32 %73, i32* %9, align 4, !tbaa !4
  store i32 %12, i32* %72, align 4, !tbaa !4
  %74 = icmp sgt i32 %38, %3
  br i1 %74, label %10, label %75

75:                                               ; preds = %69
  %76 = icmp slt i32 %38, %3
  %77 = add nsw i32 %38, 1
  br i1 %76, label %5, label %78

78:                                               ; preds = %75
  ret i32 %70
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @a, i64 0, i64 0))
  store i32 %1, i32* @n, align 4, !tbaa !4
  tail call void @_Z15_sysy_starttimei(i32 noundef 59)
  %2 = load i32, i32* @n, align 4, !tbaa !4
  %3 = add nsw i32 %2, -1
  %4 = sdiv i32 %2, 2
  br label %5

5:                                                ; preds = %64, %0
  %6 = phi i32 [ %66, %64 ], [ 0, %0 ]
  %7 = phi i32 [ %11, %64 ], [ %3, %0 ]
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @a, i64 0, i64 %8
  br label %10

10:                                               ; preds = %59, %5
  %11 = phi i32 [ %32, %59 ], [ %7, %5 ]
  %12 = load i32, i32* %9, align 4, !tbaa !4
  %13 = add nsw i32 %11, 1
  br label %14

14:                                               ; preds = %50, %10
  %15 = phi i32 [ %6, %10 ], [ %48, %50 ]
  %16 = phi i32 [ %13, %10 ], [ %32, %50 ]
  %17 = icmp sgt i32 %16, %15
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = sext i32 %16 to i64
  %20 = sext i32 %15 to i64
  br label %21

21:                                               ; preds = %27, %18
  %22 = phi i64 [ %19, %18 ], [ %23, %27 ]
  %23 = add nsw i64 %22, -1
  %24 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @a, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !4
  %26 = icmp slt i32 %25, %12
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = icmp sgt i64 %23, %20
  br i1 %28, label %21, label %31, !llvm.loop !8

29:                                               ; preds = %21
  %30 = trunc i64 %23 to i32
  br label %31

31:                                               ; preds = %27, %29, %14
  %32 = phi i32 [ %16, %14 ], [ %30, %29 ], [ %15, %27 ]
  %33 = icmp slt i32 %15, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = sext i32 %15 to i64
  %36 = sext i32 %32 to i64
  br label %37

37:                                               ; preds = %43, %34
  %38 = phi i64 [ %35, %34 ], [ %39, %43 ]
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @a, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !4
  %42 = icmp slt i32 %41, %12
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = icmp eq i64 %39, %36
  br i1 %44, label %59, label %37, !llvm.loop !10

45:                                               ; preds = %37
  %46 = trunc i64 %39 to i32
  br label %47

47:                                               ; preds = %45, %31
  %48 = phi i32 [ %15, %31 ], [ %46, %45 ]
  %49 = icmp eq i32 %48, %32
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @a, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !4
  %54 = sext i32 %32 to i64
  %55 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @a, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !4
  store i32 %56, i32* %52, align 4, !tbaa !4
  store i32 %53, i32* %55, align 4, !tbaa !4
  br label %14, !llvm.loop !11

57:                                               ; preds = %47
  %58 = sext i32 %32 to i64
  br label %59

59:                                               ; preds = %43, %57
  %60 = phi i64 [ %58, %57 ], [ %36, %43 ]
  store i32 %12, i32* %9, align 4, !tbaa !4
  %61 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @a, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !4
  store i32 %62, i32* %9, align 4, !tbaa !4
  store i32 %12, i32* %61, align 4, !tbaa !4
  %63 = icmp sgt i32 %32, %4
  br i1 %63, label %10, label %64

64:                                               ; preds = %59
  %65 = icmp slt i32 %32, %4
  %66 = add nsw i32 %32, 1
  br i1 %65, label %5, label %67

67:                                               ; preds = %64
  tail call void @_Z14_sysy_stoptimei(i32 noundef 61)
  %68 = load i32, i32* @n, align 4, !tbaa !4
  tail call void @_Z8putarrayiPi(i32 noundef %68, i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @a, i64 0, i64 0))
  %69 = load i32, i32* @n, align 4, !tbaa !4
  %70 = sdiv i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [10000000 x i32], [10000000 x i32]* @a, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !4
  %74 = srem i32 %73, 256
  ret i32 %74
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #4

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #4

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #4

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
