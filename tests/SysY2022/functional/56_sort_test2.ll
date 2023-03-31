; ModuleID = 'tests//SysY2022/functional/56_sort_test2.sy'
source_filename = "tests//SysY2022/functional/56_sort_test2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z10insertsortPi(i32* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @n, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %27

4:                                                ; preds = %1, %18
  %5 = phi i64 [ %23, %18 ], [ 1, %1 ]
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %4, %15
  %9 = phi i64 [ %5, %4 ], [ %10, %15 ]
  %10 = add nsw i64 %9, -1
  %11 = and i64 %10, 4294967295
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds i32, i32* %0, i64 %9
  store i32 %13, i32* %16, align 4, !tbaa !5
  %17 = icmp sgt i64 %9, 1
  br i1 %17, label %8, label %18, !llvm.loop !9

18:                                               ; preds = %15, %8
  %19 = phi i64 [ 0, %15 ], [ %9, %8 ]
  %20 = shl i64 %19, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  store i32 %7, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %5, 1
  %24 = load i32, i32* @n, align 4, !tbaa !5
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %4, label %27, !llvm.loop !11

27:                                               ; preds = %18, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [10 x i32], align 16
  store i32 10, i32* @n, align 4, !tbaa !5
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 5
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 6
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 7
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 8
  store i32 7, i32* %11, align 16, !tbaa !5
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  store i32 8, i32* %12, align 4, !tbaa !5
  %13 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 4, i32 9, i32 6, i32 5>, <4 x i32>* %13, align 16, !tbaa !5
  %14 = bitcast [10 x i32]* %1 to <4 x i32>*
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <4 x i32>* %14, align 16, !tbaa !5
  %15 = load i32, i32* %9, align 8, !tbaa !5
  %16 = load i32, i32* %8, align 4, !tbaa !5
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %0
  store i32 %16, i32* %9, align 8, !tbaa !5
  %19 = load i32, i32* %7, align 16, !tbaa !5
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  store i32 %19, i32* %8, align 4, !tbaa !5
  %22 = load i32, i32* %6, align 4, !tbaa !5
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  store i32 %22, i32* %7, align 16, !tbaa !5
  %25 = load i32, i32* %5, align 8, !tbaa !5
  %26 = icmp slt i32 %15, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  store i32 %25, i32* %6, align 4, !tbaa !5
  %28 = load i32, i32* %4, align 4, !tbaa !5
  %29 = icmp slt i32 %15, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  store i32 %28, i32* %5, align 8, !tbaa !5
  %31 = load i32, i32* %3, align 16, !tbaa !5
  %32 = icmp slt i32 %15, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 %31, i32* %4, align 4, !tbaa !5
  br label %34

34:                                               ; preds = %33, %30, %27, %24, %21, %18, %0
  %35 = phi i64 [ 6, %0 ], [ 5, %18 ], [ 4, %21 ], [ 3, %24 ], [ 2, %27 ], [ 1, %30 ], [ 0, %33 ]
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %35
  store i32 %15, i32* %36, align 4, !tbaa !5
  %37 = load i32, i32* %10, align 4, !tbaa !5
  %38 = load i32, i32* %9, align 8, !tbaa !5
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  store i32 %38, i32* %10, align 4, !tbaa !5
  %41 = load i32, i32* %8, align 4, !tbaa !5
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  store i32 %41, i32* %9, align 8, !tbaa !5
  %44 = load i32, i32* %7, align 16, !tbaa !5
  %45 = icmp slt i32 %37, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  store i32 %44, i32* %8, align 4, !tbaa !5
  %47 = load i32, i32* %6, align 4, !tbaa !5
  %48 = icmp slt i32 %37, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  store i32 %47, i32* %7, align 16, !tbaa !5
  %50 = load i32, i32* %5, align 8, !tbaa !5
  %51 = icmp slt i32 %37, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  store i32 %50, i32* %6, align 4, !tbaa !5
  %53 = load i32, i32* %4, align 4, !tbaa !5
  %54 = icmp slt i32 %37, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  store i32 %53, i32* %5, align 8, !tbaa !5
  %56 = load i32, i32* %3, align 16, !tbaa !5
  %57 = icmp slt i32 %37, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 %56, i32* %4, align 4, !tbaa !5
  br label %59

59:                                               ; preds = %58, %55, %52, %49, %46, %43, %40, %34
  %60 = phi i64 [ 7, %34 ], [ 6, %40 ], [ 5, %43 ], [ 4, %46 ], [ 3, %49 ], [ 2, %52 ], [ 1, %55 ], [ 0, %58 ]
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %60
  store i32 %37, i32* %61, align 4, !tbaa !5
  %62 = load i32, i32* %11, align 16, !tbaa !5
  %63 = load i32, i32* %10, align 4, !tbaa !5
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  store i32 %63, i32* %11, align 16, !tbaa !5
  %66 = load i32, i32* %9, align 8, !tbaa !5
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  store i32 %66, i32* %10, align 4, !tbaa !5
  %69 = load i32, i32* %8, align 4, !tbaa !5
  %70 = icmp slt i32 %62, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  store i32 %69, i32* %9, align 8, !tbaa !5
  %72 = load i32, i32* %7, align 16, !tbaa !5
  %73 = icmp slt i32 %62, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  store i32 %72, i32* %8, align 4, !tbaa !5
  %75 = load i32, i32* %6, align 4, !tbaa !5
  %76 = icmp slt i32 %62, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  store i32 %75, i32* %7, align 16, !tbaa !5
  %78 = load i32, i32* %5, align 8, !tbaa !5
  %79 = icmp slt i32 %62, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  store i32 %78, i32* %6, align 4, !tbaa !5
  %81 = load i32, i32* %4, align 4, !tbaa !5
  %82 = icmp slt i32 %62, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  store i32 %81, i32* %5, align 8, !tbaa !5
  %84 = load i32, i32* %3, align 16, !tbaa !5
  %85 = icmp slt i32 %62, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 %84, i32* %4, align 4, !tbaa !5
  br label %87

87:                                               ; preds = %86, %83, %80, %77, %74, %71, %68, %65, %59
  %88 = phi i64 [ 8, %59 ], [ 7, %65 ], [ 6, %68 ], [ 5, %71 ], [ 4, %74 ], [ 3, %77 ], [ 2, %80 ], [ 1, %83 ], [ 0, %86 ]
  %89 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %88
  store i32 %62, i32* %89, align 4, !tbaa !5
  %90 = load i32, i32* %12, align 4, !tbaa !5
  %91 = load i32, i32* %11, align 16, !tbaa !5
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %87
  store i32 %91, i32* %12, align 4, !tbaa !5
  %94 = load i32, i32* %10, align 4, !tbaa !5
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  store i32 %94, i32* %11, align 16, !tbaa !5
  %97 = load i32, i32* %9, align 8, !tbaa !5
  %98 = icmp slt i32 %90, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  store i32 %97, i32* %10, align 4, !tbaa !5
  %100 = load i32, i32* %8, align 4, !tbaa !5
  %101 = icmp slt i32 %90, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  store i32 %100, i32* %9, align 8, !tbaa !5
  %103 = load i32, i32* %7, align 16, !tbaa !5
  %104 = icmp slt i32 %90, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  store i32 %103, i32* %8, align 4, !tbaa !5
  %106 = load i32, i32* %6, align 4, !tbaa !5
  %107 = icmp slt i32 %90, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  store i32 %106, i32* %7, align 16, !tbaa !5
  %109 = load i32, i32* %5, align 8, !tbaa !5
  %110 = icmp slt i32 %90, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  store i32 %109, i32* %6, align 4, !tbaa !5
  %112 = load i32, i32* %4, align 4, !tbaa !5
  %113 = icmp slt i32 %90, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  store i32 %112, i32* %5, align 8, !tbaa !5
  %115 = load i32, i32* %3, align 16, !tbaa !5
  %116 = icmp slt i32 %90, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 %115, i32* %4, align 4, !tbaa !5
  br label %118

118:                                              ; preds = %87, %93, %96, %99, %102, %105, %108, %111, %114, %117
  %119 = phi i64 [ 9, %87 ], [ 8, %93 ], [ 7, %96 ], [ 6, %99 ], [ 5, %102 ], [ 4, %105 ], [ 3, %108 ], [ 2, %111 ], [ 1, %114 ], [ 0, %117 ]
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %119
  store i32 %90, i32* %120, align 4, !tbaa !5
  br label %121

121:                                              ; preds = %118, %121
  %122 = phi i64 [ 0, %118 ], [ %125, %121 ]
  %123 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %124)
  tail call void @_Z5putchi(i32 noundef 10)
  %125 = add nuw nsw i64 %122, 1
  %126 = load i32, i32* @n, align 4, !tbaa !5
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %121, label %129, !llvm.loop !12

129:                                              ; preds = %121
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
