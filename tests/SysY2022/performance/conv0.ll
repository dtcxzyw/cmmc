; ModuleID = 'tests//SysY2022/performance/conv0.sy'
source_filename = "tests//SysY2022/performance/conv0.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [10000000 x i32] zeroinitializer, align 16
@b = dso_local global [10000000 x i32] zeroinitializer, align 16
@kernelid = dso_local global [10000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z10checkrangei(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1073741823
  %3 = call i32 @llvm.smin.i32(i32 %0, i32 1073741824)
  %4 = sub i32 %2, %3
  %5 = and i32 %4, -1073741824
  %6 = sub i32 %0, %5
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = add i32 %7, %5
  %9 = add i32 %8, 1073741823
  %10 = sub i32 %9, %0
  %11 = and i32 %10, -1073741824
  %12 = add i32 %11, %0
  %13 = sub i32 %12, %5
  ret i32 %13
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6reduceiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  switch i32 %0, label %71 [
    i32 0, label %4
    i32 1, label %17
    i32 2, label %30
    i32 3, label %33
    i32 4, label %52
  ]

4:                                                ; preds = %3
  %5 = add nsw i32 %2, %1
  %6 = add i32 %5, 1073741823
  %7 = tail call i32 @llvm.smin.i32(i32 %5, i32 1073741824) #9
  %8 = sub i32 %6, %7
  %9 = and i32 %8, -1073741824
  %10 = sub i32 %5, %9
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #9
  %12 = sub i32 1073741823, %5
  %13 = add i32 %12, %9
  %14 = add i32 %13, %11
  %15 = and i32 %14, -1073741824
  %16 = add i32 %10, %15
  br label %71

17:                                               ; preds = %3, %17
  %18 = phi i32 [ %28, %17 ], [ %0, %3 ]
  %19 = phi i32 [ %27, %17 ], [ 0, %3 ]
  %20 = sdiv i32 %1, %18
  %21 = srem i32 %20, 2
  %22 = sdiv i32 %2, %18
  %23 = srem i32 %22, 2
  %24 = icmp ne i32 %21, %23
  %25 = shl nsw i32 %19, 1
  %26 = zext i1 %24 to i32
  %27 = or i32 %25, %26
  %28 = shl nuw nsw i32 %18, 1
  %29 = icmp ult i32 %18, 536870912
  br i1 %29, label %17, label %71, !llvm.loop !4

30:                                               ; preds = %3
  %31 = icmp sgt i32 %1, %2
  %32 = select i1 %31, i32 %1, i32 %2
  br label %71

33:                                               ; preds = %3, %48
  %34 = phi i32 [ %50, %48 ], [ 1, %3 ]
  %35 = phi i32 [ %49, %48 ], [ 0, %3 ]
  %36 = sdiv i32 %1, %34
  %37 = srem i32 %36, 2
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = sdiv i32 %2, %34
  %41 = srem i32 %40, 2
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %33
  %44 = shl nsw i32 %35, 1
  %45 = or i32 %44, 1
  br label %48

46:                                               ; preds = %39
  %47 = shl nsw i32 %35, 1
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %45, %43 ], [ %47, %46 ]
  %50 = shl nuw nsw i32 %34, 1
  %51 = icmp ult i32 %34, 536870912
  br i1 %51, label %33, label %71, !llvm.loop !6

52:                                               ; preds = %3, %67
  %53 = phi i32 [ %69, %67 ], [ 1, %3 ]
  %54 = phi i32 [ %68, %67 ], [ 0, %3 ]
  %55 = sdiv i32 %1, %53
  %56 = srem i32 %55, 2
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = sdiv i32 %2, %53
  %60 = srem i32 %59, 2
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = shl nsw i32 %54, 1
  %64 = or i32 %63, 1
  br label %67

65:                                               ; preds = %58, %52
  %66 = shl nsw i32 %54, 1
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  %69 = shl nuw nsw i32 %53, 1
  %70 = icmp ult i32 %53, 536870912
  br i1 %70, label %52, label %71, !llvm.loop !7

71:                                               ; preds = %67, %48, %17, %3, %30, %4
  %72 = phi i32 [ %16, %4 ], [ %32, %30 ], [ 0, %3 ], [ %27, %17 ], [ %49, %48 ], [ %68, %67 ]
  ret i32 %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z8getvaluePiiiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = or i32 %4, %3
  %7 = icmp sgt i32 %6, -1
  %8 = icmp slt i32 %3, %1
  %9 = and i1 %8, %7
  %10 = icmp slt i32 %4, %2
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = mul nsw i32 %3, %2
  %14 = add nsw i32 %13, %4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !8
  br label %18

18:                                               ; preds = %5, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z5convniPiS_iii(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
  %7 = sdiv i32 %5, 2
  %8 = sub nsw i32 0, %7
  %9 = sext i32 %4 to i64
  %10 = sext i32 %3 to i64
  %11 = sext i32 %7 to i64
  %12 = call i32 @llvm.smax.i32(i32 %4, i32 1)
  %13 = call i32 @llvm.smax.i32(i32 %3, i32 1)
  %14 = zext i32 %13 to i64
  %15 = zext i32 %12 to i64
  br label %16

16:                                               ; preds = %127, %6
  %17 = phi i64 [ %128, %127 ], [ 0, %6 ]
  %18 = phi i32 [ %129, %127 ], [ %8, %6 ]
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %17, %9
  %21 = add nsw i64 %17, %11
  br label %22

22:                                               ; preds = %121, %16
  %23 = phi i64 [ %124, %121 ], [ 0, %16 ]
  %24 = phi i32 [ %125, %121 ], [ %8, %16 ]
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %11
  br label %27

27:                                               ; preds = %118, %22
  %28 = phi i64 [ %119, %118 ], [ %19, %22 ]
  %29 = phi i32 [ %115, %118 ], [ 0, %22 ]
  %30 = icmp slt i64 %28, %10
  %31 = mul nsw i64 %28, %9
  br label %32

32:                                               ; preds = %114, %27
  %33 = phi i64 [ %116, %114 ], [ %25, %27 ]
  %34 = phi i32 [ %115, %114 ], [ %29, %27 ]
  %35 = or i64 %33, %28
  %36 = and i64 %35, 2147483648
  %37 = icmp eq i64 %36, 0
  %38 = and i1 %30, %37
  %39 = icmp slt i64 %33, %9
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = add nsw i64 %33, %31
  %43 = getelementptr inbounds i32, i32* %1, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !8
  br label %45

45:                                               ; preds = %32, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %32 ]
  switch i32 %0, label %114 [
    i32 0, label %47
    i32 1, label %60
    i32 2, label %73
    i32 3, label %76
    i32 4, label %95
  ]

47:                                               ; preds = %45
  %48 = add nsw i32 %46, %34
  %49 = add i32 %48, 1073741823
  %50 = tail call i32 @llvm.smin.i32(i32 %48, i32 1073741824) #9
  %51 = sub i32 %49, %50
  %52 = and i32 %51, -1073741824
  %53 = sub i32 %48, %52
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0) #9
  %55 = sub i32 1073741823, %48
  %56 = add i32 %55, %52
  %57 = add i32 %56, %54
  %58 = and i32 %57, -1073741824
  %59 = add i32 %58, %53
  br label %114

60:                                               ; preds = %45, %60
  %61 = phi i32 [ %71, %60 ], [ %0, %45 ]
  %62 = phi i32 [ %70, %60 ], [ 0, %45 ]
  %63 = sdiv i32 %34, %61
  %64 = srem i32 %63, 2
  %65 = sdiv i32 %46, %61
  %66 = srem i32 %65, 2
  %67 = icmp ne i32 %64, %66
  %68 = shl nsw i32 %62, 1
  %69 = zext i1 %67 to i32
  %70 = or i32 %68, %69
  %71 = shl nuw nsw i32 %61, 1
  %72 = icmp ult i32 %61, 536870912
  br i1 %72, label %60, label %114, !llvm.loop !4

73:                                               ; preds = %45
  %74 = icmp sgt i32 %34, %46
  %75 = select i1 %74, i32 %34, i32 %46
  br label %114

76:                                               ; preds = %45, %91
  %77 = phi i32 [ %93, %91 ], [ 1, %45 ]
  %78 = phi i32 [ %92, %91 ], [ 0, %45 ]
  %79 = sdiv i32 %34, %77
  %80 = srem i32 %79, 2
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = sdiv i32 %46, %77
  %84 = srem i32 %83, 2
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %76
  %87 = shl nsw i32 %78, 1
  %88 = or i32 %87, 1
  br label %91

89:                                               ; preds = %82
  %90 = shl nsw i32 %78, 1
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i32 [ %88, %86 ], [ %90, %89 ]
  %93 = shl nuw nsw i32 %77, 1
  %94 = icmp ult i32 %77, 536870912
  br i1 %94, label %76, label %114, !llvm.loop !6

95:                                               ; preds = %45, %110
  %96 = phi i32 [ %112, %110 ], [ 1, %45 ]
  %97 = phi i32 [ %111, %110 ], [ 0, %45 ]
  %98 = sdiv i32 %34, %96
  %99 = srem i32 %98, 2
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = sdiv i32 %46, %96
  %103 = srem i32 %102, 2
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = shl nsw i32 %97, 1
  %107 = or i32 %106, 1
  br label %110

108:                                              ; preds = %101, %95
  %109 = shl nsw i32 %97, 1
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi i32 [ %107, %105 ], [ %109, %108 ]
  %112 = shl nuw nsw i32 %96, 1
  %113 = icmp ult i32 %96, 536870912
  br i1 %113, label %95, label %114, !llvm.loop !7

114:                                              ; preds = %110, %91, %60, %45, %47, %73
  %115 = phi i32 [ %59, %47 ], [ %75, %73 ], [ 0, %45 ], [ %70, %60 ], [ %92, %91 ], [ %111, %110 ]
  %116 = add nsw i64 %33, 1
  %117 = icmp slt i64 %116, %26
  br i1 %117, label %32, label %118, !llvm.loop !12

118:                                              ; preds = %114
  %119 = add nsw i64 %28, 1
  %120 = icmp slt i64 %119, %21
  br i1 %120, label %27, label %121, !llvm.loop !13

121:                                              ; preds = %118
  %122 = add nsw i64 %23, %20
  %123 = getelementptr inbounds i32, i32* %2, i64 %122
  store i32 %115, i32* %123, align 4, !tbaa !8
  %124 = add nuw nsw i64 %23, 1
  %125 = add i32 %24, 1
  %126 = icmp eq i64 %124, %15
  br i1 %126, label %127, label %22, !llvm.loop !14

127:                                              ; preds = %121
  %128 = add nuw nsw i64 %17, 1
  %129 = add i32 %18, 1
  %130 = icmp eq i64 %128, %14
  br i1 %130, label %131, label %16, !llvm.loop !15

131:                                              ; preds = %127
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z7memmovePiS_i(i32* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %45

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = add nsw i64 %6, -1
  %8 = and i64 %6, 3
  %9 = icmp ult i64 %7, 3
  br i1 %9, label %33, label %10

10:                                               ; preds = %5
  %11 = and i64 %6, 4294967292
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %30, %12 ]
  %14 = phi i64 [ 0, %10 ], [ %31, %12 ]
  %15 = getelementptr inbounds i32, i32* %1, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !8
  %17 = getelementptr inbounds i32, i32* %0, i64 %13
  store i32 %16, i32* %17, align 4, !tbaa !8
  %18 = or i64 %13, 1
  %19 = getelementptr inbounds i32, i32* %1, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = getelementptr inbounds i32, i32* %0, i64 %18
  store i32 %20, i32* %21, align 4, !tbaa !8
  %22 = or i64 %13, 2
  %23 = getelementptr inbounds i32, i32* %1, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !8
  %25 = getelementptr inbounds i32, i32* %0, i64 %22
  store i32 %24, i32* %25, align 4, !tbaa !8
  %26 = or i64 %13, 3
  %27 = getelementptr inbounds i32, i32* %1, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !8
  %29 = getelementptr inbounds i32, i32* %0, i64 %26
  store i32 %28, i32* %29, align 4, !tbaa !8
  %30 = add nuw nsw i64 %13, 4
  %31 = add i64 %14, 4
  %32 = icmp eq i64 %31, %11
  br i1 %32, label %33, label %12, !llvm.loop !16

33:                                               ; preds = %12, %5
  %34 = phi i64 [ 0, %5 ], [ %30, %12 ]
  %35 = icmp eq i64 %8, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %42, %36 ], [ %34, %33 ]
  %38 = phi i64 [ %43, %36 ], [ 0, %33 ]
  %39 = getelementptr inbounds i32, i32* %1, i64 %37
  %40 = load i32, i32* %39, align 4, !tbaa !8
  %41 = getelementptr inbounds i32, i32* %0, i64 %37
  store i32 %40, i32* %41, align 4, !tbaa !8
  %42 = add nuw nsw i64 %37, 1
  %43 = add i64 %38, 1
  %44 = icmp eq i64 %43, %8
  br i1 %44, label %45, label %36, !llvm.loop !17

45:                                               ; preds = %33, %36, %3
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = tail call noundef i32 @_Z6getintv()
  %4 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @a, i64 0, i64 0))
  %5 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([10000 x i32], [10000 x i32]* @kernelid, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 109)
  %6 = icmp sgt i32 %5, 0
  %7 = mul nsw i32 %3, %2
  br i1 %6, label %8, label %30

8:                                                ; preds = %0
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = zext i32 %5 to i64
  br label %23

12:                                               ; preds = %8
  %13 = zext i32 %7 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = zext i32 %5 to i64
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ 0, %12 ], [ %21, %16 ]
  %18 = getelementptr inbounds [10000 x i32], [10000 x i32]* @kernelid, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !8
  %20 = tail call noundef i32 @_Z5convniPiS_iii(i32 noundef %19, i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @a, i64 0, i64 0), i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @b, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %1)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast ([10000000 x i32]* @a to i8*), i8* align 16 bitcast ([10000000 x i32]* @b to i8*), i64 %14, i1 false), !tbaa !8
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %30, label %16, !llvm.loop !19

23:                                               ; preds = %10, %23
  %24 = phi i64 [ 0, %10 ], [ %28, %23 ]
  %25 = getelementptr inbounds [10000 x i32], [10000 x i32]* @kernelid, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !8
  %27 = tail call noundef i32 @_Z5convniPiS_iii(i32 noundef %26, i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @a, i64 0, i64 0), i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @b, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %1)
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, %11
  br i1 %29, label %30, label %23, !llvm.loop !19

30:                                               ; preds = %23, %16, %0
  tail call void @_Z14_sysy_stoptimei(i32 noundef 116)
  tail call void @_Z8putarrayiPi(i32 noundef %7, i32* noundef getelementptr inbounds ([10000000 x i32], [10000000 x i32]* @a, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #6

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #6

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #6

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #6

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !5}
