; ModuleID = 'tests//SysY2022/functional/83_long_array.sy'
source_filename = "tests//SysY2022/functional/83_long_array.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z10long_arrayi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [10000 x i32], align 16
  %3 = alloca [10000 x i32], align 16
  %4 = alloca [10000 x i32], align 16
  %5 = bitcast [10000 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %5) #5
  %6 = bitcast [10000 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %6) #5
  %7 = bitcast [10000 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %7) #5
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %23, %8 ]
  %10 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1 ], [ %24, %8 ]
  %11 = mul nuw nsw <4 x i64> %10, %10
  %12 = trunc <4 x i64> %11 to <4 x i32>
  %13 = urem <4 x i32> %12, <i32 10, i32 10, i32 10, i32 10>
  %14 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %9
  %15 = bitcast i32* %14 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %15, align 16, !tbaa !5
  %16 = or i64 %9, 4
  %17 = add <4 x i64> %10, <i64 4, i64 4, i64 4, i64 4>
  %18 = mul nuw nsw <4 x i64> %17, %17
  %19 = trunc <4 x i64> %18 to <4 x i32>
  %20 = urem <4 x i32> %19, <i32 10, i32 10, i32 10, i32 10>
  %21 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %16
  %22 = bitcast i32* %21 to <4 x i32>*
  store <4 x i32> %20, <4 x i32>* %22, align 16, !tbaa !5
  %23 = add nuw nsw i64 %9, 8
  %24 = add <4 x i64> %10, <i64 8, i64 8, i64 8, i64 8>
  %25 = icmp eq i64 %23, 10000
  br i1 %25, label %26, label %8, !llvm.loop !9

26:                                               ; preds = %8, %26
  %27 = phi i64 [ %42, %26 ], [ 0, %8 ]
  %28 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %27
  %29 = bitcast i32* %28 to <4 x i32>*
  %30 = load <4 x i32>, <4 x i32>* %29, align 16, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %28, i64 4
  %32 = bitcast i32* %31 to <4 x i32>*
  %33 = load <4 x i32>, <4 x i32>* %32, align 16, !tbaa !5
  %34 = mul nsw <4 x i32> %30, %30
  %35 = mul nsw <4 x i32> %33, %33
  %36 = urem <4 x i32> %34, <i32 10, i32 10, i32 10, i32 10>
  %37 = urem <4 x i32> %35, <i32 10, i32 10, i32 10, i32 10>
  %38 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %27
  %39 = bitcast i32* %38 to <4 x i32>*
  store <4 x i32> %36, <4 x i32>* %39, align 16, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %38, i64 4
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> %37, <4 x i32>* %41, align 16, !tbaa !5
  %42 = add nuw i64 %27, 8
  %43 = icmp eq i64 %42, 10000
  br i1 %43, label %44, label %26, !llvm.loop !12

44:                                               ; preds = %26, %44
  %45 = phi i64 [ %68, %44 ], [ 0, %26 ]
  %46 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %45
  %47 = bitcast i32* %46 to <4 x i32>*
  %48 = load <4 x i32>, <4 x i32>* %47, align 16, !tbaa !5
  %49 = getelementptr inbounds i32, i32* %46, i64 4
  %50 = bitcast i32* %49 to <4 x i32>*
  %51 = load <4 x i32>, <4 x i32>* %50, align 16, !tbaa !5
  %52 = mul nsw <4 x i32> %48, %48
  %53 = mul nsw <4 x i32> %51, %51
  %54 = urem <4 x i32> %52, <i32 100, i32 100, i32 100, i32 100>
  %55 = urem <4 x i32> %53, <i32 100, i32 100, i32 100, i32 100>
  %56 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %45
  %57 = bitcast i32* %56 to <4 x i32>*
  %58 = load <4 x i32>, <4 x i32>* %57, align 16, !tbaa !5
  %59 = getelementptr inbounds i32, i32* %56, i64 4
  %60 = bitcast i32* %59 to <4 x i32>*
  %61 = load <4 x i32>, <4 x i32>* %60, align 16, !tbaa !5
  %62 = add nsw <4 x i32> %54, %58
  %63 = add nsw <4 x i32> %55, %61
  %64 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %45
  %65 = bitcast i32* %64 to <4 x i32>*
  store <4 x i32> %62, <4 x i32>* %65, align 16, !tbaa !5
  %66 = getelementptr inbounds i32, i32* %64, i64 4
  %67 = bitcast i32* %66 to <4 x i32>*
  store <4 x i32> %63, <4 x i32>* %67, align 16, !tbaa !5
  %68 = add nuw i64 %45, 8
  %69 = icmp eq i64 %68, 10000
  br i1 %69, label %70, label %44, !llvm.loop !13

70:                                               ; preds = %44, %157
  %71 = phi i64 [ %159, %157 ], [ 0, %44 ]
  %72 = phi i32 [ %158, %157 ], [ 0, %44 ]
  %73 = icmp ult i64 %71, 10
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %71
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = add nsw i32 %76, %72
  %78 = srem i32 %77, 1333
  tail call void @_Z6putinti(i32 noundef %78)
  br label %157

79:                                               ; preds = %70
  %80 = icmp ult i64 %71, 20
  br i1 %80, label %81, label %121

81:                                               ; preds = %79
  %82 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %71
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %72, i64 0
  %85 = insertelement <4 x i32> poison, i32 %83, i64 0
  %86 = shufflevector <4 x i32> %85, <4 x i32> poison, <4 x i32> zeroinitializer
  %87 = insertelement <4 x i32> poison, i32 %83, i64 0
  %88 = shufflevector <4 x i32> %87, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %89

89:                                               ; preds = %105, %81
  %90 = phi i64 [ 0, %81 ], [ %117, %105 ]
  %91 = phi <4 x i32> [ %84, %81 ], [ %115, %105 ]
  %92 = phi <4 x i32> [ zeroinitializer, %81 ], [ %116, %105 ]
  %93 = add nuw nsw i64 %90, 5000
  %94 = add <4 x i32> %86, %91
  %95 = add <4 x i32> %88, %92
  %96 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %93
  %97 = bitcast i32* %96 to <4 x i32>*
  %98 = load <4 x i32>, <4 x i32>* %97, align 16, !tbaa !5
  %99 = getelementptr inbounds i32, i32* %96, i64 4
  %100 = bitcast i32* %99 to <4 x i32>*
  %101 = load <4 x i32>, <4 x i32>* %100, align 16, !tbaa !5
  %102 = sub <4 x i32> %94, %98
  %103 = sub <4 x i32> %95, %101
  %104 = icmp eq i64 %90, 4992
  br i1 %104, label %118, label %105, !llvm.loop !14

105:                                              ; preds = %89
  %106 = add nuw nsw i64 %90, 5008
  %107 = add <4 x i32> %86, %102
  %108 = add <4 x i32> %88, %103
  %109 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %106
  %110 = bitcast i32* %109 to <4 x i32>*
  %111 = load <4 x i32>, <4 x i32>* %110, align 16, !tbaa !5
  %112 = getelementptr inbounds i32, i32* %109, i64 4
  %113 = bitcast i32* %112 to <4 x i32>*
  %114 = load <4 x i32>, <4 x i32>* %113, align 16, !tbaa !5
  %115 = sub <4 x i32> %107, %111
  %116 = sub <4 x i32> %108, %114
  %117 = add nuw nsw i64 %90, 16
  br label %89

118:                                              ; preds = %89
  %119 = add <4 x i32> %103, %102
  %120 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %119)
  tail call void @_Z6putinti(i32 noundef %120)
  br label %157

121:                                              ; preds = %79
  %122 = icmp ult i64 %71, 30
  br i1 %122, label %123, label %151

123:                                              ; preds = %121
  %124 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %71
  %125 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %71
  br label %126

126:                                              ; preds = %123, %145
  %127 = phi i32 [ 5000, %123 ], [ %148, %145 ]
  %128 = phi i32 [ %72, %123 ], [ %147, %145 ]
  %129 = icmp ugt i32 %127, 2233
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i32, i32* %125, align 4, !tbaa !5
  %132 = add nsw i32 %131, %128
  %133 = zext i32 %127 to i64
  %134 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4, !tbaa !5
  %136 = sub i32 %132, %135
  br label %145

137:                                              ; preds = %126
  %138 = load i32, i32* %124, align 4, !tbaa !5
  %139 = add nsw i32 %138, %128
  %140 = zext i32 %127 to i64
  %141 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !5
  %143 = add nsw i32 %139, %142
  %144 = srem i32 %143, 13333
  br label %145

145:                                              ; preds = %137, %130
  %146 = phi i32 [ 2, %137 ], [ 1, %130 ]
  %147 = phi i32 [ %144, %137 ], [ %136, %130 ]
  %148 = add nuw nsw i32 %127, %146
  %149 = icmp ult i32 %148, 10000
  br i1 %149, label %126, label %150, !llvm.loop !15

150:                                              ; preds = %145
  tail call void @_Z6putinti(i32 noundef %147)
  br label %157

151:                                              ; preds = %121
  %152 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %71
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = mul nsw i32 %153, %0
  %155 = add nsw i32 %154, %72
  %156 = srem i32 %155, 99988
  br label %157

157:                                              ; preds = %118, %151, %150, %74
  %158 = phi i32 [ %78, %74 ], [ %120, %118 ], [ %147, %150 ], [ %156, %151 ]
  %159 = add nuw nsw i64 %71, 1
  %160 = icmp eq i64 %159, 10000
  br i1 %160, label %161, label %70, !llvm.loop !16

161:                                              ; preds = %157
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %5) #5
  ret i32 %158
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z10long_arrayi(i32 noundef 9)
  ret i32 %1
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
