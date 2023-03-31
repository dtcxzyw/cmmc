; ModuleID = 'tests//SysY2022/final_performance/02_mv2.sy'
source_filename = "tests//SysY2022/final_performance/02_mv2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x = dso_local local_unnamed_addr global i32 0, align 4
@A = dso_local local_unnamed_addr global [2010 x [2010 x i32]] zeroinitializer, align 16
@B = dso_local local_unnamed_addr global [2010 x i32] zeroinitializer, align 16
@C = dso_local global [2010 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z2mviPA2010_iPiS1_(i32 noundef %0, [2010 x i32]* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32* nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %60

6:                                                ; preds = %4
  %7 = bitcast i32* %3 to i8*
  %8 = zext i32 %0 to i64
  %9 = shl nuw nsw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 %9, i1 false), !tbaa !5
  %10 = zext i32 %0 to i64
  %11 = and i64 %10, 1
  %12 = icmp eq i32 %0, 1
  %13 = and i64 %10, 4294967294
  %14 = icmp eq i64 %11, 0
  br label %15

15:                                               ; preds = %6, %57
  %16 = phi i64 [ 0, %6 ], [ %58, %57 ]
  %17 = getelementptr inbounds i32, i32* %3, i64 %16
  br i1 %12, label %45, label %18

18:                                               ; preds = %15, %41
  %19 = phi i64 [ %42, %41 ], [ 0, %15 ]
  %20 = phi i64 [ %43, %41 ], [ 0, %15 ]
  %21 = getelementptr inbounds [2010 x i32], [2010 x i32]* %1, i64 %16, i64 %19
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %17, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %2, i64 %19
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = mul nsw i32 %27, %22
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %17, align 4, !tbaa !5
  br label %30

30:                                               ; preds = %18, %24
  %31 = or i64 %19, 1
  %32 = getelementptr inbounds [2010 x i32], [2010 x i32]* %1, i64 %16, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %17, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %2, i64 %31
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = mul nsw i32 %38, %33
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %17, align 4, !tbaa !5
  br label %41

41:                                               ; preds = %35, %30
  %42 = add nuw nsw i64 %19, 2
  %43 = add i64 %20, 2
  %44 = icmp eq i64 %43, %13
  br i1 %44, label %45, label %18, !llvm.loop !9

45:                                               ; preds = %41, %15
  %46 = phi i64 [ 0, %15 ], [ %42, %41 ]
  br i1 %14, label %57, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds [2010 x i32], [2010 x i32]* %1, i64 %16, i64 %46
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %17, align 4, !tbaa !5
  %53 = getelementptr inbounds i32, i32* %2, i64 %46
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = mul nsw i32 %54, %49
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %17, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %47, %51, %45
  %58 = add nuw nsw i64 %16, 1
  %59 = icmp eq i64 %58, %10
  br i1 %59, label %60, label %15, !llvm.loop !11

60:                                               ; preds = %57, %4
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %13
  %6 = phi i64 [ 0, %3 ], [ %14, %13 ]
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = tail call noundef i32 @_Z6getintv()
  %10 = getelementptr inbounds [2010 x [2010 x i32]], [2010 x [2010 x i32]]* @A, i64 0, i64 %6, i64 %8
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, %4
  br i1 %12, label %13, label %7, !llvm.loop !12

13:                                               ; preds = %7
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, %4
  br i1 %15, label %16, label %5, !llvm.loop !13

16:                                               ; preds = %13
  br i1 %2, label %18, label %17

17:                                               ; preds = %16, %0
  tail call void @_Z15_sysy_starttimei(i32 noundef 59)
  br label %134

18:                                               ; preds = %16
  %19 = zext i32 %1 to i64
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %24, %20 ]
  %22 = tail call noundef i32 @_Z6getintv()
  %23 = getelementptr inbounds [2010 x i32], [2010 x i32]* @B, i64 0, i64 %21
  store i32 %22, i32* %23, align 4, !tbaa !5
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %19
  br i1 %25, label %26, label %20, !llvm.loop !14

26:                                               ; preds = %20
  tail call void @_Z15_sysy_starttimei(i32 noundef 59)
  %27 = shl nuw nsw i64 %19, 2
  br i1 %2, label %28, label %134

28:                                               ; preds = %26
  %29 = add nsw i64 %4, -1
  %30 = and i64 %4, 1
  %31 = icmp eq i64 %29, 0
  %32 = and i64 %4, 4294967294
  %33 = icmp eq i64 %30, 0
  %34 = and i64 %4, 1
  %35 = icmp eq i64 %29, 0
  %36 = and i64 %4, 4294967294
  %37 = icmp eq i64 %34, 0
  br label %38

38:                                               ; preds = %28, %131
  %39 = phi i32 [ %132, %131 ], [ 0, %28 ]
  tail call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([2010 x i32]* @C to i8*), i8 0, i64 %27, i1 false) #4, !tbaa !5
  br label %40

40:                                               ; preds = %82, %38
  %41 = phi i64 [ 0, %38 ], [ %83, %82 ]
  %42 = getelementptr inbounds [2010 x i32], [2010 x i32]* @C, i64 0, i64 %41
  br i1 %31, label %70, label %43

43:                                               ; preds = %40, %66
  %44 = phi i64 [ %67, %66 ], [ 0, %40 ]
  %45 = phi i64 [ %68, %66 ], [ 0, %40 ]
  %46 = getelementptr inbounds [2010 x [2010 x i32]], [2010 x [2010 x i32]]* @A, i64 0, i64 %41, i64 %44
  %47 = load i32, i32* %46, align 8, !tbaa !5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %42, align 4, !tbaa !5
  %51 = getelementptr inbounds [2010 x i32], [2010 x i32]* @B, i64 0, i64 %44
  %52 = load i32, i32* %51, align 8, !tbaa !5
  %53 = mul nsw i32 %52, %47
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %42, align 4, !tbaa !5
  br label %55

55:                                               ; preds = %49, %43
  %56 = or i64 %44, 1
  %57 = getelementptr inbounds [2010 x [2010 x i32]], [2010 x [2010 x i32]]* @A, i64 0, i64 %41, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %42, align 4, !tbaa !5
  %62 = getelementptr inbounds [2010 x i32], [2010 x i32]* @B, i64 0, i64 %56
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = mul nsw i32 %63, %58
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %42, align 4, !tbaa !5
  br label %66

66:                                               ; preds = %60, %55
  %67 = add nuw nsw i64 %44, 2
  %68 = add i64 %45, 2
  %69 = icmp eq i64 %68, %32
  br i1 %69, label %70, label %43, !llvm.loop !9

70:                                               ; preds = %66, %40
  %71 = phi i64 [ 0, %40 ], [ %67, %66 ]
  br i1 %33, label %82, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds [2010 x [2010 x i32]], [2010 x [2010 x i32]]* @A, i64 0, i64 %41, i64 %71
  %74 = load i32, i32* %73, align 4, !tbaa !5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %42, align 4, !tbaa !5
  %78 = getelementptr inbounds [2010 x i32], [2010 x i32]* @B, i64 0, i64 %71
  %79 = load i32, i32* %78, align 4, !tbaa !5
  %80 = mul nsw i32 %79, %74
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %42, align 4, !tbaa !5
  br label %82

82:                                               ; preds = %72, %76, %70
  %83 = add nuw nsw i64 %41, 1
  %84 = icmp eq i64 %83, %19
  br i1 %84, label %85, label %40, !llvm.loop !11

85:                                               ; preds = %82
  tail call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([2010 x i32]* @B to i8*), i8 0, i64 %27, i1 false) #4, !tbaa !5
  br label %86

86:                                               ; preds = %128, %85
  %87 = phi i64 [ 0, %85 ], [ %129, %128 ]
  %88 = getelementptr inbounds [2010 x i32], [2010 x i32]* @B, i64 0, i64 %87
  br i1 %35, label %116, label %89

89:                                               ; preds = %86, %112
  %90 = phi i64 [ %113, %112 ], [ 0, %86 ]
  %91 = phi i64 [ %114, %112 ], [ 0, %86 ]
  %92 = getelementptr inbounds [2010 x [2010 x i32]], [2010 x [2010 x i32]]* @A, i64 0, i64 %87, i64 %90
  %93 = load i32, i32* %92, align 8, !tbaa !5
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %88, align 4, !tbaa !5
  %97 = getelementptr inbounds [2010 x i32], [2010 x i32]* @C, i64 0, i64 %90
  %98 = load i32, i32* %97, align 8, !tbaa !5
  %99 = mul nsw i32 %98, %93
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %88, align 4, !tbaa !5
  br label %101

101:                                              ; preds = %95, %89
  %102 = or i64 %90, 1
  %103 = getelementptr inbounds [2010 x [2010 x i32]], [2010 x [2010 x i32]]* @A, i64 0, i64 %87, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !5
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %88, align 4, !tbaa !5
  %108 = getelementptr inbounds [2010 x i32], [2010 x i32]* @C, i64 0, i64 %102
  %109 = load i32, i32* %108, align 4, !tbaa !5
  %110 = mul nsw i32 %109, %104
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %88, align 4, !tbaa !5
  br label %112

112:                                              ; preds = %106, %101
  %113 = add nuw nsw i64 %90, 2
  %114 = add i64 %91, 2
  %115 = icmp eq i64 %114, %36
  br i1 %115, label %116, label %89, !llvm.loop !9

116:                                              ; preds = %112, %86
  %117 = phi i64 [ 0, %86 ], [ %113, %112 ]
  br i1 %37, label %128, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds [2010 x [2010 x i32]], [2010 x [2010 x i32]]* @A, i64 0, i64 %87, i64 %117
  %120 = load i32, i32* %119, align 4, !tbaa !5
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %88, align 4, !tbaa !5
  %124 = getelementptr inbounds [2010 x i32], [2010 x i32]* @C, i64 0, i64 %117
  %125 = load i32, i32* %124, align 4, !tbaa !5
  %126 = mul nsw i32 %125, %120
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %88, align 4, !tbaa !5
  br label %128

128:                                              ; preds = %118, %122, %116
  %129 = add nuw nsw i64 %87, 1
  %130 = icmp eq i64 %129, %19
  br i1 %130, label %131, label %86, !llvm.loop !11

131:                                              ; preds = %128
  %132 = add nuw nsw i32 %39, 1
  %133 = icmp eq i32 %132, 50
  br i1 %133, label %134, label %38, !llvm.loop !15

134:                                              ; preds = %131, %26, %17
  tail call void @_Z14_sysy_stoptimei(i32 noundef 67)
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef getelementptr inbounds ([2010 x i32], [2010 x i32]* @C, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
