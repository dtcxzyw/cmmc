; ModuleID = 'tests//SysY2022/functional/63_big_int_mul.sy'
source_filename = "tests//SysY2022/functional/63_big_int_mul.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.mult1 = private unnamed_addr constant [20 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0], align 16
@__const.main.mult2 = private unnamed_addr constant [20 x i32] [i32 2, i32 3, i32 4, i32 2, i32 5, i32 7, i32 9, i32 9, i32 0, i32 1, i32 9, i32 8, i32 7, i32 6, i32 4, i32 3, i32 2, i32 1, i32 2, i32 2], align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca [25 x i32], align 16
  %2 = bitcast [25 x i32]* %1 to i8*
  %3 = alloca [25 x i32], align 16
  %4 = bitcast [25 x i32]* %3 to i8*
  %5 = alloca [40 x i32], align 16
  %6 = bitcast [40 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %2) #5
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %4) #5
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %6) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %2, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([20 x i32]* @__const.main.mult1 to i8*), i64 80, i1 false), !tbaa !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %4, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([20 x i32]* @__const.main.mult2 to i8*), i64 80, i1 false), !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(160) %6, i8 0, i64 160, i1 false), !tbaa !5
  br label %7

7:                                                ; preds = %0, %33
  %8 = phi i64 [ 19, %0 ], [ %35, %33 ]
  %9 = phi i64 [ 39, %0 ], [ %34, %33 ]
  %10 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %8
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = shl i64 %9, 32
  %13 = ashr exact i64 %12, 32
  br label %14

14:                                               ; preds = %7, %30
  %15 = phi i64 [ %13, %7 ], [ %24, %30 ]
  %16 = phi i64 [ 19, %7 ], [ %31, %30 ]
  %17 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %15
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds [25 x i32], [25 x i32]* %1, i64 0, i64 %16
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = mul nsw i32 %20, %11
  %22 = add nsw i32 %21, %18
  %23 = icmp sgt i32 %22, 9
  store i32 %22, i32* %17, align 4, !tbaa !5
  %24 = add nsw i64 %15, -1
  br i1 %23, label %25, label %30

25:                                               ; preds = %14
  %26 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %24
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = udiv i32 %22, 10
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %26, align 4, !tbaa !5
  br label %30

30:                                               ; preds = %14, %25
  %31 = add nsw i64 %16, -1
  %32 = icmp eq i64 %16, 0
  br i1 %32, label %33, label %14, !llvm.loop !9

33:                                               ; preds = %30
  %34 = add i64 %15, 18
  %35 = add nsw i64 %8, -1
  %36 = icmp eq i64 %8, 0
  br i1 %36, label %37, label %7, !llvm.loop !11

37:                                               ; preds = %33
  %38 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %39 = load i32, i32* %38, align 16, !tbaa !5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @_Z6putinti(i32 noundef %39)
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 1
  %44 = load i32, i32* %43, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %44)
  %45 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 2
  %46 = load i32, i32* %45, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %46)
  %47 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 3
  %48 = load i32, i32* %47, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %48)
  %49 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 4
  %50 = load i32, i32* %49, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %50)
  %51 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 5
  %52 = load i32, i32* %51, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %52)
  %53 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 6
  %54 = load i32, i32* %53, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %54)
  %55 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 7
  %56 = load i32, i32* %55, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %56)
  %57 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 8
  %58 = load i32, i32* %57, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %58)
  %59 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 9
  %60 = load i32, i32* %59, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %60)
  %61 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 10
  %62 = load i32, i32* %61, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %62)
  %63 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 11
  %64 = load i32, i32* %63, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %64)
  %65 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 12
  %66 = load i32, i32* %65, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %66)
  %67 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 13
  %68 = load i32, i32* %67, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %68)
  %69 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 14
  %70 = load i32, i32* %69, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %70)
  %71 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 15
  %72 = load i32, i32* %71, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %72)
  %73 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 16
  %74 = load i32, i32* %73, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %74)
  %75 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 17
  %76 = load i32, i32* %75, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %76)
  %77 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 18
  %78 = load i32, i32* %77, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %78)
  %79 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 19
  %80 = load i32, i32* %79, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %80)
  %81 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 20
  %82 = load i32, i32* %81, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %82)
  %83 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 21
  %84 = load i32, i32* %83, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %84)
  %85 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 22
  %86 = load i32, i32* %85, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %86)
  %87 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 23
  %88 = load i32, i32* %87, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %88)
  %89 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 24
  %90 = load i32, i32* %89, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %90)
  %91 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 25
  %92 = load i32, i32* %91, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %92)
  %93 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 26
  %94 = load i32, i32* %93, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %94)
  %95 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 27
  %96 = load i32, i32* %95, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %96)
  %97 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 28
  %98 = load i32, i32* %97, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %98)
  %99 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 29
  %100 = load i32, i32* %99, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %100)
  %101 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 30
  %102 = load i32, i32* %101, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %102)
  %103 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 31
  %104 = load i32, i32* %103, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %104)
  %105 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 32
  %106 = load i32, i32* %105, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %106)
  %107 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 33
  %108 = load i32, i32* %107, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %108)
  %109 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 34
  %110 = load i32, i32* %109, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %110)
  %111 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 35
  %112 = load i32, i32* %111, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %112)
  %113 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 36
  %114 = load i32, i32* %113, align 16, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %114)
  %115 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 37
  %116 = load i32, i32* %115, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %116)
  %117 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 38
  %118 = load i32, i32* %117, align 8, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %118)
  %119 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 39
  %120 = load i32, i32* %119, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %120)
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %2) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
