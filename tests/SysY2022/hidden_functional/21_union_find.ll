; ModuleID = 'tests//SysY2022/hidden_functional/21_union_find.sy'
source_filename = "tests//SysY2022/hidden_functional/21_union_find.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@parent = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4findi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4, !tbaa !4
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1, %8
  %7 = phi i32 [ %9, %8 ], [ %0, %1 ]
  ret i32 %7

8:                                                ; preds = %1
  %9 = tail call noundef i32 @_Z4findi(i32 noundef %4)
  store i32 %9, i32* %3, align 4, !tbaa !4
  br label %6
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z5mergeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_Z4findi(i32 noundef %0)
  %4 = tail call noundef i32 @_Z4findi(i32 noundef %1)
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %7
  store i32 %3, i32* %8, align 4, !tbaa !4
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
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
  br label %24

11:                                               ; preds = %24, %4
  %12 = phi i64 [ 0, %4 ], [ %38, %24 ]
  %13 = icmp eq i64 %7, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11, %14
  %15 = phi i64 [ %19, %14 ], [ %12, %11 ]
  %16 = phi i64 [ %20, %14 ], [ 0, %11 ]
  %17 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %15
  %18 = trunc i64 %15 to i32
  store i32 %18, i32* %17, align 4, !tbaa !4
  %19 = add nuw nsw i64 %15, 1
  %20 = add i64 %16, 1
  %21 = icmp eq i64 %20, %7
  br i1 %21, label %22, label %14, !llvm.loop !8

22:                                               ; preds = %11, %14, %0
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %49, label %41

24:                                               ; preds = %24, %9
  %25 = phi i64 [ 0, %9 ], [ %38, %24 ]
  %26 = phi i64 [ 0, %9 ], [ %39, %24 ]
  %27 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %25
  %28 = trunc i64 %25 to i32
  store i32 %28, i32* %27, align 16, !tbaa !4
  %29 = or i64 %25, 1
  %30 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %29
  %31 = trunc i64 %29 to i32
  store i32 %31, i32* %30, align 4, !tbaa !4
  %32 = or i64 %25, 2
  %33 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %32
  %34 = trunc i64 %32 to i32
  store i32 %34, i32* %33, align 8, !tbaa !4
  %35 = or i64 %25, 3
  %36 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %35
  %37 = trunc i64 %35 to i32
  store i32 %37, i32* %36, align 4, !tbaa !4
  %38 = add nuw nsw i64 %25, 4
  %39 = add i64 %26, 4
  %40 = icmp eq i64 %39, %10
  br i1 %40, label %11, label %24, !llvm.loop !10

41:                                               ; preds = %59, %22
  br i1 %3, label %42, label %114

42:                                               ; preds = %41
  %43 = zext i32 %1 to i64
  %44 = add nsw i64 %43, -1
  %45 = and i64 %43, 3
  %46 = icmp ult i64 %44, 3
  br i1 %46, label %96, label %47

47:                                               ; preds = %42
  %48 = and i64 %43, 4294967292
  br label %62

49:                                               ; preds = %22, %59
  %50 = phi i32 [ %60, %59 ], [ 0, %22 ]
  %51 = tail call noundef i32 @_Z6getintv()
  %52 = tail call noundef i32 @_Z6getintv()
  %53 = tail call noundef i32 @_Z4findi(i32 noundef %51) #3
  %54 = tail call noundef i32 @_Z4findi(i32 noundef %52) #3
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %57
  store i32 %53, i32* %58, align 4, !tbaa !4
  br label %59

59:                                               ; preds = %49, %56
  %60 = add nuw nsw i32 %50, 1
  %61 = icmp eq i32 %60, %2
  br i1 %61, label %41, label %49, !llvm.loop !12

62:                                               ; preds = %62, %47
  %63 = phi i64 [ 0, %47 ], [ %93, %62 ]
  %64 = phi i32 [ 0, %47 ], [ %92, %62 ]
  %65 = phi i64 [ 0, %47 ], [ %94, %62 ]
  %66 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %63
  %67 = load i32, i32* %66, align 16, !tbaa !4
  %68 = zext i32 %67 to i64
  %69 = icmp eq i64 %63, %68
  %70 = zext i1 %69 to i32
  %71 = add nuw nsw i32 %64, %70
  %72 = or i64 %63, 1
  %73 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !4
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = add nuw nsw i32 %71, %77
  %79 = or i64 %63, 2
  %80 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %79
  %81 = load i32, i32* %80, align 8, !tbaa !4
  %82 = zext i32 %81 to i64
  %83 = icmp eq i64 %79, %82
  %84 = zext i1 %83 to i32
  %85 = add nuw nsw i32 %78, %84
  %86 = or i64 %63, 3
  %87 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4, !tbaa !4
  %89 = zext i32 %88 to i64
  %90 = icmp eq i64 %86, %89
  %91 = zext i1 %90 to i32
  %92 = add nuw nsw i32 %85, %91
  %93 = add nuw nsw i64 %63, 4
  %94 = add i64 %65, 4
  %95 = icmp eq i64 %94, %48
  br i1 %95, label %96, label %62, !llvm.loop !13

96:                                               ; preds = %62, %42
  %97 = phi i32 [ undef, %42 ], [ %92, %62 ]
  %98 = phi i64 [ 0, %42 ], [ %93, %62 ]
  %99 = phi i32 [ 0, %42 ], [ %92, %62 ]
  %100 = icmp eq i64 %45, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %96, %101
  %102 = phi i64 [ %111, %101 ], [ %98, %96 ]
  %103 = phi i32 [ %110, %101 ], [ %99, %96 ]
  %104 = phi i64 [ %112, %101 ], [ 0, %96 ]
  %105 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %102
  %106 = load i32, i32* %105, align 4, !tbaa !4
  %107 = zext i32 %106 to i64
  %108 = icmp eq i64 %102, %107
  %109 = zext i1 %108 to i32
  %110 = add nuw nsw i32 %103, %109
  %111 = add nuw nsw i64 %102, 1
  %112 = add i64 %104, 1
  %113 = icmp eq i64 %112, %45
  br i1 %113, label %114, label %101, !llvm.loop !14

114:                                              ; preds = %96, %101, %41
  %115 = phi i32 [ 0, %41 ], [ %97, %96 ], [ %110, %101 ]
  tail call void @_Z6putinti(i32 noundef %115)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !9}
