; ModuleID = 'tests//SysY2022/final_performance/00_bitset1.sy'
source_filename = "tests//SysY2022/final_performance/00_bitset1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@seed = dso_local local_unnamed_addr global [3 x i32] [i32 19971231, i32 19981013, i32 1000000007], align 4
@staticvalue = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [10000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z3setPiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [31 x i32], align 16
  %5 = bitcast [31 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 124, i8* nonnull %5) #6
  %6 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 28
  %7 = bitcast i32* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(124) %7, i8 0, i64 12, i1 false)
  %8 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %8, align 16, !tbaa !4
  %9 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 1
  store i32 2, i32* %9, align 4, !tbaa !4
  %10 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 2
  store i32 4, i32* %10, align 8, !tbaa !4
  %11 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 3
  store i32 8, i32* %11, align 4, !tbaa !4
  %12 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 4
  store i32 16, i32* %12, align 16, !tbaa !4
  %13 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 5
  store i32 32, i32* %13, align 4, !tbaa !4
  %14 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 6
  store i32 64, i32* %14, align 8, !tbaa !4
  %15 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 7
  store i32 128, i32* %15, align 4, !tbaa !4
  %16 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 8
  store i32 256, i32* %16, align 16, !tbaa !4
  %17 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 9
  store i32 512, i32* %17, align 4, !tbaa !4
  %18 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 10
  store i32 1024, i32* %18, align 8, !tbaa !4
  %19 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 11
  store i32 2048, i32* %19, align 4, !tbaa !4
  %20 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 12
  store i32 4096, i32* %20, align 16, !tbaa !4
  %21 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 13
  store i32 8192, i32* %21, align 4, !tbaa !4
  %22 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 14
  store i32 16384, i32* %22, align 8, !tbaa !4
  %23 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 15
  store i32 32768, i32* %23, align 4, !tbaa !4
  %24 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 16
  store i32 65536, i32* %24, align 16, !tbaa !4
  %25 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 17
  store i32 131072, i32* %25, align 4, !tbaa !4
  %26 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 18
  store i32 262144, i32* %26, align 8, !tbaa !4
  %27 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 19
  store i32 524288, i32* %27, align 4, !tbaa !4
  %28 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 20
  store i32 1048576, i32* %28, align 16, !tbaa !4
  %29 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 21
  store i32 2097152, i32* %29, align 4, !tbaa !4
  %30 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 22
  store i32 4194304, i32* %30, align 8, !tbaa !4
  %31 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 23
  store i32 8388608, i32* %31, align 4, !tbaa !4
  %32 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 24
  store i32 16777216, i32* %32, align 16, !tbaa !4
  %33 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 25
  store i32 33554432, i32* %33, align 4, !tbaa !4
  %34 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 26
  store i32 67108864, i32* %34, align 8, !tbaa !4
  %35 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 27
  store i32 134217728, i32* %35, align 4, !tbaa !4
  %36 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 28
  store i32 268435456, i32* %36, align 16, !tbaa !4
  %37 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 29
  store i32 536870912, i32* %37, align 4, !tbaa !4
  %38 = icmp sgt i32 %1, 299999
  br i1 %38, label %64, label %39

39:                                               ; preds = %3
  %40 = sdiv i32 %1, 30
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !4
  %44 = srem i32 %1, 30
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !4
  %48 = sdiv i32 %43, %47
  %49 = srem i32 %48, 2
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %61, label %51

51:                                               ; preds = %39
  %52 = icmp eq i32 %49, 0
  %53 = icmp eq i32 %2, 1
  %54 = and i1 %53, %52
  %55 = select i1 %54, i32 %47, i32 0
  %56 = icmp eq i32 %49, 1
  %57 = icmp eq i32 %2, 0
  %58 = and i1 %57, %56
  %59 = select i1 %58, i32 %47, i32 0
  %60 = sub nsw i32 %55, %59
  br label %61

61:                                               ; preds = %51, %39
  %62 = phi i32 [ 0, %39 ], [ %60, %51 ]
  %63 = add nsw i32 %62, %43
  store i32 %63, i32* %42, align 4, !tbaa !4
  br label %64

64:                                               ; preds = %3, %61
  call void @llvm.lifetime.end.p0i8(i64 124, i8* nonnull %5) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4randv() local_unnamed_addr #3 {
  %1 = load i32, i32* @staticvalue, align 4, !tbaa !4
  %2 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 0), align 4, !tbaa !4
  %3 = mul nsw i32 %2, %1
  %4 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 1), align 4, !tbaa !4
  %5 = add nsw i32 %3, %4
  %6 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 2), align 4, !tbaa !4
  %7 = srem i32 %5, %6
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %6, i32 0
  %10 = add nsw i32 %7, %9
  store i32 %10, i32* @staticvalue, align 4, !tbaa !4
  ret i32 %10
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = alloca [31 x i32], align 16
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = tail call noundef i32 @_Z6getintv()
  store i32 %3, i32* @staticvalue, align 4, !tbaa !4
  tail call void @_Z15_sysy_starttimei(i32 noundef 56)
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %86

5:                                                ; preds = %0
  %6 = load i32, i32* @staticvalue, align 4, !tbaa !4
  %7 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 0), align 4, !tbaa !4
  %8 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 1), align 4, !tbaa !4
  %9 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 2), align 4, !tbaa !4
  %10 = bitcast [31 x i32]* %1 to i8*
  %11 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 28
  %12 = bitcast i32* %11 to i8*
  %13 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 0
  %14 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 1
  %15 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 2
  %16 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 3
  %17 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 4
  %18 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 5
  %19 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 6
  %20 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 7
  %21 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 8
  %22 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 9
  %23 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 10
  %24 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 11
  %25 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 12
  %26 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 13
  %27 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 14
  %28 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 15
  %29 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 16
  %30 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 17
  %31 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 18
  %32 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 19
  %33 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 20
  %34 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 21
  %35 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 22
  %36 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 23
  %37 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 24
  %38 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 25
  %39 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 26
  %40 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 27
  %41 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 29
  br label %42

42:                                               ; preds = %5, %81
  %43 = phi i32 [ %2, %5 ], [ %45, %81 ]
  %44 = phi i32 [ %6, %5 ], [ %58, %81 ]
  %45 = add nsw i32 %43, -1
  %46 = mul nsw i32 %7, %44
  %47 = add nsw i32 %46, %8
  %48 = srem i32 %47, %9
  %49 = icmp slt i32 %48, 0
  %50 = select i1 %49, i32 %9, i32 0
  %51 = add nsw i32 %50, %48
  %52 = srem i32 %51, 300000
  %53 = mul nsw i32 %51, %7
  %54 = add nsw i32 %53, %8
  %55 = srem i32 %54, %9
  %56 = icmp slt i32 %55, 0
  %57 = select i1 %56, i32 %9, i32 0
  %58 = add nsw i32 %57, %55
  %59 = srem i32 %58, 2
  call void @llvm.lifetime.start.p0i8(i64 124, i8* nonnull %10) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(124) %12, i8 0, i64 12, i1 false) #6
  store i32 1, i32* %13, align 16, !tbaa !4
  store i32 2, i32* %14, align 4, !tbaa !4
  store i32 4, i32* %15, align 8, !tbaa !4
  store i32 8, i32* %16, align 4, !tbaa !4
  store i32 16, i32* %17, align 16, !tbaa !4
  store i32 32, i32* %18, align 4, !tbaa !4
  store i32 64, i32* %19, align 8, !tbaa !4
  store i32 128, i32* %20, align 4, !tbaa !4
  store i32 256, i32* %21, align 16, !tbaa !4
  store i32 512, i32* %22, align 4, !tbaa !4
  store i32 1024, i32* %23, align 8, !tbaa !4
  store i32 2048, i32* %24, align 4, !tbaa !4
  store i32 4096, i32* %25, align 16, !tbaa !4
  store i32 8192, i32* %26, align 4, !tbaa !4
  store i32 16384, i32* %27, align 8, !tbaa !4
  store i32 32768, i32* %28, align 4, !tbaa !4
  store i32 65536, i32* %29, align 16, !tbaa !4
  store i32 131072, i32* %30, align 4, !tbaa !4
  store i32 262144, i32* %31, align 8, !tbaa !4
  store i32 524288, i32* %32, align 4, !tbaa !4
  store i32 1048576, i32* %33, align 16, !tbaa !4
  store i32 2097152, i32* %34, align 4, !tbaa !4
  store i32 4194304, i32* %35, align 8, !tbaa !4
  store i32 8388608, i32* %36, align 4, !tbaa !4
  store i32 16777216, i32* %37, align 16, !tbaa !4
  store i32 33554432, i32* %38, align 4, !tbaa !4
  store i32 67108864, i32* %39, align 8, !tbaa !4
  store i32 134217728, i32* %40, align 4, !tbaa !4
  store i32 268435456, i32* %11, align 16, !tbaa !4
  store i32 536870912, i32* %41, align 4, !tbaa !4
  %60 = sdiv i32 %52, 30
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10000 x i32], [10000 x i32]* @a, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !4
  %64 = srem i32 %52, 30
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !4
  %68 = sdiv i32 %63, %67
  %69 = srem i32 %68, 2
  %70 = icmp eq i32 %69, %59
  br i1 %70, label %81, label %71

71:                                               ; preds = %42
  %72 = icmp eq i32 %69, 0
  %73 = icmp eq i32 %59, 1
  %74 = and i1 %73, %72
  %75 = select i1 %74, i32 %67, i32 0
  %76 = icmp eq i32 %69, 1
  %77 = icmp eq i32 %59, 0
  %78 = and i1 %77, %76
  %79 = select i1 %78, i32 %67, i32 0
  %80 = sub nsw i32 %75, %79
  br label %81

81:                                               ; preds = %42, %71
  %82 = phi i32 [ 0, %42 ], [ %80, %71 ]
  %83 = add nsw i32 %82, %63
  store i32 %83, i32* %62, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 124, i8* nonnull %10) #6
  %84 = icmp ugt i32 %43, 1
  br i1 %84, label %42, label %85, !llvm.loop !8

85:                                               ; preds = %81
  store i32 %58, i32* @staticvalue, align 4, !tbaa !4
  br label %86

86:                                               ; preds = %85, %0
  tail call void @_Z14_sysy_stoptimei(i32 noundef 64)
  tail call void @_Z8putarrayiPi(i32 noundef 10000, i32* noundef getelementptr inbounds ([10000 x i32], [10000 x i32]* @a, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #5

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #5

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #5

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
