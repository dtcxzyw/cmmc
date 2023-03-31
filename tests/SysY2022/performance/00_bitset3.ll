; ModuleID = 'tests//SysY2022/performance/00_bitset3.sy'
source_filename = "tests//SysY2022/performance/00_bitset3.sy"
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
  %8 = bitcast [31 x i32]* %4 to <4 x i32>*
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, <4 x i32>* %8, align 16, !tbaa !5
  %9 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 4
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, <4 x i32>* %10, align 16, !tbaa !5
  %11 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 8
  %12 = bitcast i32* %11 to <4 x i32>*
  store <4 x i32> <i32 256, i32 512, i32 1024, i32 2048>, <4 x i32>* %12, align 16, !tbaa !5
  %13 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 12
  %14 = bitcast i32* %13 to <4 x i32>*
  store <4 x i32> <i32 4096, i32 8192, i32 16384, i32 32768>, <4 x i32>* %14, align 16, !tbaa !5
  %15 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 16
  %16 = bitcast i32* %15 to <4 x i32>*
  store <4 x i32> <i32 65536, i32 131072, i32 262144, i32 524288>, <4 x i32>* %16, align 16, !tbaa !5
  %17 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 20
  %18 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> <i32 1048576, i32 2097152, i32 4194304, i32 8388608>, <4 x i32>* %18, align 16, !tbaa !5
  %19 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 24
  %20 = bitcast i32* %19 to <4 x i32>*
  store <4 x i32> <i32 16777216, i32 33554432, i32 67108864, i32 134217728>, <4 x i32>* %20, align 16, !tbaa !5
  %21 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 28
  store i32 268435456, i32* %21, align 16, !tbaa !5
  %22 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 29
  store i32 536870912, i32* %22, align 4, !tbaa !5
  %23 = icmp sgt i32 %1, 299999
  br i1 %23, label %49, label %24

24:                                               ; preds = %3
  %25 = sdiv i32 %1, 30
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = srem i32 %1, 30
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [31 x i32], [31 x i32]* %4, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = sdiv i32 %28, %32
  %34 = srem i32 %33, 2
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %46, label %36

36:                                               ; preds = %24
  %37 = icmp eq i32 %34, 0
  %38 = icmp eq i32 %2, 1
  %39 = and i1 %38, %37
  %40 = select i1 %39, i32 %32, i32 0
  %41 = icmp eq i32 %34, 1
  %42 = icmp eq i32 %2, 0
  %43 = and i1 %42, %41
  %44 = select i1 %43, i32 %32, i32 0
  %45 = sub nsw i32 %40, %44
  br label %46

46:                                               ; preds = %36, %24
  %47 = phi i32 [ 0, %24 ], [ %45, %36 ]
  %48 = add nsw i32 %47, %28
  store i32 %48, i32* %27, align 4, !tbaa !5
  br label %49

49:                                               ; preds = %3, %46
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
  %1 = load i32, i32* @staticvalue, align 4, !tbaa !5
  %2 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 0), align 4, !tbaa !5
  %3 = mul nsw i32 %2, %1
  %4 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 1), align 4, !tbaa !5
  %5 = add nsw i32 %3, %4
  %6 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 2), align 4, !tbaa !5
  %7 = srem i32 %5, %6
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %6, i32 0
  %10 = add nsw i32 %7, %9
  store i32 %10, i32* @staticvalue, align 4, !tbaa !5
  ret i32 %10
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = alloca [31 x i32], align 16
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = tail call noundef i32 @_Z6getintv()
  store i32 %3, i32* @staticvalue, align 4, !tbaa !5
  tail call void @_Z15_sysy_starttimei(i32 noundef 56)
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %76

5:                                                ; preds = %0
  %6 = load i32, i32* @staticvalue, align 4, !tbaa !5
  %7 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 0), align 4, !tbaa !5
  %8 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 1), align 4, !tbaa !5
  %9 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @seed, i64 0, i64 2), align 4, !tbaa !5
  %10 = bitcast [31 x i32]* %1 to i8*
  %11 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 28
  %12 = bitcast i32* %11 to i8*
  %13 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 4
  %14 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 8
  %15 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 12
  %16 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 16
  %17 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 20
  %18 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 24
  %19 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 29
  %20 = bitcast [31 x i32]* %1 to <4 x i32>*
  %21 = bitcast i32* %13 to <4 x i32>*
  %22 = bitcast i32* %14 to <4 x i32>*
  %23 = bitcast i32* %15 to <4 x i32>*
  %24 = bitcast i32* %16 to <4 x i32>*
  %25 = bitcast i32* %17 to <4 x i32>*
  %26 = bitcast i32* %18 to <4 x i32>*
  br label %27

27:                                               ; preds = %5, %71
  %28 = phi i32 [ %2, %5 ], [ %30, %71 ]
  %29 = phi i32 [ %6, %5 ], [ %43, %71 ]
  %30 = add nsw i32 %28, -1
  %31 = mul nsw i32 %7, %29
  %32 = add nsw i32 %31, %8
  %33 = srem i32 %32, %9
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %34, i32 %9, i32 0
  %36 = add nsw i32 %35, %33
  %37 = srem i32 %36, 300000
  %38 = mul nsw i32 %36, %7
  %39 = add nsw i32 %38, %8
  %40 = srem i32 %39, %9
  %41 = icmp slt i32 %40, 0
  %42 = select i1 %41, i32 %9, i32 0
  %43 = add nsw i32 %42, %40
  call void @llvm.lifetime.start.p0i8(i64 124, i8* nonnull %10) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(124) %12, i8 0, i64 12, i1 false) #6
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, <4 x i32>* %20, align 16, !tbaa !5
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, <4 x i32>* %21, align 16, !tbaa !5
  store <4 x i32> <i32 256, i32 512, i32 1024, i32 2048>, <4 x i32>* %22, align 16, !tbaa !5
  store <4 x i32> <i32 4096, i32 8192, i32 16384, i32 32768>, <4 x i32>* %23, align 16, !tbaa !5
  store <4 x i32> <i32 65536, i32 131072, i32 262144, i32 524288>, <4 x i32>* %24, align 16, !tbaa !5
  store <4 x i32> <i32 1048576, i32 2097152, i32 4194304, i32 8388608>, <4 x i32>* %25, align 16, !tbaa !5
  store <4 x i32> <i32 16777216, i32 33554432, i32 67108864, i32 134217728>, <4 x i32>* %26, align 16, !tbaa !5
  store i32 268435456, i32* %11, align 16, !tbaa !5
  store i32 536870912, i32* %19, align 4, !tbaa !5
  %44 = sdiv i32 %37, 30
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [10000 x i32], [10000 x i32]* @a, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = srem i32 %37, 30
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [31 x i32], [31 x i32]* %1, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = sdiv i32 %47, %51
  %53 = insertelement <2 x i32> poison, i32 %43, i64 0
  %54 = insertelement <2 x i32> %53, i32 %52, i64 1
  %55 = srem <2 x i32> %54, <i32 2, i32 2>
  %56 = shufflevector <2 x i32> %55, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %57 = shufflevector <2 x i32> %55, <2 x i32> poison, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %58 = icmp eq <4 x i32> %57, %56
  %59 = extractelement <4 x i1> %58, i64 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %27
  %61 = icmp eq <4 x i32> %56, <i32 0, i32 1, i32 1, i32 0>
  %62 = shufflevector <4 x i1> %61, <4 x i1> poison, <4 x i32> <i32 undef, i32 undef, i32 3, i32 undef>
  %63 = and <4 x i1> %61, %62
  %64 = extractelement <4 x i1> %63, i64 2
  %65 = select i1 %64, i32 %51, i32 0
  %66 = shufflevector <4 x i1> %61, <4 x i1> poison, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %67 = and <4 x i1> %61, %66
  %68 = extractelement <4 x i1> %67, i64 0
  %69 = select i1 %68, i32 %51, i32 0
  %70 = sub nsw i32 %65, %69
  br label %71

71:                                               ; preds = %27, %60
  %72 = phi i32 [ 0, %27 ], [ %70, %60 ]
  %73 = add nsw i32 %72, %47
  store i32 %73, i32* %46, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 124, i8* nonnull %10) #6
  %74 = icmp ugt i32 %28, 1
  br i1 %74, label %27, label %75, !llvm.loop !9

75:                                               ; preds = %71
  store i32 %43, i32* @staticvalue, align 4, !tbaa !5
  br label %76

76:                                               ; preds = %75, %0
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
