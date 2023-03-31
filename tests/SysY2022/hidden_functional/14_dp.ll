; ModuleID = 'tests//SysY2022/hidden_functional/14_dp.sy'
source_filename = "tests//SysY2022/hidden_functional/14_dp.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@t = dso_local local_unnamed_addr global [1005 x [2 x i32]] zeroinitializer, align 16
@dp = dso_local local_unnamed_addr global [1005 x [35 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %43, label %4

4:                                                ; preds = %0
  %5 = add nuw i32 %1, 1
  %6 = zext i32 %5 to i64
  br label %18

7:                                                ; preds = %18
  %8 = icmp slt i32 %2, 1
  %9 = or i1 %3, %8
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = add nuw i32 %1, 1
  %12 = zext i32 %11 to i64
  %13 = zext i32 %2 to i64
  %14 = and i64 %13, 1
  %15 = icmp eq i32 %2, 1
  %16 = and i64 %13, 4294967294
  %17 = icmp eq i64 %14, 0
  br label %33

18:                                               ; preds = %4, %18
  %19 = phi i64 [ 1, %4 ], [ %31, %18 ]
  %20 = tail call noundef i32 @_Z6getintv()
  %21 = srem i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %19, i64 %22
  store i32 1, i32* %23, align 4, !tbaa !5
  %24 = add nsw i64 %19, -1
  %25 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %24, i64 0
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %19, i64 1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = add nsw i32 %28, %26
  %30 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %19, i64 0
  store i32 %29, i32* %30, align 4, !tbaa !5
  %31 = add nuw nsw i64 %19, 1
  %32 = icmp eq i64 %31, %6
  br i1 %32, label %7, label %18, !llvm.loop !9

33:                                               ; preds = %10, %150
  %34 = phi i64 [ 1, %10 ], [ %151, %150 ]
  %35 = add nsw i64 %34, -1
  %36 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %35, i64 0
  %37 = load i32, i32* %36, align 4, !tbaa !5
  br i1 %15, label %136, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %34, i64 0
  %40 = load i32, i32* %39, align 8, !tbaa !5
  %41 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %34, i64 1
  %42 = load i32, i32* %41, align 4, !tbaa !5
  br label %116

43:                                               ; preds = %150, %0, %7
  %44 = icmp slt i32 %2, 0
  br i1 %44, label %162, label %45

45:                                               ; preds = %43
  %46 = sext i32 %1 to i64
  %47 = add nuw i32 %2, 1
  %48 = zext i32 %47 to i64
  %49 = icmp ult i32 %2, 7
  br i1 %49, label %113, label %50

50:                                               ; preds = %45
  %51 = and i64 %48, 4294967288
  %52 = add nsw i64 %51, -8
  %53 = lshr exact i64 %52, 3
  %54 = add nuw nsw i64 %53, 1
  %55 = and i64 %54, 1
  %56 = icmp eq i64 %52, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %50
  %58 = and i64 %54, 4611686018427387902
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ 0, %57 ], [ %85, %59 ]
  %61 = phi <4 x i32> [ zeroinitializer, %57 ], [ %83, %59 ]
  %62 = phi <4 x i32> [ zeroinitializer, %57 ], [ %84, %59 ]
  %63 = phi i64 [ 0, %57 ], [ %86, %59 ]
  %64 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %60
  %65 = bitcast i32* %64 to <4 x i32>*
  %66 = load <4 x i32>, <4 x i32>* %65, align 4, !tbaa !5
  %67 = getelementptr inbounds i32, i32* %64, i64 4
  %68 = bitcast i32* %67 to <4 x i32>*
  %69 = load <4 x i32>, <4 x i32>* %68, align 4, !tbaa !5
  %70 = icmp slt <4 x i32> %61, %66
  %71 = icmp slt <4 x i32> %62, %69
  %72 = select <4 x i1> %70, <4 x i32> %66, <4 x i32> %61
  %73 = select <4 x i1> %71, <4 x i32> %69, <4 x i32> %62
  %74 = or i64 %60, 8
  %75 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %74
  %76 = bitcast i32* %75 to <4 x i32>*
  %77 = load <4 x i32>, <4 x i32>* %76, align 4, !tbaa !5
  %78 = getelementptr inbounds i32, i32* %75, i64 4
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !5
  %81 = icmp slt <4 x i32> %72, %77
  %82 = icmp slt <4 x i32> %73, %80
  %83 = select <4 x i1> %81, <4 x i32> %77, <4 x i32> %72
  %84 = select <4 x i1> %82, <4 x i32> %80, <4 x i32> %73
  %85 = add nuw i64 %60, 16
  %86 = add i64 %63, 2
  %87 = icmp eq i64 %86, %58
  br i1 %87, label %88, label %59, !llvm.loop !11

88:                                               ; preds = %59, %50
  %89 = phi <4 x i32> [ undef, %50 ], [ %83, %59 ]
  %90 = phi <4 x i32> [ undef, %50 ], [ %84, %59 ]
  %91 = phi i64 [ 0, %50 ], [ %85, %59 ]
  %92 = phi <4 x i32> [ zeroinitializer, %50 ], [ %83, %59 ]
  %93 = phi <4 x i32> [ zeroinitializer, %50 ], [ %84, %59 ]
  %94 = icmp eq i64 %55, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %91
  %97 = bitcast i32* %96 to <4 x i32>*
  %98 = load <4 x i32>, <4 x i32>* %97, align 4, !tbaa !5
  %99 = getelementptr inbounds i32, i32* %96, i64 4
  %100 = bitcast i32* %99 to <4 x i32>*
  %101 = load <4 x i32>, <4 x i32>* %100, align 4, !tbaa !5
  %102 = icmp slt <4 x i32> %92, %98
  %103 = icmp slt <4 x i32> %93, %101
  %104 = select <4 x i1> %102, <4 x i32> %98, <4 x i32> %92
  %105 = select <4 x i1> %103, <4 x i32> %101, <4 x i32> %93
  br label %106

106:                                              ; preds = %88, %95
  %107 = phi <4 x i32> [ %89, %88 ], [ %104, %95 ]
  %108 = phi <4 x i32> [ %90, %88 ], [ %105, %95 ]
  %109 = icmp sgt <4 x i32> %107, %108
  %110 = select <4 x i1> %109, <4 x i32> %107, <4 x i32> %108
  %111 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %110)
  %112 = icmp eq i64 %51, %48
  br i1 %112, label %162, label %113

113:                                              ; preds = %45, %106
  %114 = phi i64 [ 0, %45 ], [ %51, %106 ]
  %115 = phi i32 [ 0, %45 ], [ %111, %106 ]
  br label %153

116:                                              ; preds = %116, %38
  %117 = phi i32 [ %37, %38 ], [ %128, %116 ]
  %118 = phi i64 [ 1, %38 ], [ %129, %116 ]
  %119 = phi i64 [ 0, %38 ], [ %134, %116 ]
  %120 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %35, i64 %118
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %122 = add nuw nsw i64 %118, 1
  %123 = icmp sgt i32 %121, %117
  %124 = select i1 %123, i32 %121, i32 %117
  %125 = add nsw i32 %40, %124
  %126 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %34, i64 %118
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %35, i64 %122
  %128 = load i32, i32* %127, align 4, !tbaa !5
  %129 = add nuw nsw i64 %118, 2
  %130 = icmp sgt i32 %128, %121
  %131 = select i1 %130, i32 %128, i32 %121
  %132 = add nsw i32 %42, %131
  %133 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %34, i64 %122
  store i32 %132, i32* %133, align 4
  %134 = add i64 %119, 2
  %135 = icmp eq i64 %134, %16
  br i1 %135, label %136, label %116, !llvm.loop !13

136:                                              ; preds = %116, %33
  %137 = phi i32 [ %37, %33 ], [ %128, %116 ]
  %138 = phi i64 [ 1, %33 ], [ %129, %116 ]
  br i1 %17, label %150, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %35, i64 %138
  %141 = load i32, i32* %140, align 4, !tbaa !5
  %142 = and i64 %138, 1
  %143 = xor i64 %142, 1
  %144 = getelementptr inbounds [1005 x [2 x i32]], [1005 x [2 x i32]]* @t, i64 0, i64 %34, i64 %143
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %146 = icmp sgt i32 %141, %137
  %147 = select i1 %146, i32 %141, i32 %137
  %148 = add nsw i32 %145, %147
  %149 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %34, i64 %138
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %136, %139
  %151 = add nuw nsw i64 %34, 1
  %152 = icmp eq i64 %151, %12
  br i1 %152, label %43, label %33, !llvm.loop !14

153:                                              ; preds = %113, %153
  %154 = phi i64 [ %160, %153 ], [ %114, %113 ]
  %155 = phi i32 [ %159, %153 ], [ %115, %113 ]
  %156 = getelementptr inbounds [1005 x [35 x i32]], [1005 x [35 x i32]]* @dp, i64 0, i64 %46, i64 %154
  %157 = load i32, i32* %156, align 4, !tbaa !5
  %158 = icmp slt i32 %155, %157
  %159 = select i1 %158, i32 %157, i32 %155
  %160 = add nuw nsw i64 %154, 1
  %161 = icmp eq i64 %160, %48
  br i1 %161, label %162, label %153, !llvm.loop !15

162:                                              ; preds = %153, %106, %43
  %163 = phi i32 [ 0, %43 ], [ %111, %106 ], [ %159, %153 ]
  ret i32 %163
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #2

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }

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
!11 = distinct !{!11, !10, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !16, !12}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
