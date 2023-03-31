; ModuleID = 'tests//SysY2022/functional/80_chaos_token.sy'
source_filename = "tests//SysY2022/functional/80_chaos_token.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__HELLO = dso_local local_unnamed_addr global <{ [28 x i32], [72 x i32] }> <{ [28 x i32] [i32 87, i32 101, i32 108, i32 99, i32 111, i32 109, i32 101, i32 32, i32 116, i32 111, i32 32, i32 116, i32 104, i32 101, i32 32, i32 74, i32 97, i32 112, i32 97, i32 114, i32 105, i32 32, i32 80, i32 97, i32 114, i32 107, i32 33, i32 10], [72 x i32] zeroinitializer }>, align 16
@N4__mE___ = dso_local local_unnamed_addr global <{ <{ i32, i32, i32, i32, i32, i32, i32, [43 x i32] }>, <{ i32, i32, i32, i32, i32, [45 x i32] }>, <{ [12 x i32], [38 x i32] }>, <{ [8 x i32], [42 x i32] }>, <{ [16 x i32], [34 x i32] }>, <{ [14 x i32], [36 x i32] }> }> <{ <{ i32, i32, i32, i32, i32, i32, i32, [43 x i32] }> <{ i32 83, i32 97, i32 97, i32 98, i32 97, i32 114, i32 117, [43 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [45 x i32] }> <{ i32 75, i32 97, i32 98, i32 97, i32 110, [45 x i32] zeroinitializer }>, <{ [12 x i32], [38 x i32] }> <{ [12 x i32] [i32 72, i32 97, i32 115, i32 104, i32 105, i32 98, i32 105, i32 114, i32 111, i32 107, i32 111, i32 117], [38 x i32] zeroinitializer }>, <{ [8 x i32], [42 x i32] }> <{ [8 x i32] [i32 65, i32 114, i32 97, i32 105, i32 103, i32 117, i32 109, i32 97], [42 x i32] zeroinitializer }>, <{ [16 x i32], [34 x i32] }> <{ [16 x i32] [i32 72, i32 117, i32 110, i32 98, i32 111, i32 114, i32 117, i32 116, i32 111, i32 32, i32 80, i32 101, i32 110, i32 103, i32 105, i32 110], [34 x i32] zeroinitializer }>, <{ [14 x i32], [36 x i32] }> <{ [14 x i32] [i32 84, i32 97, i32 105, i32 114, i32 105, i32 107, i32 117, i32 32, i32 79, i32 111, i32 107, i32 97, i32 109, i32 105], [36 x i32] zeroinitializer }> }>, align 16
@saY_HeI10_To = dso_local local_unnamed_addr global <{ [15 x i32], [25 x i32] }> <{ [15 x i32] [i32 32, i32 115, i32 97, i32 121, i32 115, i32 32, i32 104, i32 101, i32 108, i32 108, i32 111, i32 32, i32 116, i32 111, i32 32], [25 x i32] zeroinitializer }>, align 16
@RET = dso_local local_unnamed_addr global [5 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0], align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6putstrPi(i32* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, i32* %0, align 4, !tbaa !4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %7, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %9, %4 ], [ %2, %1 ]
  tail call void @_Z5putchi(i32 noundef %6)
  %7 = add nuw i64 %5, 1
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %4, !llvm.loop !8

11:                                               ; preds = %4
  %12 = trunc i64 %7 to i32
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ 0, %1 ], [ %12, %11 ]
  ret i32 %14
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = load i32, i32* getelementptr inbounds (<{ [28 x i32], [72 x i32] }>, <{ [28 x i32], [72 x i32] }>* @__HELLO, i64 0, i32 0, i64 0), align 16, !tbaa !4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %6, %3 ], [ 0, %0 ]
  %5 = phi i32 [ %8, %3 ], [ %1, %0 ]
  tail call void @_Z5putchi(i32 noundef %5)
  %6 = add nuw i64 %4, 1
  %7 = getelementptr inbounds <{ [28 x i32], [72 x i32] }>, <{ [28 x i32], [72 x i32] }>* @__HELLO, i64 0, i32 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %3, !llvm.loop !8

10:                                               ; preds = %3, %0
  br label %11

11:                                               ; preds = %10, %61
  %12 = phi i32 [ %64, %61 ], [ 0, %10 ]
  %13 = trunc i32 %12 to i8
  %14 = sdiv i8 %13, 6
  %15 = srem i8 %13, 6
  %16 = icmp eq i8 %14, %15
  br i1 %16, label %61, label %17

17:                                               ; preds = %11
  %18 = zext i8 %14 to i64
  %19 = getelementptr inbounds [6 x [50 x i32]], [6 x [50 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, i32, i32, [43 x i32] }>, <{ i32, i32, i32, i32, i32, [45 x i32] }>, <{ [12 x i32], [38 x i32] }>, <{ [8 x i32], [42 x i32] }>, <{ [16 x i32], [34 x i32] }>, <{ [14 x i32], [36 x i32] }> }>* @N4__mE___ to [6 x [50 x i32]]*), i64 0, i64 %18, i64 0
  %20 = load i32, i32* %19, align 8, !tbaa !4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ %25, %22 ], [ 0, %17 ]
  %24 = phi i32 [ %27, %22 ], [ %20, %17 ]
  tail call void @_Z5putchi(i32 noundef %24)
  %25 = add nuw i64 %23, 1
  %26 = getelementptr inbounds [6 x [50 x i32]], [6 x [50 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, i32, i32, [43 x i32] }>, <{ i32, i32, i32, i32, i32, [45 x i32] }>, <{ [12 x i32], [38 x i32] }>, <{ [8 x i32], [42 x i32] }>, <{ [16 x i32], [34 x i32] }>, <{ [14 x i32], [36 x i32] }> }>* @N4__mE___ to [6 x [50 x i32]]*), i64 0, i64 %18, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %22, !llvm.loop !8

29:                                               ; preds = %22, %17
  %30 = load i32, i32* getelementptr inbounds (<{ [15 x i32], [25 x i32] }>, <{ [15 x i32], [25 x i32] }>* @saY_HeI10_To, i64 0, i32 0, i64 0), align 16, !tbaa !4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %35, %32 ], [ 0, %29 ]
  %34 = phi i32 [ %37, %32 ], [ %30, %29 ]
  tail call void @_Z5putchi(i32 noundef %34)
  %35 = add nuw i64 %33, 1
  %36 = getelementptr inbounds <{ [15 x i32], [25 x i32] }>, <{ [15 x i32], [25 x i32] }>* @saY_HeI10_To, i64 0, i32 0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %32, !llvm.loop !8

39:                                               ; preds = %32, %29
  %40 = zext i8 %15 to i64
  %41 = getelementptr inbounds [6 x [50 x i32]], [6 x [50 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, i32, i32, [43 x i32] }>, <{ i32, i32, i32, i32, i32, [45 x i32] }>, <{ [12 x i32], [38 x i32] }>, <{ [8 x i32], [42 x i32] }>, <{ [16 x i32], [34 x i32] }>, <{ [14 x i32], [36 x i32] }> }>* @N4__mE___ to [6 x [50 x i32]]*), i64 0, i64 %40, i64 0
  %42 = load i32, i32* %41, align 8, !tbaa !4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39, %44
  %45 = phi i64 [ %47, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %49, %44 ], [ %42, %39 ]
  tail call void @_Z5putchi(i32 noundef %46)
  %47 = add nuw i64 %45, 1
  %48 = getelementptr inbounds [6 x [50 x i32]], [6 x [50 x i32]]* bitcast (<{ <{ i32, i32, i32, i32, i32, i32, i32, [43 x i32] }>, <{ i32, i32, i32, i32, i32, [45 x i32] }>, <{ [12 x i32], [38 x i32] }>, <{ [8 x i32], [42 x i32] }>, <{ [16 x i32], [34 x i32] }>, <{ [14 x i32], [36 x i32] }> }>* @N4__mE___ to [6 x [50 x i32]]*), i64 0, i64 %40, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %44, !llvm.loop !8

51:                                               ; preds = %44, %39
  %52 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @RET, i64 0, i64 0), align 16, !tbaa !4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %57, %54 ], [ 0, %51 ]
  %56 = phi i32 [ %59, %54 ], [ %52, %51 ]
  tail call void @_Z5putchi(i32 noundef %56)
  %57 = add nuw i64 %55, 1
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* @RET, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %54, !llvm.loop !8

61:                                               ; preds = %54, %51, %11
  %62 = mul nsw i32 %12, 17
  %63 = add nsw i32 %62, 23
  %64 = srem i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %11

66:                                               ; preds = %61
  ret i32 0
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
