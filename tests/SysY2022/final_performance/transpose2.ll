; ModuleID = 'tests//SysY2022/final_performance/transpose2.sy'
source_filename = "tests//SysY2022/final_performance/transpose2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@matrix = dso_local local_unnamed_addr global [20000000 x i32] zeroinitializer, align 16
@a = dso_local global [100000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z9transposeiPii(i32 noundef %0, i32* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sdiv i32 %0, %2
  %5 = icmp sgt i32 %4, 0
  %6 = icmp sgt i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %59

8:                                                ; preds = %3
  %9 = zext i32 %4 to i64
  %10 = zext i32 %2 to i64
  %11 = zext i32 %4 to i64
  %12 = zext i32 %2 to i64
  %13 = and i64 %12, 1
  %14 = icmp eq i32 %2, 1
  %15 = and i64 %12, 4294967294
  %16 = icmp eq i64 %13, 0
  br label %17

17:                                               ; preds = %8, %56
  %18 = phi i64 [ 0, %8 ], [ %57, %56 ]
  %19 = mul nsw i64 %18, %10
  br i1 %14, label %45, label %20

20:                                               ; preds = %17, %41
  %21 = phi i64 [ %42, %41 ], [ 0, %17 ]
  %22 = phi i64 [ %43, %41 ], [ 0, %17 ]
  %23 = icmp ult i64 %18, %21
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = add nuw nsw i64 %21, %19
  %26 = getelementptr inbounds i32, i32* %1, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !4
  %28 = mul nsw i64 %21, %9
  %29 = add nuw nsw i64 %28, %18
  %30 = getelementptr inbounds i32, i32* %1, i64 %29
  store i32 %27, i32* %30, align 4, !tbaa !4
  store i32 %27, i32* %26, align 4, !tbaa !4
  br label %31

31:                                               ; preds = %20, %24
  %32 = or i64 %21, 1
  %33 = icmp ugt i64 %18, %21
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = add nuw nsw i64 %32, %19
  %36 = getelementptr inbounds i32, i32* %1, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !4
  %38 = mul nsw i64 %32, %9
  %39 = add nuw nsw i64 %38, %18
  %40 = getelementptr inbounds i32, i32* %1, i64 %39
  store i32 %37, i32* %40, align 4, !tbaa !4
  store i32 %37, i32* %36, align 4, !tbaa !4
  br label %41

41:                                               ; preds = %34, %31
  %42 = add nuw nsw i64 %21, 2
  %43 = add i64 %22, 2
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %45, label %20, !llvm.loop !8

45:                                               ; preds = %41, %17
  %46 = phi i64 [ 0, %17 ], [ %42, %41 ]
  %47 = icmp ult i64 %18, %46
  %48 = select i1 %16, i1 true, i1 %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %46, %19
  %51 = getelementptr inbounds i32, i32* %1, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !4
  %53 = mul nsw i64 %46, %9
  %54 = add nuw nsw i64 %53, %18
  %55 = getelementptr inbounds i32, i32* %1, i64 %54
  store i32 %52, i32* %55, align 4, !tbaa !4
  store i32 %52, i32* %51, align 4, !tbaa !4
  br label %56

56:                                               ; preds = %49, %45
  %57 = add nuw nsw i64 %18, 1
  %58 = icmp eq i64 %57, %11
  br i1 %58, label %59, label %17, !llvm.loop !10

59:                                               ; preds = %56, %3
  ret i32 -1
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([100000 x i32], [100000 x i32]* @a, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 28)
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  %6 = add nsw i64 %5, -1
  %7 = and i64 %5, 3
  %8 = icmp ult i64 %6, 3
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = and i64 %5, 4294967292
  br label %26

11:                                               ; preds = %26, %4
  %12 = phi i64 [ 0, %4 ], [ %40, %26 ]
  %13 = icmp eq i64 %7, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %14
  %15 = phi i64 [ %19, %14 ], [ %12, %11 ]
  %16 = phi i64 [ %20, %14 ], [ 0, %11 ]
  %17 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %15
  %18 = trunc i64 %15 to i32
  store i32 %18, i32* %17, align 4, !tbaa !4
  %19 = add nuw nsw i64 %15, 1
  %20 = add i64 %16, 1
  %21 = icmp eq i64 %20, %7
  br i1 %21, label %22, label %14, !llvm.loop !11

22:                                               ; preds = %11, %14, %0
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %135

24:                                               ; preds = %22
  %25 = zext i32 %2 to i64
  br label %50

26:                                               ; preds = %26, %9
  %27 = phi i64 [ 0, %9 ], [ %40, %26 ]
  %28 = phi i64 [ 0, %9 ], [ %41, %26 ]
  %29 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %27
  %30 = trunc i64 %27 to i32
  store i32 %30, i32* %29, align 16, !tbaa !4
  %31 = or i64 %27, 1
  %32 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %31
  %33 = trunc i64 %31 to i32
  store i32 %33, i32* %32, align 4, !tbaa !4
  %34 = or i64 %27, 2
  %35 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %34
  %36 = trunc i64 %34 to i32
  store i32 %36, i32* %35, align 8, !tbaa !4
  %37 = or i64 %27, 3
  %38 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %37
  %39 = trunc i64 %37 to i32
  store i32 %39, i32* %38, align 4, !tbaa !4
  %40 = add nuw nsw i64 %27, 4
  %41 = add i64 %28, 4
  %42 = icmp eq i64 %41, %10
  br i1 %42, label %11, label %26, !llvm.loop !13

43:                                               ; preds = %80
  br i1 %23, label %44, label %135

44:                                               ; preds = %43
  %45 = add nsw i64 %25, -1
  %46 = and i64 %25, 3
  %47 = icmp ult i64 %45, 3
  br i1 %47, label %117, label %48

48:                                               ; preds = %44
  %49 = and i64 %25, 4294967292
  br label %83

50:                                               ; preds = %24, %80
  %51 = phi i64 [ 0, %24 ], [ %81, %80 ]
  %52 = getelementptr inbounds [100000 x i32], [100000 x i32]* @a, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !4
  %54 = sdiv i32 %1, %53
  %55 = icmp sgt i32 %54, 0
  %56 = icmp sgt i32 %53, 0
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = zext i32 %54 to i64
  %60 = zext i32 %53 to i64
  br label %61

61:                                               ; preds = %77, %58
  %62 = phi i64 [ 0, %58 ], [ %78, %77 ]
  %63 = mul nuw nsw i64 %62, %60
  br label %64

64:                                               ; preds = %74, %61
  %65 = phi i64 [ 0, %61 ], [ %75, %74 ]
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = add nuw nsw i64 %65, %63
  %69 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !4
  %71 = mul nuw nsw i64 %65, %59
  %72 = add nuw nsw i64 %71, %62
  %73 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %72
  store i32 %70, i32* %73, align 4, !tbaa !4
  store i32 %70, i32* %69, align 4, !tbaa !4
  br label %74

74:                                               ; preds = %67, %64
  %75 = add nuw nsw i64 %65, 1
  %76 = icmp eq i64 %75, %60
  br i1 %76, label %77, label %64, !llvm.loop !8

77:                                               ; preds = %74
  %78 = add nuw nsw i64 %62, 1
  %79 = icmp eq i64 %78, %59
  br i1 %79, label %80, label %61, !llvm.loop !10

80:                                               ; preds = %77, %50
  %81 = add nuw nsw i64 %51, 1
  %82 = icmp eq i64 %81, %25
  br i1 %82, label %43, label %50, !llvm.loop !14

83:                                               ; preds = %83, %48
  %84 = phi i64 [ 0, %48 ], [ %114, %83 ]
  %85 = phi i32 [ 0, %48 ], [ %113, %83 ]
  %86 = phi i64 [ 0, %48 ], [ %115, %83 ]
  %87 = trunc i64 %84 to i32
  %88 = mul nsw i32 %87, %87
  %89 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %84
  %90 = load i32, i32* %89, align 16, !tbaa !4
  %91 = mul nsw i32 %88, %90
  %92 = add nsw i32 %91, %85
  %93 = or i64 %84, 1
  %94 = trunc i64 %93 to i32
  %95 = mul nsw i32 %94, %94
  %96 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %93
  %97 = load i32, i32* %96, align 4, !tbaa !4
  %98 = mul nsw i32 %95, %97
  %99 = add nsw i32 %98, %92
  %100 = or i64 %84, 2
  %101 = trunc i64 %100 to i32
  %102 = mul nsw i32 %101, %101
  %103 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %100
  %104 = load i32, i32* %103, align 8, !tbaa !4
  %105 = mul nsw i32 %102, %104
  %106 = add nsw i32 %105, %99
  %107 = or i64 %84, 3
  %108 = trunc i64 %107 to i32
  %109 = mul nsw i32 %108, %108
  %110 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %107
  %111 = load i32, i32* %110, align 4, !tbaa !4
  %112 = mul nsw i32 %109, %111
  %113 = add nsw i32 %112, %106
  %114 = add nuw nsw i64 %84, 4
  %115 = add i64 %86, 4
  %116 = icmp eq i64 %115, %49
  br i1 %116, label %117, label %83, !llvm.loop !15

117:                                              ; preds = %83, %44
  %118 = phi i32 [ undef, %44 ], [ %113, %83 ]
  %119 = phi i64 [ 0, %44 ], [ %114, %83 ]
  %120 = phi i32 [ 0, %44 ], [ %113, %83 ]
  %121 = icmp eq i64 %46, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %117, %122
  %123 = phi i64 [ %132, %122 ], [ %119, %117 ]
  %124 = phi i32 [ %131, %122 ], [ %120, %117 ]
  %125 = phi i64 [ %133, %122 ], [ 0, %117 ]
  %126 = trunc i64 %123 to i32
  %127 = mul nsw i32 %126, %126
  %128 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %123
  %129 = load i32, i32* %128, align 4, !tbaa !4
  %130 = mul nsw i32 %127, %129
  %131 = add nsw i32 %130, %124
  %132 = add nuw nsw i64 %123, 1
  %133 = add i64 %125, 1
  %134 = icmp eq i64 %133, %46
  br i1 %134, label %135, label %122, !llvm.loop !16

135:                                              ; preds = %117, %122, %22, %43
  %136 = phi i32 [ 0, %43 ], [ 0, %22 ], [ %118, %117 ], [ %131, %122 ]
  %137 = tail call i32 @llvm.abs.i32(i32 %136, i1 true)
  tail call void @_Z14_sysy_stoptimei(i32 noundef 47)
  tail call void @_Z6putinti(i32 noundef %137)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #2

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !12}
