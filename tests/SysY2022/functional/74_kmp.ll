; ModuleID = 'tests//SysY2022/functional/74_kmp.sy'
source_filename = "tests//SysY2022/functional/74_kmp.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z8get_nextPiS_(i32* nocapture noundef readonly %0, i32* nocapture noundef %1) local_unnamed_addr #0 {
  store i32 -1, i32* %1, align 4, !tbaa !4
  %3 = load i32, i32* %0, align 4, !tbaa !4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %2, %24
  %6 = phi i32 [ %29, %24 ], [ %3, %2 ]
  %7 = phi i32 [ %27, %24 ], [ -1, %2 ]
  %8 = phi i32 [ %26, %24 ], [ 0, %2 ]
  %9 = icmp eq i32 %7, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !4
  %14 = icmp eq i32 %6, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10, %5
  %16 = add nsw i32 %7, 1
  %17 = add nsw i32 %8, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %1, i64 %18
  store i32 %16, i32* %19, align 4, !tbaa !4
  br label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds i32, i32* %1, i64 %11
  %22 = load i32, i32* %21, align 4, !tbaa !4
  %23 = sext i32 %8 to i64
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i64 [ %23, %20 ], [ %18, %15 ]
  %26 = phi i32 [ %8, %20 ], [ %17, %15 ]
  %27 = phi i32 [ %22, %20 ], [ %16, %15 ]
  %28 = getelementptr inbounds i32, i32* %0, i64 %25
  %29 = load i32, i32* %28, align 4, !tbaa !4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %5, !llvm.loop !8

31:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z3KMPPiS_(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [4096 x i32], align 16
  %4 = bitcast [4096 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %4) #6
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* %3, i64 0, i64 0
  store i32 -1, i32* %5, align 16, !tbaa !4
  %6 = load i32, i32* %0, align 4, !tbaa !4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %2, %27
  %9 = phi i32 [ %32, %27 ], [ %6, %2 ]
  %10 = phi i32 [ %30, %27 ], [ -1, %2 ]
  %11 = phi i32 [ %29, %27 ], [ 0, %2 ]
  %12 = icmp eq i32 %10, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = sext i32 %10 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !4
  %17 = icmp eq i32 %9, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13, %8
  %19 = add nsw i32 %10, 1
  %20 = add nsw i32 %11, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4096 x i32], [4096 x i32]* %3, i64 0, i64 %21
  store i32 %19, i32* %22, align 4, !tbaa !4
  br label %27

23:                                               ; preds = %13
  %24 = getelementptr inbounds [4096 x i32], [4096 x i32]* %3, i64 0, i64 %14
  %25 = load i32, i32* %24, align 4, !tbaa !4
  %26 = sext i32 %11 to i64
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i64 [ %26, %23 ], [ %21, %18 ]
  %29 = phi i32 [ %11, %23 ], [ %20, %18 ]
  %30 = phi i32 [ %25, %23 ], [ %19, %18 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %28
  %32 = load i32, i32* %31, align 4, !tbaa !4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %8, !llvm.loop !8

34:                                               ; preds = %27, %2
  %35 = load i32, i32* %1, align 4, !tbaa !4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %34, %65
  %38 = phi i32 [ %68, %65 ], [ %6, %34 ]
  %39 = phi i32 [ %63, %65 ], [ %35, %34 ]
  %40 = phi i32 [ %60, %65 ], [ 0, %34 ]
  %41 = phi i32 [ %59, %65 ], [ 0, %34 ]
  %42 = icmp eq i32 %38, %39
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = add nsw i32 %41, 1
  %45 = add nsw i32 %40, 1
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %58

50:                                               ; preds = %37
  %51 = sext i32 %41 to i64
  %52 = getelementptr inbounds [4096 x i32], [4096 x i32]* %3, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !4
  %54 = icmp eq i32 %53, -1
  %55 = select i1 %54, i32 0, i32 %53
  %56 = zext i1 %54 to i32
  %57 = add nsw i32 %40, %56
  br label %58

58:                                               ; preds = %50, %43
  %59 = phi i32 [ %44, %43 ], [ %55, %50 ]
  %60 = phi i32 [ %45, %43 ], [ %57, %50 ]
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %1, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65, !llvm.loop !10

65:                                               ; preds = %58
  %66 = sext i32 %59 to i64
  %67 = getelementptr inbounds i32, i32* %0, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !4
  br label %37

69:                                               ; preds = %43, %58, %34
  %70 = phi i32 [ -1, %34 ], [ -1, %58 ], [ %45, %43 ]
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %4) #6
  ret i32 %70
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z8read_strPi(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %7, %2 ], [ 0, %1 ]
  %4 = tail call noundef i32 @_Z5getchv()
  %5 = getelementptr inbounds i32, i32* %0, i64 %3
  store i32 %4, i32* %5, align 4, !tbaa !4
  %6 = icmp eq i32 %4, 10
  %7 = add nuw i64 %3, 1
  br i1 %6, label %8, label %2, !llvm.loop !11

8:                                                ; preds = %2
  %9 = trunc i64 %3 to i32
  %10 = and i64 %3, 4294967295
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  store i32 0, i32* %11, align 4, !tbaa !4
  ret i32 %9
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  %1 = alloca [4096 x i32], align 16
  %2 = alloca [4096 x i32], align 16
  %3 = alloca [4096 x i32], align 16
  %4 = bitcast [4096 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %4) #6
  %5 = bitcast [4096 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %5) #6
  br label %6

6:                                                ; preds = %6, %0
  %7 = phi i64 [ %11, %6 ], [ 0, %0 ]
  %8 = tail call noundef i32 @_Z5getchv()
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* %2, i64 0, i64 %7
  store i32 %8, i32* %9, align 4, !tbaa !4
  %10 = icmp eq i32 %8, 10
  %11 = add nuw i64 %7, 1
  br i1 %10, label %12, label %6, !llvm.loop !11

12:                                               ; preds = %6
  %13 = and i64 %7, 4294967295
  %14 = getelementptr inbounds [4096 x i32], [4096 x i32]* %2, i64 0, i64 %13
  store i32 0, i32* %14, align 4, !tbaa !4
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ %20, %15 ], [ 0, %12 ]
  %17 = tail call noundef i32 @_Z5getchv()
  %18 = getelementptr inbounds [4096 x i32], [4096 x i32]* %3, i64 0, i64 %16
  store i32 %17, i32* %18, align 4, !tbaa !4
  %19 = icmp eq i32 %17, 10
  %20 = add nuw i64 %16, 1
  br i1 %19, label %21, label %15, !llvm.loop !11

21:                                               ; preds = %15
  %22 = getelementptr inbounds [4096 x i32], [4096 x i32]* %2, i64 0, i64 0
  %23 = getelementptr inbounds [4096 x i32], [4096 x i32]* %3, i64 0, i64 0
  %24 = and i64 %16, 4294967295
  %25 = getelementptr inbounds [4096 x i32], [4096 x i32]* %3, i64 0, i64 %24
  store i32 0, i32* %25, align 4, !tbaa !4
  %26 = bitcast [4096 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %26) #6
  %27 = getelementptr inbounds [4096 x i32], [4096 x i32]* %1, i64 0, i64 0
  store i32 -1, i32* %27, align 16, !tbaa !4
  %28 = load i32, i32* %22, align 16, !tbaa !4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %21, %49
  %31 = phi i32 [ %54, %49 ], [ %28, %21 ]
  %32 = phi i32 [ %52, %49 ], [ -1, %21 ]
  %33 = phi i32 [ %51, %49 ], [ 0, %21 ]
  %34 = icmp eq i32 %32, -1
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = sext i32 %32 to i64
  %37 = getelementptr inbounds [4096 x i32], [4096 x i32]* %2, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !4
  %39 = icmp eq i32 %31, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %30
  %41 = add nsw i32 %32, 1
  %42 = add nsw i32 %33, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4096 x i32], [4096 x i32]* %1, i64 0, i64 %43
  store i32 %41, i32* %44, align 4, !tbaa !4
  br label %49

45:                                               ; preds = %35
  %46 = getelementptr inbounds [4096 x i32], [4096 x i32]* %1, i64 0, i64 %36
  %47 = load i32, i32* %46, align 4, !tbaa !4
  %48 = sext i32 %33 to i64
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i64 [ %48, %45 ], [ %43, %40 ]
  %51 = phi i32 [ %33, %45 ], [ %42, %40 ]
  %52 = phi i32 [ %47, %45 ], [ %41, %40 ]
  %53 = getelementptr inbounds [4096 x i32], [4096 x i32]* %2, i64 0, i64 %50
  %54 = load i32, i32* %53, align 4, !tbaa !4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %30, !llvm.loop !8

56:                                               ; preds = %49, %21
  %57 = load i32, i32* %23, align 16, !tbaa !4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %56, %87
  %60 = phi i32 [ %90, %87 ], [ %28, %56 ]
  %61 = phi i32 [ %85, %87 ], [ %57, %56 ]
  %62 = phi i32 [ %82, %87 ], [ 0, %56 ]
  %63 = phi i32 [ %81, %87 ], [ 0, %56 ]
  %64 = icmp eq i32 %60, %61
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = add nsw i32 %63, 1
  %67 = add nsw i32 %62, 1
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [4096 x i32], [4096 x i32]* %2, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %91, label %80

72:                                               ; preds = %59
  %73 = sext i32 %63 to i64
  %74 = getelementptr inbounds [4096 x i32], [4096 x i32]* %1, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !4
  %76 = icmp eq i32 %75, -1
  %77 = select i1 %76, i32 0, i32 %75
  %78 = zext i1 %76 to i32
  %79 = add nsw i32 %62, %78
  br label %80

80:                                               ; preds = %72, %65
  %81 = phi i32 [ %66, %65 ], [ %77, %72 ]
  %82 = phi i32 [ %67, %65 ], [ %79, %72 ]
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4096 x i32], [4096 x i32]* %3, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !llvm.loop !10

87:                                               ; preds = %80
  %88 = sext i32 %81 to i64
  %89 = getelementptr inbounds [4096 x i32], [4096 x i32]* %2, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !4
  br label %59

91:                                               ; preds = %65, %80, %56
  %92 = phi i32 [ -1, %56 ], [ %67, %65 ], [ -1, %80 ]
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %26) #6
  tail call void @_Z6putinti(i32 noundef %92)
  tail call void @_Z5putchi(i32 noundef 10)
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %4) #6
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
