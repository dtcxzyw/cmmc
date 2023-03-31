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
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %5) #4
  %6 = bitcast [10000 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %6) #4
  %7 = bitcast [10000 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %7) #4
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %19, %8 ]
  %10 = mul nuw nsw i64 %9, %9
  %11 = trunc i64 %10 to i32
  %12 = urem i32 %11, 10
  %13 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %9
  store i32 %12, i32* %13, align 8, !tbaa !4
  %14 = or i64 %9, 1
  %15 = mul nuw nsw i64 %14, %14
  %16 = trunc i64 %15 to i32
  %17 = urem i32 %16, 10
  %18 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %14
  store i32 %17, i32* %18, align 4, !tbaa !4
  %19 = add nuw nsw i64 %9, 2
  %20 = icmp eq i64 %19, 10000
  br i1 %20, label %21, label %8, !llvm.loop !8

21:                                               ; preds = %8, %21
  %22 = phi i64 [ %34, %21 ], [ 0, %8 ]
  %23 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %22
  %24 = load i32, i32* %23, align 8, !tbaa !4
  %25 = mul nsw i32 %24, %24
  %26 = urem i32 %25, 10
  %27 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %22
  store i32 %26, i32* %27, align 8, !tbaa !4
  %28 = or i64 %22, 1
  %29 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !4
  %31 = mul nsw i32 %30, %30
  %32 = urem i32 %31, 10
  %33 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %28
  store i32 %32, i32* %33, align 4, !tbaa !4
  %34 = add nuw nsw i64 %22, 2
  %35 = icmp eq i64 %34, 10000
  br i1 %35, label %36, label %21, !llvm.loop !10

36:                                               ; preds = %21, %36
  %37 = phi i64 [ %55, %36 ], [ 0, %21 ]
  %38 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %37
  %39 = load i32, i32* %38, align 8, !tbaa !4
  %40 = mul nsw i32 %39, %39
  %41 = urem i32 %40, 100
  %42 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %37
  %43 = load i32, i32* %42, align 8, !tbaa !4
  %44 = add nsw i32 %41, %43
  %45 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %37
  store i32 %44, i32* %45, align 8, !tbaa !4
  %46 = or i64 %37, 1
  %47 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !4
  %49 = mul nsw i32 %48, %48
  %50 = urem i32 %49, 100
  %51 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %46
  %52 = load i32, i32* %51, align 4, !tbaa !4
  %53 = add nsw i32 %50, %52
  %54 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %46
  store i32 %53, i32* %54, align 4, !tbaa !4
  %55 = add nuw nsw i64 %37, 2
  %56 = icmp eq i64 %55, 10000
  br i1 %56, label %57, label %36, !llvm.loop !11

57:                                               ; preds = %36, %137
  %58 = phi i64 [ %139, %137 ], [ 0, %36 ]
  %59 = phi i32 [ %138, %137 ], [ 0, %36 ]
  %60 = icmp ult i64 %58, 10
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %58
  %63 = load i32, i32* %62, align 4, !tbaa !4
  %64 = add nsw i32 %63, %59
  %65 = srem i32 %64, 1333
  tail call void @_Z6putinti(i32 noundef %65)
  br label %137

66:                                               ; preds = %57
  %67 = icmp ult i64 %58, 20
  br i1 %67, label %68, label %101

68:                                               ; preds = %66
  %69 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %58
  %70 = load i32, i32* %69, align 4, !tbaa !4
  %71 = shl i32 %70, 1
  %72 = shl i32 %70, 1
  br label %73

73:                                               ; preds = %73, %68
  %74 = phi i64 [ 5000, %68 ], [ %98, %73 ]
  %75 = phi i32 [ %59, %68 ], [ %97, %73 ]
  %76 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %74
  %77 = load i32, i32* %76, align 4, !tbaa !4
  %78 = add nuw nsw i64 %74, 1
  %79 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !4
  %81 = add i32 %75, %71
  %82 = add i32 %77, %80
  %83 = add nuw nsw i64 %74, 2
  %84 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !4
  %86 = add i32 %82, %85
  %87 = add nuw nsw i64 %74, 3
  %88 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !4
  %90 = add i32 %81, %72
  %91 = add i32 %86, %89
  %92 = add nuw nsw i64 %74, 4
  %93 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !4
  %95 = add i32 %90, %70
  %96 = add i32 %91, %94
  %97 = sub i32 %95, %96
  %98 = add nuw nsw i64 %74, 5
  %99 = icmp eq i64 %98, 10000
  br i1 %99, label %100, label %73, !llvm.loop !12

100:                                              ; preds = %73
  tail call void @_Z6putinti(i32 noundef %97)
  br label %137

101:                                              ; preds = %66
  %102 = icmp ult i64 %58, 30
  br i1 %102, label %103, label %131

103:                                              ; preds = %101
  %104 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %58
  %105 = getelementptr inbounds [10000 x i32], [10000 x i32]* %3, i64 0, i64 %58
  br label %106

106:                                              ; preds = %103, %125
  %107 = phi i32 [ 5000, %103 ], [ %128, %125 ]
  %108 = phi i32 [ %59, %103 ], [ %127, %125 ]
  %109 = icmp ugt i32 %107, 2233
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* %105, align 4, !tbaa !4
  %112 = add nsw i32 %111, %108
  %113 = zext i32 %107 to i64
  %114 = getelementptr inbounds [10000 x i32], [10000 x i32]* %2, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !4
  %116 = sub i32 %112, %115
  br label %125

117:                                              ; preds = %106
  %118 = load i32, i32* %104, align 4, !tbaa !4
  %119 = add nsw i32 %118, %108
  %120 = zext i32 %107 to i64
  %121 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !4
  %123 = add nsw i32 %119, %122
  %124 = srem i32 %123, 13333
  br label %125

125:                                              ; preds = %117, %110
  %126 = phi i32 [ 2, %117 ], [ 1, %110 ]
  %127 = phi i32 [ %124, %117 ], [ %116, %110 ]
  %128 = add nuw nsw i32 %107, %126
  %129 = icmp ult i32 %128, 10000
  br i1 %129, label %106, label %130, !llvm.loop !13

130:                                              ; preds = %125
  tail call void @_Z6putinti(i32 noundef %127)
  br label %137

131:                                              ; preds = %101
  %132 = getelementptr inbounds [10000 x i32], [10000 x i32]* %4, i64 0, i64 %58
  %133 = load i32, i32* %132, align 4, !tbaa !4
  %134 = mul nsw i32 %133, %0
  %135 = add nsw i32 %134, %59
  %136 = srem i32 %135, 99988
  br label %137

137:                                              ; preds = %100, %131, %130, %61
  %138 = phi i32 [ %65, %61 ], [ %97, %100 ], [ %127, %130 ], [ %136, %131 ]
  %139 = add nuw nsw i64 %58, 1
  %140 = icmp eq i64 %139, 10000
  br i1 %140, label %141, label %57, !llvm.loop !14

141:                                              ; preds = %137
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %5) #4
  ret i32 %138
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

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
