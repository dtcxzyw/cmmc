; ModuleID = 'tests//SysY2022/performance/instruction-combining-2.sy'
source_filename = "tests//SysY2022/performance/instruction-combining-2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@loopCount = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4funcii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, 10000
  %4 = sub i32 %3, %1
  ret i32 %4
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @loopCount, align 4, !tbaa !4
  tail call void @_Z15_sysy_starttimei(i32 noundef 10015)
  %2 = load i32, i32* @loopCount, align 4, !tbaa !4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %0
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = and i32 %2, -2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %20, %9 ]
  %11 = phi i32 [ 0, %7 ], [ %19, %9 ]
  %12 = phi i32 [ 0, %7 ], [ %21, %9 ]
  %13 = udiv i32 %10, 60
  %14 = add nsw i32 %13, %11
  %15 = srem i32 %14, 536854529
  %16 = add i32 %10, 60
  %17 = udiv i32 %16, 60
  %18 = add nsw i32 %17, %15
  %19 = srem i32 %18, 536854529
  %20 = add i32 %10, 120
  %21 = add i32 %12, 2
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %9, !llvm.loop !8

23:                                               ; preds = %9
  %24 = udiv i32 %20, 60
  br label %25

25:                                               ; preds = %23, %4
  %26 = phi i32 [ undef, %4 ], [ %19, %23 ]
  %27 = phi i32 [ 0, %4 ], [ %24, %23 ]
  %28 = phi i32 [ 0, %4 ], [ %19, %23 ]
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i32 %27, %28
  %32 = srem i32 %31, 536854529
  br label %33

33:                                               ; preds = %30, %25, %0
  %34 = phi i32 [ 0, %0 ], [ %26, %25 ], [ %32, %30 ]
  tail call void @_Z14_sysy_stoptimei(i32 noundef 10030)
  tail call void @_Z6putinti(i32 noundef %34)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
