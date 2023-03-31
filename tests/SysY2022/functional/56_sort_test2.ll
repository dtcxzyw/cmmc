; ModuleID = 'tests//SysY2022/functional/56_sort_test2.sy'
source_filename = "tests//SysY2022/functional/56_sort_test2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z10insertsortPi(i32* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @n, align 4, !tbaa !4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %27

4:                                                ; preds = %1, %18
  %5 = phi i64 [ %23, %18 ], [ 1, %1 ]
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !4
  br label %8

8:                                                ; preds = %4, %15
  %9 = phi i64 [ %5, %4 ], [ %10, %15 ]
  %10 = add nsw i64 %9, -1
  %11 = and i64 %10, 4294967295
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !4
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds i32, i32* %0, i64 %9
  store i32 %13, i32* %16, align 4, !tbaa !4
  %17 = icmp sgt i64 %9, 1
  br i1 %17, label %8, label %18, !llvm.loop !8

18:                                               ; preds = %15, %8
  %19 = phi i64 [ 0, %15 ], [ %9, %8 ]
  %20 = shl i64 %19, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  store i32 %7, i32* %22, align 4, !tbaa !4
  %23 = add nuw nsw i64 %5, 1
  %24 = load i32, i32* @n, align 4, !tbaa !4
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %4, label %27, !llvm.loop !10

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
  store i32 10, i32* @n, align 4, !tbaa !4
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 5
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 6
  store i32 6, i32* %9, align 8, !tbaa !4
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 7
  store i32 5, i32* %10, align 4, !tbaa !4
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 8
  store i32 7, i32* %11, align 16, !tbaa !4
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  store i32 8, i32* %12, align 4, !tbaa !4
  store i32 0, i32* %3, align 16, !tbaa !4
  store i32 9, i32* %8, align 4, !tbaa !4
  store i32 4, i32* %7, align 16, !tbaa !4
  store i32 3, i32* %6, align 4, !tbaa !4
  store i32 2, i32* %5, align 8, !tbaa !4
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  store i32 1, i32* %13, align 4, !tbaa !4
  %14 = load i32, i32* %9, align 8, !tbaa !4
  %15 = load i32, i32* %8, align 4, !tbaa !4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %0
  store i32 %15, i32* %9, align 8, !tbaa !4
  %18 = load i32, i32* %7, align 16, !tbaa !4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  store i32 %18, i32* %8, align 4, !tbaa !4
  %21 = load i32, i32* %6, align 4, !tbaa !4
  %22 = icmp slt i32 %14, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  store i32 %21, i32* %7, align 16, !tbaa !4
  %24 = load i32, i32* %5, align 8, !tbaa !4
  %25 = icmp slt i32 %14, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  store i32 %24, i32* %6, align 4, !tbaa !4
  %27 = load i32, i32* %4, align 4, !tbaa !4
  %28 = icmp slt i32 %14, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  store i32 %27, i32* %5, align 8, !tbaa !4
  %30 = load i32, i32* %3, align 16, !tbaa !4
  %31 = icmp slt i32 %14, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 %30, i32* %4, align 4, !tbaa !4
  br label %33

33:                                               ; preds = %32, %29, %26, %23, %20, %17, %0
  %34 = phi i64 [ 6, %0 ], [ 5, %17 ], [ 4, %20 ], [ 3, %23 ], [ 2, %26 ], [ 1, %29 ], [ 0, %32 ]
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %34
  store i32 %14, i32* %35, align 4, !tbaa !4
  %36 = load i32, i32* %10, align 4, !tbaa !4
  %37 = load i32, i32* %9, align 8, !tbaa !4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  store i32 %37, i32* %10, align 4, !tbaa !4
  %40 = load i32, i32* %8, align 4, !tbaa !4
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  store i32 %40, i32* %9, align 8, !tbaa !4
  %43 = load i32, i32* %7, align 16, !tbaa !4
  %44 = icmp slt i32 %36, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  store i32 %43, i32* %8, align 4, !tbaa !4
  %46 = load i32, i32* %6, align 4, !tbaa !4
  %47 = icmp slt i32 %36, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  store i32 %46, i32* %7, align 16, !tbaa !4
  %49 = load i32, i32* %5, align 8, !tbaa !4
  %50 = icmp slt i32 %36, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  store i32 %49, i32* %6, align 4, !tbaa !4
  %52 = load i32, i32* %4, align 4, !tbaa !4
  %53 = icmp slt i32 %36, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  store i32 %52, i32* %5, align 8, !tbaa !4
  %55 = load i32, i32* %3, align 16, !tbaa !4
  %56 = icmp slt i32 %36, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 %55, i32* %4, align 4, !tbaa !4
  br label %58

58:                                               ; preds = %57, %54, %51, %48, %45, %42, %39, %33
  %59 = phi i64 [ 7, %33 ], [ 6, %39 ], [ 5, %42 ], [ 4, %45 ], [ 3, %48 ], [ 2, %51 ], [ 1, %54 ], [ 0, %57 ]
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %59
  store i32 %36, i32* %60, align 4, !tbaa !4
  %61 = load i32, i32* %11, align 16, !tbaa !4
  %62 = load i32, i32* %10, align 4, !tbaa !4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  store i32 %62, i32* %11, align 16, !tbaa !4
  %65 = load i32, i32* %9, align 8, !tbaa !4
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  store i32 %65, i32* %10, align 4, !tbaa !4
  %68 = load i32, i32* %8, align 4, !tbaa !4
  %69 = icmp slt i32 %61, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  store i32 %68, i32* %9, align 8, !tbaa !4
  %71 = load i32, i32* %7, align 16, !tbaa !4
  %72 = icmp slt i32 %61, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  store i32 %71, i32* %8, align 4, !tbaa !4
  %74 = load i32, i32* %6, align 4, !tbaa !4
  %75 = icmp slt i32 %61, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  store i32 %74, i32* %7, align 16, !tbaa !4
  %77 = load i32, i32* %5, align 8, !tbaa !4
  %78 = icmp slt i32 %61, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  store i32 %77, i32* %6, align 4, !tbaa !4
  %80 = load i32, i32* %4, align 4, !tbaa !4
  %81 = icmp slt i32 %61, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  store i32 %80, i32* %5, align 8, !tbaa !4
  %83 = load i32, i32* %3, align 16, !tbaa !4
  %84 = icmp slt i32 %61, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 %83, i32* %4, align 4, !tbaa !4
  br label %86

86:                                               ; preds = %85, %82, %79, %76, %73, %70, %67, %64, %58
  %87 = phi i64 [ 8, %58 ], [ 7, %64 ], [ 6, %67 ], [ 5, %70 ], [ 4, %73 ], [ 3, %76 ], [ 2, %79 ], [ 1, %82 ], [ 0, %85 ]
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %87
  store i32 %61, i32* %88, align 4, !tbaa !4
  %89 = load i32, i32* %12, align 4, !tbaa !4
  %90 = load i32, i32* %11, align 16, !tbaa !4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %86
  store i32 %90, i32* %12, align 4, !tbaa !4
  %93 = load i32, i32* %10, align 4, !tbaa !4
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  store i32 %93, i32* %11, align 16, !tbaa !4
  %96 = load i32, i32* %9, align 8, !tbaa !4
  %97 = icmp slt i32 %89, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  store i32 %96, i32* %10, align 4, !tbaa !4
  %99 = load i32, i32* %8, align 4, !tbaa !4
  %100 = icmp slt i32 %89, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  store i32 %99, i32* %9, align 8, !tbaa !4
  %102 = load i32, i32* %7, align 16, !tbaa !4
  %103 = icmp slt i32 %89, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  store i32 %102, i32* %8, align 4, !tbaa !4
  %105 = load i32, i32* %6, align 4, !tbaa !4
  %106 = icmp slt i32 %89, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  store i32 %105, i32* %7, align 16, !tbaa !4
  %108 = load i32, i32* %5, align 8, !tbaa !4
  %109 = icmp slt i32 %89, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  store i32 %108, i32* %6, align 4, !tbaa !4
  %111 = load i32, i32* %4, align 4, !tbaa !4
  %112 = icmp slt i32 %89, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  store i32 %111, i32* %5, align 8, !tbaa !4
  %114 = load i32, i32* %3, align 16, !tbaa !4
  %115 = icmp slt i32 %89, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 %114, i32* %4, align 4, !tbaa !4
  br label %117

117:                                              ; preds = %86, %92, %95, %98, %101, %104, %107, %110, %113, %116
  %118 = phi i64 [ 9, %86 ], [ 8, %92 ], [ 7, %95 ], [ 6, %98 ], [ 5, %101 ], [ 4, %104 ], [ 3, %107 ], [ 2, %110 ], [ 1, %113 ], [ 0, %116 ]
  %119 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %118
  store i32 %89, i32* %119, align 4, !tbaa !4
  br label %120

120:                                              ; preds = %117, %120
  %121 = phi i64 [ 0, %117 ], [ %124, %120 ]
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %123)
  tail call void @_Z5putchi(i32 noundef 10)
  %124 = add nuw nsw i64 %121, 1
  %125 = load i32, i32* @n, align 4, !tbaa !4
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %124, %126
  br i1 %127, label %120, label %128, !llvm.loop !11

128:                                              ; preds = %120
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
