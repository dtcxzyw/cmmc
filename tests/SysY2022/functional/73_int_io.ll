; ModuleID = 'tests//SysY2022/functional/73_int_io.sy'
source_filename = "tests//SysY2022/functional/73_int_io.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z9my_getintv() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = tail call noundef i32 @_Z5getchv()
  %3 = add i32 %2, -58
  %4 = icmp ult i32 %3, -10
  br i1 %4, label %1, label %5, !llvm.loop !5

5:                                                ; preds = %1
  %6 = add nsw i32 %2, -48
  %7 = tail call noundef i32 @_Z5getchv()
  %8 = add i32 %7, -48
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %10, label %18

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %16, %10 ], [ %8, %5 ]
  %12 = phi i32 [ %14, %10 ], [ %6, %5 ]
  %13 = mul nsw i32 %12, 10
  %14 = add nsw i32 %11, %13
  %15 = tail call noundef i32 @_Z5getchv()
  %16 = add i32 %15, -48
  %17 = icmp ult i32 %16, 10
  br i1 %17, label %10, label %18, !llvm.loop !7

18:                                               ; preds = %10, %5
  %19 = phi i32 [ %6, %5 ], [ %14, %10 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare noundef i32 @_Z5getchv() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9my_putinti(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i32], align 16
  %3 = bitcast [16 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #4
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %10, label %26

5:                                                ; preds = %10
  %6 = trunc i64 %17 to i32
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = and i64 %17, 4294967295
  br label %19

10:                                               ; preds = %1, %10
  %11 = phi i64 [ %17, %10 ], [ 0, %1 ]
  %12 = phi i32 [ %16, %10 ], [ %0, %1 ]
  %13 = urem i32 %12, 10
  %14 = or i32 %13, 48
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %11
  store i32 %14, i32* %15, align 4, !tbaa !8
  %16 = udiv i32 %12, 10
  %17 = add nuw i64 %11, 1
  %18 = icmp ult i32 %12, 10
  br i1 %18, label %5, label %10, !llvm.loop !12

19:                                               ; preds = %8, %19
  %20 = phi i64 [ %9, %8 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = and i64 %21, 4294967295
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !8
  tail call void @_Z5putchi(i32 noundef %24)
  %25 = icmp ugt i64 %20, 1
  br i1 %25, label %19, label %26, !llvm.loop !13

26:                                               ; preds = %19, %1, %5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #4
  ret void
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [16 x i32], align 16
  br label %2

2:                                                ; preds = %2, %0
  %3 = tail call noundef i32 @_Z5getchv()
  %4 = add i32 %3, -58
  %5 = icmp ult i32 %4, -10
  br i1 %5, label %2, label %6, !llvm.loop !5

6:                                                ; preds = %2
  %7 = add nsw i32 %3, -48
  %8 = tail call noundef i32 @_Z5getchv()
  %9 = add i32 %8, -48
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %11, label %19

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %17, %11 ], [ %9, %6 ]
  %13 = phi i32 [ %15, %11 ], [ %7, %6 ]
  %14 = mul nsw i32 %13, 10
  %15 = add nsw i32 %14, %12
  %16 = tail call noundef i32 @_Z5getchv()
  %17 = add i32 %16, -48
  %18 = icmp ult i32 %17, 10
  br i1 %18, label %11, label %19, !llvm.loop !7

19:                                               ; preds = %11, %6
  %20 = phi i32 [ %7, %6 ], [ %15, %11 ]
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = bitcast [16 x i32]* %1 to i8*
  br label %24

24:                                               ; preds = %22, %67
  %25 = phi i32 [ %20, %22 ], [ %68, %67 ]
  br label %26

26:                                               ; preds = %24, %26
  %27 = tail call noundef i32 @_Z5getchv()
  %28 = add i32 %27, -58
  %29 = icmp ult i32 %28, -10
  br i1 %29, label %26, label %30, !llvm.loop !5

30:                                               ; preds = %26
  %31 = add nsw i32 %27, -48
  %32 = tail call noundef i32 @_Z5getchv()
  %33 = add i32 %32, -48
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %43

35:                                               ; preds = %30, %35
  %36 = phi i32 [ %41, %35 ], [ %33, %30 ]
  %37 = phi i32 [ %39, %35 ], [ %31, %30 ]
  %38 = mul nsw i32 %37, 10
  %39 = add nsw i32 %38, %36
  %40 = tail call noundef i32 @_Z5getchv()
  %41 = add i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %35, label %43, !llvm.loop !7

43:                                               ; preds = %35, %30
  %44 = phi i32 [ %31, %30 ], [ %39, %35 ]
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %23) #4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %51, label %67

46:                                               ; preds = %51
  %47 = trunc i64 %58 to i32
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = and i64 %58, 4294967295
  br label %60

51:                                               ; preds = %43, %51
  %52 = phi i64 [ %58, %51 ], [ 0, %43 ]
  %53 = phi i32 [ %57, %51 ], [ %44, %43 ]
  %54 = urem i32 %53, 10
  %55 = or i32 %54, 48
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %52
  store i32 %55, i32* %56, align 4, !tbaa !8
  %57 = udiv i32 %53, 10
  %58 = add nuw i64 %52, 1
  %59 = icmp ult i32 %53, 10
  br i1 %59, label %46, label %51, !llvm.loop !12

60:                                               ; preds = %60, %49
  %61 = phi i64 [ %50, %49 ], [ %62, %60 ]
  %62 = add nsw i64 %61, -1
  %63 = and i64 %62, 4294967295
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !8
  tail call void @_Z5putchi(i32 noundef %65)
  %66 = icmp ugt i64 %61, 1
  br i1 %66, label %60, label %67, !llvm.loop !13

67:                                               ; preds = %60, %43, %46
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %23) #4
  tail call void @_Z5putchi(i32 noundef 10)
  %68 = add nsw i32 %25, -1
  %69 = icmp sgt i32 %25, 1
  br i1 %69, label %24, label %70, !llvm.loop !14

70:                                               ; preds = %67, %19
  ret i32 0
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
