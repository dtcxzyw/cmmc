; ModuleID = 'tests//SysY2022/performance/03_sort3.sy'
source_filename = "tests//SysY2022/performance/03_sort3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [30000010 x i32] zeroinitializer, align 16
@ans = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z9getMaxNumiPi(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %53

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  %6 = add nsw i64 %5, -1
  %7 = and i64 %5, 3
  %8 = icmp ult i64 %6, 3
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = and i64 %5, 4294967292
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %34, %11 ]
  %13 = phi i32 [ 0, %9 ], [ %33, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %35, %11 ]
  %15 = getelementptr inbounds i32, i32* %1, i64 %12
  %16 = load i32, i32* %15, align 4, !tbaa !4
  %17 = icmp sgt i32 %16, %13
  %18 = select i1 %17, i32 %16, i32 %13
  %19 = or i64 %12, 1
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !4
  %22 = icmp sgt i32 %21, %18
  %23 = select i1 %22, i32 %21, i32 %18
  %24 = or i64 %12, 2
  %25 = getelementptr inbounds i32, i32* %1, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !4
  %27 = icmp sgt i32 %26, %23
  %28 = select i1 %27, i32 %26, i32 %23
  %29 = or i64 %12, 3
  %30 = getelementptr inbounds i32, i32* %1, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !4
  %32 = icmp sgt i32 %31, %28
  %33 = select i1 %32, i32 %31, i32 %28
  %34 = add nuw nsw i64 %12, 4
  %35 = add i64 %14, 4
  %36 = icmp eq i64 %35, %10
  br i1 %36, label %37, label %11, !llvm.loop !8

37:                                               ; preds = %11, %4
  %38 = phi i32 [ undef, %4 ], [ %33, %11 ]
  %39 = phi i64 [ 0, %4 ], [ %34, %11 ]
  %40 = phi i32 [ 0, %4 ], [ %33, %11 ]
  %41 = icmp eq i64 %7, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37, %42
  %43 = phi i64 [ %50, %42 ], [ %39, %37 ]
  %44 = phi i32 [ %49, %42 ], [ %40, %37 ]
  %45 = phi i64 [ %51, %42 ], [ 0, %37 ]
  %46 = getelementptr inbounds i32, i32* %1, i64 %43
  %47 = load i32, i32* %46, align 4, !tbaa !4
  %48 = icmp sgt i32 %47, %44
  %49 = select i1 %48, i32 %47, i32 %44
  %50 = add nuw nsw i64 %43, 1
  %51 = add i64 %45, 1
  %52 = icmp eq i64 %51, %7
  br i1 %52, label %53, label %42, !llvm.loop !10

53:                                               ; preds = %37, %42, %2
  %54 = phi i32 [ 0, %2 ], [ %38, %37 ], [ %49, %42 ]
  ret i32 %54
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z9getNumPosii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = and i32 %1, 3
  %7 = icmp ult i32 %5, 3
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, -4
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %0, %8 ], [ %13, %10 ]
  %12 = phi i32 [ 0, %8 ], [ %14, %10 ]
  %13 = sdiv i32 %11, 65536
  %14 = add i32 %12, 4
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %16, label %10, !llvm.loop !12

16:                                               ; preds = %10, %4
  %17 = phi i32 [ undef, %4 ], [ %13, %10 ]
  %18 = phi i32 [ %0, %4 ], [ %13, %10 ]
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %20
  %21 = phi i32 [ %23, %20 ], [ %18, %16 ]
  %22 = phi i32 [ %24, %20 ], [ 0, %16 ]
  %23 = sdiv i32 %21, 16
  %24 = add i32 %22, 1
  %25 = icmp eq i32 %24, %6
  br i1 %25, label %26, label %20, !llvm.loop !13

26:                                               ; preds = %16, %20, %2
  %27 = phi i32 [ %0, %2 ], [ %17, %16 ], [ %23, %20 ]
  %28 = srem i32 %27, 16
  ret i32 %28
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z9radixSortiPiii(i32 noundef %0, i32* nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [16 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca [16 x i32], align 16
  %8 = bitcast [16 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #7
  %9 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #7
  %10 = bitcast [16 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %10) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  %11 = icmp ne i32 %0, -1
  %12 = add nsw i32 %2, 1
  %13 = icmp slt i32 %12, %3
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %444

15:                                               ; preds = %4
  %16 = icmp sgt i32 %0, 0
  %17 = sext i32 %2 to i64
  %18 = sext i32 %3 to i64
  br i1 %16, label %19, label %77

19:                                               ; preds = %15
  %20 = add i32 %0, -1
  %21 = and i32 %0, 3
  %22 = icmp ult i32 %20, 3
  %23 = and i32 %0, -4
  %24 = icmp eq i32 %21, 0
  %25 = and i32 %0, 3
  %26 = icmp ult i32 %20, 3
  %27 = and i32 %0, -4
  %28 = icmp eq i32 %25, 0
  br label %29

29:                                               ; preds = %19, %69
  %30 = phi i64 [ %75, %69 ], [ %17, %19 ]
  %31 = getelementptr inbounds i32, i32* %1, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !4
  br i1 %22, label %39, label %33

33:                                               ; preds = %29, %33
  %34 = phi i32 [ %36, %33 ], [ %32, %29 ]
  %35 = phi i32 [ %37, %33 ], [ 0, %29 ]
  %36 = sdiv i32 %34, 65536
  %37 = add i32 %35, 4
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %33, !llvm.loop !12

39:                                               ; preds = %33, %29
  %40 = phi i32 [ undef, %29 ], [ %36, %33 ]
  %41 = phi i32 [ %32, %29 ], [ %36, %33 ]
  br i1 %24, label %48, label %42

42:                                               ; preds = %39, %42
  %43 = phi i32 [ %45, %42 ], [ %41, %39 ]
  %44 = phi i32 [ %46, %42 ], [ 0, %39 ]
  %45 = sdiv i32 %43, 16
  %46 = add i32 %44, 1
  %47 = icmp eq i32 %46, %21
  br i1 %47, label %48, label %42, !llvm.loop !14

48:                                               ; preds = %42, %39
  %49 = phi i32 [ %40, %39 ], [ %45, %42 ]
  %50 = srem i32 %49, 16
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !4
  br i1 %26, label %60, label %54

54:                                               ; preds = %48, %54
  %55 = phi i32 [ %57, %54 ], [ %32, %48 ]
  %56 = phi i32 [ %58, %54 ], [ 0, %48 ]
  %57 = sdiv i32 %55, 65536
  %58 = add i32 %56, 4
  %59 = icmp eq i32 %58, %27
  br i1 %59, label %60, label %54, !llvm.loop !12

60:                                               ; preds = %54, %48
  %61 = phi i32 [ undef, %48 ], [ %57, %54 ]
  %62 = phi i32 [ %32, %48 ], [ %57, %54 ]
  br i1 %28, label %69, label %63

63:                                               ; preds = %60, %63
  %64 = phi i32 [ %66, %63 ], [ %62, %60 ]
  %65 = phi i32 [ %67, %63 ], [ 0, %60 ]
  %66 = sdiv i32 %64, 16
  %67 = add i32 %65, 1
  %68 = icmp eq i32 %67, %25
  br i1 %68, label %69, label %63, !llvm.loop !15

69:                                               ; preds = %63, %60
  %70 = phi i32 [ %61, %60 ], [ %66, %63 ]
  %71 = add nsw i32 %53, 1
  %72 = srem i32 %70, 16
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %73
  store i32 %71, i32* %74, align 4, !tbaa !4
  %75 = add nsw i64 %30, 1
  %76 = icmp slt i64 %75, %18
  br i1 %76, label %29, label %88, !llvm.loop !16

77:                                               ; preds = %15, %77
  %78 = phi i64 [ %86, %77 ], [ %17, %15 ]
  %79 = getelementptr inbounds i32, i32* %1, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !4
  %81 = srem i32 %80, 16
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4, !tbaa !4
  %86 = add nsw i64 %78, 1
  %87 = icmp slt i64 %86, %18
  br i1 %87, label %77, label %88, !llvm.loop !16

88:                                               ; preds = %77, %69
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  store i32 %2, i32* %89, align 16, !tbaa !4
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %91 = load i32, i32* %90, align 16, !tbaa !4
  %92 = add nsw i32 %91, %2
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  store i32 %92, i32* %93, align 16, !tbaa !4
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  store i32 %92, i32* %94, align 4, !tbaa !4
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %96 = load i32, i32* %95, align 4, !tbaa !4
  %97 = add nsw i32 %96, %92
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  store i32 %97, i32* %98, align 4, !tbaa !4
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 2
  store i32 %97, i32* %99, align 8, !tbaa !4
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %101 = load i32, i32* %100, align 8, !tbaa !4
  %102 = add nsw i32 %101, %97
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  store i32 %102, i32* %103, align 8, !tbaa !4
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 3
  store i32 %102, i32* %104, align 4, !tbaa !4
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %106 = load i32, i32* %105, align 4, !tbaa !4
  %107 = add nsw i32 %106, %102
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  store i32 %107, i32* %108, align 4, !tbaa !4
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 4
  store i32 %107, i32* %109, align 16, !tbaa !4
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %111 = load i32, i32* %110, align 16, !tbaa !4
  %112 = add nsw i32 %111, %107
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  store i32 %112, i32* %113, align 16, !tbaa !4
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 5
  store i32 %112, i32* %114, align 4, !tbaa !4
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %116 = load i32, i32* %115, align 4, !tbaa !4
  %117 = add nsw i32 %116, %112
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  store i32 %117, i32* %118, align 4, !tbaa !4
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 6
  store i32 %117, i32* %119, align 8, !tbaa !4
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %121 = load i32, i32* %120, align 8, !tbaa !4
  %122 = add nsw i32 %121, %117
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  store i32 %122, i32* %123, align 8, !tbaa !4
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 7
  store i32 %122, i32* %124, align 4, !tbaa !4
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %126 = load i32, i32* %125, align 4, !tbaa !4
  %127 = add nsw i32 %126, %122
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 7
  store i32 %127, i32* %128, align 4, !tbaa !4
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 8
  store i32 %127, i32* %129, align 16, !tbaa !4
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %131 = load i32, i32* %130, align 16, !tbaa !4
  %132 = add nsw i32 %131, %127
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 8
  store i32 %132, i32* %133, align 16, !tbaa !4
  %134 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 9
  store i32 %132, i32* %134, align 4, !tbaa !4
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %136 = load i32, i32* %135, align 4, !tbaa !4
  %137 = add nsw i32 %136, %132
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 9
  store i32 %137, i32* %138, align 4, !tbaa !4
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 10
  store i32 %137, i32* %139, align 8, !tbaa !4
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %141 = load i32, i32* %140, align 8, !tbaa !4
  %142 = add nsw i32 %141, %137
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 10
  store i32 %142, i32* %143, align 8, !tbaa !4
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 11
  store i32 %142, i32* %144, align 4, !tbaa !4
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %146 = load i32, i32* %145, align 4, !tbaa !4
  %147 = add nsw i32 %146, %142
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 11
  store i32 %147, i32* %148, align 4, !tbaa !4
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 12
  store i32 %147, i32* %149, align 16, !tbaa !4
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  %151 = load i32, i32* %150, align 16, !tbaa !4
  %152 = add nsw i32 %151, %147
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 12
  store i32 %152, i32* %153, align 16, !tbaa !4
  %154 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 13
  store i32 %152, i32* %154, align 4, !tbaa !4
  %155 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  %156 = load i32, i32* %155, align 4, !tbaa !4
  %157 = add nsw i32 %156, %152
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 13
  store i32 %157, i32* %158, align 4, !tbaa !4
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 14
  store i32 %157, i32* %159, align 8, !tbaa !4
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  %161 = load i32, i32* %160, align 8, !tbaa !4
  %162 = add nsw i32 %161, %157
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 14
  store i32 %162, i32* %163, align 8, !tbaa !4
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 15
  store i32 %162, i32* %164, align 4, !tbaa !4
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  %166 = load i32, i32* %165, align 4, !tbaa !4
  %167 = add nsw i32 %166, %162
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 15
  store i32 %167, i32* %168, align 4, !tbaa !4
  br i1 %16, label %169, label %324

169:                                              ; preds = %88
  %170 = add i32 %0, -1
  %171 = and i32 %0, 3
  %172 = icmp ult i32 %170, 3
  %173 = and i32 %0, -4
  %174 = icmp eq i32 %171, 0
  %175 = and i32 %0, 3
  %176 = icmp ult i32 %170, 3
  %177 = and i32 %0, -4
  %178 = icmp eq i32 %175, 0
  %179 = and i32 %0, 3
  %180 = icmp ult i32 %170, 3
  %181 = and i32 %0, -4
  %182 = icmp eq i32 %179, 0
  %183 = and i32 %0, 3
  %184 = icmp ult i32 %170, 3
  %185 = and i32 %0, -4
  %186 = icmp eq i32 %183, 0
  %187 = and i32 %0, 3
  %188 = icmp ult i32 %170, 3
  %189 = and i32 %0, -4
  %190 = icmp eq i32 %187, 0
  br label %191

191:                                              ; preds = %169, %198
  %192 = phi i64 [ %199, %198 ], [ 0, %169 ]
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %192
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %192
  %195 = load i32, i32* %194, align 4, !tbaa !4
  %196 = load i32, i32* %193, align 4, !tbaa !4
  %197 = icmp slt i32 %196, %195
  br i1 %197, label %201, label %198

198:                                              ; preds = %318, %191
  %199 = add nuw nsw i64 %192, 1
  %200 = icmp eq i64 %199, 16
  br i1 %200, label %365, label %191, !llvm.loop !17

201:                                              ; preds = %191, %318
  %202 = phi i32 [ %322, %318 ], [ %196, %191 ]
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %1, i64 %203
  %205 = load i32, i32* %204, align 4, !tbaa !4
  br label %206

206:                                              ; preds = %312, %201
  %207 = phi i32 [ %205, %201 ], [ %252, %312 ]
  br i1 %172, label %214, label %208

208:                                              ; preds = %206, %208
  %209 = phi i32 [ %211, %208 ], [ %207, %206 ]
  %210 = phi i32 [ %212, %208 ], [ 0, %206 ]
  %211 = sdiv i32 %209, 65536
  %212 = add i32 %210, 4
  %213 = icmp eq i32 %212, %173
  br i1 %213, label %214, label %208, !llvm.loop !12

214:                                              ; preds = %208, %206
  %215 = phi i32 [ undef, %206 ], [ %211, %208 ]
  %216 = phi i32 [ %207, %206 ], [ %211, %208 ]
  br i1 %174, label %223, label %217

217:                                              ; preds = %214, %217
  %218 = phi i32 [ %220, %217 ], [ %216, %214 ]
  %219 = phi i32 [ %221, %217 ], [ 0, %214 ]
  %220 = sdiv i32 %218, 16
  %221 = add i32 %219, 1
  %222 = icmp eq i32 %221, %171
  br i1 %222, label %223, label %217, !llvm.loop !18

223:                                              ; preds = %217, %214
  %224 = phi i32 [ %215, %214 ], [ %220, %217 ]
  %225 = srem i32 %224, 16
  %226 = zext i32 %225 to i64
  %227 = icmp eq i64 %192, %226
  br i1 %227, label %318, label %228

228:                                              ; preds = %223
  br i1 %176, label %235, label %229

229:                                              ; preds = %228, %229
  %230 = phi i32 [ %232, %229 ], [ %207, %228 ]
  %231 = phi i32 [ %233, %229 ], [ 0, %228 ]
  %232 = sdiv i32 %230, 65536
  %233 = add i32 %231, 4
  %234 = icmp eq i32 %233, %177
  br i1 %234, label %235, label %229, !llvm.loop !12

235:                                              ; preds = %229, %228
  %236 = phi i32 [ undef, %228 ], [ %232, %229 ]
  %237 = phi i32 [ %207, %228 ], [ %232, %229 ]
  br i1 %178, label %244, label %238

238:                                              ; preds = %235, %238
  %239 = phi i32 [ %241, %238 ], [ %237, %235 ]
  %240 = phi i32 [ %242, %238 ], [ 0, %235 ]
  %241 = sdiv i32 %239, 16
  %242 = add i32 %240, 1
  %243 = icmp eq i32 %242, %175
  br i1 %243, label %244, label %238, !llvm.loop !19

244:                                              ; preds = %238, %235
  %245 = phi i32 [ %236, %235 ], [ %241, %238 ]
  %246 = srem i32 %245, 16
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4, !tbaa !4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %1, i64 %250
  %252 = load i32, i32* %251, align 4, !tbaa !4
  br i1 %180, label %259, label %253

253:                                              ; preds = %244, %253
  %254 = phi i32 [ %256, %253 ], [ %207, %244 ]
  %255 = phi i32 [ %257, %253 ], [ 0, %244 ]
  %256 = sdiv i32 %254, 65536
  %257 = add i32 %255, 4
  %258 = icmp eq i32 %257, %181
  br i1 %258, label %259, label %253, !llvm.loop !12

259:                                              ; preds = %253, %244
  %260 = phi i32 [ undef, %244 ], [ %256, %253 ]
  %261 = phi i32 [ %207, %244 ], [ %256, %253 ]
  br i1 %182, label %268, label %262

262:                                              ; preds = %259, %262
  %263 = phi i32 [ %265, %262 ], [ %261, %259 ]
  %264 = phi i32 [ %266, %262 ], [ 0, %259 ]
  %265 = sdiv i32 %263, 16
  %266 = add i32 %264, 1
  %267 = icmp eq i32 %266, %179
  br i1 %267, label %268, label %262, !llvm.loop !20

268:                                              ; preds = %262, %259
  %269 = phi i32 [ %260, %259 ], [ %265, %262 ]
  %270 = srem i32 %269, 16
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4, !tbaa !4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %1, i64 %274
  store i32 %207, i32* %275, align 4, !tbaa !4
  br i1 %184, label %282, label %276

276:                                              ; preds = %268, %276
  %277 = phi i32 [ %279, %276 ], [ %207, %268 ]
  %278 = phi i32 [ %280, %276 ], [ 0, %268 ]
  %279 = sdiv i32 %277, 65536
  %280 = add i32 %278, 4
  %281 = icmp eq i32 %280, %185
  br i1 %281, label %282, label %276, !llvm.loop !12

282:                                              ; preds = %276, %268
  %283 = phi i32 [ undef, %268 ], [ %279, %276 ]
  %284 = phi i32 [ %207, %268 ], [ %279, %276 ]
  br i1 %186, label %291, label %285

285:                                              ; preds = %282, %285
  %286 = phi i32 [ %288, %285 ], [ %284, %282 ]
  %287 = phi i32 [ %289, %285 ], [ 0, %282 ]
  %288 = sdiv i32 %286, 16
  %289 = add i32 %287, 1
  %290 = icmp eq i32 %289, %183
  br i1 %290, label %291, label %285, !llvm.loop !21

291:                                              ; preds = %285, %282
  %292 = phi i32 [ %283, %282 ], [ %288, %285 ]
  %293 = srem i32 %292, 16
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4, !tbaa !4
  br i1 %188, label %303, label %297

297:                                              ; preds = %291, %297
  %298 = phi i32 [ %300, %297 ], [ %207, %291 ]
  %299 = phi i32 [ %301, %297 ], [ 0, %291 ]
  %300 = sdiv i32 %298, 65536
  %301 = add i32 %299, 4
  %302 = icmp eq i32 %301, %189
  br i1 %302, label %303, label %297, !llvm.loop !12

303:                                              ; preds = %297, %291
  %304 = phi i32 [ undef, %291 ], [ %300, %297 ]
  %305 = phi i32 [ %207, %291 ], [ %300, %297 ]
  br i1 %190, label %312, label %306

306:                                              ; preds = %303, %306
  %307 = phi i32 [ %309, %306 ], [ %305, %303 ]
  %308 = phi i32 [ %310, %306 ], [ 0, %303 ]
  %309 = sdiv i32 %307, 16
  %310 = add i32 %308, 1
  %311 = icmp eq i32 %310, %187
  br i1 %311, label %312, label %306, !llvm.loop !22

312:                                              ; preds = %306, %303
  %313 = phi i32 [ %304, %303 ], [ %309, %306 ]
  %314 = add nsw i32 %296, 1
  %315 = srem i32 %313, 16
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %316
  store i32 %314, i32* %317, align 4, !tbaa !4
  br label %206, !llvm.loop !23

318:                                              ; preds = %223
  %319 = load i32, i32* %193, align 4, !tbaa !4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %1, i64 %320
  store i32 %207, i32* %321, align 4, !tbaa !4
  %322 = add nsw i32 %319, 1
  store i32 %322, i32* %193, align 4, !tbaa !4
  %323 = icmp slt i32 %322, %195
  br i1 %323, label %201, label %198, !llvm.loop !24

324:                                              ; preds = %88, %362
  %325 = phi i64 [ %363, %362 ], [ 0, %88 ]
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %325
  %327 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %325
  %328 = load i32, i32* %327, align 4, !tbaa !4
  %329 = load i32, i32* %326, align 4, !tbaa !4
  %330 = icmp slt i32 %329, %328
  br i1 %330, label %331, label %362

331:                                              ; preds = %324, %355
  %332 = phi i32 [ %360, %355 ], [ %329, %324 ]
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %1, i64 %333
  %335 = load i32, i32* %334, align 4, !tbaa !4
  %336 = srem i32 %335, 16
  %337 = zext i32 %336 to i64
  %338 = icmp eq i64 %325, %337
  br i1 %338, label %355, label %339

339:                                              ; preds = %331, %339
  %340 = phi i32 [ %347, %339 ], [ %335, %331 ]
  %341 = srem i32 %340, 16
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4, !tbaa !4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %1, i64 %345
  %347 = load i32, i32* %346, align 4, !tbaa !4
  store i32 %340, i32* %346, align 4, !tbaa !4
  %348 = add nsw i32 %344, 1
  store i32 %348, i32* %343, align 4, !tbaa !4
  %349 = srem i32 %347, 16
  %350 = zext i32 %349 to i64
  %351 = icmp eq i64 %325, %350
  br i1 %351, label %352, label %339, !llvm.loop !23

352:                                              ; preds = %339
  %353 = load i32, i32* %326, align 4, !tbaa !4
  %354 = sext i32 %353 to i64
  br label %355

355:                                              ; preds = %352, %331
  %356 = phi i64 [ %354, %352 ], [ %333, %331 ]
  %357 = phi i32 [ %353, %352 ], [ %332, %331 ]
  %358 = phi i32 [ %347, %352 ], [ %335, %331 ]
  %359 = getelementptr inbounds i32, i32* %1, i64 %356
  store i32 %358, i32* %359, align 4, !tbaa !4
  %360 = add nsw i32 %357, 1
  store i32 %360, i32* %326, align 4, !tbaa !4
  %361 = icmp slt i32 %360, %328
  br i1 %361, label %331, label %362, !llvm.loop !24

362:                                              ; preds = %355, %324
  %363 = add nuw nsw i64 %325, 1
  %364 = icmp eq i64 %363, 16
  br i1 %364, label %365, label %324, !llvm.loop !17

365:                                              ; preds = %362, %198
  store i32 %92, i32* %93, align 16, !tbaa !4
  %366 = add nsw i32 %0, -1
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %2, i32 noundef %92)
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %368 = load i32, i32* %367, align 16, !tbaa !4
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  store i32 %368, i32* %369, align 4, !tbaa !4
  %370 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %371 = load i32, i32* %370, align 4, !tbaa !4
  %372 = add nsw i32 %371, %368
  %373 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  store i32 %372, i32* %373, align 4, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %368, i32 noundef %372)
  %374 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 2
  store i32 %372, i32* %374, align 8, !tbaa !4
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %376 = load i32, i32* %375, align 8, !tbaa !4
  %377 = add nsw i32 %376, %372
  %378 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  store i32 %377, i32* %378, align 8, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %372, i32 noundef %377)
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 3
  store i32 %377, i32* %379, align 4, !tbaa !4
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %381 = load i32, i32* %380, align 4, !tbaa !4
  %382 = add nsw i32 %381, %377
  %383 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  store i32 %382, i32* %383, align 4, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %377, i32 noundef %382)
  %384 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 4
  store i32 %382, i32* %384, align 16, !tbaa !4
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %386 = load i32, i32* %385, align 16, !tbaa !4
  %387 = add nsw i32 %386, %382
  %388 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  store i32 %387, i32* %388, align 16, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %382, i32 noundef %387)
  %389 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 5
  store i32 %387, i32* %389, align 4, !tbaa !4
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %391 = load i32, i32* %390, align 4, !tbaa !4
  %392 = add nsw i32 %391, %387
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  store i32 %392, i32* %393, align 4, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %387, i32 noundef %392)
  %394 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 6
  store i32 %392, i32* %394, align 8, !tbaa !4
  %395 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %396 = load i32, i32* %395, align 8, !tbaa !4
  %397 = add nsw i32 %396, %392
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  store i32 %397, i32* %398, align 8, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %392, i32 noundef %397)
  %399 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 7
  store i32 %397, i32* %399, align 4, !tbaa !4
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %401 = load i32, i32* %400, align 4, !tbaa !4
  %402 = add nsw i32 %401, %397
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 7
  store i32 %402, i32* %403, align 4, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %397, i32 noundef %402)
  %404 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 8
  store i32 %402, i32* %404, align 16, !tbaa !4
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %406 = load i32, i32* %405, align 16, !tbaa !4
  %407 = add nsw i32 %406, %402
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 8
  store i32 %407, i32* %408, align 16, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %402, i32 noundef %407)
  %409 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 9
  store i32 %407, i32* %409, align 4, !tbaa !4
  %410 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %411 = load i32, i32* %410, align 4, !tbaa !4
  %412 = add nsw i32 %411, %407
  %413 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 9
  store i32 %412, i32* %413, align 4, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %407, i32 noundef %412)
  %414 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 10
  store i32 %412, i32* %414, align 8, !tbaa !4
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %416 = load i32, i32* %415, align 8, !tbaa !4
  %417 = add nsw i32 %416, %412
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 10
  store i32 %417, i32* %418, align 8, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %412, i32 noundef %417)
  %419 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 11
  store i32 %417, i32* %419, align 4, !tbaa !4
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %421 = load i32, i32* %420, align 4, !tbaa !4
  %422 = add nsw i32 %421, %417
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 11
  store i32 %422, i32* %423, align 4, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %417, i32 noundef %422)
  %424 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 12
  store i32 %422, i32* %424, align 16, !tbaa !4
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  %426 = load i32, i32* %425, align 16, !tbaa !4
  %427 = add nsw i32 %426, %422
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 12
  store i32 %427, i32* %428, align 16, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %422, i32 noundef %427)
  %429 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 13
  store i32 %427, i32* %429, align 4, !tbaa !4
  %430 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  %431 = load i32, i32* %430, align 4, !tbaa !4
  %432 = add nsw i32 %431, %427
  %433 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 13
  store i32 %432, i32* %433, align 4, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %427, i32 noundef %432)
  %434 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 14
  store i32 %432, i32* %434, align 8, !tbaa !4
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  %436 = load i32, i32* %435, align 8, !tbaa !4
  %437 = add nsw i32 %436, %432
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 14
  store i32 %437, i32* %438, align 8, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %432, i32 noundef %437)
  %439 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 15
  store i32 %437, i32* %439, align 4, !tbaa !4
  %440 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  %441 = load i32, i32* %440, align 4, !tbaa !4
  %442 = add nsw i32 %441, %437
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 15
  store i32 %442, i32* %443, align 4, !tbaa !4
  tail call void @_Z9radixSortiPiii(i32 noundef %366, i32* noundef %1, i32 noundef %437, i32 noundef %442)
  br label %444

444:                                              ; preds = %365, %4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %10) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  %1 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([30000010 x i32], [30000010 x i32]* @a, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 90)
  tail call void @_Z9radixSortiPiii(i32 noundef 8, i32* noundef getelementptr inbounds ([30000010 x i32], [30000010 x i32]* @a, i64 0, i64 0), i32 noundef 0, i32 noundef %1)
  %2 = load i32, i32* @ans, align 4, !tbaa !4
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %50

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967294
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %31, %10 ]
  %12 = phi i32 [ %2, %8 ], [ %30, %10 ]
  %13 = phi i64 [ 0, %8 ], [ %32, %10 ]
  %14 = getelementptr inbounds [30000010 x i32], [30000010 x i32]* @a, i64 0, i64 %11
  %15 = load i32, i32* %14, align 8, !tbaa !4
  %16 = trunc i64 %11 to i32
  %17 = add i32 %16, 2
  %18 = srem i32 %15, %17
  %19 = trunc i64 %11 to i32
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %20, %12
  %22 = or i64 %11, 1
  %23 = getelementptr inbounds [30000010 x i32], [30000010 x i32]* @a, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !4
  %25 = trunc i64 %22 to i32
  %26 = add i32 %25, 2
  %27 = srem i32 %24, %26
  %28 = trunc i64 %22 to i32
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %29, %21
  %31 = add nuw nsw i64 %11, 2
  %32 = add i64 %13, 2
  %33 = icmp eq i64 %32, %9
  br i1 %33, label %34, label %10, !llvm.loop !25

34:                                               ; preds = %10, %4
  %35 = phi i32 [ undef, %4 ], [ %30, %10 ]
  %36 = phi i64 [ 0, %4 ], [ %31, %10 ]
  %37 = phi i32 [ %2, %4 ], [ %30, %10 ]
  %38 = icmp eq i64 %6, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [30000010 x i32], [30000010 x i32]* @a, i64 0, i64 %36
  %41 = load i32, i32* %40, align 4, !tbaa !4
  %42 = trunc i64 %36 to i32
  %43 = add i32 %42, 2
  %44 = srem i32 %41, %43
  %45 = trunc i64 %36 to i32
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %46, %37
  br label %48

48:                                               ; preds = %34, %39
  %49 = phi i32 [ %35, %34 ], [ %47, %39 ]
  store i32 %49, i32* @ans, align 4, !tbaa !4
  br label %50

50:                                               ; preds = %48, %0
  %51 = phi i32 [ %49, %48 ], [ %2, %0 ]
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = sub nsw i32 0, %51
  store i32 %54, i32* @ans, align 4, !tbaa !4
  br label %55

55:                                               ; preds = %53, %50
  tail call void @_Z14_sysy_stoptimei(i32 noundef 102)
  %56 = load i32, i32* @ans, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %56)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #6

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #6

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #6

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #6

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
