; ModuleID = 'tests//SysY2022/performance/01_mm2.sy'
source_filename = "tests//SysY2022/performance/01_mm2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@A = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@B = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@C = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z2mmiPA1024_iS0_S0_(i32 noundef %0, [1024 x i32]* nocapture noundef readonly %1, [1024 x i32]* nocapture noundef readonly %2, [1024 x i32]* nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %166

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
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 %8, i1 false), !tbaa !5
  %19 = or i64 %15, 1
  %20 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %19, i64 0
  %21 = bitcast i32* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 %8, i1 false), !tbaa !5
  %22 = or i64 %15, 2
  %23 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %22, i64 0
  %24 = bitcast i32* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 %8, i1 false), !tbaa !5
  %25 = or i64 %15, 3
  %26 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %25, i64 0
  %27 = bitcast i32* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 %8, i1 false), !tbaa !5
  %28 = or i64 %15, 4
  %29 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %28, i64 0
  %30 = bitcast i32* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 %8, i1 false), !tbaa !5
  %31 = or i64 %15, 5
  %32 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %31, i64 0
  %33 = bitcast i32* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 %8, i1 false), !tbaa !5
  %34 = or i64 %15, 6
  %35 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %34, i64 0
  %36 = bitcast i32* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 %8, i1 false), !tbaa !5
  %37 = or i64 %15, 7
  %38 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %37, i64 0
  %39 = bitcast i32* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 %8, i1 false), !tbaa !5
  %40 = add nuw nsw i64 %15, 8
  %41 = add i64 %16, 8
  %42 = icmp eq i64 %41, %13
  br i1 %42, label %43, label %14, !llvm.loop !9

43:                                               ; preds = %14, %6
  %44 = phi i64 [ 0, %6 ], [ %40, %14 ]
  %45 = icmp eq i64 %10, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %51, %46 ], [ %44, %43 ]
  %48 = phi i64 [ %52, %46 ], [ 0, %43 ]
  %49 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %47, i64 0
  %50 = bitcast i32* %49 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 %8, i1 false), !tbaa !5
  %51 = add nuw nsw i64 %47, 1
  %52 = add i64 %48, 1
  %53 = icmp eq i64 %52, %10
  br i1 %53, label %54, label %46, !llvm.loop !11

54:                                               ; preds = %46, %43
  br i1 %5, label %55, label %166

55:                                               ; preds = %54
  %56 = zext i32 %0 to i64
  %57 = add nsw i64 %7, -1
  %58 = icmp eq i32 %0, 1
  %59 = icmp ult i64 %57, 8
  %60 = and i64 %57, -8
  %61 = or i64 %60, 1
  %62 = icmp eq i64 %57, %60
  %63 = and i64 %7, 1
  %64 = icmp eq i64 %63, 0
  %65 = sub nsw i64 0, %7
  br label %66

66:                                               ; preds = %55, %163
  %67 = phi i64 [ 0, %55 ], [ %164, %163 ]
  %68 = add nuw i64 %67, 1
  %69 = getelementptr [1024 x i32], [1024 x i32]* %2, i64 %67, i64 1
  %70 = getelementptr [1024 x i32], [1024 x i32]* %2, i64 %67, i64 %7
  %71 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %67, i64 0
  br label %72

72:                                               ; preds = %160, %66
  %73 = phi i64 [ %161, %160 ], [ 0, %66 ]
  %74 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %73, i64 1
  %75 = getelementptr [1024 x i32], [1024 x i32]* %3, i64 %73, i64 %7
  %76 = getelementptr [1024 x i32], [1024 x i32]* %1, i64 %73, i64 %67
  %77 = getelementptr [1024 x i32], [1024 x i32]* %1, i64 %73, i64 %68
  %78 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 %73, i64 %67
  %79 = load i32, i32* %78, align 4, !tbaa !5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %160, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %73, i64 0
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = load i32, i32* %71, align 4, !tbaa !5
  %85 = mul nsw i32 %84, %79
  %86 = add nsw i32 %85, %83
  store i32 %86, i32* %82, align 4, !tbaa !5
  br i1 %58, label %160, label %87, !llvm.loop !13

87:                                               ; preds = %81
  br i1 %59, label %126, label %88

88:                                               ; preds = %87
  %89 = icmp ult i32* %74, %77
  %90 = icmp ult i32* %76, %75
  %91 = and i1 %89, %90
  %92 = icmp ult i32* %74, %70
  %93 = icmp ult i32* %69, %75
  %94 = and i1 %92, %93
  %95 = or i1 %91, %94
  br i1 %95, label %126, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %78, align 4, !tbaa !5, !alias.scope !14
  %98 = insertelement <4 x i32> poison, i32 %97, i64 0
  %99 = shufflevector <4 x i32> %98, <4 x i32> poison, <4 x i32> zeroinitializer
  %100 = insertelement <4 x i32> poison, i32 %97, i64 0
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %102

102:                                              ; preds = %102, %96
  %103 = phi i64 [ 0, %96 ], [ %123, %102 ]
  %104 = or i64 %103, 1
  %105 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %73, i64 %104
  %106 = bitcast i32* %105 to <4 x i32>*
  %107 = load <4 x i32>, <4 x i32>* %106, align 4, !tbaa !5, !alias.scope !17, !noalias !19
  %108 = getelementptr inbounds i32, i32* %105, i64 4
  %109 = bitcast i32* %108 to <4 x i32>*
  %110 = load <4 x i32>, <4 x i32>* %109, align 4, !tbaa !5, !alias.scope !17, !noalias !19
  %111 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %67, i64 %104
  %112 = bitcast i32* %111 to <4 x i32>*
  %113 = load <4 x i32>, <4 x i32>* %112, align 4, !tbaa !5, !alias.scope !21
  %114 = getelementptr inbounds i32, i32* %111, i64 4
  %115 = bitcast i32* %114 to <4 x i32>*
  %116 = load <4 x i32>, <4 x i32>* %115, align 4, !tbaa !5, !alias.scope !21
  %117 = mul nsw <4 x i32> %113, %99
  %118 = mul nsw <4 x i32> %116, %101
  %119 = add nsw <4 x i32> %117, %107
  %120 = add nsw <4 x i32> %118, %110
  %121 = bitcast i32* %105 to <4 x i32>*
  store <4 x i32> %119, <4 x i32>* %121, align 4, !tbaa !5, !alias.scope !17, !noalias !19
  %122 = bitcast i32* %108 to <4 x i32>*
  store <4 x i32> %120, <4 x i32>* %122, align 4, !tbaa !5, !alias.scope !17, !noalias !19
  %123 = add nuw i64 %103, 8
  %124 = icmp eq i64 %123, %60
  br i1 %124, label %125, label %102, !llvm.loop !22

125:                                              ; preds = %102
  br i1 %62, label %160, label %126

126:                                              ; preds = %88, %87, %125
  %127 = phi i64 [ 1, %88 ], [ 1, %87 ], [ %61, %125 ]
  %128 = xor i64 %127, -1
  br i1 %64, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32, i32* %78, align 4, !tbaa !5
  %131 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %73, i64 %127
  %132 = load i32, i32* %131, align 4, !tbaa !5
  %133 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %67, i64 %127
  %134 = load i32, i32* %133, align 4, !tbaa !5
  %135 = mul nsw i32 %134, %130
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %131, align 4, !tbaa !5
  %137 = add nuw nsw i64 %127, 1
  br label %138

138:                                              ; preds = %129, %126
  %139 = phi i64 [ %127, %126 ], [ %137, %129 ]
  %140 = icmp eq i64 %128, %65
  br i1 %140, label %160, label %141

141:                                              ; preds = %138, %141
  %142 = phi i64 [ %158, %141 ], [ %139, %138 ]
  %143 = load i32, i32* %78, align 4, !tbaa !5
  %144 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %73, i64 %142
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %146 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %67, i64 %142
  %147 = load i32, i32* %146, align 4, !tbaa !5
  %148 = mul nsw i32 %147, %143
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %144, align 4, !tbaa !5
  %150 = add nuw nsw i64 %142, 1
  %151 = load i32, i32* %78, align 4, !tbaa !5
  %152 = getelementptr inbounds [1024 x i32], [1024 x i32]* %3, i64 %73, i64 %150
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 %67, i64 %150
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = mul nsw i32 %155, %151
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %152, align 4, !tbaa !5
  %158 = add nuw nsw i64 %142, 2
  %159 = icmp eq i64 %158, %56
  br i1 %159, label %160, label %141, !llvm.loop !24

160:                                              ; preds = %138, %141, %81, %125, %72
  %161 = add nuw nsw i64 %73, 1
  %162 = icmp eq i64 %161, %56
  br i1 %162, label %163, label %72, !llvm.loop !25

163:                                              ; preds = %160
  %164 = add nuw nsw i64 %67, 1
  %165 = icmp eq i64 %164, %56
  br i1 %165, label %166, label %66, !llvm.loop !26

166:                                              ; preds = %163, %4, %54
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
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, %4
  br i1 %12, label %13, label %7, !llvm.loop !27

13:                                               ; preds = %7
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, %4
  br i1 %15, label %16, label %5, !llvm.loop !28

16:                                               ; preds = %13
  br i1 %2, label %18, label %17

17:                                               ; preds = %16, %0
  tail call void @_Z15_sysy_starttimei(i32 noundef 65)
  br label %438

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
  store i32 %24, i32* %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %28, label %22, !llvm.loop !29

28:                                               ; preds = %22
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %19
  br i1 %30, label %31, label %20, !llvm.loop !30

31:                                               ; preds = %28
  tail call void @_Z15_sysy_starttimei(i32 noundef 65)
  %32 = shl nuw nsw i64 %19, 2
  br i1 %2, label %33, label %438

33:                                               ; preds = %31
  %34 = add nsw i64 %4, -1
  %35 = and i64 %4, 4294967288
  %36 = add nsw i64 %35, -8
  %37 = lshr exact i64 %36, 3
  %38 = add nuw nsw i64 %37, 1
  %39 = and i64 %4, 7
  %40 = icmp ult i64 %34, 7
  %41 = and i64 %4, 4294967288
  %42 = icmp eq i64 %39, 0
  %43 = icmp ult i32 %1, 8
  %44 = and i64 %4, 4294967288
  %45 = and i64 %38, 1
  %46 = icmp eq i64 %36, 0
  %47 = and i64 %38, 4611686018427387902
  %48 = icmp eq i64 %45, 0
  %49 = icmp eq i64 %44, %4
  %50 = and i64 %4, 7
  %51 = icmp ult i64 %34, 7
  %52 = and i64 %4, 4294967288
  %53 = icmp eq i64 %50, 0
  %54 = icmp ult i32 %1, 8
  %55 = and i64 %4, 4294967288
  %56 = and i64 %38, 1
  %57 = icmp eq i64 %36, 0
  %58 = and i64 %38, 4611686018427387902
  %59 = icmp eq i64 %56, 0
  %60 = icmp eq i64 %55, %4
  br label %61

61:                                               ; preds = %33, %336
  %62 = phi i32 [ %337, %336 ], [ 0, %33 ]
  br i1 %40, label %92, label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ %89, %63 ], [ 0, %61 ]
  %65 = phi i64 [ %90, %63 ], [ 0, %61 ]
  %66 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %64, i64 0
  %67 = bitcast i32* %66 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %67, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %68 = or i64 %64, 1
  %69 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %68, i64 0
  %70 = bitcast i32* %69 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %70, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %71 = or i64 %64, 2
  %72 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %71, i64 0
  %73 = bitcast i32* %72 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %73, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %74 = or i64 %64, 3
  %75 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %74, i64 0
  %76 = bitcast i32* %75 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %77 = or i64 %64, 4
  %78 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %77, i64 0
  %79 = bitcast i32* %78 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %79, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %80 = or i64 %64, 5
  %81 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %80, i64 0
  %82 = bitcast i32* %81 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %82, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %83 = or i64 %64, 6
  %84 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %83, i64 0
  %85 = bitcast i32* %84 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %85, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %86 = or i64 %64, 7
  %87 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %86, i64 0
  %88 = bitcast i32* %87 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %88, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %89 = add nuw nsw i64 %64, 8
  %90 = add i64 %65, 8
  %91 = icmp eq i64 %90, %41
  br i1 %91, label %92, label %63, !llvm.loop !9

92:                                               ; preds = %63, %61
  %93 = phi i64 [ 0, %61 ], [ %89, %63 ]
  br i1 %42, label %102, label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ %99, %94 ], [ %93, %92 ]
  %96 = phi i64 [ %100, %94 ], [ 0, %92 ]
  %97 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %95, i64 0
  %98 = bitcast i32* %97 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %98, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %99 = add nuw nsw i64 %95, 1
  %100 = add i64 %96, 1
  %101 = icmp eq i64 %100, %39
  br i1 %101, label %102, label %94, !llvm.loop !31

102:                                              ; preds = %94, %92
  br label %103

103:                                              ; preds = %102, %196
  %104 = phi i64 [ %197, %196 ], [ 0, %102 ]
  br label %105

105:                                              ; preds = %193, %103
  %106 = phi i64 [ %194, %193 ], [ 0, %103 ]
  %107 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @A, i64 0, i64 %106, i64 %104
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %193, label %110

110:                                              ; preds = %105
  br i1 %43, label %181, label %111

111:                                              ; preds = %110
  %112 = insertelement <4 x i32> poison, i32 %108, i64 0
  %113 = shufflevector <4 x i32> %112, <4 x i32> poison, <4 x i32> zeroinitializer
  %114 = insertelement <4 x i32> poison, i32 %108, i64 0
  %115 = shufflevector <4 x i32> %114, <4 x i32> poison, <4 x i32> zeroinitializer
  br i1 %46, label %159, label %116

116:                                              ; preds = %111, %116
  %117 = phi i64 [ %156, %116 ], [ 0, %111 ]
  %118 = phi i64 [ %157, %116 ], [ 0, %111 ]
  %119 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %106, i64 %117
  %120 = bitcast i32* %119 to <4 x i32>*
  %121 = load <4 x i32>, <4 x i32>* %120, align 16, !tbaa !5
  %122 = getelementptr inbounds i32, i32* %119, i64 4
  %123 = bitcast i32* %122 to <4 x i32>*
  %124 = load <4 x i32>, <4 x i32>* %123, align 16, !tbaa !5
  %125 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %104, i64 %117
  %126 = bitcast i32* %125 to <4 x i32>*
  %127 = load <4 x i32>, <4 x i32>* %126, align 16, !tbaa !5
  %128 = getelementptr inbounds i32, i32* %125, i64 4
  %129 = bitcast i32* %128 to <4 x i32>*
  %130 = load <4 x i32>, <4 x i32>* %129, align 16, !tbaa !5
  %131 = mul nsw <4 x i32> %127, %113
  %132 = mul nsw <4 x i32> %130, %115
  %133 = add nsw <4 x i32> %131, %121
  %134 = add nsw <4 x i32> %132, %124
  %135 = bitcast i32* %119 to <4 x i32>*
  store <4 x i32> %133, <4 x i32>* %135, align 16, !tbaa !5
  %136 = bitcast i32* %122 to <4 x i32>*
  store <4 x i32> %134, <4 x i32>* %136, align 16, !tbaa !5
  %137 = or i64 %117, 8
  %138 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %106, i64 %137
  %139 = bitcast i32* %138 to <4 x i32>*
  %140 = load <4 x i32>, <4 x i32>* %139, align 16, !tbaa !5
  %141 = getelementptr inbounds i32, i32* %138, i64 4
  %142 = bitcast i32* %141 to <4 x i32>*
  %143 = load <4 x i32>, <4 x i32>* %142, align 16, !tbaa !5
  %144 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %104, i64 %137
  %145 = bitcast i32* %144 to <4 x i32>*
  %146 = load <4 x i32>, <4 x i32>* %145, align 16, !tbaa !5
  %147 = getelementptr inbounds i32, i32* %144, i64 4
  %148 = bitcast i32* %147 to <4 x i32>*
  %149 = load <4 x i32>, <4 x i32>* %148, align 16, !tbaa !5
  %150 = mul nsw <4 x i32> %146, %113
  %151 = mul nsw <4 x i32> %149, %115
  %152 = add nsw <4 x i32> %150, %140
  %153 = add nsw <4 x i32> %151, %143
  %154 = bitcast i32* %138 to <4 x i32>*
  store <4 x i32> %152, <4 x i32>* %154, align 16, !tbaa !5
  %155 = bitcast i32* %141 to <4 x i32>*
  store <4 x i32> %153, <4 x i32>* %155, align 16, !tbaa !5
  %156 = add nuw i64 %117, 16
  %157 = add i64 %118, 2
  %158 = icmp eq i64 %157, %47
  br i1 %158, label %159, label %116, !llvm.loop !32

159:                                              ; preds = %116, %111
  %160 = phi i64 [ 0, %111 ], [ %156, %116 ]
  br i1 %48, label %180, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %106, i64 %160
  %163 = bitcast i32* %162 to <4 x i32>*
  %164 = load <4 x i32>, <4 x i32>* %163, align 16, !tbaa !5
  %165 = getelementptr inbounds i32, i32* %162, i64 4
  %166 = bitcast i32* %165 to <4 x i32>*
  %167 = load <4 x i32>, <4 x i32>* %166, align 16, !tbaa !5
  %168 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %104, i64 %160
  %169 = bitcast i32* %168 to <4 x i32>*
  %170 = load <4 x i32>, <4 x i32>* %169, align 16, !tbaa !5
  %171 = getelementptr inbounds i32, i32* %168, i64 4
  %172 = bitcast i32* %171 to <4 x i32>*
  %173 = load <4 x i32>, <4 x i32>* %172, align 16, !tbaa !5
  %174 = mul nsw <4 x i32> %170, %113
  %175 = mul nsw <4 x i32> %173, %115
  %176 = add nsw <4 x i32> %174, %164
  %177 = add nsw <4 x i32> %175, %167
  %178 = bitcast i32* %162 to <4 x i32>*
  store <4 x i32> %176, <4 x i32>* %178, align 16, !tbaa !5
  %179 = bitcast i32* %165 to <4 x i32>*
  store <4 x i32> %177, <4 x i32>* %179, align 16, !tbaa !5
  br label %180

180:                                              ; preds = %159, %161
  br i1 %49, label %193, label %181

181:                                              ; preds = %110, %180
  %182 = phi i64 [ 0, %110 ], [ %44, %180 ]
  br label %183

183:                                              ; preds = %181, %183
  %184 = phi i64 [ %191, %183 ], [ %182, %181 ]
  %185 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %106, i64 %184
  %186 = load i32, i32* %185, align 4, !tbaa !5
  %187 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %104, i64 %184
  %188 = load i32, i32* %187, align 4, !tbaa !5
  %189 = mul nsw i32 %188, %108
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %185, align 4, !tbaa !5
  %191 = add nuw nsw i64 %184, 1
  %192 = icmp eq i64 %191, %19
  br i1 %192, label %193, label %183, !llvm.loop !33

193:                                              ; preds = %183, %180, %105
  %194 = add nuw nsw i64 %106, 1
  %195 = icmp eq i64 %194, %19
  br i1 %195, label %196, label %105, !llvm.loop !25

196:                                              ; preds = %193
  %197 = add nuw nsw i64 %104, 1
  %198 = icmp eq i64 %197, %19
  br i1 %198, label %199, label %103, !llvm.loop !26

199:                                              ; preds = %196
  br i1 %51, label %229, label %200

200:                                              ; preds = %199, %200
  %201 = phi i64 [ %226, %200 ], [ 0, %199 ]
  %202 = phi i64 [ %227, %200 ], [ 0, %199 ]
  %203 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %201, i64 0
  %204 = bitcast i32* %203 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %204, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %205 = or i64 %201, 1
  %206 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %205, i64 0
  %207 = bitcast i32* %206 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %207, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %208 = or i64 %201, 2
  %209 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %208, i64 0
  %210 = bitcast i32* %209 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %210, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %211 = or i64 %201, 3
  %212 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %211, i64 0
  %213 = bitcast i32* %212 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %213, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %214 = or i64 %201, 4
  %215 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %214, i64 0
  %216 = bitcast i32* %215 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %216, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %217 = or i64 %201, 5
  %218 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %217, i64 0
  %219 = bitcast i32* %218 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %219, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %220 = or i64 %201, 6
  %221 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %220, i64 0
  %222 = bitcast i32* %221 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %222, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %223 = or i64 %201, 7
  %224 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %223, i64 0
  %225 = bitcast i32* %224 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %225, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %226 = add nuw nsw i64 %201, 8
  %227 = add i64 %202, 8
  %228 = icmp eq i64 %227, %52
  br i1 %228, label %229, label %200, !llvm.loop !9

229:                                              ; preds = %200, %199
  %230 = phi i64 [ 0, %199 ], [ %226, %200 ]
  br i1 %53, label %239, label %231

231:                                              ; preds = %229, %231
  %232 = phi i64 [ %236, %231 ], [ %230, %229 ]
  %233 = phi i64 [ %237, %231 ], [ 0, %229 ]
  %234 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %232, i64 0
  %235 = bitcast i32* %234 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %235, i8 0, i64 %32, i1 false) #5, !tbaa !5
  %236 = add nuw nsw i64 %232, 1
  %237 = add i64 %233, 1
  %238 = icmp eq i64 %237, %50
  br i1 %238, label %239, label %231, !llvm.loop !35

239:                                              ; preds = %231, %229
  br label %240

240:                                              ; preds = %239, %333
  %241 = phi i64 [ %334, %333 ], [ 0, %239 ]
  br label %242

242:                                              ; preds = %330, %240
  %243 = phi i64 [ %331, %330 ], [ 0, %240 ]
  %244 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @A, i64 0, i64 %243, i64 %241
  %245 = load i32, i32* %244, align 4, !tbaa !5
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %330, label %247

247:                                              ; preds = %242
  br i1 %54, label %318, label %248

248:                                              ; preds = %247
  %249 = insertelement <4 x i32> poison, i32 %245, i64 0
  %250 = shufflevector <4 x i32> %249, <4 x i32> poison, <4 x i32> zeroinitializer
  %251 = insertelement <4 x i32> poison, i32 %245, i64 0
  %252 = shufflevector <4 x i32> %251, <4 x i32> poison, <4 x i32> zeroinitializer
  br i1 %57, label %296, label %253

253:                                              ; preds = %248, %253
  %254 = phi i64 [ %293, %253 ], [ 0, %248 ]
  %255 = phi i64 [ %294, %253 ], [ 0, %248 ]
  %256 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %243, i64 %254
  %257 = bitcast i32* %256 to <4 x i32>*
  %258 = load <4 x i32>, <4 x i32>* %257, align 16, !tbaa !5
  %259 = getelementptr inbounds i32, i32* %256, i64 4
  %260 = bitcast i32* %259 to <4 x i32>*
  %261 = load <4 x i32>, <4 x i32>* %260, align 16, !tbaa !5
  %262 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %241, i64 %254
  %263 = bitcast i32* %262 to <4 x i32>*
  %264 = load <4 x i32>, <4 x i32>* %263, align 16, !tbaa !5
  %265 = getelementptr inbounds i32, i32* %262, i64 4
  %266 = bitcast i32* %265 to <4 x i32>*
  %267 = load <4 x i32>, <4 x i32>* %266, align 16, !tbaa !5
  %268 = mul nsw <4 x i32> %264, %250
  %269 = mul nsw <4 x i32> %267, %252
  %270 = add nsw <4 x i32> %268, %258
  %271 = add nsw <4 x i32> %269, %261
  %272 = bitcast i32* %256 to <4 x i32>*
  store <4 x i32> %270, <4 x i32>* %272, align 16, !tbaa !5
  %273 = bitcast i32* %259 to <4 x i32>*
  store <4 x i32> %271, <4 x i32>* %273, align 16, !tbaa !5
  %274 = or i64 %254, 8
  %275 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %243, i64 %274
  %276 = bitcast i32* %275 to <4 x i32>*
  %277 = load <4 x i32>, <4 x i32>* %276, align 16, !tbaa !5
  %278 = getelementptr inbounds i32, i32* %275, i64 4
  %279 = bitcast i32* %278 to <4 x i32>*
  %280 = load <4 x i32>, <4 x i32>* %279, align 16, !tbaa !5
  %281 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %241, i64 %274
  %282 = bitcast i32* %281 to <4 x i32>*
  %283 = load <4 x i32>, <4 x i32>* %282, align 16, !tbaa !5
  %284 = getelementptr inbounds i32, i32* %281, i64 4
  %285 = bitcast i32* %284 to <4 x i32>*
  %286 = load <4 x i32>, <4 x i32>* %285, align 16, !tbaa !5
  %287 = mul nsw <4 x i32> %283, %250
  %288 = mul nsw <4 x i32> %286, %252
  %289 = add nsw <4 x i32> %287, %277
  %290 = add nsw <4 x i32> %288, %280
  %291 = bitcast i32* %275 to <4 x i32>*
  store <4 x i32> %289, <4 x i32>* %291, align 16, !tbaa !5
  %292 = bitcast i32* %278 to <4 x i32>*
  store <4 x i32> %290, <4 x i32>* %292, align 16, !tbaa !5
  %293 = add nuw i64 %254, 16
  %294 = add i64 %255, 2
  %295 = icmp eq i64 %294, %58
  br i1 %295, label %296, label %253, !llvm.loop !36

296:                                              ; preds = %253, %248
  %297 = phi i64 [ 0, %248 ], [ %293, %253 ]
  br i1 %59, label %317, label %298

298:                                              ; preds = %296
  %299 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %243, i64 %297
  %300 = bitcast i32* %299 to <4 x i32>*
  %301 = load <4 x i32>, <4 x i32>* %300, align 16, !tbaa !5
  %302 = getelementptr inbounds i32, i32* %299, i64 4
  %303 = bitcast i32* %302 to <4 x i32>*
  %304 = load <4 x i32>, <4 x i32>* %303, align 16, !tbaa !5
  %305 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %241, i64 %297
  %306 = bitcast i32* %305 to <4 x i32>*
  %307 = load <4 x i32>, <4 x i32>* %306, align 16, !tbaa !5
  %308 = getelementptr inbounds i32, i32* %305, i64 4
  %309 = bitcast i32* %308 to <4 x i32>*
  %310 = load <4 x i32>, <4 x i32>* %309, align 16, !tbaa !5
  %311 = mul nsw <4 x i32> %307, %250
  %312 = mul nsw <4 x i32> %310, %252
  %313 = add nsw <4 x i32> %311, %301
  %314 = add nsw <4 x i32> %312, %304
  %315 = bitcast i32* %299 to <4 x i32>*
  store <4 x i32> %313, <4 x i32>* %315, align 16, !tbaa !5
  %316 = bitcast i32* %302 to <4 x i32>*
  store <4 x i32> %314, <4 x i32>* %316, align 16, !tbaa !5
  br label %317

317:                                              ; preds = %296, %298
  br i1 %60, label %330, label %318

318:                                              ; preds = %247, %317
  %319 = phi i64 [ 0, %247 ], [ %55, %317 ]
  br label %320

320:                                              ; preds = %318, %320
  %321 = phi i64 [ %328, %320 ], [ %319, %318 ]
  %322 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %243, i64 %321
  %323 = load i32, i32* %322, align 4, !tbaa !5
  %324 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @C, i64 0, i64 %241, i64 %321
  %325 = load i32, i32* %324, align 4, !tbaa !5
  %326 = mul nsw i32 %325, %245
  %327 = add nsw i32 %326, %323
  store i32 %327, i32* %322, align 4, !tbaa !5
  %328 = add nuw nsw i64 %321, 1
  %329 = icmp eq i64 %328, %19
  br i1 %329, label %330, label %320, !llvm.loop !37

330:                                              ; preds = %320, %317, %242
  %331 = add nuw nsw i64 %243, 1
  %332 = icmp eq i64 %331, %19
  br i1 %332, label %333, label %242, !llvm.loop !25

333:                                              ; preds = %330
  %334 = add nuw nsw i64 %241, 1
  %335 = icmp eq i64 %334, %19
  br i1 %335, label %336, label %240, !llvm.loop !26

336:                                              ; preds = %333
  %337 = add nuw nsw i32 %62, 1
  %338 = icmp eq i32 %337, 5
  br i1 %338, label %339, label %61, !llvm.loop !38

339:                                              ; preds = %336
  br i1 %2, label %340, label %438

340:                                              ; preds = %339
  %341 = icmp ult i32 %1, 8
  %342 = and i64 %4, 4294967288
  %343 = and i64 %38, 3
  %344 = icmp ult i64 %36, 24
  %345 = and i64 %38, 4611686018427387900
  %346 = icmp eq i64 %343, 0
  %347 = icmp eq i64 %342, %4
  br label %348

348:                                              ; preds = %340, %434
  %349 = phi i64 [ %436, %434 ], [ 0, %340 ]
  %350 = phi i32 [ %435, %434 ], [ 0, %340 ]
  br i1 %341, label %423, label %351

351:                                              ; preds = %348
  %352 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %350, i64 0
  br i1 %344, label %396, label %353

353:                                              ; preds = %351, %353
  %354 = phi i64 [ %393, %353 ], [ 0, %351 ]
  %355 = phi <4 x i32> [ %391, %353 ], [ %352, %351 ]
  %356 = phi <4 x i32> [ %392, %353 ], [ zeroinitializer, %351 ]
  %357 = phi i64 [ %394, %353 ], [ 0, %351 ]
  %358 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %349, i64 %354
  %359 = bitcast i32* %358 to <4 x i32>*
  %360 = load <4 x i32>, <4 x i32>* %359, align 16, !tbaa !5
  %361 = getelementptr inbounds i32, i32* %358, i64 4
  %362 = bitcast i32* %361 to <4 x i32>*
  %363 = load <4 x i32>, <4 x i32>* %362, align 16, !tbaa !5
  %364 = add <4 x i32> %360, %355
  %365 = add <4 x i32> %363, %356
  %366 = or i64 %354, 8
  %367 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %349, i64 %366
  %368 = bitcast i32* %367 to <4 x i32>*
  %369 = load <4 x i32>, <4 x i32>* %368, align 16, !tbaa !5
  %370 = getelementptr inbounds i32, i32* %367, i64 4
  %371 = bitcast i32* %370 to <4 x i32>*
  %372 = load <4 x i32>, <4 x i32>* %371, align 16, !tbaa !5
  %373 = add <4 x i32> %369, %364
  %374 = add <4 x i32> %372, %365
  %375 = or i64 %354, 16
  %376 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %349, i64 %375
  %377 = bitcast i32* %376 to <4 x i32>*
  %378 = load <4 x i32>, <4 x i32>* %377, align 16, !tbaa !5
  %379 = getelementptr inbounds i32, i32* %376, i64 4
  %380 = bitcast i32* %379 to <4 x i32>*
  %381 = load <4 x i32>, <4 x i32>* %380, align 16, !tbaa !5
  %382 = add <4 x i32> %378, %373
  %383 = add <4 x i32> %381, %374
  %384 = or i64 %354, 24
  %385 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %349, i64 %384
  %386 = bitcast i32* %385 to <4 x i32>*
  %387 = load <4 x i32>, <4 x i32>* %386, align 16, !tbaa !5
  %388 = getelementptr inbounds i32, i32* %385, i64 4
  %389 = bitcast i32* %388 to <4 x i32>*
  %390 = load <4 x i32>, <4 x i32>* %389, align 16, !tbaa !5
  %391 = add <4 x i32> %387, %382
  %392 = add <4 x i32> %390, %383
  %393 = add nuw i64 %354, 32
  %394 = add i64 %357, 4
  %395 = icmp eq i64 %394, %345
  br i1 %395, label %396, label %353, !llvm.loop !39

396:                                              ; preds = %353, %351
  %397 = phi <4 x i32> [ undef, %351 ], [ %391, %353 ]
  %398 = phi <4 x i32> [ undef, %351 ], [ %392, %353 ]
  %399 = phi i64 [ 0, %351 ], [ %393, %353 ]
  %400 = phi <4 x i32> [ %352, %351 ], [ %391, %353 ]
  %401 = phi <4 x i32> [ zeroinitializer, %351 ], [ %392, %353 ]
  br i1 %346, label %418, label %402

402:                                              ; preds = %396, %402
  %403 = phi i64 [ %415, %402 ], [ %399, %396 ]
  %404 = phi <4 x i32> [ %413, %402 ], [ %400, %396 ]
  %405 = phi <4 x i32> [ %414, %402 ], [ %401, %396 ]
  %406 = phi i64 [ %416, %402 ], [ 0, %396 ]
  %407 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %349, i64 %403
  %408 = bitcast i32* %407 to <4 x i32>*
  %409 = load <4 x i32>, <4 x i32>* %408, align 16, !tbaa !5
  %410 = getelementptr inbounds i32, i32* %407, i64 4
  %411 = bitcast i32* %410 to <4 x i32>*
  %412 = load <4 x i32>, <4 x i32>* %411, align 16, !tbaa !5
  %413 = add <4 x i32> %409, %404
  %414 = add <4 x i32> %412, %405
  %415 = add nuw i64 %403, 8
  %416 = add i64 %406, 1
  %417 = icmp eq i64 %416, %343
  br i1 %417, label %418, label %402, !llvm.loop !40

418:                                              ; preds = %402, %396
  %419 = phi <4 x i32> [ %397, %396 ], [ %413, %402 ]
  %420 = phi <4 x i32> [ %398, %396 ], [ %414, %402 ]
  %421 = add <4 x i32> %420, %419
  %422 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %421)
  br i1 %347, label %434, label %423

423:                                              ; preds = %348, %418
  %424 = phi i64 [ 0, %348 ], [ %342, %418 ]
  %425 = phi i32 [ %350, %348 ], [ %422, %418 ]
  br label %426

426:                                              ; preds = %423, %426
  %427 = phi i64 [ %432, %426 ], [ %424, %423 ]
  %428 = phi i32 [ %431, %426 ], [ %425, %423 ]
  %429 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* @B, i64 0, i64 %349, i64 %427
  %430 = load i32, i32* %429, align 4, !tbaa !5
  %431 = add nsw i32 %430, %428
  %432 = add nuw nsw i64 %427, 1
  %433 = icmp eq i64 %432, %19
  br i1 %433, label %434, label %426, !llvm.loop !41

434:                                              ; preds = %426, %418
  %435 = phi i32 [ %422, %418 ], [ %431, %426 ]
  %436 = add nuw nsw i64 %349, 1
  %437 = icmp eq i64 %436, %19
  br i1 %437, label %438, label %348, !llvm.loop !42

438:                                              ; preds = %434, %17, %31, %339
  %439 = phi i32 [ 0, %339 ], [ 0, %31 ], [ 0, %17 ], [ %435, %434 ]
  tail call void @_Z14_sysy_stoptimei(i32 noundef 84)
  tail call void @_Z6putinti(i32 noundef %439)
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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone willreturn }
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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = !{!15, !20}
!20 = distinct !{!20, !16}
!21 = !{!20}
!22 = distinct !{!22, !10, !23}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !10, !23}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !10, !23}
!33 = distinct !{!33, !10, !34, !23}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !10, !23}
!37 = distinct !{!37, !10, !34, !23}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10, !23}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !10, !34, !23}
!42 = distinct !{!42, !10}
