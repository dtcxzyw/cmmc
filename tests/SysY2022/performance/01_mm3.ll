; ModuleID = 'tests//SysY2022/performance/01_mm3.sy'
source_filename = "tests//SysY2022/performance/01_mm3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@A = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@B = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@C = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z2mmiPA1024_iS0_S0_(i32 noundef %0, [1024 x i32]* nocapture noundef readonly %1, [1024 x i32]* nocapture noundef readonly %2, [1024 x i32]* nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %112

6:                                                ; preds = %4
  %7 = zext i32 %0 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = add nsw i64 %7, -1
  %10 = and i64 %7, 7
  %11 = icmp ult i64 %9, 7
  br i1 %11, label %43, label %12

12:                                               ; preds = %6
  %13 = and i64 %7, 4294967288
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %40, %14 ]
  %16 = phi i64 [ 0, %12 ], [ %41, %14 ]
  %17 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %15, i64 0
  %18 = bitcast i32* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 %8, i1 false), !tbaa !4
  %19 = or i64 %15, 1
  %20 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %19, i64 0
  %21 = bitcast i32* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 %8, i1 false), !tbaa !4
  %22 = or i64 %15, 2
  %23 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %22, i64 0
  %24 = bitcast i32* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 %8, i1 false), !tbaa !4
  %25 = or i64 %15, 3
  %26 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %25, i64 0
  %27 = bitcast i32* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 %8, i1 false), !tbaa !4
  %28 = or i64 %15, 4
  %29 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %28, i64 0
  %30 = bitcast i32* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 %8, i1 false), !tbaa !4
  %31 = or i64 %15, 5
  %32 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %31, i64 0
  %33 = bitcast i32* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 %8, i1 false), !tbaa !4
  %34 = or i64 %15, 6
  %35 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %34, i64 0
  %36 = bitcast i32* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 %8, i1 false), !tbaa !4
  %37 = or i64 %15, 7
  %38 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %37, i64 0
  %39 = bitcast i32* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 %8, i1 false), !tbaa !4
  %40 = add nuw nsw i64 %15, 8
  %41 = add i64 %16, 8
  %42 = icmp eq i64 %41, %13
  br i1 %42, label %43, label %14, !llvm.loop !8

43:                                               ; preds = %14, %6
  %44 = phi i64 [ 0, %6 ], [ %40, %14 ]
  %45 = icmp eq i64 %10, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %51, %46 ], [ %44, %43 ]
  %48 = phi i64 [ %52, %46 ], [ 0, %43 ]
  %49 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %47, i64 0
  %50 = bitcast i32* %49 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 %8, i1 false), !tbaa !4
  %51 = add nuw nsw i64 %47, 1
  %52 = add i64 %48, 1
  %53 = icmp eq i64 %52, %10
  br i1 %53, label %54, label %46, !llvm.loop !10

54:                                               ; preds = %46, %43
  br i1 %5, label %55, label %112

55:                                               ; preds = %54
  %56 = zext i32 %0 to i64
  %57 = and i64 %9, 1
  %58 = icmp eq i32 %0, 2
  %59 = and i64 %9, -2
  %60 = icmp eq i64 %57, 0
  br label %61

61:                                               ; preds = %55, %109
  %62 = phi i64 [ 0, %55 ], [ %110, %109 ]
  %63 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %62, i64 0
  br label %64

64:                                               ; preds = %106, %61
  %65 = phi i64 [ %107, %106 ], [ 0, %61 ]
  %66 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 %65, i64 %62
  %67 = load i32, i32* %66, align 4, !tbaa !4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %106, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %65, i64 0
  %71 = load i32, i32* %70, align 4, !tbaa !4
  %72 = load i32, i32* %63, align 4, !tbaa !4
  %73 = mul nsw i32 %72, %67
  %74 = add nsw i32 %73, %71
  store i32 %74, i32* %70, align 4, !tbaa !4
  switch i32 %0, label %75 [
    i32 1, label %106
    i32 2, label %96
  ]

75:                                               ; preds = %69, %75
  %76 = phi i64 [ %93, %75 ], [ 1, %69 ]
  %77 = phi i64 [ %94, %75 ], [ 0, %69 ]
  %78 = load i32, i32* %66, align 4, !tbaa !4
  %79 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %65, i64 %76
  %80 = load i32, i32* %79, align 4, !tbaa !4
  %81 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %62, i64 %76
  %82 = load i32, i32* %81, align 4, !tbaa !4
  %83 = mul nsw i32 %82, %78
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %79, align 4, !tbaa !4
  %85 = add nuw nsw i64 %76, 1
  %86 = load i32, i32* %66, align 4, !tbaa !4
  %87 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %65, i64 %85
  %88 = load i32, i32* %87, align 4, !tbaa !4
  %89 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %62, i64 %85
  %90 = load i32, i32* %89, align 4, !tbaa !4
  %91 = mul nsw i32 %90, %86
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %87, align 4, !tbaa !4
  %93 = add nuw nsw i64 %76, 2
  %94 = add i64 %77, 2
  %95 = icmp eq i64 %94, %59
  br i1 %95, label %96, label %75, !llvm.loop !12

96:                                               ; preds = %75, %69
  %97 = phi i64 [ 1, %69 ], [ %93, %75 ]
  br i1 %60, label %106, label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %66, align 4, !tbaa !4
  %100 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %65, i64 %97
  %101 = load i32, i32* %100, align 4, !tbaa !4
  %102 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %62, i64 %97
  %103 = load i32, i32* %102, align 4, !tbaa !4
  %104 = mul nsw i32 %103, %99
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %100, align 4, !tbaa !4
  br label %106

106:                                              ; preds = %98, %96, %69, %64
  %107 = add nuw nsw i64 %65, 1
  %108 = icmp eq i64 %107, %56
  br i1 %108, label %109, label %64, !llvm.loop !13

109:                                              ; preds = %106
  %110 = add nuw nsw i64 %62, 1
  %111 = icmp eq i64 %110, %56
  br i1 %111, label %112, label %61, !llvm.loop !14

112:                                              ; preds = %109, %4, %54
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %13
  %6 = phi i64 [ 0, %3 ], [ %14, %13 ]
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = tail call noundef i32 @_Z6getintv()
  %10 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @A, i64 0, i64 %6, i64 %8
  store i32 %9, i32* %10, align 4, !tbaa !4
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, %4
  br i1 %12, label %13, label %7, !llvm.loop !15

13:                                               ; preds = %7
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, %4
  br i1 %15, label %16, label %5, !llvm.loop !16

16:                                               ; preds = %13
  br i1 %2, label %18, label %17

17:                                               ; preds = %16, %0
  tail call void @_Z15_sysy_starttimei(i32 noundef 65)
  br label %270

18:                                               ; preds = %16
  %19 = zext i32 %1 to i64
  br label %20

20:                                               ; preds = %18, %28
  %21 = phi i64 [ 0, %18 ], [ %29, %28 ]
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %26, %22 ]
  %24 = tail call noundef i32 @_Z6getintv()
  %25 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %21, i64 %23
  store i32 %24, i32* %25, align 4, !tbaa !4
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %28, label %22, !llvm.loop !17

28:                                               ; preds = %22
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %19
  br i1 %30, label %31, label %20, !llvm.loop !18

31:                                               ; preds = %28
  tail call void @_Z15_sysy_starttimei(i32 noundef 65)
  %32 = shl nuw nsw i64 %19, 2
  br i1 %2, label %33, label %270

33:                                               ; preds = %31
  %34 = add nsw i64 %4, -1
  %35 = and i64 %4, 7
  %36 = icmp ult i64 %34, 7
  %37 = and i64 %4, 4294967288
  %38 = icmp eq i64 %35, 0
  %39 = and i64 %4, 1
  %40 = icmp eq i64 %34, 0
  %41 = and i64 %4, 4294967294
  %42 = icmp eq i64 %39, 0
  %43 = and i64 %4, 7
  %44 = icmp ult i64 %34, 7
  %45 = and i64 %4, 4294967288
  %46 = icmp eq i64 %43, 0
  %47 = and i64 %4, 1
  %48 = icmp eq i64 %34, 0
  %49 = and i64 %4, 4294967294
  %50 = icmp eq i64 %47, 0
  br label %51

51:                                               ; preds = %33, %218
  %52 = phi i32 [ %219, %218 ], [ 0, %33 ]
  br i1 %36, label %82, label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %79, %53 ], [ 0, %51 ]
  %55 = phi i64 [ %80, %53 ], [ 0, %51 ]
  %56 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %54, i64 0
  %57 = bitcast i32* %56 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %58 = or i64 %54, 1
  %59 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %58, i64 0
  %60 = bitcast i32* %59 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %61 = or i64 %54, 2
  %62 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %61, i64 0
  %63 = bitcast i32* %62 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %63, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %64 = or i64 %54, 3
  %65 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %64, i64 0
  %66 = bitcast i32* %65 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %66, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %67 = or i64 %54, 4
  %68 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %67, i64 0
  %69 = bitcast i32* %68 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %69, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %70 = or i64 %54, 5
  %71 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %70, i64 0
  %72 = bitcast i32* %71 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %72, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %73 = or i64 %54, 6
  %74 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %73, i64 0
  %75 = bitcast i32* %74 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %75, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %76 = or i64 %54, 7
  %77 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %76, i64 0
  %78 = bitcast i32* %77 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %78, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %79 = add nuw nsw i64 %54, 8
  %80 = add i64 %55, 8
  %81 = icmp eq i64 %80, %37
  br i1 %81, label %82, label %53, !llvm.loop !8

82:                                               ; preds = %53, %51
  %83 = phi i64 [ 0, %51 ], [ %79, %53 ]
  br i1 %38, label %92, label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ %89, %84 ], [ %83, %82 ]
  %86 = phi i64 [ %90, %84 ], [ 0, %82 ]
  %87 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %85, i64 0
  %88 = bitcast i32* %87 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %88, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %89 = add nuw nsw i64 %85, 1
  %90 = add i64 %86, 1
  %91 = icmp eq i64 %90, %35
  br i1 %91, label %92, label %84, !llvm.loop !19

92:                                               ; preds = %84, %82
  br label %93

93:                                               ; preds = %92, %132
  %94 = phi i64 [ %133, %132 ], [ 0, %92 ]
  br label %95

95:                                               ; preds = %129, %93
  %96 = phi i64 [ %130, %129 ], [ 0, %93 ]
  %97 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @A, i64 0, i64 %96, i64 %94
  %98 = load i32, i32* %97, align 4, !tbaa !4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %95
  br i1 %40, label %120, label %101

101:                                              ; preds = %100, %101
  %102 = phi i64 [ %117, %101 ], [ 0, %100 ]
  %103 = phi i64 [ %118, %101 ], [ 0, %100 ]
  %104 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %96, i64 %102
  %105 = load i32, i32* %104, align 8, !tbaa !4
  %106 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %94, i64 %102
  %107 = load i32, i32* %106, align 8, !tbaa !4
  %108 = mul nsw i32 %107, %98
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %104, align 8, !tbaa !4
  %110 = or i64 %102, 1
  %111 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %96, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !4
  %113 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %94, i64 %110
  %114 = load i32, i32* %113, align 4, !tbaa !4
  %115 = mul nsw i32 %114, %98
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %111, align 4, !tbaa !4
  %117 = add nuw nsw i64 %102, 2
  %118 = add i64 %103, 2
  %119 = icmp eq i64 %118, %41
  br i1 %119, label %120, label %101, !llvm.loop !12

120:                                              ; preds = %101, %100
  %121 = phi i64 [ 0, %100 ], [ %117, %101 ]
  br i1 %42, label %129, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %96, i64 %121
  %124 = load i32, i32* %123, align 4, !tbaa !4
  %125 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %94, i64 %121
  %126 = load i32, i32* %125, align 4, !tbaa !4
  %127 = mul nsw i32 %126, %98
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %123, align 4, !tbaa !4
  br label %129

129:                                              ; preds = %122, %120, %95
  %130 = add nuw nsw i64 %96, 1
  %131 = icmp eq i64 %130, %19
  br i1 %131, label %132, label %95, !llvm.loop !13

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %94, 1
  %134 = icmp eq i64 %133, %19
  br i1 %134, label %135, label %93, !llvm.loop !14

135:                                              ; preds = %132
  br i1 %44, label %165, label %136

136:                                              ; preds = %135, %136
  %137 = phi i64 [ %162, %136 ], [ 0, %135 ]
  %138 = phi i64 [ %163, %136 ], [ 0, %135 ]
  %139 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %137, i64 0
  %140 = bitcast i32* %139 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %140, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %141 = or i64 %137, 1
  %142 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %141, i64 0
  %143 = bitcast i32* %142 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %143, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %144 = or i64 %137, 2
  %145 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %144, i64 0
  %146 = bitcast i32* %145 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %146, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %147 = or i64 %137, 3
  %148 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %147, i64 0
  %149 = bitcast i32* %148 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %149, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %150 = or i64 %137, 4
  %151 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %150, i64 0
  %152 = bitcast i32* %151 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %152, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %153 = or i64 %137, 5
  %154 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %153, i64 0
  %155 = bitcast i32* %154 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %155, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %156 = or i64 %137, 6
  %157 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %156, i64 0
  %158 = bitcast i32* %157 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %158, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %159 = or i64 %137, 7
  %160 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %159, i64 0
  %161 = bitcast i32* %160 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %161, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %162 = add nuw nsw i64 %137, 8
  %163 = add i64 %138, 8
  %164 = icmp eq i64 %163, %45
  br i1 %164, label %165, label %136, !llvm.loop !8

165:                                              ; preds = %136, %135
  %166 = phi i64 [ 0, %135 ], [ %162, %136 ]
  br i1 %46, label %175, label %167

167:                                              ; preds = %165, %167
  %168 = phi i64 [ %172, %167 ], [ %166, %165 ]
  %169 = phi i64 [ %173, %167 ], [ 0, %165 ]
  %170 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %168, i64 0
  %171 = bitcast i32* %170 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %171, i8 0, i64 %32, i1 false) #4, !tbaa !4
  %172 = add nuw nsw i64 %168, 1
  %173 = add i64 %169, 1
  %174 = icmp eq i64 %173, %43
  br i1 %174, label %175, label %167, !llvm.loop !20

175:                                              ; preds = %167, %165
  br label %176

176:                                              ; preds = %175, %215
  %177 = phi i64 [ %216, %215 ], [ 0, %175 ]
  br label %178

178:                                              ; preds = %212, %176
  %179 = phi i64 [ %213, %212 ], [ 0, %176 ]
  %180 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @A, i64 0, i64 %179, i64 %177
  %181 = load i32, i32* %180, align 4, !tbaa !4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %212, label %183

183:                                              ; preds = %178
  br i1 %48, label %203, label %184

184:                                              ; preds = %183, %184
  %185 = phi i64 [ %200, %184 ], [ 0, %183 ]
  %186 = phi i64 [ %201, %184 ], [ 0, %183 ]
  %187 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %179, i64 %185
  %188 = load i32, i32* %187, align 8, !tbaa !4
  %189 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %177, i64 %185
  %190 = load i32, i32* %189, align 8, !tbaa !4
  %191 = mul nsw i32 %190, %181
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %187, align 8, !tbaa !4
  %193 = or i64 %185, 1
  %194 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %179, i64 %193
  %195 = load i32, i32* %194, align 4, !tbaa !4
  %196 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %177, i64 %193
  %197 = load i32, i32* %196, align 4, !tbaa !4
  %198 = mul nsw i32 %197, %181
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %194, align 4, !tbaa !4
  %200 = add nuw nsw i64 %185, 2
  %201 = add i64 %186, 2
  %202 = icmp eq i64 %201, %49
  br i1 %202, label %203, label %184, !llvm.loop !12

203:                                              ; preds = %184, %183
  %204 = phi i64 [ 0, %183 ], [ %200, %184 ]
  br i1 %50, label %212, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %179, i64 %204
  %207 = load i32, i32* %206, align 4, !tbaa !4
  %208 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %177, i64 %204
  %209 = load i32, i32* %208, align 4, !tbaa !4
  %210 = mul nsw i32 %209, %181
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %206, align 4, !tbaa !4
  br label %212

212:                                              ; preds = %205, %203, %178
  %213 = add nuw nsw i64 %179, 1
  %214 = icmp eq i64 %213, %19
  br i1 %214, label %215, label %178, !llvm.loop !13

215:                                              ; preds = %212
  %216 = add nuw nsw i64 %177, 1
  %217 = icmp eq i64 %216, %19
  br i1 %217, label %218, label %176, !llvm.loop !14

218:                                              ; preds = %215
  %219 = add nuw nsw i32 %52, 1
  %220 = icmp eq i32 %219, 5
  br i1 %220, label %221, label %51, !llvm.loop !21

221:                                              ; preds = %218
  br i1 %2, label %222, label %270

222:                                              ; preds = %221
  %223 = and i64 %4, 3
  %224 = icmp ult i64 %34, 3
  %225 = and i64 %4, 4294967292
  %226 = icmp eq i64 %223, 0
  br label %227

227:                                              ; preds = %222, %266
  %228 = phi i64 [ %268, %266 ], [ 0, %222 ]
  %229 = phi i32 [ %267, %266 ], [ 0, %222 ]
  br i1 %224, label %252, label %230

230:                                              ; preds = %227, %230
  %231 = phi i64 [ %249, %230 ], [ 0, %227 ]
  %232 = phi i32 [ %248, %230 ], [ %229, %227 ]
  %233 = phi i64 [ %250, %230 ], [ 0, %227 ]
  %234 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %228, i64 %231
  %235 = load i32, i32* %234, align 16, !tbaa !4
  %236 = add nsw i32 %235, %232
  %237 = or i64 %231, 1
  %238 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %228, i64 %237
  %239 = load i32, i32* %238, align 4, !tbaa !4
  %240 = add nsw i32 %239, %236
  %241 = or i64 %231, 2
  %242 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %228, i64 %241
  %243 = load i32, i32* %242, align 8, !tbaa !4
  %244 = add nsw i32 %243, %240
  %245 = or i64 %231, 3
  %246 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %228, i64 %245
  %247 = load i32, i32* %246, align 4, !tbaa !4
  %248 = add nsw i32 %247, %244
  %249 = add nuw nsw i64 %231, 4
  %250 = add i64 %233, 4
  %251 = icmp eq i64 %250, %225
  br i1 %251, label %252, label %230, !llvm.loop !22

252:                                              ; preds = %230, %227
  %253 = phi i32 [ undef, %227 ], [ %248, %230 ]
  %254 = phi i64 [ 0, %227 ], [ %249, %230 ]
  %255 = phi i32 [ %229, %227 ], [ %248, %230 ]
  br i1 %226, label %266, label %256

256:                                              ; preds = %252, %256
  %257 = phi i64 [ %263, %256 ], [ %254, %252 ]
  %258 = phi i32 [ %262, %256 ], [ %255, %252 ]
  %259 = phi i64 [ %264, %256 ], [ 0, %252 ]
  %260 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %228, i64 %257
  %261 = load i32, i32* %260, align 4, !tbaa !4
  %262 = add nsw i32 %261, %258
  %263 = add nuw nsw i64 %257, 1
  %264 = add i64 %259, 1
  %265 = icmp eq i64 %264, %223
  br i1 %265, label %266, label %256, !llvm.loop !23

266:                                              ; preds = %256, %252
  %267 = phi i32 [ %253, %252 ], [ %262, %256 ]
  %268 = add nuw nsw i64 %228, 1
  %269 = icmp eq i64 %268, %19
  br i1 %269, label %270, label %227, !llvm.loop !24

270:                                              ; preds = %266, %17, %31, %221
  %271 = phi i32 [ 0, %221 ], [ 0, %31 ], [ 0, %17 ], [ %267, %266 ]
  tail call void @_Z14_sysy_stoptimei(i32 noundef 84)
  tail call void @_Z6putinti(i32 noundef %271)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !9}
