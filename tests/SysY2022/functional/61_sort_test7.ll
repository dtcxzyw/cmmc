; ModuleID = 'tests//SysY2022/functional/61_sort_test7.sy'
source_filename = "tests//SysY2022/functional/61_sort_test7.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@buf = dso_local global [2 x [100 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z10merge_sortii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, 1
  %4 = icmp slt i32 %3, %1
  br i1 %4, label %5, label %337

5:                                                ; preds = %2
  %6 = add nsw i32 %1, %0
  %7 = sdiv i32 %6, 2
  tail call void @_Z10merge_sortii(i32 noundef %0, i32 noundef %7)
  tail call void @_Z10merge_sortii(i32 noundef %7, i32 noundef %1)
  %8 = icmp sgt i32 %7, %0
  %9 = icmp slt i32 %7, %1
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = sext i32 %0 to i64
  br label %115

13:                                               ; preds = %115
  %14 = trunc i64 %133 to i32
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ %0, %5 ], [ %128, %13 ]
  %17 = phi i32 [ %7, %5 ], [ %131, %13 ]
  %18 = phi i32 [ %0, %5 ], [ %14, %13 ]
  %19 = icmp slt i32 %16, %7
  br i1 %19, label %20, label %140

20:                                               ; preds = %15
  %21 = sext i32 %18 to i64
  %22 = sext i32 %16 to i64
  %23 = sext i32 %7 to i64
  %24 = sub nsw i64 %23, %22
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %96, label %26

26:                                               ; preds = %20
  %27 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %21
  %28 = add nsw i64 %21, %23
  %29 = sub nsw i64 %28, %22
  %30 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %29
  %31 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %22
  %32 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %23
  %33 = icmp ult i32* %27, %32
  %34 = icmp ult i32* %31, %30
  %35 = and i1 %33, %34
  br i1 %35, label %96, label %36

36:                                               ; preds = %26
  %37 = and i64 %24, -8
  %38 = add nsw i64 %37, %22
  %39 = add nsw i64 %37, %21
  %40 = add nsw i64 %37, -8
  %41 = lshr exact i64 %40, 3
  %42 = add nuw nsw i64 %41, 1
  %43 = and i64 %42, 1
  %44 = icmp eq i64 %40, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %36
  %46 = and i64 %42, 4611686018427387902
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i64 [ 0, %45 ], [ %75, %47 ]
  %49 = phi i64 [ 0, %45 ], [ %76, %47 ]
  %50 = add i64 %48, %22
  %51 = add i64 %48, %21
  %52 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %50
  %53 = bitcast i32* %52 to <4 x i32>*
  %54 = load <4 x i32>, <4 x i32>* %53, align 4, !tbaa !5, !alias.scope !9
  %55 = getelementptr inbounds i32, i32* %52, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  %57 = load <4 x i32>, <4 x i32>* %56, align 4, !tbaa !5, !alias.scope !9
  %58 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %51
  %59 = bitcast i32* %58 to <4 x i32>*
  store <4 x i32> %54, <4 x i32>* %59, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %60 = getelementptr inbounds i32, i32* %58, i64 4
  %61 = bitcast i32* %60 to <4 x i32>*
  store <4 x i32> %57, <4 x i32>* %61, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %62 = or i64 %48, 8
  %63 = add i64 %62, %22
  %64 = add i64 %62, %21
  %65 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %63
  %66 = bitcast i32* %65 to <4 x i32>*
  %67 = load <4 x i32>, <4 x i32>* %66, align 4, !tbaa !5, !alias.scope !9
  %68 = getelementptr inbounds i32, i32* %65, i64 4
  %69 = bitcast i32* %68 to <4 x i32>*
  %70 = load <4 x i32>, <4 x i32>* %69, align 4, !tbaa !5, !alias.scope !9
  %71 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %64
  %72 = bitcast i32* %71 to <4 x i32>*
  store <4 x i32> %67, <4 x i32>* %72, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %73 = getelementptr inbounds i32, i32* %71, i64 4
  %74 = bitcast i32* %73 to <4 x i32>*
  store <4 x i32> %70, <4 x i32>* %74, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %75 = add nuw i64 %48, 16
  %76 = add i64 %49, 2
  %77 = icmp eq i64 %76, %46
  br i1 %77, label %78, label %47, !llvm.loop !14

78:                                               ; preds = %47, %36
  %79 = phi i64 [ 0, %36 ], [ %75, %47 ]
  %80 = icmp eq i64 %43, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = add i64 %79, %22
  %83 = add i64 %79, %21
  %84 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %82
  %85 = bitcast i32* %84 to <4 x i32>*
  %86 = load <4 x i32>, <4 x i32>* %85, align 4, !tbaa !5, !alias.scope !9
  %87 = getelementptr inbounds i32, i32* %84, i64 4
  %88 = bitcast i32* %87 to <4 x i32>*
  %89 = load <4 x i32>, <4 x i32>* %88, align 4, !tbaa !5, !alias.scope !9
  %90 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %83
  %91 = bitcast i32* %90 to <4 x i32>*
  store <4 x i32> %86, <4 x i32>* %91, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %92 = getelementptr inbounds i32, i32* %90, i64 4
  %93 = bitcast i32* %92 to <4 x i32>*
  store <4 x i32> %89, <4 x i32>* %93, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  br label %94

94:                                               ; preds = %78, %81
  %95 = icmp eq i64 %24, %37
  br i1 %95, label %137, label %96

96:                                               ; preds = %26, %20, %94
  %97 = phi i64 [ %22, %26 ], [ %22, %20 ], [ %38, %94 ]
  %98 = phi i64 [ %21, %26 ], [ %21, %20 ], [ %39, %94 ]
  %99 = sub nsw i64 %23, %97
  %100 = xor i64 %97, -1
  %101 = and i64 %99, 1
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %97
  %105 = load i32, i32* %104, align 4, !tbaa !5
  %106 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %98
  store i32 %105, i32* %106, align 4, !tbaa !5
  %107 = add nsw i64 %97, 1
  %108 = add nsw i64 %98, 1
  br label %109

109:                                              ; preds = %103, %96
  %110 = phi i64 [ undef, %96 ], [ %108, %103 ]
  %111 = phi i64 [ %97, %96 ], [ %107, %103 ]
  %112 = phi i64 [ %98, %96 ], [ %108, %103 ]
  %113 = sub nsw i64 0, %23
  %114 = icmp eq i64 %100, %113
  br i1 %114, label %137, label %237

115:                                              ; preds = %11, %115
  %116 = phi i64 [ %12, %11 ], [ %133, %115 ]
  %117 = phi i32 [ %7, %11 ], [ %131, %115 ]
  %118 = phi i32 [ %0, %11 ], [ %128, %115 ]
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %122 = sext i32 %117 to i64
  %123 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4, !tbaa !5
  %125 = icmp slt i32 %121, %124
  %126 = select i1 %125, i32 %121, i32 %124
  %127 = zext i1 %125 to i32
  %128 = add nsw i32 %118, %127
  %129 = xor i1 %125, true
  %130 = zext i1 %129 to i32
  %131 = add nsw i32 %117, %130
  %132 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %116
  store i32 %126, i32* %132, align 4
  %133 = add i64 %116, 1
  %134 = icmp slt i32 %128, %7
  %135 = icmp slt i32 %131, %1
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %115, label %13, !llvm.loop !17

137:                                              ; preds = %109, %237, %94
  %138 = phi i64 [ %39, %94 ], [ %110, %109 ], [ %249, %237 ]
  %139 = trunc i64 %138 to i32
  br label %140

140:                                              ; preds = %137, %15
  %141 = phi i32 [ %18, %15 ], [ %139, %137 ]
  %142 = icmp slt i32 %17, %1
  br i1 %142, label %143, label %251

143:                                              ; preds = %140
  %144 = sext i32 %141 to i64
  %145 = sext i32 %17 to i64
  %146 = sext i32 %1 to i64
  %147 = sub nsw i64 %146, %145
  %148 = icmp ult i64 %147, 8
  br i1 %148, label %219, label %149

149:                                              ; preds = %143
  %150 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %144
  %151 = add nsw i64 %144, %146
  %152 = sub nsw i64 %151, %145
  %153 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %152
  %154 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %145
  %155 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %146
  %156 = icmp ult i32* %150, %155
  %157 = icmp ult i32* %154, %153
  %158 = and i1 %156, %157
  br i1 %158, label %219, label %159

159:                                              ; preds = %149
  %160 = and i64 %147, -8
  %161 = add nsw i64 %160, %145
  %162 = add nsw i64 %160, %144
  %163 = add nsw i64 %160, -8
  %164 = lshr exact i64 %163, 3
  %165 = add nuw nsw i64 %164, 1
  %166 = and i64 %165, 1
  %167 = icmp eq i64 %163, 0
  br i1 %167, label %201, label %168

168:                                              ; preds = %159
  %169 = and i64 %165, 4611686018427387902
  br label %170

170:                                              ; preds = %170, %168
  %171 = phi i64 [ 0, %168 ], [ %198, %170 ]
  %172 = phi i64 [ 0, %168 ], [ %199, %170 ]
  %173 = add i64 %171, %145
  %174 = add i64 %171, %144
  %175 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %173
  %176 = bitcast i32* %175 to <4 x i32>*
  %177 = load <4 x i32>, <4 x i32>* %176, align 4, !tbaa !5, !alias.scope !18
  %178 = getelementptr inbounds i32, i32* %175, i64 4
  %179 = bitcast i32* %178 to <4 x i32>*
  %180 = load <4 x i32>, <4 x i32>* %179, align 4, !tbaa !5, !alias.scope !18
  %181 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %174
  %182 = bitcast i32* %181 to <4 x i32>*
  store <4 x i32> %177, <4 x i32>* %182, align 4, !tbaa !5, !alias.scope !21, !noalias !18
  %183 = getelementptr inbounds i32, i32* %181, i64 4
  %184 = bitcast i32* %183 to <4 x i32>*
  store <4 x i32> %180, <4 x i32>* %184, align 4, !tbaa !5, !alias.scope !21, !noalias !18
  %185 = or i64 %171, 8
  %186 = add i64 %185, %145
  %187 = add i64 %185, %144
  %188 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %186
  %189 = bitcast i32* %188 to <4 x i32>*
  %190 = load <4 x i32>, <4 x i32>* %189, align 4, !tbaa !5, !alias.scope !18
  %191 = getelementptr inbounds i32, i32* %188, i64 4
  %192 = bitcast i32* %191 to <4 x i32>*
  %193 = load <4 x i32>, <4 x i32>* %192, align 4, !tbaa !5, !alias.scope !18
  %194 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %187
  %195 = bitcast i32* %194 to <4 x i32>*
  store <4 x i32> %190, <4 x i32>* %195, align 4, !tbaa !5, !alias.scope !21, !noalias !18
  %196 = getelementptr inbounds i32, i32* %194, i64 4
  %197 = bitcast i32* %196 to <4 x i32>*
  store <4 x i32> %193, <4 x i32>* %197, align 4, !tbaa !5, !alias.scope !21, !noalias !18
  %198 = add nuw i64 %171, 16
  %199 = add i64 %172, 2
  %200 = icmp eq i64 %199, %169
  br i1 %200, label %201, label %170, !llvm.loop !23

201:                                              ; preds = %170, %159
  %202 = phi i64 [ 0, %159 ], [ %198, %170 ]
  %203 = icmp eq i64 %166, 0
  br i1 %203, label %217, label %204

204:                                              ; preds = %201
  %205 = add i64 %202, %145
  %206 = add i64 %202, %144
  %207 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %205
  %208 = bitcast i32* %207 to <4 x i32>*
  %209 = load <4 x i32>, <4 x i32>* %208, align 4, !tbaa !5, !alias.scope !18
  %210 = getelementptr inbounds i32, i32* %207, i64 4
  %211 = bitcast i32* %210 to <4 x i32>*
  %212 = load <4 x i32>, <4 x i32>* %211, align 4, !tbaa !5, !alias.scope !18
  %213 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %206
  %214 = bitcast i32* %213 to <4 x i32>*
  store <4 x i32> %209, <4 x i32>* %214, align 4, !tbaa !5, !alias.scope !21, !noalias !18
  %215 = getelementptr inbounds i32, i32* %213, i64 4
  %216 = bitcast i32* %215 to <4 x i32>*
  store <4 x i32> %212, <4 x i32>* %216, align 4, !tbaa !5, !alias.scope !21, !noalias !18
  br label %217

217:                                              ; preds = %201, %204
  %218 = icmp eq i64 %147, %160
  br i1 %218, label %251, label %219

219:                                              ; preds = %149, %143, %217
  %220 = phi i64 [ %145, %149 ], [ %145, %143 ], [ %161, %217 ]
  %221 = phi i64 [ %144, %149 ], [ %144, %143 ], [ %162, %217 ]
  %222 = sub nsw i64 %146, %220
  %223 = xor i64 %220, -1
  %224 = and i64 %222, 1
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %219
  %227 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %220
  %228 = load i32, i32* %227, align 4, !tbaa !5
  %229 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %221
  store i32 %228, i32* %229, align 4, !tbaa !5
  %230 = add nsw i64 %220, 1
  %231 = add nsw i64 %221, 1
  br label %232

232:                                              ; preds = %226, %219
  %233 = phi i64 [ %220, %219 ], [ %230, %226 ]
  %234 = phi i64 [ %221, %219 ], [ %231, %226 ]
  %235 = sub nsw i64 0, %146
  %236 = icmp eq i64 %223, %235
  br i1 %236, label %251, label %316

237:                                              ; preds = %109, %237
  %238 = phi i64 [ %248, %237 ], [ %111, %109 ]
  %239 = phi i64 [ %249, %237 ], [ %112, %109 ]
  %240 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %238
  %241 = load i32, i32* %240, align 4, !tbaa !5
  %242 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %239
  store i32 %241, i32* %242, align 4, !tbaa !5
  %243 = add nsw i64 %238, 1
  %244 = add nsw i64 %239, 1
  %245 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %243
  %246 = load i32, i32* %245, align 4, !tbaa !5
  %247 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %244
  store i32 %246, i32* %247, align 4, !tbaa !5
  %248 = add nsw i64 %238, 2
  %249 = add nsw i64 %239, 2
  %250 = icmp eq i64 %248, %23
  br i1 %250, label %137, label %237, !llvm.loop !24

251:                                              ; preds = %232, %316, %217, %140
  %252 = icmp slt i32 %0, %1
  br i1 %252, label %253, label %337

253:                                              ; preds = %251
  %254 = sext i32 %0 to i64
  %255 = sext i32 %1 to i64
  %256 = sub nsw i64 %255, %254
  %257 = icmp ult i64 %256, 8
  br i1 %257, label %314, label %258

258:                                              ; preds = %253
  %259 = and i64 %256, -8
  %260 = add nsw i64 %259, %254
  %261 = add nsw i64 %259, -8
  %262 = lshr exact i64 %261, 3
  %263 = add nuw nsw i64 %262, 1
  %264 = and i64 %263, 1
  %265 = icmp eq i64 %261, 0
  br i1 %265, label %297, label %266

266:                                              ; preds = %258
  %267 = and i64 %263, 4611686018427387902
  br label %268

268:                                              ; preds = %268, %266
  %269 = phi i64 [ 0, %266 ], [ %294, %268 ]
  %270 = phi i64 [ 0, %266 ], [ %295, %268 ]
  %271 = add i64 %269, %254
  %272 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %271
  %273 = bitcast i32* %272 to <4 x i32>*
  %274 = load <4 x i32>, <4 x i32>* %273, align 4, !tbaa !5
  %275 = getelementptr inbounds i32, i32* %272, i64 4
  %276 = bitcast i32* %275 to <4 x i32>*
  %277 = load <4 x i32>, <4 x i32>* %276, align 4, !tbaa !5
  %278 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %271
  %279 = bitcast i32* %278 to <4 x i32>*
  store <4 x i32> %274, <4 x i32>* %279, align 4, !tbaa !5
  %280 = getelementptr inbounds i32, i32* %278, i64 4
  %281 = bitcast i32* %280 to <4 x i32>*
  store <4 x i32> %277, <4 x i32>* %281, align 4, !tbaa !5
  %282 = or i64 %269, 8
  %283 = add i64 %282, %254
  %284 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %283
  %285 = bitcast i32* %284 to <4 x i32>*
  %286 = load <4 x i32>, <4 x i32>* %285, align 4, !tbaa !5
  %287 = getelementptr inbounds i32, i32* %284, i64 4
  %288 = bitcast i32* %287 to <4 x i32>*
  %289 = load <4 x i32>, <4 x i32>* %288, align 4, !tbaa !5
  %290 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %283
  %291 = bitcast i32* %290 to <4 x i32>*
  store <4 x i32> %286, <4 x i32>* %291, align 4, !tbaa !5
  %292 = getelementptr inbounds i32, i32* %290, i64 4
  %293 = bitcast i32* %292 to <4 x i32>*
  store <4 x i32> %289, <4 x i32>* %293, align 4, !tbaa !5
  %294 = add nuw i64 %269, 16
  %295 = add i64 %270, 2
  %296 = icmp eq i64 %295, %267
  br i1 %296, label %297, label %268, !llvm.loop !25

297:                                              ; preds = %268, %258
  %298 = phi i64 [ 0, %258 ], [ %294, %268 ]
  %299 = icmp eq i64 %264, 0
  br i1 %299, label %312, label %300

300:                                              ; preds = %297
  %301 = add i64 %298, %254
  %302 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %301
  %303 = bitcast i32* %302 to <4 x i32>*
  %304 = load <4 x i32>, <4 x i32>* %303, align 4, !tbaa !5
  %305 = getelementptr inbounds i32, i32* %302, i64 4
  %306 = bitcast i32* %305 to <4 x i32>*
  %307 = load <4 x i32>, <4 x i32>* %306, align 4, !tbaa !5
  %308 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %301
  %309 = bitcast i32* %308 to <4 x i32>*
  store <4 x i32> %304, <4 x i32>* %309, align 4, !tbaa !5
  %310 = getelementptr inbounds i32, i32* %308, i64 4
  %311 = bitcast i32* %310 to <4 x i32>*
  store <4 x i32> %307, <4 x i32>* %311, align 4, !tbaa !5
  br label %312

312:                                              ; preds = %297, %300
  %313 = icmp eq i64 %256, %259
  br i1 %313, label %337, label %314

314:                                              ; preds = %253, %312
  %315 = phi i64 [ %254, %253 ], [ %260, %312 ]
  br label %330

316:                                              ; preds = %232, %316
  %317 = phi i64 [ %327, %316 ], [ %233, %232 ]
  %318 = phi i64 [ %328, %316 ], [ %234, %232 ]
  %319 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %317
  %320 = load i32, i32* %319, align 4, !tbaa !5
  %321 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %318
  store i32 %320, i32* %321, align 4, !tbaa !5
  %322 = add nsw i64 %317, 1
  %323 = add nsw i64 %318, 1
  %324 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %322
  %325 = load i32, i32* %324, align 4, !tbaa !5
  %326 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %323
  store i32 %325, i32* %326, align 4, !tbaa !5
  %327 = add nsw i64 %317, 2
  %328 = add nsw i64 %318, 2
  %329 = icmp eq i64 %327, %146
  br i1 %329, label %251, label %316, !llvm.loop !26

330:                                              ; preds = %314, %330
  %331 = phi i64 [ %335, %330 ], [ %315, %314 ]
  %332 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 1, i64 %331
  %333 = load i32, i32* %332, align 4, !tbaa !5
  %334 = getelementptr inbounds [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 %331
  store i32 %333, i32* %334, align 4, !tbaa !5
  %335 = add nsw i64 %331, 1
  %336 = icmp eq i64 %335, %255
  br i1 %336, label %337, label %330, !llvm.loop !27

337:                                              ; preds = %330, %312, %251, %2
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 0))
  tail call void @_Z10merge_sortii(i32 noundef 0, i32 noundef %1)
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef getelementptr inbounds ([2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #2

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !15}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !15, !16}
!24 = distinct !{!24, !15, !16}
!25 = distinct !{!25, !15, !16}
!26 = distinct !{!26, !15, !16}
!27 = distinct !{!27, !15, !28, !16}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
