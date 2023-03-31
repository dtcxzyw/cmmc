; ModuleID = 'tests//Extra/string.sy'
source_filename = "tests//Extra/string.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z6concatPKcS0_Pc(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i8* nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, i8* %0, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %17

6:                                                ; preds = %17
  %7 = trunc i64 %21 to i32
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %6 ]
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %2, i64 %10
  store i8 32, i8* %11, align 1, !tbaa !5
  %12 = add i32 %9, 1
  %13 = load i8, i8* %1, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  %16 = zext i32 %12 to i64
  br label %31

17:                                               ; preds = %3, %17
  %18 = phi i64 [ %21, %17 ], [ 0, %3 ]
  %19 = phi i8 [ %23, %17 ], [ %4, %3 ]
  %20 = getelementptr inbounds i8, i8* %2, i64 %18
  store i8 %19, i8* %20, align 1, !tbaa !5
  %21 = add nuw nsw i64 %18, 1
  %22 = getelementptr inbounds i8, i8* %0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %6, label %17, !llvm.loop !8

25:                                               ; preds = %31
  %26 = trunc i64 %37 to i32
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi i32 [ %12, %8 ], [ %26, %25 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %2, i64 %29
  store i8 0, i8* %30, align 1, !tbaa !5
  ret void

31:                                               ; preds = %15, %31
  %32 = phi i64 [ 0, %15 ], [ %36, %31 ]
  %33 = phi i64 [ %16, %15 ], [ %37, %31 ]
  %34 = phi i8 [ %13, %15 ], [ %39, %31 ]
  %35 = getelementptr inbounds i8, i8* %2, i64 %33
  store i8 %34, i8* %35, align 1, !tbaa !5
  %36 = add nuw nsw i64 %32, 1
  %37 = add nuw i64 %33, 1
  %38 = getelementptr inbounds i8, i8* %1, i64 %36
  %39 = load i8, i8* %38, align 1, !tbaa !5
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %25, label %31, !llvm.loop !10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z8BKDRHashPKc(i8* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i8, i8* %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %6, %1
  %5 = phi i32 [ 0, %1 ], [ %12, %6 ]
  ret i32 %5

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %13, %6 ], [ 0, %1 ]
  %8 = phi i8 [ %15, %6 ], [ %2, %1 ]
  %9 = phi i32 [ %12, %6 ], [ 0, %1 ]
  %10 = mul nsw i32 %9, 131
  %11 = sext i8 %8 to i32
  %12 = add nsw i32 %10, %11
  %13 = add nuw nsw i64 %7, 1
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %4, label %6, !llvm.loop !11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [512 x i8], align 16
  %2 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %2) #4
  %3 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 1
  store i8 101, i8* %3, align 1, !tbaa !5
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 2
  store i8 108, i8* %4, align 2, !tbaa !5
  %5 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 3
  store i8 108, i8* %5, align 1, !tbaa !5
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 4
  store i8 111, i8* %6, align 4, !tbaa !5
  %7 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 5
  store i8 32, i8* %7, align 1, !tbaa !5
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 6
  store i8 87, i8* %8, align 2, !tbaa !5
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 7
  store i8 111, i8* %9, align 1, !tbaa !5
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 8
  store i8 114, i8* %10, align 8, !tbaa !5
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 9
  store i8 108, i8* %11, align 1, !tbaa !5
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 10
  store i8 100, i8* %12, align 2, !tbaa !5
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 11
  store i8 0, i8* %13, align 1, !tbaa !5
  br label %14

14:                                               ; preds = %14, %0
  %15 = phi i64 [ 0, %0 ], [ %21, %14 ]
  %16 = phi i8 [ 72, %0 ], [ %23, %14 ]
  %17 = phi i32 [ 0, %0 ], [ %20, %14 ]
  %18 = mul nsw i32 %17, 131
  %19 = sext i8 %16 to i32
  %20 = add nsw i32 %18, %19
  %21 = add nuw nsw i64 %15, 1
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !11

25:                                               ; preds = %14
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %2) #4
  ret i32 %20
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
