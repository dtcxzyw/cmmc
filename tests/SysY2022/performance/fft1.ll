; ModuleID = 'tests//SysY2022/performance/fft1.sy'
source_filename = "tests//SysY2022/performance/fft1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@d = dso_local local_unnamed_addr global i32 0, align 4
@temp = dso_local local_unnamed_addr global [2097152 x i32] zeroinitializer, align 16
@a = dso_local global [2097152 x i32] zeroinitializer, align 16
@b = dso_local global [2097152 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [2097152 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z8multiplyii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %5 [
    i32 0, label %15
    i32 1, label %3
  ]

3:                                                ; preds = %2
  %4 = srem i32 %0, 998244353
  br label %15

5:                                                ; preds = %2
  %6 = sdiv i32 %1, 2
  %7 = tail call noundef i32 @_Z8multiplyii(i32 noundef %0, i32 noundef %6), !range !4
  %8 = shl nsw i32 %7, 1
  %9 = srem i32 %8, 998244353
  %10 = srem i32 %1, 2
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = add nsw i32 %9, %0
  %14 = srem i32 %13, 998244353
  br label %15

15:                                               ; preds = %12, %5, %2, %3
  %16 = phi i32 [ %4, %3 ], [ %1, %2 ], [ %14, %12 ], [ %9, %5 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5powerii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = sdiv i32 %1, 2
  %6 = tail call noundef i32 @_Z5powerii(i32 noundef %0, i32 noundef %5), !range !4
  %7 = tail call noundef i32 @_Z8multiplyii(i32 noundef %6, i32 noundef %6), !range !4
  %8 = srem i32 %1, 2
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_Z8multiplyii(i32 noundef %7, i32 noundef %0), !range !4
  br label %12

12:                                               ; preds = %10, %4, %2
  %13 = phi i32 [ 1, %2 ], [ %11, %10 ], [ %7, %4 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z7memmovePiiS_i(i32* nocapture noundef writeonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %52

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = zext i32 %3 to i64
  %9 = add nsw i64 %8, -1
  %10 = and i64 %8, 3
  %11 = icmp ult i64 %9, 3
  br i1 %11, label %39, label %12

12:                                               ; preds = %6
  %13 = and i64 %8, 4294967292
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %36, %14 ]
  %16 = phi i64 [ 0, %12 ], [ %37, %14 ]
  %17 = getelementptr inbounds i32, i32* %2, i64 %15
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = add nsw i64 %15, %7
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  store i32 %18, i32* %20, align 4, !tbaa !5
  %21 = or i64 %15, 1
  %22 = getelementptr inbounds i32, i32* %2, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = add nsw i64 %21, %7
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  store i32 %23, i32* %25, align 4, !tbaa !5
  %26 = or i64 %15, 2
  %27 = getelementptr inbounds i32, i32* %2, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = add nsw i64 %26, %7
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  store i32 %28, i32* %30, align 4, !tbaa !5
  %31 = or i64 %15, 3
  %32 = getelementptr inbounds i32, i32* %2, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = add nsw i64 %31, %7
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  store i32 %33, i32* %35, align 4, !tbaa !5
  %36 = add nuw nsw i64 %15, 4
  %37 = add i64 %16, 4
  %38 = icmp eq i64 %37, %13
  br i1 %38, label %39, label %14, !llvm.loop !9

39:                                               ; preds = %14, %6
  %40 = phi i64 [ 0, %6 ], [ %36, %14 ]
  %41 = icmp eq i64 %10, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39, %42
  %43 = phi i64 [ %49, %42 ], [ %40, %39 ]
  %44 = phi i64 [ %50, %42 ], [ 0, %39 ]
  %45 = getelementptr inbounds i32, i32* %2, i64 %43
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = add nsw i64 %43, %7
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  store i32 %46, i32* %48, align 4, !tbaa !5
  %49 = add nuw nsw i64 %43, 1
  %50 = add i64 %44, 1
  %51 = icmp eq i64 %50, %10
  br i1 %51, label %52, label %42, !llvm.loop !11

52:                                               ; preds = %39, %42, %4
  %53 = phi i32 [ 0, %4 ], [ %3, %42 ], [ %3, %39 ]
  ret i32 %53
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z3fftPiiii(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %2, 1
  br i1 %5, label %129, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %100

8:                                                ; preds = %6
  %9 = lshr i32 %2, 1
  %10 = sext i32 %1 to i64
  %11 = zext i32 %2 to i64
  %12 = add nsw i64 %11, -1
  %13 = and i64 %11, 1
  %14 = icmp eq i64 %12, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %8
  %16 = and i64 %11, 4294967294
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %35, %17 ]
  %19 = phi i64 [ 0, %15 ], [ %36, %17 ]
  %20 = add nsw i64 %18, %10
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = lshr exact i64 %18, 1
  %24 = and i64 %23, 2147483647
  %25 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %24
  store i32 %22, i32* %25, align 4, !tbaa !5
  %26 = or i64 %18, 1
  %27 = trunc i64 %18 to i32
  %28 = add nsw i64 %26, %10
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = lshr exact i32 %27, 1
  %32 = add nuw nsw i32 %31, %9
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %33
  store i32 %30, i32* %34, align 4, !tbaa !5
  %35 = add nuw nsw i64 %18, 2
  %36 = add i64 %19, 2
  %37 = icmp eq i64 %36, %16
  br i1 %37, label %38, label %17, !llvm.loop !13

38:                                               ; preds = %17, %8
  %39 = phi i64 [ 0, %8 ], [ %35, %17 ]
  %40 = icmp eq i64 %13, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = trunc i64 %39 to i32
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = add nsw i64 %39, %10
  %46 = getelementptr inbounds i32, i32* %0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = lshr i32 %42, 1
  %49 = add nuw nsw i32 %48, %9
  %50 = zext i32 %49 to i64
  %51 = lshr i64 %39, 1
  %52 = and i64 %51, 2147483647
  %53 = select i1 %44, i64 %52, i64 %50
  %54 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %53
  store i32 %47, i32* %54, align 4, !tbaa !5
  br label %55

55:                                               ; preds = %38, %41
  br i1 %7, label %56, label %100

56:                                               ; preds = %55
  %57 = sext i32 %1 to i64
  %58 = and i64 %11, 3
  %59 = icmp ult i64 %12, 3
  br i1 %59, label %87, label %60

60:                                               ; preds = %56
  %61 = and i64 %11, 4294967292
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i64 [ 0, %60 ], [ %84, %62 ]
  %64 = phi i64 [ 0, %60 ], [ %85, %62 ]
  %65 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %63
  %66 = load i32, i32* %65, align 16, !tbaa !5
  %67 = add nsw i64 %63, %57
  %68 = getelementptr inbounds i32, i32* %0, i64 %67
  store i32 %66, i32* %68, align 4, !tbaa !5
  %69 = or i64 %63, 1
  %70 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = add nsw i64 %69, %57
  %73 = getelementptr inbounds i32, i32* %0, i64 %72
  store i32 %71, i32* %73, align 4, !tbaa !5
  %74 = or i64 %63, 2
  %75 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %74
  %76 = load i32, i32* %75, align 8, !tbaa !5
  %77 = add nsw i64 %74, %57
  %78 = getelementptr inbounds i32, i32* %0, i64 %77
  store i32 %76, i32* %78, align 4, !tbaa !5
  %79 = or i64 %63, 3
  %80 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = add nsw i64 %79, %57
  %83 = getelementptr inbounds i32, i32* %0, i64 %82
  store i32 %81, i32* %83, align 4, !tbaa !5
  %84 = add nuw nsw i64 %63, 4
  %85 = add i64 %64, 4
  %86 = icmp eq i64 %85, %61
  br i1 %86, label %87, label %62, !llvm.loop !9

87:                                               ; preds = %62, %56
  %88 = phi i64 [ 0, %56 ], [ %84, %62 ]
  %89 = icmp eq i64 %58, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87, %90
  %91 = phi i64 [ %97, %90 ], [ %88, %87 ]
  %92 = phi i64 [ %98, %90 ], [ 0, %87 ]
  %93 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %91
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = add nsw i64 %91, %57
  %96 = getelementptr inbounds i32, i32* %0, i64 %95
  store i32 %94, i32* %96, align 4, !tbaa !5
  %97 = add nuw nsw i64 %91, 1
  %98 = add i64 %92, 1
  %99 = icmp eq i64 %98, %58
  br i1 %99, label %100, label %90, !llvm.loop !14

100:                                              ; preds = %87, %90, %6, %55
  %101 = sdiv i32 %2, 2
  %102 = tail call noundef i32 @_Z8multiplyii(i32 noundef %3, i32 noundef %3), !range !4
  %103 = tail call noundef i32 @_Z3fftPiiii(i32* noundef %0, i32 noundef %1, i32 noundef %101, i32 noundef %102), !range !15
  %104 = add nsw i32 %101, %1
  %105 = tail call noundef i32 @_Z3fftPiiii(i32* noundef %0, i32 noundef %104, i32 noundef %101, i32 noundef %102), !range !15
  %106 = icmp sgt i32 %2, 1
  br i1 %106, label %107, label %129

107:                                              ; preds = %100
  %108 = sext i32 %1 to i64
  %109 = sext i32 %101 to i64
  %110 = zext i32 %101 to i64
  br label %111

111:                                              ; preds = %107, %111
  %112 = phi i64 [ 0, %107 ], [ %127, %111 ]
  %113 = phi i32 [ 1, %107 ], [ %126, %111 ]
  %114 = add nsw i64 %112, %108
  %115 = getelementptr inbounds i32, i32* %0, i64 %114
  %116 = load i32, i32* %115, align 4, !tbaa !5
  %117 = add nsw i64 %114, %109
  %118 = getelementptr inbounds i32, i32* %0, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !5
  %120 = tail call noundef i32 @_Z8multiplyii(i32 noundef %113, i32 noundef %119), !range !4
  %121 = add nsw i32 %120, %116
  %122 = srem i32 %121, 998244353
  store i32 %122, i32* %115, align 4, !tbaa !5
  %123 = add i32 %116, 998244353
  %124 = sub i32 %123, %120
  %125 = srem i32 %124, 998244353
  store i32 %125, i32* %118, align 4, !tbaa !5
  %126 = tail call noundef i32 @_Z8multiplyii(i32 noundef %113, i32 noundef %3), !range !4
  %127 = add nuw nsw i64 %112, 1
  %128 = icmp eq i64 %127, %110
  br i1 %128, label %129, label %111, !llvm.loop !16

129:                                              ; preds = %111, %100, %4
  %130 = phi i32 [ 1, %4 ], [ 0, %100 ], [ 0, %111 ]
  ret i32 %130
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @a, i64 0, i64 0))
  %2 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @b, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 60)
  %3 = add i32 %1, -1
  %4 = add i32 %3, %2
  br label %5

5:                                                ; preds = %5, %0
  %6 = phi i32 [ 1, %0 ], [ %8, %5 ]
  %7 = icmp slt i32 %6, %4
  %8 = shl nsw i32 %6, 1
  br i1 %7, label %5, label %9, !llvm.loop !17

9:                                                ; preds = %5
  store i32 %6, i32* @d, align 4, !tbaa !5
  %10 = udiv i32 998244352, %6
  %11 = tail call noundef i32 @_Z5powerii(i32 noundef 3, i32 noundef %10), !range !4
  %12 = tail call noundef i32 @_Z3fftPiiii(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @a, i64 0, i64 0), i32 noundef 0, i32 noundef %6, i32 noundef %11), !range !15
  %13 = load i32, i32* @d, align 4, !tbaa !5
  %14 = sdiv i32 998244352, %13
  %15 = tail call noundef i32 @_Z5powerii(i32 noundef 3, i32 noundef %14), !range !4
  %16 = tail call noundef i32 @_Z3fftPiiii(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @b, i64 0, i64 0), i32 noundef 0, i32 noundef %13, i32 noundef %15), !range !15
  %17 = load i32, i32* @d, align 4, !tbaa !5
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %9
  %20 = zext i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %28, %21 ]
  %23 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @a, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @b, i64 0, i64 %22
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = tail call noundef i32 @_Z8multiplyii(i32 noundef %24, i32 noundef %26), !range !4
  store i32 %27, i32* %23, align 4, !tbaa !5
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !18

30:                                               ; preds = %21, %9
  %31 = sdiv i32 998244352, %17
  %32 = sub nsw i32 998244352, %31
  %33 = tail call noundef i32 @_Z5powerii(i32 noundef 3, i32 noundef %32), !range !4
  %34 = tail call noundef i32 @_Z3fftPiiii(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @a, i64 0, i64 0), i32 noundef 0, i32 noundef %17, i32 noundef %33), !range !15
  %35 = load i32, i32* @d, align 4, !tbaa !5
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = tail call noundef i32 @_Z5powerii(i32 noundef %35, i32 noundef 998244351), !range !4
  %39 = zext i32 %35 to i64
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i64 [ 0, %37 ], [ %45, %40 ]
  %42 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @a, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = tail call noundef i32 @_Z8multiplyii(i32 noundef %43, i32 noundef %38), !range !4
  store i32 %44, i32* %42, align 4, !tbaa !5
  %45 = add nuw nsw i64 %41, 1
  %46 = icmp eq i64 %45, %39
  br i1 %46, label %47, label %40, !llvm.loop !19

47:                                               ; preds = %40, %30
  tail call void @_Z14_sysy_stoptimei(i32 noundef 79)
  tail call void @_Z8putarrayiPi(i32 noundef %4, i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @a, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #4

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #4

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #4

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 -998244352, i32 998244353}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !12}
!15 = !{i32 0, i32 2}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
