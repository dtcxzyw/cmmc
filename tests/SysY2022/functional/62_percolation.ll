; ModuleID = 'tests//SysY2022/functional/62_percolation.sy'
source_filename = "tests//SysY2022/functional/62_percolation.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@array = dso_local local_unnamed_addr global [110 x i32] zeroinitializer, align 16
@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z4initi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, %0
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 2
  %5 = add nuw nsw i64 %4, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) bitcast (i32* getelementptr inbounds ([110 x i32], [110 x i32]* @array, i64 0, i64 1) to i8*), i8 -1, i64 %5, i1 false), !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6findfai(i32 noundef %0) local_unnamed_addr #1 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4, !tbaa !4
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1, %8
  %7 = phi i32 [ %9, %8 ], [ %0, %1 ]
  ret i32 %7

8:                                                ; preds = %1
  %9 = tail call noundef i32 @_Z6findfai(i32 noundef %4)
  store i32 %9, i32* %3, align 4, !tbaa !4
  br label %6
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z6mmergeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call noundef i32 @_Z6findfai(i32 noundef %0)
  %4 = tail call noundef i32 @_Z6findfai(i32 noundef %1)
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %7
  store i32 %4, i32* %8, align 4, !tbaa !4
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  store i32 4, i32* @n, align 4, !tbaa !4
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(68) bitcast (i32* getelementptr inbounds ([110 x i32], [110 x i32]* @array, i64 0, i64 1) to i8*), i8 -1, i64 68, i1 false) #5, !tbaa !4
  br label %1

1:                                                ; preds = %0, %107
  %2 = phi i32 [ 0, %0 ], [ %110, %107 ]
  %3 = phi i32 [ 0, %0 ], [ %109, %107 ]
  %4 = tail call noundef i32 @_Z6getintv()
  %5 = tail call noundef i32 @_Z6getintv()
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %7, label %107

7:                                                ; preds = %1
  %8 = load i32, i32* @n, align 4, !tbaa !4
  %9 = add nsw i32 %4, -1
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 %10, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %12
  store i32 %11, i32* %13, align 4, !tbaa !4
  %14 = icmp eq i32 %4, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  store i32 0, i32* getelementptr inbounds ([110 x i32], [110 x i32]* @array, i64 0, i64 0), align 16, !tbaa !4
  %16 = tail call noundef i32 @_Z6findfai(i32 noundef %11) #5
  %17 = tail call noundef i32 @_Z6findfai(i32 noundef 0) #5
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %20
  store i32 %17, i32* %21, align 4, !tbaa !4
  br label %22

22:                                               ; preds = %19, %15, %7
  %23 = load i32, i32* @n, align 4, !tbaa !4
  %24 = icmp eq i32 %4, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  store i32 17, i32* getelementptr inbounds ([110 x i32], [110 x i32]* @array, i64 0, i64 17), align 4, !tbaa !4
  %26 = tail call noundef i32 @_Z6findfai(i32 noundef %11) #5
  %27 = tail call noundef i32 @_Z6findfai(i32 noundef 17) #5
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %30
  store i32 %27, i32* %31, align 4, !tbaa !4
  br label %32

32:                                               ; preds = %29, %25, %22
  %33 = load i32, i32* @n, align 4, !tbaa !4
  %34 = icmp slt i32 %5, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = add nsw i32 %11, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = tail call noundef i32 @_Z6findfai(i32 noundef %11) #5
  %43 = tail call noundef i32 @_Z6findfai(i32 noundef %36) #5
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %46
  store i32 %43, i32* %47, align 4, !tbaa !4
  br label %48

48:                                               ; preds = %45, %41, %35, %32
  %49 = icmp sgt i32 %5, 1
  br i1 %49, label %50, label %63

50:                                               ; preds = %48
  %51 = add nsw i32 %11, -1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = tail call noundef i32 @_Z6findfai(i32 noundef %11) #5
  %58 = tail call noundef i32 @_Z6findfai(i32 noundef %51) #5
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = sext i32 %57 to i64
  %62 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %61
  store i32 %58, i32* %62, align 4, !tbaa !4
  br label %63

63:                                               ; preds = %60, %56, %50, %48
  %64 = load i32, i32* @n, align 4, !tbaa !4
  %65 = icmp slt i32 %4, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = add nsw i32 %64, %11
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = tail call noundef i32 @_Z6findfai(i32 noundef %11) #5
  %74 = tail call noundef i32 @_Z6findfai(i32 noundef %67) #5
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = sext i32 %73 to i64
  %78 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %77
  store i32 %74, i32* %78, align 4, !tbaa !4
  br label %79

79:                                               ; preds = %76, %72, %66, %63
  %80 = icmp sgt i32 %4, 1
  br i1 %80, label %81, label %95

81:                                               ; preds = %79
  %82 = load i32, i32* @n, align 4, !tbaa !4
  %83 = sub nsw i32 %11, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = tail call noundef i32 @_Z6findfai(i32 noundef %11) #5
  %90 = tail call noundef i32 @_Z6findfai(i32 noundef %83) #5
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = sext i32 %89 to i64
  %94 = getelementptr inbounds [110 x i32], [110 x i32]* @array, i64 0, i64 %93
  store i32 %90, i32* %94, align 4, !tbaa !4
  br label %95

95:                                               ; preds = %92, %88, %81, %79
  %96 = load i32, i32* getelementptr inbounds ([110 x i32], [110 x i32]* @array, i64 0, i64 0), align 16, !tbaa !4
  %97 = icmp eq i32 %96, -1
  %98 = load i32, i32* getelementptr inbounds ([110 x i32], [110 x i32]* @array, i64 0, i64 17), align 4
  %99 = icmp eq i32 %98, -1
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = tail call noundef i32 @_Z6findfai(i32 noundef 0)
  %103 = tail call noundef i32 @_Z6findfai(i32 noundef 17)
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = add nuw nsw i32 %2, 1
  tail call void @_Z6putinti(i32 noundef %106)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %107

107:                                              ; preds = %95, %101, %105, %1
  %108 = phi i1 [ true, %95 ], [ true, %101 ], [ false, %105 ], [ false, %1 ]
  %109 = phi i32 [ 0, %95 ], [ 0, %101 ], [ 1, %105 ], [ 1, %1 ]
  %110 = add nuw nsw i32 %2, 1
  %111 = icmp eq i32 %110, 10
  br i1 %111, label %112, label %1, !llvm.loop !8

112:                                              ; preds = %107
  br i1 %108, label %113, label %114

113:                                              ; preds = %112
  tail call void @_Z6putinti(i32 noundef -1)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %114

114:                                              ; preds = %113, %112
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
