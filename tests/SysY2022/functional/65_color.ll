; ModuleID = 'tests//SysY2022/functional/65_color.sy'
source_filename = "tests//SysY2022/functional/65_color.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@dp = dso_local local_unnamed_addr global [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]] zeroinitializer, align 16
@list = dso_local local_unnamed_addr global [200 x i32] zeroinitializer, align 16
@cns = dso_local local_unnamed_addr global [20 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5equalii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z3dfsiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = sext i32 %0 to i64
  %8 = sext i32 %1 to i64
  %9 = sext i32 %2 to i64
  %10 = sext i32 %3 to i64
  %11 = sext i32 %4 to i64
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %84

16:                                               ; preds = %6
  %17 = add nsw i32 %1, %0
  %18 = add nsw i32 %17, %2
  %19 = add nsw i32 %18, %3
  %20 = sub i32 0, %4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %84, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %0, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %22
  %25 = icmp eq i32 %5, 2
  %26 = sext i1 %25 to i32
  %27 = add i32 %26, %0
  %28 = add nsw i32 %0, -1
  %29 = tail call noundef i32 @_Z3dfsiiiiii(i32 noundef %28, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  %30 = mul nsw i32 %29, %27
  %31 = srem i32 %30, 1000000007
  br label %32

32:                                               ; preds = %24, %22
  %33 = phi i32 [ %31, %24 ], [ 0, %22 ]
  %34 = icmp eq i32 %1, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = icmp eq i32 %5, 3
  %37 = sext i1 %36 to i32
  %38 = add i32 %37, %1
  %39 = add nsw i32 %0, 1
  %40 = add nsw i32 %1, -1
  %41 = tail call noundef i32 @_Z3dfsiiiiii(i32 noundef %39, i32 noundef %40, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2)
  %42 = mul nsw i32 %41, %38
  %43 = add nsw i32 %42, %33
  %44 = srem i32 %43, 1000000007
  br label %45

45:                                               ; preds = %35, %32
  %46 = phi i32 [ %44, %35 ], [ %33, %32 ]
  %47 = icmp eq i32 %2, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = icmp eq i32 %5, 4
  %50 = sext i1 %49 to i32
  %51 = add i32 %50, %2
  %52 = add nsw i32 %1, 1
  %53 = add nsw i32 %2, -1
  %54 = tail call noundef i32 @_Z3dfsiiiiii(i32 noundef %0, i32 noundef %52, i32 noundef %53, i32 noundef %3, i32 noundef %4, i32 noundef 3)
  %55 = mul nsw i32 %54, %51
  %56 = add nsw i32 %55, %46
  %57 = srem i32 %56, 1000000007
  br label %58

58:                                               ; preds = %48, %45
  %59 = phi i32 [ %57, %48 ], [ %46, %45 ]
  %60 = icmp eq i32 %3, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = icmp eq i32 %5, 5
  %63 = sext i1 %62 to i32
  %64 = add i32 %63, %3
  %65 = add nsw i32 %2, 1
  %66 = add nsw i32 %3, -1
  %67 = tail call noundef i32 @_Z3dfsiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %65, i32 noundef %66, i32 noundef %4, i32 noundef 4)
  %68 = mul nsw i32 %67, %64
  %69 = add nsw i32 %68, %59
  %70 = srem i32 %69, 1000000007
  br label %71

71:                                               ; preds = %61, %58
  %72 = phi i32 [ %70, %61 ], [ %59, %58 ]
  %73 = icmp eq i32 %4, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = add nsw i32 %3, 1
  %76 = add nsw i32 %4, -1
  %77 = tail call noundef i32 @_Z3dfsiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %75, i32 noundef %76, i32 noundef 5)
  %78 = mul nsw i32 %77, %4
  %79 = add nsw i32 %78, %72
  %80 = srem i32 %79, 1000000007
  br label %81

81:                                               ; preds = %74, %71
  %82 = phi i32 [ %80, %74 ], [ %72, %71 ]
  %83 = srem i32 %82, 1000000007
  store i32 %83, i32* %13, align 4, !tbaa !4
  br label %84

84:                                               ; preds = %16, %6, %81
  %85 = phi i32 [ %83, %81 ], [ %14, %6 ], [ 1, %16 ]
  ret i32 %85
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(52907904) bitcast ([18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp to i8*), i8 -1, i64 52907904, i1 false), !tbaa !4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %13, %5 ]
  %7 = tail call noundef i32 @_Z6getintv()
  %8 = getelementptr inbounds [200 x i32], [200 x i32]* @list, i64 0, i64 %6
  store i32 %7, i32* %8, align 4, !tbaa !4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* @cns, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4, !tbaa !4
  %13 = add nuw nsw i64 %6, 1
  %14 = icmp eq i64 %13, %4
  br i1 %14, label %15, label %5, !llvm.loop !8

15:                                               ; preds = %5, %0
  %16 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @cns, i64 0, i64 1), align 4, !tbaa !4
  %17 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @cns, i64 0, i64 2), align 8, !tbaa !4
  %18 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @cns, i64 0, i64 3), align 4, !tbaa !4
  %19 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @cns, i64 0, i64 4), align 16, !tbaa !4
  %20 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @cns, i64 0, i64 5), align 4, !tbaa !4
  %21 = tail call noundef i32 @_Z3dfsiiiiii(i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef %21)
  ret i32 %21
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

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
