; ModuleID = 'tests//SysY2022/performance/sl1.sy'
source_filename = "tests//SysY2022/performance/sl1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x = dso_local global [600 x [600 x [600 x i32]]] zeroinitializer, align 16
@y = dso_local local_unnamed_addr global [600 x [600 x [600 x i32]]] zeroinitializer, align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  tail call void @_Z15_sysy_starttimei(i32 noundef 13)
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %120

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = and i64 %5, 4294967288
  %8 = add nsw i64 %7, -8
  %9 = lshr exact i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %11 = icmp ult i32 %1, 8
  %12 = and i64 %5, 4294967288
  %13 = and i64 %10, 3
  %14 = icmp ult i64 %8, 24
  %15 = and i64 %10, 4611686018427387900
  %16 = icmp eq i64 %13, 0
  %17 = icmp eq i64 %12, %5
  br label %18

18:                                               ; preds = %4, %73
  %19 = phi i64 [ 0, %4 ], [ %74, %73 ]
  br label %20

20:                                               ; preds = %70, %18
  %21 = phi i64 [ %71, %70 ], [ 0, %18 ]
  %22 = getelementptr [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @y, i64 0, i64 %19, i64 %21, i64 0
  %23 = bitcast i32* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 %6, i1 false), !tbaa !5
  br i1 %11, label %63, label %24

24:                                               ; preds = %20
  br i1 %14, label %50, label %25

25:                                               ; preds = %24, %25
  %26 = phi i64 [ %47, %25 ], [ 0, %24 ]
  %27 = phi i64 [ %48, %25 ], [ 0, %24 ]
  %28 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %19, i64 %21, i64 %26
  %29 = bitcast i32* %28 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %29, align 16, !tbaa !5
  %30 = getelementptr inbounds i32, i32* %28, i64 4
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %31, align 16, !tbaa !5
  %32 = or i64 %26, 8
  %33 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %19, i64 %21, i64 %32
  %34 = bitcast i32* %33 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %34, align 16, !tbaa !5
  %35 = getelementptr inbounds i32, i32* %33, i64 4
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %36, align 16, !tbaa !5
  %37 = or i64 %26, 16
  %38 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %19, i64 %21, i64 %37
  %39 = bitcast i32* %38 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %39, align 16, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %38, i64 4
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %41, align 16, !tbaa !5
  %42 = or i64 %26, 24
  %43 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %19, i64 %21, i64 %42
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %44, align 16, !tbaa !5
  %45 = getelementptr inbounds i32, i32* %43, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %46, align 16, !tbaa !5
  %47 = add nuw i64 %26, 32
  %48 = add i64 %27, 4
  %49 = icmp eq i64 %48, %15
  br i1 %49, label %50, label %25, !llvm.loop !9

50:                                               ; preds = %25, %24
  %51 = phi i64 [ 0, %24 ], [ %47, %25 ]
  br i1 %16, label %62, label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ %59, %52 ], [ %51, %50 ]
  %54 = phi i64 [ %60, %52 ], [ 0, %50 ]
  %55 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %19, i64 %21, i64 %53
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %56, align 16, !tbaa !5
  %57 = getelementptr inbounds i32, i32* %55, i64 4
  %58 = bitcast i32* %57 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %58, align 16, !tbaa !5
  %59 = add nuw i64 %53, 8
  %60 = add i64 %54, 1
  %61 = icmp eq i64 %60, %13
  br i1 %61, label %62, label %52, !llvm.loop !12

62:                                               ; preds = %52, %50
  br i1 %17, label %70, label %63

63:                                               ; preds = %20, %62
  %64 = phi i64 [ 0, %20 ], [ %12, %62 ]
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ %68, %65 ], [ %64, %63 ]
  %67 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %19, i64 %21, i64 %66
  store i32 1, i32* %67, align 4, !tbaa !5
  %68 = add nuw nsw i64 %66, 1
  %69 = icmp eq i64 %68, %5
  br i1 %69, label %70, label %65, !llvm.loop !14

70:                                               ; preds = %65, %62
  %71 = add nuw nsw i64 %21, 1
  %72 = icmp eq i64 %71, %5
  br i1 %72, label %73, label %20, !llvm.loop !16

73:                                               ; preds = %70
  %74 = add nuw nsw i64 %19, 1
  %75 = icmp eq i64 %74, %5
  br i1 %75, label %76, label %18, !llvm.loop !17

76:                                               ; preds = %73
  %77 = icmp sgt i32 %1, 2
  br i1 %77, label %78, label %120

78:                                               ; preds = %76
  %79 = add nsw i32 %1, -1
  %80 = zext i32 %79 to i64
  br label %81

81:                                               ; preds = %78, %115
  %82 = phi i64 [ 1, %78 ], [ %84, %115 ]
  %83 = add nsw i64 %82, -1
  %84 = add nuw nsw i64 %82, 1
  br label %85

85:                                               ; preds = %113, %81
  %86 = phi i64 [ %88, %113 ], [ 1, %81 ]
  %87 = add nsw i64 %86, -1
  %88 = add nuw nsw i64 %86, 1
  %89 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %82, i64 %86, i64 0
  %90 = load i32, i32* %89, align 16, !tbaa !5
  br label %91

91:                                               ; preds = %91, %85
  %92 = phi i32 [ %110, %91 ], [ %90, %85 ]
  %93 = phi i64 [ %106, %91 ], [ 1, %85 ]
  %94 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %83, i64 %86, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !5
  %96 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %84, i64 %86, i64 %93
  %97 = load i32, i32* %96, align 4, !tbaa !5
  %98 = add nsw i32 %97, %95
  %99 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %82, i64 %87, i64 %93
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %101 = add nsw i32 %98, %100
  %102 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %82, i64 %88, i64 %93
  %103 = load i32, i32* %102, align 4, !tbaa !5
  %104 = add nsw i32 %101, %103
  %105 = add nsw i32 %104, %92
  %106 = add nuw nsw i64 %93, 1
  %107 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %82, i64 %86, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %109 = add nsw i32 %105, %108
  %110 = sdiv i32 %109, %2
  %111 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %82, i64 %86, i64 %93
  store i32 %110, i32* %111, align 4, !tbaa !5
  %112 = icmp eq i64 %106, %80
  br i1 %112, label %113, label %91, !llvm.loop !18

113:                                              ; preds = %91
  %114 = icmp eq i64 %88, %80
  br i1 %114, label %115, label %85, !llvm.loop !19

115:                                              ; preds = %113
  %116 = icmp eq i64 %84, %80
  br i1 %116, label %117, label %81, !llvm.loop !20

117:                                              ; preds = %115
  %118 = add i32 %1, -2
  %119 = sext i32 %118 to i64
  br label %120

120:                                              ; preds = %0, %117, %76
  %121 = phi i64 [ 0, %76 ], [ %119, %117 ], [ 0, %0 ]
  tail call void @_Z14_sysy_stoptimei(i32 noundef 53)
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef getelementptr inbounds ([600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 0, i64 0, i64 0))
  %122 = sdiv i32 %1, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %123, i64 %123, i64 0
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef nonnull %124)
  %125 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %121, i64 %121, i64 0
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef nonnull %125)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #1

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #1

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
