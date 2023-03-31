; ModuleID = 'tests//SysY2022/hidden_functional/21_union_find.sy'
source_filename = "tests//SysY2022/hidden_functional/21_union_find.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@parent = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4findi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1, %8
  %7 = phi i32 [ %9, %8 ], [ %0, %1 ]
  ret i32 %7

8:                                                ; preds = %1
  %9 = tail call noundef i32 @_Z4findi(i32 noundef %4)
  store i32 %9, i32* %3, align 4, !tbaa !5
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
  store i32 %3, i32* %8, align 4, !tbaa !5
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %71

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %69, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  %9 = add nsw i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %9, 24
  br i1 %13, label %50, label %14

14:                                               ; preds = %7
  %15 = and i64 %11, 4611686018427387900
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %46, %16 ]
  %18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %14 ], [ %47, %16 ]
  %19 = phi i64 [ 0, %14 ], [ %48, %16 ]
  %20 = add <4 x i32> %18, <i32 4, i32 4, i32 4, i32 4>
  %21 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %17
  %22 = bitcast i32* %21 to <4 x i32>*
  store <4 x i32> %18, <4 x i32>* %22, align 16, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %21, i64 4
  %24 = bitcast i32* %23 to <4 x i32>*
  store <4 x i32> %20, <4 x i32>* %24, align 16, !tbaa !5
  %25 = or i64 %17, 8
  %26 = add <4 x i32> %18, <i32 8, i32 8, i32 8, i32 8>
  %27 = add <4 x i32> %18, <i32 12, i32 12, i32 12, i32 12>
  %28 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %25
  %29 = bitcast i32* %28 to <4 x i32>*
  store <4 x i32> %26, <4 x i32>* %29, align 16, !tbaa !5
  %30 = getelementptr inbounds i32, i32* %28, i64 4
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %31, align 16, !tbaa !5
  %32 = or i64 %17, 16
  %33 = add <4 x i32> %18, <i32 16, i32 16, i32 16, i32 16>
  %34 = add <4 x i32> %18, <i32 20, i32 20, i32 20, i32 20>
  %35 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %32
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %36, align 16, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %35, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %38, align 16, !tbaa !5
  %39 = or i64 %17, 24
  %40 = add <4 x i32> %18, <i32 24, i32 24, i32 24, i32 24>
  %41 = add <4 x i32> %18, <i32 28, i32 28, i32 28, i32 28>
  %42 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %39
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %43, align 16, !tbaa !5
  %44 = getelementptr inbounds i32, i32* %42, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> %41, <4 x i32>* %45, align 16, !tbaa !5
  %46 = add nuw i64 %17, 32
  %47 = add <4 x i32> %18, <i32 32, i32 32, i32 32, i32 32>
  %48 = add i64 %19, 4
  %49 = icmp eq i64 %48, %15
  br i1 %49, label %50, label %16, !llvm.loop !9

50:                                               ; preds = %16, %7
  %51 = phi i64 [ 0, %7 ], [ %46, %16 ]
  %52 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %7 ], [ %47, %16 ]
  %53 = icmp eq i64 %12, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50, %54
  %55 = phi i64 [ %63, %54 ], [ %51, %50 ]
  %56 = phi <4 x i32> [ %64, %54 ], [ %52, %50 ]
  %57 = phi i64 [ %65, %54 ], [ 0, %50 ]
  %58 = add <4 x i32> %56, <i32 4, i32 4, i32 4, i32 4>
  %59 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %55
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> %56, <4 x i32>* %60, align 16, !tbaa !5
  %61 = getelementptr inbounds i32, i32* %59, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %58, <4 x i32>* %62, align 16, !tbaa !5
  %63 = add nuw i64 %55, 8
  %64 = add <4 x i32> %56, <i32 8, i32 8, i32 8, i32 8>
  %65 = add i64 %57, 1
  %66 = icmp eq i64 %65, %12
  br i1 %66, label %67, label %54, !llvm.loop !12

67:                                               ; preds = %54, %50
  %68 = icmp eq i64 %8, %5
  br i1 %68, label %71, label %69

69:                                               ; preds = %4, %67
  %70 = phi i64 [ 0, %4 ], [ %8, %67 ]
  br label %73

71:                                               ; preds = %73, %67, %0
  %72 = icmp sgt i32 %2, 0
  br i1 %72, label %87, label %79

73:                                               ; preds = %69, %73
  %74 = phi i64 [ %77, %73 ], [ %70, %69 ]
  %75 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %74
  %76 = trunc i64 %74 to i32
  store i32 %76, i32* %75, align 4, !tbaa !5
  %77 = add nuw nsw i64 %74, 1
  %78 = icmp eq i64 %77, %5
  br i1 %78, label %71, label %73, !llvm.loop !14

79:                                               ; preds = %97, %71
  br i1 %3, label %80, label %152

80:                                               ; preds = %79
  %81 = zext i32 %1 to i64
  %82 = add nsw i64 %81, -1
  %83 = and i64 %81, 3
  %84 = icmp ult i64 %82, 3
  br i1 %84, label %134, label %85

85:                                               ; preds = %80
  %86 = and i64 %81, 4294967292
  br label %100

87:                                               ; preds = %71, %97
  %88 = phi i32 [ %98, %97 ], [ 0, %71 ]
  %89 = tail call noundef i32 @_Z6getintv()
  %90 = tail call noundef i32 @_Z6getintv()
  %91 = tail call noundef i32 @_Z4findi(i32 noundef %89) #3
  %92 = tail call noundef i32 @_Z4findi(i32 noundef %90) #3
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %95
  store i32 %91, i32* %96, align 4, !tbaa !5
  br label %97

97:                                               ; preds = %87, %94
  %98 = add nuw nsw i32 %88, 1
  %99 = icmp eq i32 %98, %2
  br i1 %99, label %79, label %87, !llvm.loop !16

100:                                              ; preds = %100, %85
  %101 = phi i64 [ 0, %85 ], [ %131, %100 ]
  %102 = phi i32 [ 0, %85 ], [ %130, %100 ]
  %103 = phi i64 [ 0, %85 ], [ %132, %100 ]
  %104 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %101
  %105 = load i32, i32* %104, align 16, !tbaa !5
  %106 = zext i32 %105 to i64
  %107 = icmp eq i64 %101, %106
  %108 = zext i1 %107 to i32
  %109 = add nuw nsw i32 %102, %108
  %110 = or i64 %101, 1
  %111 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !5
  %113 = zext i32 %112 to i64
  %114 = icmp eq i64 %110, %113
  %115 = zext i1 %114 to i32
  %116 = add nuw nsw i32 %109, %115
  %117 = or i64 %101, 2
  %118 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %117
  %119 = load i32, i32* %118, align 8, !tbaa !5
  %120 = zext i32 %119 to i64
  %121 = icmp eq i64 %117, %120
  %122 = zext i1 %121 to i32
  %123 = add nuw nsw i32 %116, %122
  %124 = or i64 %101, 3
  %125 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4, !tbaa !5
  %127 = zext i32 %126 to i64
  %128 = icmp eq i64 %124, %127
  %129 = zext i1 %128 to i32
  %130 = add nuw nsw i32 %123, %129
  %131 = add nuw nsw i64 %101, 4
  %132 = add i64 %103, 4
  %133 = icmp eq i64 %132, %86
  br i1 %133, label %134, label %100, !llvm.loop !17

134:                                              ; preds = %100, %80
  %135 = phi i32 [ undef, %80 ], [ %130, %100 ]
  %136 = phi i64 [ 0, %80 ], [ %131, %100 ]
  %137 = phi i32 [ 0, %80 ], [ %130, %100 ]
  %138 = icmp eq i64 %83, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %134, %139
  %140 = phi i64 [ %149, %139 ], [ %136, %134 ]
  %141 = phi i32 [ %148, %139 ], [ %137, %134 ]
  %142 = phi i64 [ %150, %139 ], [ 0, %134 ]
  %143 = getelementptr inbounds [1005 x i32], [1005 x i32]* @parent, i64 0, i64 %140
  %144 = load i32, i32* %143, align 4, !tbaa !5
  %145 = zext i32 %144 to i64
  %146 = icmp eq i64 %140, %145
  %147 = zext i1 %146 to i32
  %148 = add nuw nsw i32 %141, %147
  %149 = add nuw nsw i64 %140, 1
  %150 = add i64 %142, 1
  %151 = icmp eq i64 %150, %83
  br i1 %151, label %152, label %139, !llvm.loop !18

152:                                              ; preds = %134, %139, %79
  %153 = phi i32 [ 0, %79 ], [ %135, %134 ], [ %148, %139 ]
  tail call void @_Z6putinti(i32 noundef %153)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!18 = distinct !{!18, !13}
