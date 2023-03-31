; ModuleID = 'tests//SysY2022/functional/82_long_func.sy'
source_filename = "tests//SysY2022/functional/82_long_func.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL11SHIFT_TABLE = internal unnamed_addr constant [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768], align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z9long_funcv() local_unnamed_addr #0 {
  tail call void @_Z6putinti(i32 noundef 1)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %1

1:                                                ; preds = %0, %147
  %2 = phi i32 [ %78, %147 ], [ 0, %0 ]
  %3 = phi i32 [ %149, %147 ], [ 2, %0 ]
  %4 = phi i32 [ %148, %147 ], [ 1, %0 ]
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %4, 0
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %77, label %11

9:                                                ; preds = %71
  %10 = icmp eq i32 %72, 0
  br i1 %10, label %77, label %11, !llvm.loop !4

11:                                               ; preds = %1, %9
  %12 = phi i32 [ %72, %9 ], [ %4, %1 ]
  %13 = phi i32 [ %30, %9 ], [ %2, %1 ]
  br label %14

14:                                               ; preds = %11, %29
  %15 = phi i64 [ 0, %11 ], [ %33, %29 ]
  %16 = phi i32 [ 0, %11 ], [ %30, %29 ]
  %17 = phi i32 [ %13, %11 ], [ %31, %29 ]
  %18 = phi i32 [ %12, %11 ], [ %32, %29 ]
  %19 = and i32 %17, 1
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %18, 1
  %22 = icmp eq i32 %21, 0
  br i1 %20, label %24, label %23

23:                                               ; preds = %14
  br i1 %22, label %25, label %29

24:                                               ; preds = %14
  br i1 %22, label %29, label %25

25:                                               ; preds = %24, %23
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %15
  %27 = load i32, i32* %26, align 4, !tbaa !6
  %28 = add nsw i32 %27, %16
  br label %29

29:                                               ; preds = %25, %24, %23
  %30 = phi i32 [ %16, %23 ], [ %16, %24 ], [ %28, %25 ]
  %31 = sdiv i32 %17, 2
  %32 = sdiv i32 %18, 2
  %33 = add nuw nsw i64 %15, 1
  %34 = icmp eq i64 %33, 16
  br i1 %34, label %35, label %14, !llvm.loop !10

35:                                               ; preds = %29, %49
  %36 = phi i64 [ %53, %49 ], [ 0, %29 ]
  %37 = phi i32 [ %50, %49 ], [ 0, %29 ]
  %38 = phi i32 [ %51, %49 ], [ %13, %29 ]
  %39 = phi i32 [ %52, %49 ], [ %12, %29 ]
  %40 = and i32 %38, 1
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %39, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %36
  %47 = load i32, i32* %46, align 4, !tbaa !6
  %48 = add nsw i32 %47, %37
  br label %49

49:                                               ; preds = %45, %35
  %50 = phi i32 [ %48, %45 ], [ %37, %35 ]
  %51 = sdiv i32 %38, 2
  %52 = sdiv i32 %39, 2
  %53 = add nuw nsw i64 %36, 1
  %54 = icmp eq i64 %53, 16
  br i1 %54, label %55, label %35, !llvm.loop !11

55:                                               ; preds = %49
  %56 = shl nsw i32 %50, 1
  br label %57

57:                                               ; preds = %55, %71
  %58 = phi i64 [ 0, %55 ], [ %75, %71 ]
  %59 = phi i32 [ 0, %55 ], [ %72, %71 ]
  %60 = phi i32 [ %56, %55 ], [ %73, %71 ]
  %61 = phi i32 [ 65535, %55 ], [ %74, %71 ]
  %62 = and i32 %60, 1
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %61, 1
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %57
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %58
  %69 = load i32, i32* %68, align 4, !tbaa !6
  %70 = add nsw i32 %69, %59
  br label %71

71:                                               ; preds = %67, %57
  %72 = phi i32 [ %70, %67 ], [ %59, %57 ]
  %73 = sdiv i32 %60, 2
  %74 = sdiv i32 %61, 2
  %75 = add nuw nsw i64 %58, 1
  %76 = icmp eq i64 %75, 16
  br i1 %76, label %9, label %57, !llvm.loop !12

77:                                               ; preds = %9, %1
  %78 = phi i32 [ %2, %1 ], [ %30, %9 ]
  br i1 %7, label %147, label %81

79:                                               ; preds = %141
  %80 = icmp eq i32 %142, 0
  br i1 %80, label %147, label %81, !llvm.loop !13

81:                                               ; preds = %77, %79
  %82 = phi i32 [ %142, %79 ], [ %4, %77 ]
  %83 = phi i32 [ %100, %79 ], [ %4, %77 ]
  br label %84

84:                                               ; preds = %81, %99
  %85 = phi i64 [ 0, %81 ], [ %103, %99 ]
  %86 = phi i32 [ 0, %81 ], [ %100, %99 ]
  %87 = phi i32 [ %83, %81 ], [ %101, %99 ]
  %88 = phi i32 [ %82, %81 ], [ %102, %99 ]
  %89 = and i32 %87, 1
  %90 = icmp eq i32 %89, 0
  %91 = and i32 %88, 1
  %92 = icmp eq i32 %91, 0
  br i1 %90, label %94, label %93

93:                                               ; preds = %84
  br i1 %92, label %95, label %99

94:                                               ; preds = %84
  br i1 %92, label %99, label %95

95:                                               ; preds = %94, %93
  %96 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %85
  %97 = load i32, i32* %96, align 4, !tbaa !6
  %98 = add nsw i32 %97, %86
  br label %99

99:                                               ; preds = %95, %94, %93
  %100 = phi i32 [ %86, %93 ], [ %86, %94 ], [ %98, %95 ]
  %101 = sdiv i32 %87, 2
  %102 = sdiv i32 %88, 2
  %103 = add nuw nsw i64 %85, 1
  %104 = icmp eq i64 %103, 16
  br i1 %104, label %105, label %84, !llvm.loop !14

105:                                              ; preds = %99, %119
  %106 = phi i64 [ %123, %119 ], [ 0, %99 ]
  %107 = phi i32 [ %120, %119 ], [ 0, %99 ]
  %108 = phi i32 [ %121, %119 ], [ %83, %99 ]
  %109 = phi i32 [ %122, %119 ], [ %82, %99 ]
  %110 = and i32 %108, 1
  %111 = icmp eq i32 %110, 0
  %112 = and i32 %109, 1
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %105
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %106
  %117 = load i32, i32* %116, align 4, !tbaa !6
  %118 = add nsw i32 %117, %107
  br label %119

119:                                              ; preds = %115, %105
  %120 = phi i32 [ %118, %115 ], [ %107, %105 ]
  %121 = sdiv i32 %108, 2
  %122 = sdiv i32 %109, 2
  %123 = add nuw nsw i64 %106, 1
  %124 = icmp eq i64 %123, 16
  br i1 %124, label %125, label %105, !llvm.loop !15

125:                                              ; preds = %119
  %126 = shl nsw i32 %120, 1
  br label %127

127:                                              ; preds = %125, %141
  %128 = phi i64 [ 0, %125 ], [ %145, %141 ]
  %129 = phi i32 [ 0, %125 ], [ %142, %141 ]
  %130 = phi i32 [ %126, %125 ], [ %143, %141 ]
  %131 = phi i32 [ 65535, %125 ], [ %144, %141 ]
  %132 = and i32 %130, 1
  %133 = icmp eq i32 %132, 0
  %134 = and i32 %131, 1
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %127
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %128
  %139 = load i32, i32* %138, align 4, !tbaa !6
  %140 = add nsw i32 %139, %129
  br label %141

141:                                              ; preds = %137, %127
  %142 = phi i32 [ %140, %137 ], [ %129, %127 ]
  %143 = sdiv i32 %130, 2
  %144 = sdiv i32 %131, 2
  %145 = add nuw nsw i64 %128, 1
  %146 = icmp eq i64 %145, 16
  br i1 %146, label %79, label %127, !llvm.loop !16

147:                                              ; preds = %79, %77
  %148 = phi i32 [ 0, %77 ], [ %100, %79 ]
  %149 = sdiv i32 %3, 2
  %150 = add nsw i32 %3, 1
  %151 = icmp ult i32 %150, 3
  br i1 %151, label %152, label %1, !llvm.loop !17

152:                                              ; preds = %147
  tail call void @_Z6putinti(i32 noundef %78)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %153

153:                                              ; preds = %152, %492
  %154 = phi i32 [ 2, %152 ], [ %493, %492 ]
  br label %155

155:                                              ; preds = %153, %489
  %156 = phi i32 [ 1, %153 ], [ %481, %489 ]
  %157 = phi i32 [ %154, %153 ], [ %490, %489 ]
  %158 = phi i32 [ 2, %153 ], [ %482, %489 ]
  %159 = and i32 %157, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %320, label %161

161:                                              ; preds = %155
  %162 = icmp eq i32 %158, 0
  br i1 %162, label %480, label %163

163:                                              ; preds = %161, %317
  %164 = phi i32 [ %240, %317 ], [ 0, %161 ]
  %165 = phi i32 [ %318, %317 ], [ %158, %161 ]
  %166 = phi i32 [ %310, %317 ], [ %156, %161 ]
  %167 = and i32 %165, 1
  %168 = icmp eq i32 %167, 0
  %169 = icmp eq i32 %166, 0
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %239, label %173

171:                                              ; preds = %233
  %172 = icmp eq i32 %234, 0
  br i1 %172, label %239, label %173, !llvm.loop !18

173:                                              ; preds = %163, %171
  %174 = phi i32 [ %234, %171 ], [ %166, %163 ]
  %175 = phi i32 [ %192, %171 ], [ %164, %163 ]
  br label %176

176:                                              ; preds = %173, %191
  %177 = phi i64 [ 0, %173 ], [ %195, %191 ]
  %178 = phi i32 [ 0, %173 ], [ %192, %191 ]
  %179 = phi i32 [ %175, %173 ], [ %193, %191 ]
  %180 = phi i32 [ %174, %173 ], [ %194, %191 ]
  %181 = and i32 %179, 1
  %182 = icmp eq i32 %181, 0
  %183 = and i32 %180, 1
  %184 = icmp eq i32 %183, 0
  br i1 %182, label %186, label %185

185:                                              ; preds = %176
  br i1 %184, label %187, label %191

186:                                              ; preds = %176
  br i1 %184, label %191, label %187

187:                                              ; preds = %186, %185
  %188 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %177
  %189 = load i32, i32* %188, align 4, !tbaa !6
  %190 = add nsw i32 %189, %178
  br label %191

191:                                              ; preds = %187, %186, %185
  %192 = phi i32 [ %178, %185 ], [ %178, %186 ], [ %190, %187 ]
  %193 = sdiv i32 %179, 2
  %194 = sdiv i32 %180, 2
  %195 = add nuw nsw i64 %177, 1
  %196 = icmp eq i64 %195, 16
  br i1 %196, label %197, label %176, !llvm.loop !19

197:                                              ; preds = %191, %211
  %198 = phi i64 [ %215, %211 ], [ 0, %191 ]
  %199 = phi i32 [ %212, %211 ], [ 0, %191 ]
  %200 = phi i32 [ %213, %211 ], [ %175, %191 ]
  %201 = phi i32 [ %214, %211 ], [ %174, %191 ]
  %202 = and i32 %200, 1
  %203 = icmp eq i32 %202, 0
  %204 = and i32 %201, 1
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %197
  %208 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %198
  %209 = load i32, i32* %208, align 4, !tbaa !6
  %210 = add nsw i32 %209, %199
  br label %211

211:                                              ; preds = %207, %197
  %212 = phi i32 [ %210, %207 ], [ %199, %197 ]
  %213 = sdiv i32 %200, 2
  %214 = sdiv i32 %201, 2
  %215 = add nuw nsw i64 %198, 1
  %216 = icmp eq i64 %215, 16
  br i1 %216, label %217, label %197, !llvm.loop !20

217:                                              ; preds = %211
  %218 = shl nsw i32 %212, 1
  br label %219

219:                                              ; preds = %217, %233
  %220 = phi i64 [ 0, %217 ], [ %237, %233 ]
  %221 = phi i32 [ 0, %217 ], [ %234, %233 ]
  %222 = phi i32 [ %218, %217 ], [ %235, %233 ]
  %223 = phi i32 [ 65535, %217 ], [ %236, %233 ]
  %224 = and i32 %222, 1
  %225 = icmp eq i32 %224, 0
  %226 = and i32 %223, 1
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %225, i1 true, i1 %227
  br i1 %228, label %233, label %229

229:                                              ; preds = %219
  %230 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %220
  %231 = load i32, i32* %230, align 4, !tbaa !6
  %232 = add nsw i32 %231, %221
  br label %233

233:                                              ; preds = %229, %219
  %234 = phi i32 [ %232, %229 ], [ %221, %219 ]
  %235 = sdiv i32 %222, 2
  %236 = sdiv i32 %223, 2
  %237 = add nuw nsw i64 %220, 1
  %238 = icmp eq i64 %237, 16
  br i1 %238, label %171, label %219, !llvm.loop !21

239:                                              ; preds = %171, %163
  %240 = phi i32 [ %164, %163 ], [ %192, %171 ]
  br i1 %169, label %309, label %243

241:                                              ; preds = %303
  %242 = icmp eq i32 %304, 0
  br i1 %242, label %309, label %243, !llvm.loop !22

243:                                              ; preds = %239, %241
  %244 = phi i32 [ %304, %241 ], [ %166, %239 ]
  %245 = phi i32 [ %262, %241 ], [ %166, %239 ]
  br label %246

246:                                              ; preds = %243, %261
  %247 = phi i64 [ 0, %243 ], [ %265, %261 ]
  %248 = phi i32 [ 0, %243 ], [ %262, %261 ]
  %249 = phi i32 [ %245, %243 ], [ %263, %261 ]
  %250 = phi i32 [ %244, %243 ], [ %264, %261 ]
  %251 = and i32 %249, 1
  %252 = icmp eq i32 %251, 0
  %253 = and i32 %250, 1
  %254 = icmp eq i32 %253, 0
  br i1 %252, label %256, label %255

255:                                              ; preds = %246
  br i1 %254, label %257, label %261

256:                                              ; preds = %246
  br i1 %254, label %261, label %257

257:                                              ; preds = %256, %255
  %258 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %247
  %259 = load i32, i32* %258, align 4, !tbaa !6
  %260 = add nsw i32 %259, %248
  br label %261

261:                                              ; preds = %257, %256, %255
  %262 = phi i32 [ %248, %255 ], [ %248, %256 ], [ %260, %257 ]
  %263 = sdiv i32 %249, 2
  %264 = sdiv i32 %250, 2
  %265 = add nuw nsw i64 %247, 1
  %266 = icmp eq i64 %265, 16
  br i1 %266, label %267, label %246, !llvm.loop !23

267:                                              ; preds = %261, %281
  %268 = phi i64 [ %285, %281 ], [ 0, %261 ]
  %269 = phi i32 [ %282, %281 ], [ 0, %261 ]
  %270 = phi i32 [ %283, %281 ], [ %245, %261 ]
  %271 = phi i32 [ %284, %281 ], [ %244, %261 ]
  %272 = and i32 %270, 1
  %273 = icmp eq i32 %272, 0
  %274 = and i32 %271, 1
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %273, i1 true, i1 %275
  br i1 %276, label %281, label %277

277:                                              ; preds = %267
  %278 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %268
  %279 = load i32, i32* %278, align 4, !tbaa !6
  %280 = add nsw i32 %279, %269
  br label %281

281:                                              ; preds = %277, %267
  %282 = phi i32 [ %280, %277 ], [ %269, %267 ]
  %283 = sdiv i32 %270, 2
  %284 = sdiv i32 %271, 2
  %285 = add nuw nsw i64 %268, 1
  %286 = icmp eq i64 %285, 16
  br i1 %286, label %287, label %267, !llvm.loop !24

287:                                              ; preds = %281
  %288 = shl nsw i32 %282, 1
  br label %289

289:                                              ; preds = %287, %303
  %290 = phi i64 [ 0, %287 ], [ %307, %303 ]
  %291 = phi i32 [ 0, %287 ], [ %304, %303 ]
  %292 = phi i32 [ %288, %287 ], [ %305, %303 ]
  %293 = phi i32 [ 65535, %287 ], [ %306, %303 ]
  %294 = and i32 %292, 1
  %295 = icmp eq i32 %294, 0
  %296 = and i32 %293, 1
  %297 = icmp eq i32 %296, 0
  %298 = select i1 %295, i1 true, i1 %297
  br i1 %298, label %303, label %299

299:                                              ; preds = %289
  %300 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %290
  %301 = load i32, i32* %300, align 4, !tbaa !6
  %302 = add nsw i32 %301, %291
  br label %303

303:                                              ; preds = %299, %289
  %304 = phi i32 [ %302, %299 ], [ %291, %289 ]
  %305 = sdiv i32 %292, 2
  %306 = sdiv i32 %293, 2
  %307 = add nuw nsw i64 %290, 1
  %308 = icmp eq i64 %307, 16
  br i1 %308, label %241, label %289, !llvm.loop !25

309:                                              ; preds = %241, %239
  %310 = phi i32 [ 0, %239 ], [ %262, %241 ]
  %311 = icmp sgt i32 %165, 32767
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = lshr i32 %165, 1
  %314 = add nuw nsw i32 %313, 32768
  br label %317

315:                                              ; preds = %309
  %316 = sdiv i32 %165, 2
  br label %317

317:                                              ; preds = %315, %312
  %318 = phi i32 [ %314, %312 ], [ %316, %315 ]
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %163, !llvm.loop !26

320:                                              ; preds = %317, %155
  %321 = phi i32 [ %156, %155 ], [ %240, %317 ]
  %322 = icmp eq i32 %158, 0
  br i1 %322, label %480, label %323

323:                                              ; preds = %320, %477
  %324 = phi i32 [ %400, %477 ], [ 0, %320 ]
  %325 = phi i32 [ %478, %477 ], [ %158, %320 ]
  %326 = phi i32 [ %470, %477 ], [ %158, %320 ]
  %327 = and i32 %325, 1
  %328 = icmp eq i32 %327, 0
  %329 = icmp eq i32 %326, 0
  %330 = select i1 %328, i1 true, i1 %329
  br i1 %330, label %399, label %333

331:                                              ; preds = %393
  %332 = icmp eq i32 %394, 0
  br i1 %332, label %399, label %333, !llvm.loop !27

333:                                              ; preds = %323, %331
  %334 = phi i32 [ %394, %331 ], [ %326, %323 ]
  %335 = phi i32 [ %352, %331 ], [ %324, %323 ]
  br label %336

336:                                              ; preds = %333, %351
  %337 = phi i64 [ 0, %333 ], [ %355, %351 ]
  %338 = phi i32 [ 0, %333 ], [ %352, %351 ]
  %339 = phi i32 [ %335, %333 ], [ %353, %351 ]
  %340 = phi i32 [ %334, %333 ], [ %354, %351 ]
  %341 = and i32 %339, 1
  %342 = icmp eq i32 %341, 0
  %343 = and i32 %340, 1
  %344 = icmp eq i32 %343, 0
  br i1 %342, label %346, label %345

345:                                              ; preds = %336
  br i1 %344, label %347, label %351

346:                                              ; preds = %336
  br i1 %344, label %351, label %347

347:                                              ; preds = %346, %345
  %348 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %337
  %349 = load i32, i32* %348, align 4, !tbaa !6
  %350 = add nsw i32 %349, %338
  br label %351

351:                                              ; preds = %347, %346, %345
  %352 = phi i32 [ %338, %345 ], [ %338, %346 ], [ %350, %347 ]
  %353 = sdiv i32 %339, 2
  %354 = sdiv i32 %340, 2
  %355 = add nuw nsw i64 %337, 1
  %356 = icmp eq i64 %355, 16
  br i1 %356, label %357, label %336, !llvm.loop !28

357:                                              ; preds = %351, %371
  %358 = phi i64 [ %375, %371 ], [ 0, %351 ]
  %359 = phi i32 [ %372, %371 ], [ 0, %351 ]
  %360 = phi i32 [ %373, %371 ], [ %335, %351 ]
  %361 = phi i32 [ %374, %371 ], [ %334, %351 ]
  %362 = and i32 %360, 1
  %363 = icmp eq i32 %362, 0
  %364 = and i32 %361, 1
  %365 = icmp eq i32 %364, 0
  %366 = select i1 %363, i1 true, i1 %365
  br i1 %366, label %371, label %367

367:                                              ; preds = %357
  %368 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %358
  %369 = load i32, i32* %368, align 4, !tbaa !6
  %370 = add nsw i32 %369, %359
  br label %371

371:                                              ; preds = %367, %357
  %372 = phi i32 [ %370, %367 ], [ %359, %357 ]
  %373 = sdiv i32 %360, 2
  %374 = sdiv i32 %361, 2
  %375 = add nuw nsw i64 %358, 1
  %376 = icmp eq i64 %375, 16
  br i1 %376, label %377, label %357, !llvm.loop !29

377:                                              ; preds = %371
  %378 = shl nsw i32 %372, 1
  br label %379

379:                                              ; preds = %377, %393
  %380 = phi i64 [ 0, %377 ], [ %397, %393 ]
  %381 = phi i32 [ 0, %377 ], [ %394, %393 ]
  %382 = phi i32 [ %378, %377 ], [ %395, %393 ]
  %383 = phi i32 [ 65535, %377 ], [ %396, %393 ]
  %384 = and i32 %382, 1
  %385 = icmp eq i32 %384, 0
  %386 = and i32 %383, 1
  %387 = icmp eq i32 %386, 0
  %388 = select i1 %385, i1 true, i1 %387
  br i1 %388, label %393, label %389

389:                                              ; preds = %379
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %380
  %391 = load i32, i32* %390, align 4, !tbaa !6
  %392 = add nsw i32 %391, %381
  br label %393

393:                                              ; preds = %389, %379
  %394 = phi i32 [ %392, %389 ], [ %381, %379 ]
  %395 = sdiv i32 %382, 2
  %396 = sdiv i32 %383, 2
  %397 = add nuw nsw i64 %380, 1
  %398 = icmp eq i64 %397, 16
  br i1 %398, label %331, label %379, !llvm.loop !30

399:                                              ; preds = %331, %323
  %400 = phi i32 [ %324, %323 ], [ %352, %331 ]
  br i1 %329, label %469, label %403

401:                                              ; preds = %463
  %402 = icmp eq i32 %464, 0
  br i1 %402, label %469, label %403, !llvm.loop !31

403:                                              ; preds = %399, %401
  %404 = phi i32 [ %464, %401 ], [ %326, %399 ]
  %405 = phi i32 [ %422, %401 ], [ %326, %399 ]
  br label %406

406:                                              ; preds = %403, %421
  %407 = phi i64 [ 0, %403 ], [ %425, %421 ]
  %408 = phi i32 [ 0, %403 ], [ %422, %421 ]
  %409 = phi i32 [ %405, %403 ], [ %423, %421 ]
  %410 = phi i32 [ %404, %403 ], [ %424, %421 ]
  %411 = and i32 %409, 1
  %412 = icmp eq i32 %411, 0
  %413 = and i32 %410, 1
  %414 = icmp eq i32 %413, 0
  br i1 %412, label %416, label %415

415:                                              ; preds = %406
  br i1 %414, label %417, label %421

416:                                              ; preds = %406
  br i1 %414, label %421, label %417

417:                                              ; preds = %416, %415
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %407
  %419 = load i32, i32* %418, align 4, !tbaa !6
  %420 = add nsw i32 %419, %408
  br label %421

421:                                              ; preds = %417, %416, %415
  %422 = phi i32 [ %408, %415 ], [ %408, %416 ], [ %420, %417 ]
  %423 = sdiv i32 %409, 2
  %424 = sdiv i32 %410, 2
  %425 = add nuw nsw i64 %407, 1
  %426 = icmp eq i64 %425, 16
  br i1 %426, label %427, label %406, !llvm.loop !32

427:                                              ; preds = %421, %441
  %428 = phi i64 [ %445, %441 ], [ 0, %421 ]
  %429 = phi i32 [ %442, %441 ], [ 0, %421 ]
  %430 = phi i32 [ %443, %441 ], [ %405, %421 ]
  %431 = phi i32 [ %444, %441 ], [ %404, %421 ]
  %432 = and i32 %430, 1
  %433 = icmp eq i32 %432, 0
  %434 = and i32 %431, 1
  %435 = icmp eq i32 %434, 0
  %436 = select i1 %433, i1 true, i1 %435
  br i1 %436, label %441, label %437

437:                                              ; preds = %427
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %428
  %439 = load i32, i32* %438, align 4, !tbaa !6
  %440 = add nsw i32 %439, %429
  br label %441

441:                                              ; preds = %437, %427
  %442 = phi i32 [ %440, %437 ], [ %429, %427 ]
  %443 = sdiv i32 %430, 2
  %444 = sdiv i32 %431, 2
  %445 = add nuw nsw i64 %428, 1
  %446 = icmp eq i64 %445, 16
  br i1 %446, label %447, label %427, !llvm.loop !33

447:                                              ; preds = %441
  %448 = shl nsw i32 %442, 1
  br label %449

449:                                              ; preds = %447, %463
  %450 = phi i64 [ 0, %447 ], [ %467, %463 ]
  %451 = phi i32 [ 0, %447 ], [ %464, %463 ]
  %452 = phi i32 [ %448, %447 ], [ %465, %463 ]
  %453 = phi i32 [ 65535, %447 ], [ %466, %463 ]
  %454 = and i32 %452, 1
  %455 = icmp eq i32 %454, 0
  %456 = and i32 %453, 1
  %457 = icmp eq i32 %456, 0
  %458 = select i1 %455, i1 true, i1 %457
  br i1 %458, label %463, label %459

459:                                              ; preds = %449
  %460 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %450
  %461 = load i32, i32* %460, align 4, !tbaa !6
  %462 = add nsw i32 %461, %451
  br label %463

463:                                              ; preds = %459, %449
  %464 = phi i32 [ %462, %459 ], [ %451, %449 ]
  %465 = sdiv i32 %452, 2
  %466 = sdiv i32 %453, 2
  %467 = add nuw nsw i64 %450, 1
  %468 = icmp eq i64 %467, 16
  br i1 %468, label %401, label %449, !llvm.loop !34

469:                                              ; preds = %401, %399
  %470 = phi i32 [ 0, %399 ], [ %422, %401 ]
  %471 = icmp sgt i32 %325, 32767
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = lshr i32 %325, 1
  %474 = add nuw nsw i32 %473, 32768
  br label %477

475:                                              ; preds = %469
  %476 = sdiv i32 %325, 2
  br label %477

477:                                              ; preds = %475, %472
  %478 = phi i32 [ %474, %472 ], [ %476, %475 ]
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %323, !llvm.loop !35

480:                                              ; preds = %477, %161, %320
  %481 = phi i32 [ %321, %320 ], [ 0, %161 ], [ %321, %477 ]
  %482 = phi i32 [ 0, %320 ], [ 0, %161 ], [ %400, %477 ]
  %483 = icmp sgt i32 %157, 32767
  br i1 %483, label %484, label %487

484:                                              ; preds = %480
  %485 = lshr i32 %157, 1
  %486 = add nuw nsw i32 %485, 32768
  br label %489

487:                                              ; preds = %480
  %488 = sdiv i32 %157, 2
  br label %489

489:                                              ; preds = %487, %484
  %490 = phi i32 [ %486, %484 ], [ %488, %487 ]
  %491 = icmp sgt i32 %490, 0
  br i1 %491, label %155, label %492, !llvm.loop !36

492:                                              ; preds = %489
  tail call void @_Z6putinti(i32 noundef %481)
  tail call void @_Z5putchi(i32 noundef 10)
  %493 = add nuw nsw i32 %154, 1
  %494 = icmp eq i32 %493, 16
  br i1 %494, label %498, label %153, !llvm.loop !37

495:                                              ; preds = %840
  %496 = add nuw nsw i64 %499, 1
  %497 = icmp eq i64 %496, 16
  br i1 %497, label %845, label %498, !llvm.loop !38

498:                                              ; preds = %492, %495
  %499 = phi i64 [ %496, %495 ], [ 0, %492 ]
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %840, label %501

501:                                              ; preds = %498
  %502 = trunc i64 %499 to i32
  br label %503

503:                                              ; preds = %501, %837
  %504 = phi i32 [ %829, %837 ], [ 1, %501 ]
  %505 = phi i32 [ %838, %837 ], [ %502, %501 ]
  %506 = phi i32 [ %830, %837 ], [ 2, %501 ]
  %507 = and i32 %505, 1
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %668, label %509

509:                                              ; preds = %503
  %510 = icmp eq i32 %506, 0
  br i1 %510, label %828, label %511

511:                                              ; preds = %509, %665
  %512 = phi i32 [ %588, %665 ], [ 0, %509 ]
  %513 = phi i32 [ %666, %665 ], [ %506, %509 ]
  %514 = phi i32 [ %658, %665 ], [ %504, %509 ]
  %515 = and i32 %513, 1
  %516 = icmp eq i32 %515, 0
  %517 = icmp eq i32 %514, 0
  %518 = select i1 %516, i1 true, i1 %517
  br i1 %518, label %587, label %521

519:                                              ; preds = %581
  %520 = icmp eq i32 %582, 0
  br i1 %520, label %587, label %521, !llvm.loop !39

521:                                              ; preds = %511, %519
  %522 = phi i32 [ %582, %519 ], [ %514, %511 ]
  %523 = phi i32 [ %540, %519 ], [ %512, %511 ]
  br label %524

524:                                              ; preds = %521, %539
  %525 = phi i64 [ 0, %521 ], [ %543, %539 ]
  %526 = phi i32 [ 0, %521 ], [ %540, %539 ]
  %527 = phi i32 [ %523, %521 ], [ %541, %539 ]
  %528 = phi i32 [ %522, %521 ], [ %542, %539 ]
  %529 = and i32 %527, 1
  %530 = icmp eq i32 %529, 0
  %531 = and i32 %528, 1
  %532 = icmp eq i32 %531, 0
  br i1 %530, label %534, label %533

533:                                              ; preds = %524
  br i1 %532, label %535, label %539

534:                                              ; preds = %524
  br i1 %532, label %539, label %535

535:                                              ; preds = %534, %533
  %536 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %525
  %537 = load i32, i32* %536, align 4, !tbaa !6
  %538 = add nsw i32 %537, %526
  br label %539

539:                                              ; preds = %535, %534, %533
  %540 = phi i32 [ %526, %533 ], [ %526, %534 ], [ %538, %535 ]
  %541 = sdiv i32 %527, 2
  %542 = sdiv i32 %528, 2
  %543 = add nuw nsw i64 %525, 1
  %544 = icmp eq i64 %543, 16
  br i1 %544, label %545, label %524, !llvm.loop !40

545:                                              ; preds = %539, %559
  %546 = phi i64 [ %563, %559 ], [ 0, %539 ]
  %547 = phi i32 [ %560, %559 ], [ 0, %539 ]
  %548 = phi i32 [ %561, %559 ], [ %523, %539 ]
  %549 = phi i32 [ %562, %559 ], [ %522, %539 ]
  %550 = and i32 %548, 1
  %551 = icmp eq i32 %550, 0
  %552 = and i32 %549, 1
  %553 = icmp eq i32 %552, 0
  %554 = select i1 %551, i1 true, i1 %553
  br i1 %554, label %559, label %555

555:                                              ; preds = %545
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %546
  %557 = load i32, i32* %556, align 4, !tbaa !6
  %558 = add nsw i32 %557, %547
  br label %559

559:                                              ; preds = %555, %545
  %560 = phi i32 [ %558, %555 ], [ %547, %545 ]
  %561 = sdiv i32 %548, 2
  %562 = sdiv i32 %549, 2
  %563 = add nuw nsw i64 %546, 1
  %564 = icmp eq i64 %563, 16
  br i1 %564, label %565, label %545, !llvm.loop !41

565:                                              ; preds = %559
  %566 = shl nsw i32 %560, 1
  br label %567

567:                                              ; preds = %565, %581
  %568 = phi i64 [ 0, %565 ], [ %585, %581 ]
  %569 = phi i32 [ 0, %565 ], [ %582, %581 ]
  %570 = phi i32 [ %566, %565 ], [ %583, %581 ]
  %571 = phi i32 [ 65535, %565 ], [ %584, %581 ]
  %572 = and i32 %570, 1
  %573 = icmp eq i32 %572, 0
  %574 = and i32 %571, 1
  %575 = icmp eq i32 %574, 0
  %576 = select i1 %573, i1 true, i1 %575
  br i1 %576, label %581, label %577

577:                                              ; preds = %567
  %578 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %568
  %579 = load i32, i32* %578, align 4, !tbaa !6
  %580 = add nsw i32 %579, %569
  br label %581

581:                                              ; preds = %577, %567
  %582 = phi i32 [ %580, %577 ], [ %569, %567 ]
  %583 = sdiv i32 %570, 2
  %584 = sdiv i32 %571, 2
  %585 = add nuw nsw i64 %568, 1
  %586 = icmp eq i64 %585, 16
  br i1 %586, label %519, label %567, !llvm.loop !42

587:                                              ; preds = %519, %511
  %588 = phi i32 [ %512, %511 ], [ %540, %519 ]
  br i1 %517, label %657, label %591

589:                                              ; preds = %651
  %590 = icmp eq i32 %652, 0
  br i1 %590, label %657, label %591, !llvm.loop !43

591:                                              ; preds = %587, %589
  %592 = phi i32 [ %652, %589 ], [ %514, %587 ]
  %593 = phi i32 [ %610, %589 ], [ %514, %587 ]
  br label %594

594:                                              ; preds = %591, %609
  %595 = phi i64 [ 0, %591 ], [ %613, %609 ]
  %596 = phi i32 [ 0, %591 ], [ %610, %609 ]
  %597 = phi i32 [ %593, %591 ], [ %611, %609 ]
  %598 = phi i32 [ %592, %591 ], [ %612, %609 ]
  %599 = and i32 %597, 1
  %600 = icmp eq i32 %599, 0
  %601 = and i32 %598, 1
  %602 = icmp eq i32 %601, 0
  br i1 %600, label %604, label %603

603:                                              ; preds = %594
  br i1 %602, label %605, label %609

604:                                              ; preds = %594
  br i1 %602, label %609, label %605

605:                                              ; preds = %604, %603
  %606 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %595
  %607 = load i32, i32* %606, align 4, !tbaa !6
  %608 = add nsw i32 %607, %596
  br label %609

609:                                              ; preds = %605, %604, %603
  %610 = phi i32 [ %596, %603 ], [ %596, %604 ], [ %608, %605 ]
  %611 = sdiv i32 %597, 2
  %612 = sdiv i32 %598, 2
  %613 = add nuw nsw i64 %595, 1
  %614 = icmp eq i64 %613, 16
  br i1 %614, label %615, label %594, !llvm.loop !44

615:                                              ; preds = %609, %629
  %616 = phi i64 [ %633, %629 ], [ 0, %609 ]
  %617 = phi i32 [ %630, %629 ], [ 0, %609 ]
  %618 = phi i32 [ %631, %629 ], [ %593, %609 ]
  %619 = phi i32 [ %632, %629 ], [ %592, %609 ]
  %620 = and i32 %618, 1
  %621 = icmp eq i32 %620, 0
  %622 = and i32 %619, 1
  %623 = icmp eq i32 %622, 0
  %624 = select i1 %621, i1 true, i1 %623
  br i1 %624, label %629, label %625

625:                                              ; preds = %615
  %626 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %616
  %627 = load i32, i32* %626, align 4, !tbaa !6
  %628 = add nsw i32 %627, %617
  br label %629

629:                                              ; preds = %625, %615
  %630 = phi i32 [ %628, %625 ], [ %617, %615 ]
  %631 = sdiv i32 %618, 2
  %632 = sdiv i32 %619, 2
  %633 = add nuw nsw i64 %616, 1
  %634 = icmp eq i64 %633, 16
  br i1 %634, label %635, label %615, !llvm.loop !45

635:                                              ; preds = %629
  %636 = shl nsw i32 %630, 1
  br label %637

637:                                              ; preds = %635, %651
  %638 = phi i64 [ 0, %635 ], [ %655, %651 ]
  %639 = phi i32 [ 0, %635 ], [ %652, %651 ]
  %640 = phi i32 [ %636, %635 ], [ %653, %651 ]
  %641 = phi i32 [ 65535, %635 ], [ %654, %651 ]
  %642 = and i32 %640, 1
  %643 = icmp eq i32 %642, 0
  %644 = and i32 %641, 1
  %645 = icmp eq i32 %644, 0
  %646 = select i1 %643, i1 true, i1 %645
  br i1 %646, label %651, label %647

647:                                              ; preds = %637
  %648 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %638
  %649 = load i32, i32* %648, align 4, !tbaa !6
  %650 = add nsw i32 %649, %639
  br label %651

651:                                              ; preds = %647, %637
  %652 = phi i32 [ %650, %647 ], [ %639, %637 ]
  %653 = sdiv i32 %640, 2
  %654 = sdiv i32 %641, 2
  %655 = add nuw nsw i64 %638, 1
  %656 = icmp eq i64 %655, 16
  br i1 %656, label %589, label %637, !llvm.loop !46

657:                                              ; preds = %589, %587
  %658 = phi i32 [ 0, %587 ], [ %610, %589 ]
  %659 = icmp sgt i32 %513, 32767
  br i1 %659, label %660, label %663

660:                                              ; preds = %657
  %661 = lshr i32 %513, 1
  %662 = add nuw nsw i32 %661, 32768
  br label %665

663:                                              ; preds = %657
  %664 = sdiv i32 %513, 2
  br label %665

665:                                              ; preds = %663, %660
  %666 = phi i32 [ %662, %660 ], [ %664, %663 ]
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %511, !llvm.loop !47

668:                                              ; preds = %665, %503
  %669 = phi i32 [ %504, %503 ], [ %588, %665 ]
  %670 = icmp eq i32 %506, 0
  br i1 %670, label %828, label %671

671:                                              ; preds = %668, %825
  %672 = phi i32 [ %748, %825 ], [ 0, %668 ]
  %673 = phi i32 [ %826, %825 ], [ %506, %668 ]
  %674 = phi i32 [ %818, %825 ], [ %506, %668 ]
  %675 = and i32 %673, 1
  %676 = icmp eq i32 %675, 0
  %677 = icmp eq i32 %674, 0
  %678 = select i1 %676, i1 true, i1 %677
  br i1 %678, label %747, label %681

679:                                              ; preds = %741
  %680 = icmp eq i32 %742, 0
  br i1 %680, label %747, label %681, !llvm.loop !48

681:                                              ; preds = %671, %679
  %682 = phi i32 [ %742, %679 ], [ %674, %671 ]
  %683 = phi i32 [ %700, %679 ], [ %672, %671 ]
  br label %684

684:                                              ; preds = %681, %699
  %685 = phi i64 [ 0, %681 ], [ %703, %699 ]
  %686 = phi i32 [ 0, %681 ], [ %700, %699 ]
  %687 = phi i32 [ %683, %681 ], [ %701, %699 ]
  %688 = phi i32 [ %682, %681 ], [ %702, %699 ]
  %689 = and i32 %687, 1
  %690 = icmp eq i32 %689, 0
  %691 = and i32 %688, 1
  %692 = icmp eq i32 %691, 0
  br i1 %690, label %694, label %693

693:                                              ; preds = %684
  br i1 %692, label %695, label %699

694:                                              ; preds = %684
  br i1 %692, label %699, label %695

695:                                              ; preds = %694, %693
  %696 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %685
  %697 = load i32, i32* %696, align 4, !tbaa !6
  %698 = add nsw i32 %697, %686
  br label %699

699:                                              ; preds = %695, %694, %693
  %700 = phi i32 [ %686, %693 ], [ %686, %694 ], [ %698, %695 ]
  %701 = sdiv i32 %687, 2
  %702 = sdiv i32 %688, 2
  %703 = add nuw nsw i64 %685, 1
  %704 = icmp eq i64 %703, 16
  br i1 %704, label %705, label %684, !llvm.loop !49

705:                                              ; preds = %699, %719
  %706 = phi i64 [ %723, %719 ], [ 0, %699 ]
  %707 = phi i32 [ %720, %719 ], [ 0, %699 ]
  %708 = phi i32 [ %721, %719 ], [ %683, %699 ]
  %709 = phi i32 [ %722, %719 ], [ %682, %699 ]
  %710 = and i32 %708, 1
  %711 = icmp eq i32 %710, 0
  %712 = and i32 %709, 1
  %713 = icmp eq i32 %712, 0
  %714 = select i1 %711, i1 true, i1 %713
  br i1 %714, label %719, label %715

715:                                              ; preds = %705
  %716 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %706
  %717 = load i32, i32* %716, align 4, !tbaa !6
  %718 = add nsw i32 %717, %707
  br label %719

719:                                              ; preds = %715, %705
  %720 = phi i32 [ %718, %715 ], [ %707, %705 ]
  %721 = sdiv i32 %708, 2
  %722 = sdiv i32 %709, 2
  %723 = add nuw nsw i64 %706, 1
  %724 = icmp eq i64 %723, 16
  br i1 %724, label %725, label %705, !llvm.loop !50

725:                                              ; preds = %719
  %726 = shl nsw i32 %720, 1
  br label %727

727:                                              ; preds = %725, %741
  %728 = phi i64 [ 0, %725 ], [ %745, %741 ]
  %729 = phi i32 [ 0, %725 ], [ %742, %741 ]
  %730 = phi i32 [ %726, %725 ], [ %743, %741 ]
  %731 = phi i32 [ 65535, %725 ], [ %744, %741 ]
  %732 = and i32 %730, 1
  %733 = icmp eq i32 %732, 0
  %734 = and i32 %731, 1
  %735 = icmp eq i32 %734, 0
  %736 = select i1 %733, i1 true, i1 %735
  br i1 %736, label %741, label %737

737:                                              ; preds = %727
  %738 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %728
  %739 = load i32, i32* %738, align 4, !tbaa !6
  %740 = add nsw i32 %739, %729
  br label %741

741:                                              ; preds = %737, %727
  %742 = phi i32 [ %740, %737 ], [ %729, %727 ]
  %743 = sdiv i32 %730, 2
  %744 = sdiv i32 %731, 2
  %745 = add nuw nsw i64 %728, 1
  %746 = icmp eq i64 %745, 16
  br i1 %746, label %679, label %727, !llvm.loop !51

747:                                              ; preds = %679, %671
  %748 = phi i32 [ %672, %671 ], [ %700, %679 ]
  br i1 %677, label %817, label %751

749:                                              ; preds = %811
  %750 = icmp eq i32 %812, 0
  br i1 %750, label %817, label %751, !llvm.loop !52

751:                                              ; preds = %747, %749
  %752 = phi i32 [ %812, %749 ], [ %674, %747 ]
  %753 = phi i32 [ %770, %749 ], [ %674, %747 ]
  br label %754

754:                                              ; preds = %751, %769
  %755 = phi i64 [ 0, %751 ], [ %773, %769 ]
  %756 = phi i32 [ 0, %751 ], [ %770, %769 ]
  %757 = phi i32 [ %753, %751 ], [ %771, %769 ]
  %758 = phi i32 [ %752, %751 ], [ %772, %769 ]
  %759 = and i32 %757, 1
  %760 = icmp eq i32 %759, 0
  %761 = and i32 %758, 1
  %762 = icmp eq i32 %761, 0
  br i1 %760, label %764, label %763

763:                                              ; preds = %754
  br i1 %762, label %765, label %769

764:                                              ; preds = %754
  br i1 %762, label %769, label %765

765:                                              ; preds = %764, %763
  %766 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %755
  %767 = load i32, i32* %766, align 4, !tbaa !6
  %768 = add nsw i32 %767, %756
  br label %769

769:                                              ; preds = %765, %764, %763
  %770 = phi i32 [ %756, %763 ], [ %756, %764 ], [ %768, %765 ]
  %771 = sdiv i32 %757, 2
  %772 = sdiv i32 %758, 2
  %773 = add nuw nsw i64 %755, 1
  %774 = icmp eq i64 %773, 16
  br i1 %774, label %775, label %754, !llvm.loop !53

775:                                              ; preds = %769, %789
  %776 = phi i64 [ %793, %789 ], [ 0, %769 ]
  %777 = phi i32 [ %790, %789 ], [ 0, %769 ]
  %778 = phi i32 [ %791, %789 ], [ %753, %769 ]
  %779 = phi i32 [ %792, %789 ], [ %752, %769 ]
  %780 = and i32 %778, 1
  %781 = icmp eq i32 %780, 0
  %782 = and i32 %779, 1
  %783 = icmp eq i32 %782, 0
  %784 = select i1 %781, i1 true, i1 %783
  br i1 %784, label %789, label %785

785:                                              ; preds = %775
  %786 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %776
  %787 = load i32, i32* %786, align 4, !tbaa !6
  %788 = add nsw i32 %787, %777
  br label %789

789:                                              ; preds = %785, %775
  %790 = phi i32 [ %788, %785 ], [ %777, %775 ]
  %791 = sdiv i32 %778, 2
  %792 = sdiv i32 %779, 2
  %793 = add nuw nsw i64 %776, 1
  %794 = icmp eq i64 %793, 16
  br i1 %794, label %795, label %775, !llvm.loop !54

795:                                              ; preds = %789
  %796 = shl nsw i32 %790, 1
  br label %797

797:                                              ; preds = %795, %811
  %798 = phi i64 [ 0, %795 ], [ %815, %811 ]
  %799 = phi i32 [ 0, %795 ], [ %812, %811 ]
  %800 = phi i32 [ %796, %795 ], [ %813, %811 ]
  %801 = phi i32 [ 65535, %795 ], [ %814, %811 ]
  %802 = and i32 %800, 1
  %803 = icmp eq i32 %802, 0
  %804 = and i32 %801, 1
  %805 = icmp eq i32 %804, 0
  %806 = select i1 %803, i1 true, i1 %805
  br i1 %806, label %811, label %807

807:                                              ; preds = %797
  %808 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %798
  %809 = load i32, i32* %808, align 4, !tbaa !6
  %810 = add nsw i32 %809, %799
  br label %811

811:                                              ; preds = %807, %797
  %812 = phi i32 [ %810, %807 ], [ %799, %797 ]
  %813 = sdiv i32 %800, 2
  %814 = sdiv i32 %801, 2
  %815 = add nuw nsw i64 %798, 1
  %816 = icmp eq i64 %815, 16
  br i1 %816, label %749, label %797, !llvm.loop !55

817:                                              ; preds = %749, %747
  %818 = phi i32 [ 0, %747 ], [ %770, %749 ]
  %819 = icmp sgt i32 %673, 32767
  br i1 %819, label %820, label %823

820:                                              ; preds = %817
  %821 = lshr i32 %673, 1
  %822 = add nuw nsw i32 %821, 32768
  br label %825

823:                                              ; preds = %817
  %824 = sdiv i32 %673, 2
  br label %825

825:                                              ; preds = %823, %820
  %826 = phi i32 [ %822, %820 ], [ %824, %823 ]
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %671, !llvm.loop !56

828:                                              ; preds = %825, %509, %668
  %829 = phi i32 [ %669, %668 ], [ 0, %509 ], [ %669, %825 ]
  %830 = phi i32 [ 0, %668 ], [ 0, %509 ], [ %748, %825 ]
  %831 = icmp sgt i32 %505, 32767
  br i1 %831, label %832, label %835

832:                                              ; preds = %828
  %833 = lshr i32 %505, 1
  %834 = add nuw nsw i32 %833, 32768
  br label %837

835:                                              ; preds = %828
  %836 = sdiv i32 %505, 2
  br label %837

837:                                              ; preds = %835, %832
  %838 = phi i32 [ %834, %832 ], [ %836, %835 ]
  %839 = icmp sgt i32 %838, 0
  br i1 %839, label %503, label %840, !llvm.loop !57

840:                                              ; preds = %837, %498
  %841 = phi i32 [ 1, %498 ], [ %829, %837 ]
  %842 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %499
  %843 = load i32, i32* %842, align 4, !tbaa !6
  %844 = icmp eq i32 %843, %841
  br i1 %844, label %495, label %845

845:                                              ; preds = %495, %840
  %846 = phi i32 [ 1, %840 ], [ 0, %495 ]
  ret i32 %846
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z9long_funcv(), !range !58
  ret i32 %1
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = !{i32 0, i32 2}
