; ModuleID = 'tests//SysY2022/functional/81_skip_spaces.sy'
source_filename = "tests//SysY2022/functional/81_skip_spaces.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca [100 x i32], align 16
  %2 = bitcast [100 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %2) #3
  %3 = tail call noundef i32 @_Z6getintv()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %79, label %16

5:                                                ; preds = %16
  %6 = trunc i64 %20 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %79, label %8

8:                                                ; preds = %5
  %9 = shl i64 %20, 32
  %10 = ashr exact i64 %9, 32
  %11 = add i32 %6, -1
  %12 = and i32 %6, 7
  %13 = icmp ult i32 %11, 7
  br i1 %13, label %61, label %14

14:                                               ; preds = %8
  %15 = and i32 %6, -8
  br label %23

16:                                               ; preds = %0, %16
  %17 = phi i64 [ %20, %16 ], [ 0, %0 ]
  %18 = tail call noundef i32 @_Z6getintv()
  %19 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %17
  store i32 %18, i32* %19, align 4, !tbaa !4
  %20 = add nuw i64 %17, 1
  %21 = tail call noundef i32 @_Z6getintv()
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %5, label %16, !llvm.loop !8

23:                                               ; preds = %23, %14
  %24 = phi i64 [ %10, %14 ], [ %55, %23 ]
  %25 = phi i32 [ 0, %14 ], [ %58, %23 ]
  %26 = phi i32 [ 0, %14 ], [ %59, %23 ]
  %27 = add nsw i64 %24, -1
  %28 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !4
  %30 = add nsw i32 %29, %25
  %31 = add nsw i64 %24, -2
  %32 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !4
  %34 = add nsw i32 %33, %30
  %35 = add nsw i64 %24, -3
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !4
  %38 = add nsw i32 %37, %34
  %39 = add nsw i64 %24, -4
  %40 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !4
  %42 = add nsw i32 %41, %38
  %43 = add nsw i64 %24, -5
  %44 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !4
  %46 = add nsw i32 %45, %42
  %47 = add nsw i64 %24, -6
  %48 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = add nsw i32 %49, %46
  %51 = add nsw i64 %24, -7
  %52 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !4
  %54 = add nsw i32 %53, %50
  %55 = add nsw i64 %24, -8
  %56 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !4
  %58 = add nsw i32 %57, %54
  %59 = add i32 %26, 8
  %60 = icmp eq i32 %59, %15
  br i1 %60, label %61, label %23, !llvm.loop !10

61:                                               ; preds = %23, %8
  %62 = phi i32 [ undef, %8 ], [ %58, %23 ]
  %63 = phi i64 [ %10, %8 ], [ %55, %23 ]
  %64 = phi i32 [ 0, %8 ], [ %58, %23 ]
  %65 = icmp eq i32 %12, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61, %66
  %67 = phi i64 [ %70, %66 ], [ %63, %61 ]
  %68 = phi i32 [ %73, %66 ], [ %64, %61 ]
  %69 = phi i32 [ %74, %66 ], [ 0, %61 ]
  %70 = add nsw i64 %67, -1
  %71 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !4
  %73 = add nsw i32 %72, %68
  %74 = add i32 %69, 1
  %75 = icmp eq i32 %74, %12
  br i1 %75, label %76, label %66, !llvm.loop !11

76:                                               ; preds = %66, %61
  %77 = phi i32 [ %62, %61 ], [ %73, %66 ]
  %78 = srem i32 %77, 79
  br label %79

79:                                               ; preds = %0, %76, %5
  %80 = phi i32 [ 0, %5 ], [ %78, %76 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %2) #3
  ret i32 %80
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
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
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
