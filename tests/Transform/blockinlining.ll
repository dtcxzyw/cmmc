; ModuleID = 'tests//Transform/blockinlining.sy'
source_filename = "tests//Transform/blockinlining.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z3faci(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %75, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %66, label %6

6:                                                ; preds = %3
  %7 = and i32 %4, -8
  %8 = sub i32 %0, %7
  %9 = insertelement <4 x i32> poison, i32 %0, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = add <4 x i32> %10, <i32 0, i32 -1, i32 -2, i32 -3>
  %12 = add i32 %7, -8
  %13 = lshr exact i32 %12, 3
  %14 = add nuw nsw i32 %13, 1
  %15 = and i32 %14, 3
  %16 = icmp ult i32 %12, 24
  br i1 %16, label %42, label %17

17:                                               ; preds = %6
  %18 = and i32 %14, 1073741820
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi <4 x i32> [ %11, %17 ], [ %39, %19 ]
  %21 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %17 ], [ %37, %19 ]
  %22 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %17 ], [ %38, %19 ]
  %23 = phi i32 [ 0, %17 ], [ %40, %19 ]
  %24 = add <4 x i32> %20, <i32 -4, i32 -4, i32 -4, i32 -4>
  %25 = mul <4 x i32> %20, %21
  %26 = mul <4 x i32> %24, %22
  %27 = add <4 x i32> %20, <i32 -8, i32 -8, i32 -8, i32 -8>
  %28 = add <4 x i32> %20, <i32 -12, i32 -12, i32 -12, i32 -12>
  %29 = mul <4 x i32> %27, %25
  %30 = mul <4 x i32> %28, %26
  %31 = add <4 x i32> %20, <i32 -16, i32 -16, i32 -16, i32 -16>
  %32 = add <4 x i32> %20, <i32 -20, i32 -20, i32 -20, i32 -20>
  %33 = mul <4 x i32> %31, %29
  %34 = mul <4 x i32> %32, %30
  %35 = add <4 x i32> %20, <i32 -24, i32 -24, i32 -24, i32 -24>
  %36 = add <4 x i32> %20, <i32 -28, i32 -28, i32 -28, i32 -28>
  %37 = mul <4 x i32> %35, %33
  %38 = mul <4 x i32> %36, %34
  %39 = add <4 x i32> %20, <i32 -32, i32 -32, i32 -32, i32 -32>
  %40 = add i32 %23, 4
  %41 = icmp eq i32 %40, %18
  br i1 %41, label %42, label %19, !llvm.loop !5

42:                                               ; preds = %19, %6
  %43 = phi <4 x i32> [ undef, %6 ], [ %37, %19 ]
  %44 = phi <4 x i32> [ undef, %6 ], [ %38, %19 ]
  %45 = phi <4 x i32> [ %11, %6 ], [ %39, %19 ]
  %46 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %37, %19 ]
  %47 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %38, %19 ]
  %48 = icmp eq i32 %15, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42, %49
  %50 = phi <4 x i32> [ %57, %49 ], [ %45, %42 ]
  %51 = phi <4 x i32> [ %55, %49 ], [ %46, %42 ]
  %52 = phi <4 x i32> [ %56, %49 ], [ %47, %42 ]
  %53 = phi i32 [ %58, %49 ], [ 0, %42 ]
  %54 = add <4 x i32> %50, <i32 -4, i32 -4, i32 -4, i32 -4>
  %55 = mul <4 x i32> %50, %51
  %56 = mul <4 x i32> %54, %52
  %57 = add <4 x i32> %50, <i32 -8, i32 -8, i32 -8, i32 -8>
  %58 = add i32 %53, 1
  %59 = icmp eq i32 %58, %15
  br i1 %59, label %60, label %49, !llvm.loop !7

60:                                               ; preds = %49, %42
  %61 = phi <4 x i32> [ %43, %42 ], [ %55, %49 ]
  %62 = phi <4 x i32> [ %44, %42 ], [ %56, %49 ]
  %63 = mul <4 x i32> %62, %61
  %64 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %63)
  %65 = icmp eq i32 %4, %7
  br i1 %65, label %75, label %66

66:                                               ; preds = %3, %60
  %67 = phi i32 [ %0, %3 ], [ %8, %60 ]
  %68 = phi i32 [ 1, %3 ], [ %64, %60 ]
  br label %69

69:                                               ; preds = %66, %69
  %70 = phi i32 [ %72, %69 ], [ %67, %66 ]
  %71 = phi i32 [ %73, %69 ], [ %68, %66 ]
  %72 = add nsw i32 %70, -1
  %73 = mul nsw i32 %70, %71
  %74 = icmp eq i32 %72, 1
  br i1 %74, label %75, label %69, !llvm.loop !9

75:                                               ; preds = %69, %60, %1
  %76 = phi i32 [ 1, %1 ], [ %64, %60 ], [ %73, %69 ]
  ret i32 %76
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %75, label %3

3:                                                ; preds = %0
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %66, label %6

6:                                                ; preds = %3
  %7 = and i32 %4, -8
  %8 = sub i32 %1, %7
  %9 = insertelement <4 x i32> poison, i32 %1, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = add <4 x i32> %10, <i32 0, i32 -1, i32 -2, i32 -3>
  %12 = add i32 %7, -8
  %13 = lshr exact i32 %12, 3
  %14 = add nuw nsw i32 %13, 1
  %15 = and i32 %14, 3
  %16 = icmp ult i32 %12, 24
  br i1 %16, label %42, label %17

17:                                               ; preds = %6
  %18 = and i32 %14, 1073741820
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi <4 x i32> [ %11, %17 ], [ %39, %19 ]
  %21 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %17 ], [ %37, %19 ]
  %22 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %17 ], [ %38, %19 ]
  %23 = phi i32 [ 0, %17 ], [ %40, %19 ]
  %24 = add <4 x i32> %20, <i32 -4, i32 -4, i32 -4, i32 -4>
  %25 = mul <4 x i32> %21, %20
  %26 = mul <4 x i32> %22, %24
  %27 = add <4 x i32> %20, <i32 -8, i32 -8, i32 -8, i32 -8>
  %28 = add <4 x i32> %20, <i32 -12, i32 -12, i32 -12, i32 -12>
  %29 = mul <4 x i32> %25, %27
  %30 = mul <4 x i32> %26, %28
  %31 = add <4 x i32> %20, <i32 -16, i32 -16, i32 -16, i32 -16>
  %32 = add <4 x i32> %20, <i32 -20, i32 -20, i32 -20, i32 -20>
  %33 = mul <4 x i32> %29, %31
  %34 = mul <4 x i32> %30, %32
  %35 = add <4 x i32> %20, <i32 -24, i32 -24, i32 -24, i32 -24>
  %36 = add <4 x i32> %20, <i32 -28, i32 -28, i32 -28, i32 -28>
  %37 = mul <4 x i32> %33, %35
  %38 = mul <4 x i32> %34, %36
  %39 = add <4 x i32> %20, <i32 -32, i32 -32, i32 -32, i32 -32>
  %40 = add i32 %23, 4
  %41 = icmp eq i32 %40, %18
  br i1 %41, label %42, label %19, !llvm.loop !11

42:                                               ; preds = %19, %6
  %43 = phi <4 x i32> [ undef, %6 ], [ %37, %19 ]
  %44 = phi <4 x i32> [ undef, %6 ], [ %38, %19 ]
  %45 = phi <4 x i32> [ %11, %6 ], [ %39, %19 ]
  %46 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %37, %19 ]
  %47 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %38, %19 ]
  %48 = icmp eq i32 %15, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42, %49
  %50 = phi <4 x i32> [ %57, %49 ], [ %45, %42 ]
  %51 = phi <4 x i32> [ %55, %49 ], [ %46, %42 ]
  %52 = phi <4 x i32> [ %56, %49 ], [ %47, %42 ]
  %53 = phi i32 [ %58, %49 ], [ 0, %42 ]
  %54 = add <4 x i32> %50, <i32 -4, i32 -4, i32 -4, i32 -4>
  %55 = mul <4 x i32> %51, %50
  %56 = mul <4 x i32> %52, %54
  %57 = add <4 x i32> %50, <i32 -8, i32 -8, i32 -8, i32 -8>
  %58 = add i32 %53, 1
  %59 = icmp eq i32 %58, %15
  br i1 %59, label %60, label %49, !llvm.loop !12

60:                                               ; preds = %49, %42
  %61 = phi <4 x i32> [ %43, %42 ], [ %55, %49 ]
  %62 = phi <4 x i32> [ %44, %42 ], [ %56, %49 ]
  %63 = mul <4 x i32> %62, %61
  %64 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %63)
  %65 = icmp eq i32 %4, %7
  br i1 %65, label %75, label %66

66:                                               ; preds = %3, %60
  %67 = phi i32 [ %1, %3 ], [ %8, %60 ]
  %68 = phi i32 [ 1, %3 ], [ %64, %60 ]
  br label %69

69:                                               ; preds = %66, %69
  %70 = phi i32 [ %72, %69 ], [ %67, %66 ]
  %71 = phi i32 [ %73, %69 ], [ %68, %66 ]
  %72 = add nsw i32 %70, -1
  %73 = mul nsw i32 %71, %70
  %74 = icmp eq i32 %72, 1
  br i1 %74, label %75, label %69, !llvm.loop !13

75:                                               ; preds = %69, %60, %0
  %76 = phi i32 [ 1, %0 ], [ %64, %60 ], [ %73, %69 ]
  ret i32 %76
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !10, !6}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !10, !6}
