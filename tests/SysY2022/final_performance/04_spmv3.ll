; ModuleID = 'tests//SysY2022/final_performance/04_spmv3.sy'
source_filename = "tests//SysY2022/final_performance/04_spmv3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x = dso_local global [100010 x i32] zeroinitializer, align 16
@y = dso_local global [3000000 x i32] zeroinitializer, align 16
@v = dso_local global [3000000 x i32] zeroinitializer, align 16
@a = dso_local global [100010 x i32] zeroinitializer, align 16
@b = dso_local global [100010 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [100010 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z4spmviPiS_S_S_S_(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32* nocapture noundef readonly %3, i32* nocapture noundef readonly %4, i32* nocapture noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %67

8:                                                ; preds = %6
  %9 = bitcast i32* %5 to i8*
  %10 = zext i32 %0 to i64
  %11 = shl nuw nsw i64 %10, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 %11, i1 false), !tbaa !4
  %12 = zext i32 %0 to i64
  %13 = load i32, i32* %1, align 4, !tbaa !4
  br label %17

14:                                               ; preds = %50, %43
  %15 = phi i32 [ %44, %43 ], [ %64, %50 ]
  %16 = icmp eq i64 %21, %12
  br i1 %16, label %67, label %17, !llvm.loop !8

17:                                               ; preds = %8, %14
  %18 = phi i32 [ %13, %8 ], [ %15, %14 ]
  %19 = phi i64 [ 0, %8 ], [ %21, %14 ]
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = add nuw nsw i64 %19, 1
  %22 = getelementptr inbounds i32, i32* %1, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !4
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %17
  %26 = sext i32 %18 to i64
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %26, %25 ], [ %37, %27 ]
  %29 = getelementptr inbounds i32, i32* %2, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %5, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !4
  %34 = getelementptr inbounds i32, i32* %3, i64 %28
  %35 = load i32, i32* %34, align 4, !tbaa !4
  %36 = add nsw i32 %35, %33
  store i32 %36, i32* %32, align 4, !tbaa !4
  %37 = add nsw i64 %28, 1
  %38 = load i32, i32* %22, align 4, !tbaa !4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %27, label %41, !llvm.loop !10

41:                                               ; preds = %27
  %42 = load i32, i32* %20, align 4, !tbaa !4
  br label %43

43:                                               ; preds = %41, %17
  %44 = phi i32 [ %38, %41 ], [ %23, %17 ]
  %45 = phi i32 [ %42, %41 ], [ %18, %17 ]
  %46 = icmp slt i32 %45, %44
  br i1 %46, label %47, label %14

47:                                               ; preds = %43
  %48 = getelementptr inbounds i32, i32* %4, i64 %19
  %49 = sext i32 %45 to i64
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ %49, %47 ], [ %63, %50 ]
  %52 = getelementptr inbounds i32, i32* %2, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %5, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !4
  %57 = getelementptr inbounds i32, i32* %3, i64 %51
  %58 = load i32, i32* %57, align 4, !tbaa !4
  %59 = load i32, i32* %48, align 4, !tbaa !4
  %60 = add nsw i32 %59, -1
  %61 = mul nsw i32 %60, %58
  %62 = add nsw i32 %61, %56
  store i32 %62, i32* %55, align 4, !tbaa !4
  %63 = add nsw i64 %51, 1
  %64 = load i32, i32* %22, align 4, !tbaa !4
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %50, label %14, !llvm.loop !11

67:                                               ; preds = %14, %6
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([100010 x i32], [100010 x i32]* @x, i64 0, i64 0))
  %2 = add nsw i32 %1, -1
  %3 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([3000000 x i32], [3000000 x i32]* @y, i64 0, i64 0))
  %4 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([3000000 x i32], [3000000 x i32]* @v, i64 0, i64 0))
  %5 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([100010 x i32], [100010 x i32]* @a, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 39)
  %6 = icmp sgt i32 %1, 1
  %7 = zext i32 %2 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load i32, i32* getelementptr inbounds ([100010 x i32], [100010 x i32]* @x, i64 0, i64 0), align 16
  br i1 %6, label %10, label %226

10:                                               ; preds = %0, %223
  %11 = phi i32 [ %224, %223 ], [ 0, %0 ]
  tail call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([100010 x i32]* @b to i8*), i8 0, i64 %8, i1 false) #4, !tbaa !4
  br label %12

12:                                               ; preds = %115, %10
  %13 = phi i32 [ %9, %10 ], [ %18, %115 ]
  %14 = phi i64 [ 0, %10 ], [ %16, %115 ]
  %15 = getelementptr inbounds [100010 x i32], [100010 x i32]* @x, i64 0, i64 %14
  %16 = add nuw nsw i64 %14, 1
  %17 = getelementptr inbounds [100010 x i32], [100010 x i32]* @x, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %12
  %21 = sext i32 %13 to i64
  %22 = sext i32 %18 to i64
  %23 = sub nsw i64 %22, %21
  %24 = xor i64 %21, -1
  %25 = and i64 %23, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %21
  %29 = load i32, i32* %28, align 4, !tbaa !4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [100010 x i32], [100010 x i32]* @b, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !4
  %33 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %21
  %34 = load i32, i32* %33, align 4, !tbaa !4
  %35 = add nsw i32 %34, %32
  store i32 %35, i32* %31, align 4, !tbaa !4
  %36 = add nsw i64 %21, 1
  br label %37

37:                                               ; preds = %27, %20
  %38 = phi i64 [ %21, %20 ], [ %36, %27 ]
  %39 = sub nsw i64 0, %22
  %40 = icmp eq i64 %24, %39
  br i1 %40, label %62, label %41

41:                                               ; preds = %37, %41
  %42 = phi i64 [ %60, %41 ], [ %38, %37 ]
  %43 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [100010 x i32], [100010 x i32]* @b, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !4
  %48 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %42
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = add nsw i32 %49, %47
  store i32 %50, i32* %46, align 4, !tbaa !4
  %51 = add nsw i64 %42, 1
  %52 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [100010 x i32], [100010 x i32]* @b, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !4
  %57 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %51
  %58 = load i32, i32* %57, align 4, !tbaa !4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %55, align 4, !tbaa !4
  %60 = add nsw i64 %42, 2
  %61 = icmp eq i64 %60, %22
  br i1 %61, label %62, label %41, !llvm.loop !10

62:                                               ; preds = %41, %37
  %63 = load i32, i32* %15, align 4, !tbaa !4
  br label %64

64:                                               ; preds = %62, %12
  %65 = phi i32 [ %63, %62 ], [ %13, %12 ]
  %66 = icmp slt i32 %65, %18
  br i1 %66, label %67, label %115

67:                                               ; preds = %64
  %68 = getelementptr inbounds [100010 x i32], [100010 x i32]* @a, i64 0, i64 %14
  %69 = sext i32 %65 to i64
  %70 = load i32, i32* %68, align 4, !tbaa !4
  %71 = add nsw i32 %70, -1
  %72 = sext i32 %18 to i64
  %73 = sub nsw i64 %72, %69
  %74 = xor i64 %69, -1
  %75 = and i64 %73, 1
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %69
  %79 = load i32, i32* %78, align 4, !tbaa !4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100010 x i32], [100010 x i32]* @b, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !4
  %83 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %69
  %84 = load i32, i32* %83, align 4, !tbaa !4
  %85 = mul nsw i32 %71, %84
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %81, align 4, !tbaa !4
  %87 = add nsw i64 %69, 1
  br label %88

88:                                               ; preds = %77, %67
  %89 = phi i64 [ %69, %67 ], [ %87, %77 ]
  %90 = sub nsw i64 0, %72
  %91 = icmp eq i64 %74, %90
  br i1 %91, label %115, label %92

92:                                               ; preds = %88, %92
  %93 = phi i64 [ %113, %92 ], [ %89, %88 ]
  %94 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [100010 x i32], [100010 x i32]* @b, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !4
  %99 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %93
  %100 = load i32, i32* %99, align 4, !tbaa !4
  %101 = mul nsw i32 %71, %100
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %97, align 4, !tbaa !4
  %103 = add nsw i64 %93, 1
  %104 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [100010 x i32], [100010 x i32]* @b, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !4
  %109 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %103
  %110 = load i32, i32* %109, align 4, !tbaa !4
  %111 = mul nsw i32 %71, %110
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %107, align 4, !tbaa !4
  %113 = add nsw i64 %93, 2
  %114 = icmp eq i64 %113, %72
  br i1 %114, label %115, label %92, !llvm.loop !11

115:                                              ; preds = %88, %92, %64
  %116 = icmp eq i64 %16, %7
  br i1 %116, label %117, label %12, !llvm.loop !8

117:                                              ; preds = %115
  tail call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([100010 x i32]* @a to i8*), i8 0, i64 %8, i1 false) #4, !tbaa !4
  br label %118

118:                                              ; preds = %221, %117
  %119 = phi i32 [ %9, %117 ], [ %124, %221 ]
  %120 = phi i64 [ 0, %117 ], [ %122, %221 ]
  %121 = getelementptr inbounds [100010 x i32], [100010 x i32]* @x, i64 0, i64 %120
  %122 = add nuw nsw i64 %120, 1
  %123 = getelementptr inbounds [100010 x i32], [100010 x i32]* @x, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4, !tbaa !4
  %125 = icmp slt i32 %119, %124
  br i1 %125, label %126, label %170

126:                                              ; preds = %118
  %127 = sext i32 %119 to i64
  %128 = sext i32 %124 to i64
  %129 = sub nsw i64 %128, %127
  %130 = xor i64 %127, -1
  %131 = and i64 %129, 1
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %127
  %135 = load i32, i32* %134, align 4, !tbaa !4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [100010 x i32], [100010 x i32]* @a, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4, !tbaa !4
  %139 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %127
  %140 = load i32, i32* %139, align 4, !tbaa !4
  %141 = add nsw i32 %140, %138
  store i32 %141, i32* %137, align 4, !tbaa !4
  %142 = add nsw i64 %127, 1
  br label %143

143:                                              ; preds = %133, %126
  %144 = phi i64 [ %127, %126 ], [ %142, %133 ]
  %145 = sub nsw i64 0, %128
  %146 = icmp eq i64 %130, %145
  br i1 %146, label %168, label %147

147:                                              ; preds = %143, %147
  %148 = phi i64 [ %166, %147 ], [ %144, %143 ]
  %149 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4, !tbaa !4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [100010 x i32], [100010 x i32]* @a, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !4
  %154 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %148
  %155 = load i32, i32* %154, align 4, !tbaa !4
  %156 = add nsw i32 %155, %153
  store i32 %156, i32* %152, align 4, !tbaa !4
  %157 = add nsw i64 %148, 1
  %158 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4, !tbaa !4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [100010 x i32], [100010 x i32]* @a, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4, !tbaa !4
  %163 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %157
  %164 = load i32, i32* %163, align 4, !tbaa !4
  %165 = add nsw i32 %164, %162
  store i32 %165, i32* %161, align 4, !tbaa !4
  %166 = add nsw i64 %148, 2
  %167 = icmp eq i64 %166, %128
  br i1 %167, label %168, label %147, !llvm.loop !10

168:                                              ; preds = %147, %143
  %169 = load i32, i32* %121, align 4, !tbaa !4
  br label %170

170:                                              ; preds = %168, %118
  %171 = phi i32 [ %169, %168 ], [ %119, %118 ]
  %172 = icmp slt i32 %171, %124
  br i1 %172, label %173, label %221

173:                                              ; preds = %170
  %174 = getelementptr inbounds [100010 x i32], [100010 x i32]* @b, i64 0, i64 %120
  %175 = sext i32 %171 to i64
  %176 = load i32, i32* %174, align 4, !tbaa !4
  %177 = add nsw i32 %176, -1
  %178 = sext i32 %124 to i64
  %179 = sub nsw i64 %178, %175
  %180 = xor i64 %175, -1
  %181 = and i64 %179, 1
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %173
  %184 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %175
  %185 = load i32, i32* %184, align 4, !tbaa !4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [100010 x i32], [100010 x i32]* @a, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4, !tbaa !4
  %189 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %175
  %190 = load i32, i32* %189, align 4, !tbaa !4
  %191 = mul nsw i32 %177, %190
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %187, align 4, !tbaa !4
  %193 = add nsw i64 %175, 1
  br label %194

194:                                              ; preds = %183, %173
  %195 = phi i64 [ %175, %173 ], [ %193, %183 ]
  %196 = sub nsw i64 0, %178
  %197 = icmp eq i64 %180, %196
  br i1 %197, label %221, label %198

198:                                              ; preds = %194, %198
  %199 = phi i64 [ %219, %198 ], [ %195, %194 ]
  %200 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4, !tbaa !4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [100010 x i32], [100010 x i32]* @a, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4, !tbaa !4
  %205 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %199
  %206 = load i32, i32* %205, align 4, !tbaa !4
  %207 = mul nsw i32 %177, %206
  %208 = add nsw i32 %207, %204
  store i32 %208, i32* %203, align 4, !tbaa !4
  %209 = add nsw i64 %199, 1
  %210 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @y, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4, !tbaa !4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [100010 x i32], [100010 x i32]* @a, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4, !tbaa !4
  %215 = getelementptr inbounds [3000000 x i32], [3000000 x i32]* @v, i64 0, i64 %209
  %216 = load i32, i32* %215, align 4, !tbaa !4
  %217 = mul nsw i32 %177, %216
  %218 = add nsw i32 %217, %214
  store i32 %218, i32* %213, align 4, !tbaa !4
  %219 = add nsw i64 %199, 2
  %220 = icmp eq i64 %219, %178
  br i1 %220, label %221, label %198, !llvm.loop !11

221:                                              ; preds = %194, %198, %170
  %222 = icmp eq i64 %122, %7
  br i1 %222, label %223, label %118, !llvm.loop !8

223:                                              ; preds = %221
  %224 = add nuw nsw i32 %11, 1
  %225 = icmp eq i32 %224, 100
  br i1 %225, label %226, label %10, !llvm.loop !12

226:                                              ; preds = %223, %0
  tail call void @_Z14_sysy_stoptimei(i32 noundef 47)
  tail call void @_Z8putarrayiPi(i32 noundef %2, i32* noundef getelementptr inbounds ([100010 x i32], [100010 x i32]* @b, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #2

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #2

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
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
