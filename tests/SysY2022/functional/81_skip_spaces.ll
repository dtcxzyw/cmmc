; ModuleID = 'tests//SysY2022/functional/81_skip_spaces.sy'
source_filename = "tests//SysY2022/functional/81_skip_spaces.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca [100 x i32], align 16
  %2 = bitcast [100 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %2) #4
  %3 = tail call noundef i32 @_Z6getintv()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %108, label %89

5:                                                ; preds = %89
  %6 = trunc i64 %93 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %108, label %8

8:                                                ; preds = %5
  %9 = shl i64 %93, 32
  %10 = ashr exact i64 %9, 32
  %11 = and i64 %90, 4294967295
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i64 %11, 7
  br i1 %13, label %86, label %14

14:                                               ; preds = %8
  %15 = and i64 %12, 8589934584
  %16 = sub nsw i64 %10, %15
  %17 = add nsw i64 %15, -8
  %18 = lshr exact i64 %17, 3
  %19 = add nuw nsw i64 %18, 1
  %20 = and i64 %19, 1
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %14
  %23 = and i64 %19, 4611686018427387902
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ 0, %22 ], [ %55, %24 ]
  %26 = phi <4 x i32> [ zeroinitializer, %22 ], [ %53, %24 ]
  %27 = phi <4 x i32> [ zeroinitializer, %22 ], [ %54, %24 ]
  %28 = phi i64 [ 0, %22 ], [ %56, %24 ]
  %29 = xor i64 %25, -1
  %30 = add i64 %10, %29
  %31 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 -3
  %33 = bitcast i32* %32 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !5
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %36 = getelementptr inbounds i32, i32* %31, i64 -7
  %37 = bitcast i32* %36 to <4 x i32>*
  %38 = load <4 x i32>, <4 x i32>* %37, align 4, !tbaa !5
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %40 = add <4 x i32> %35, %26
  %41 = add <4 x i32> %39, %27
  %42 = sub nuw nsw i64 -9, %25
  %43 = add i64 %10, %42
  %44 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 -3
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !5
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %49 = getelementptr inbounds i32, i32* %44, i64 -7
  %50 = bitcast i32* %49 to <4 x i32>*
  %51 = load <4 x i32>, <4 x i32>* %50, align 4, !tbaa !5
  %52 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %53 = add <4 x i32> %48, %40
  %54 = add <4 x i32> %52, %41
  %55 = add nuw i64 %25, 16
  %56 = add i64 %28, 2
  %57 = icmp eq i64 %56, %23
  br i1 %57, label %58, label %24, !llvm.loop !9

58:                                               ; preds = %24
  %59 = sub i64 -17, %25
  br label %60

60:                                               ; preds = %58, %14
  %61 = phi <4 x i32> [ undef, %14 ], [ %53, %58 ]
  %62 = phi <4 x i32> [ undef, %14 ], [ %54, %58 ]
  %63 = phi i64 [ -1, %14 ], [ %59, %58 ]
  %64 = phi <4 x i32> [ zeroinitializer, %14 ], [ %53, %58 ]
  %65 = phi <4 x i32> [ zeroinitializer, %14 ], [ %54, %58 ]
  %66 = icmp eq i64 %20, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %60
  %68 = add i64 %10, %63
  %69 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %68
  %70 = getelementptr inbounds i32, i32* %69, i64 -3
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 4, !tbaa !5
  %73 = shufflevector <4 x i32> %72, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %74 = getelementptr inbounds i32, i32* %69, i64 -7
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = load <4 x i32>, <4 x i32>* %75, align 4, !tbaa !5
  %77 = shufflevector <4 x i32> %76, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %78 = add <4 x i32> %73, %64
  %79 = add <4 x i32> %77, %65
  br label %80

80:                                               ; preds = %60, %67
  %81 = phi <4 x i32> [ %61, %60 ], [ %78, %67 ]
  %82 = phi <4 x i32> [ %62, %60 ], [ %79, %67 ]
  %83 = add <4 x i32> %82, %81
  %84 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %83)
  %85 = icmp eq i64 %12, %15
  br i1 %85, label %105, label %86

86:                                               ; preds = %8, %80
  %87 = phi i64 [ %10, %8 ], [ %16, %80 ]
  %88 = phi i32 [ 0, %8 ], [ %84, %80 ]
  br label %96

89:                                               ; preds = %0, %89
  %90 = phi i64 [ %93, %89 ], [ 0, %0 ]
  %91 = tail call noundef i32 @_Z6getintv()
  %92 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %90
  store i32 %91, i32* %92, align 4, !tbaa !5
  %93 = add nuw i64 %90, 1
  %94 = tail call noundef i32 @_Z6getintv()
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %5, label %89, !llvm.loop !12

96:                                               ; preds = %86, %96
  %97 = phi i64 [ %99, %96 ], [ %87, %86 ]
  %98 = phi i32 [ %102, %96 ], [ %88, %86 ]
  %99 = add nsw i64 %97, -1
  %100 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = add nsw i32 %101, %98
  %103 = trunc i64 %99 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %96, !llvm.loop !13

105:                                              ; preds = %96, %80
  %106 = phi i32 [ %84, %80 ], [ %102, %96 ]
  %107 = srem i32 %106, 79
  br label %108

108:                                              ; preds = %0, %105, %5
  %109 = phi i32 [ 0, %5 ], [ %107, %105 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %2) #4
  ret i32 %109
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10, !14, !11}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
