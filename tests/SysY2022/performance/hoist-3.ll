; ModuleID = 'tests//SysY2022/performance/hoist-3.sy'
source_filename = "tests//SysY2022/performance/hoist-3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@loopCount = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z4funciiiiiiiiiiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #0 {
  %16 = load i32, i32* @loopCount, align 4, !tbaa !5
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %15
  %19 = add i32 %1, %0
  %20 = add i32 %19, %2
  %21 = add i32 %20, %3
  %22 = add i32 %21, %4
  %23 = add i32 %22, %5
  %24 = add i32 %23, %6
  %25 = add i32 %24, %7
  %26 = add i32 %25, %8
  %27 = add i32 %26, %9
  %28 = add i32 %27, %10
  %29 = add i32 %28, %11
  %30 = add i32 %29, %12
  %31 = add i32 %30, %13
  %32 = add i32 %31, %14
  %33 = mul i32 %32, 100
  %34 = sdiv i32 %33, 100
  %35 = add i32 %16, -1
  %36 = and i32 %16, 3
  %37 = icmp ult i32 %35, 3
  br i1 %37, label %53, label %38

38:                                               ; preds = %18
  %39 = and i32 %16, -4
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ 0, %38 ], [ %50, %40 ]
  %42 = phi i32 [ 0, %38 ], [ %51, %40 ]
  %43 = add nsw i32 %41, %34
  %44 = srem i32 %43, 1500000001
  %45 = add nsw i32 %44, %34
  %46 = srem i32 %45, 1500000001
  %47 = add nsw i32 %46, %34
  %48 = srem i32 %47, 1500000001
  %49 = add nsw i32 %48, %34
  %50 = srem i32 %49, 1500000001
  %51 = add i32 %42, 4
  %52 = icmp eq i32 %51, %39
  br i1 %52, label %53, label %40, !llvm.loop !9

53:                                               ; preds = %40, %18
  %54 = phi i32 [ undef, %18 ], [ %50, %40 ]
  %55 = phi i32 [ 0, %18 ], [ %50, %40 ]
  %56 = icmp eq i32 %36, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53, %57
  %58 = phi i32 [ %61, %57 ], [ %55, %53 ]
  %59 = phi i32 [ %62, %57 ], [ 0, %53 ]
  %60 = add nsw i32 %58, %34
  %61 = srem i32 %60, 1500000001
  %62 = add i32 %59, 1
  %63 = icmp eq i32 %62, %36
  br i1 %63, label %64, label %57, !llvm.loop !11

64:                                               ; preds = %53, %57, %15
  %65 = phi i32 [ 0, %15 ], [ %54, %53 ], [ %61, %57 ]
  ret i32 %65
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @loopCount, align 4, !tbaa !5
  tail call void @_Z15_sysy_starttimei(i32 noundef 121)
  %2 = load i32, i32* @loopCount, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %34

4:                                                ; preds = %0
  %5 = add i32 %2, -1
  %6 = and i32 %2, 3
  %7 = icmp ult i32 %5, 3
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = and i32 %2, -4
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %20, %10 ]
  %12 = phi i32 [ 0, %8 ], [ %21, %10 ]
  %13 = add nsw i32 %11, 15
  %14 = srem i32 %13, 1500000001
  %15 = add nsw i32 %14, 15
  %16 = srem i32 %15, 1500000001
  %17 = add nsw i32 %16, 15
  %18 = srem i32 %17, 1500000001
  %19 = add nsw i32 %18, 15
  %20 = srem i32 %19, 1500000001
  %21 = add i32 %12, 4
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %10, !llvm.loop !9

23:                                               ; preds = %10, %4
  %24 = phi i32 [ undef, %4 ], [ %20, %10 ]
  %25 = phi i32 [ 0, %4 ], [ %20, %10 ]
  %26 = icmp eq i32 %6, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ %31, %27 ], [ %25, %23 ]
  %29 = phi i32 [ %32, %27 ], [ 0, %23 ]
  %30 = add nsw i32 %28, 15
  %31 = srem i32 %30, 1500000001
  %32 = add i32 %29, 1
  %33 = icmp eq i32 %32, %6
  br i1 %33, label %34, label %27, !llvm.loop !13

34:                                               ; preds = %23, %27, %0
  %35 = phi i32 [ 0, %0 ], [ %24, %23 ], [ %31, %27 ]
  tail call void @_Z14_sysy_stoptimei(i32 noundef 123)
  tail call void @_Z6putinti(i32 noundef %35)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
