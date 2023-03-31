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

1:                                                ; preds = %0, %359
  %2 = phi i32 [ %184, %359 ], [ 0, %0 ]
  %3 = phi i32 [ %361, %359 ], [ 2, %0 ]
  %4 = phi i32 [ %360, %359 ], [ 1, %0 ]
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %4, 0
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %183, label %9

9:                                                ; preds = %1, %53
  %10 = phi i32 [ %181, %53 ], [ %4, %1 ]
  %11 = phi i32 [ %28, %53 ], [ %2, %1 ]
  br label %12

12:                                               ; preds = %9, %27
  %13 = phi i64 [ 0, %9 ], [ %31, %27 ]
  %14 = phi i32 [ 0, %9 ], [ %28, %27 ]
  %15 = phi i32 [ %11, %9 ], [ %29, %27 ]
  %16 = phi i32 [ %10, %9 ], [ %30, %27 ]
  %17 = and i32 %15, 1
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, 1
  %20 = icmp eq i32 %19, 0
  br i1 %18, label %22, label %21

21:                                               ; preds = %12
  br i1 %20, label %23, label %27

22:                                               ; preds = %12
  br i1 %20, label %27, label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %13
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = add nsw i32 %25, %14
  br label %27

27:                                               ; preds = %23, %22, %21
  %28 = phi i32 [ %14, %21 ], [ %14, %22 ], [ %26, %23 ]
  %29 = sdiv i32 %15, 2
  %30 = sdiv i32 %16, 2
  %31 = add nuw nsw i64 %13, 1
  %32 = icmp eq i64 %31, 16
  br i1 %32, label %33, label %12, !llvm.loop !9

33:                                               ; preds = %27, %47
  %34 = phi i64 [ %51, %47 ], [ 0, %27 ]
  %35 = phi i32 [ %48, %47 ], [ 0, %27 ]
  %36 = phi i32 [ %49, %47 ], [ %11, %27 ]
  %37 = phi i32 [ %50, %47 ], [ %10, %27 ]
  %38 = and i32 %36, 1
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %37, 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %34
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = add nsw i32 %45, %35
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi i32 [ %46, %43 ], [ %35, %33 ]
  %49 = sdiv i32 %36, 2
  %50 = sdiv i32 %37, 2
  %51 = add nuw nsw i64 %34, 1
  %52 = icmp eq i64 %51, 16
  br i1 %52, label %53, label %33, !llvm.loop !11

53:                                               ; preds = %47
  %54 = shl nsw i32 %48, 1
  %55 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %54, i64 1
  %56 = and <2 x i32> %55, <i32 1, i32 1>
  %57 = icmp eq <2 x i32> %56, zeroinitializer
  %58 = extractelement <2 x i1> %57, i64 0
  %59 = extractelement <2 x i1> %57, i64 1
  %60 = select i1 %59, i1 true, i1 %58
  %61 = select i1 %60, i32 0, i32 1
  %62 = sdiv <2 x i32> %55, <i32 2, i32 2>
  %63 = and <2 x i32> %62, <i32 1, i32 1>
  %64 = icmp eq <2 x i32> %63, zeroinitializer
  %65 = extractelement <2 x i1> %64, i64 0
  %66 = extractelement <2 x i1> %64, i64 1
  %67 = select i1 %66, i1 true, i1 %65
  %68 = or i32 %61, 2
  %69 = select i1 %67, i32 %61, i32 %68
  %70 = sdiv <2 x i32> %55, <i32 4, i32 4>
  %71 = and <2 x i32> %70, <i32 1, i32 1>
  %72 = icmp eq <2 x i32> %71, zeroinitializer
  %73 = extractelement <2 x i1> %72, i64 0
  %74 = extractelement <2 x i1> %72, i64 1
  %75 = select i1 %74, i1 true, i1 %73
  %76 = add nsw i32 %69, 4
  %77 = select i1 %75, i32 %69, i32 %76
  %78 = sdiv <2 x i32> %55, <i32 8, i32 8>
  %79 = and <2 x i32> %78, <i32 1, i32 1>
  %80 = icmp eq <2 x i32> %79, zeroinitializer
  %81 = extractelement <2 x i1> %80, i64 0
  %82 = extractelement <2 x i1> %80, i64 1
  %83 = select i1 %82, i1 true, i1 %81
  %84 = add nsw i32 %77, 8
  %85 = select i1 %83, i32 %77, i32 %84
  %86 = sdiv <2 x i32> %55, <i32 16, i32 16>
  %87 = and <2 x i32> %86, <i32 1, i32 1>
  %88 = icmp eq <2 x i32> %87, zeroinitializer
  %89 = extractelement <2 x i1> %88, i64 0
  %90 = extractelement <2 x i1> %88, i64 1
  %91 = select i1 %90, i1 true, i1 %89
  %92 = add nsw i32 %85, 16
  %93 = select i1 %91, i32 %85, i32 %92
  %94 = sdiv <2 x i32> %55, <i32 32, i32 32>
  %95 = and <2 x i32> %94, <i32 1, i32 1>
  %96 = icmp eq <2 x i32> %95, zeroinitializer
  %97 = extractelement <2 x i1> %96, i64 0
  %98 = extractelement <2 x i1> %96, i64 1
  %99 = select i1 %98, i1 true, i1 %97
  %100 = add nsw i32 %93, 32
  %101 = select i1 %99, i32 %93, i32 %100
  %102 = sdiv <2 x i32> %55, <i32 64, i32 64>
  %103 = and <2 x i32> %102, <i32 1, i32 1>
  %104 = icmp eq <2 x i32> %103, zeroinitializer
  %105 = extractelement <2 x i1> %104, i64 0
  %106 = extractelement <2 x i1> %104, i64 1
  %107 = select i1 %106, i1 true, i1 %105
  %108 = add nsw i32 %101, 64
  %109 = select i1 %107, i32 %101, i32 %108
  %110 = sdiv <2 x i32> %55, <i32 128, i32 128>
  %111 = and <2 x i32> %110, <i32 1, i32 1>
  %112 = icmp eq <2 x i32> %111, zeroinitializer
  %113 = extractelement <2 x i1> %112, i64 0
  %114 = extractelement <2 x i1> %112, i64 1
  %115 = select i1 %114, i1 true, i1 %113
  %116 = add nsw i32 %109, 128
  %117 = select i1 %115, i32 %109, i32 %116
  %118 = sdiv <2 x i32> %55, <i32 256, i32 256>
  %119 = and <2 x i32> %118, <i32 1, i32 1>
  %120 = icmp eq <2 x i32> %119, zeroinitializer
  %121 = extractelement <2 x i1> %120, i64 0
  %122 = extractelement <2 x i1> %120, i64 1
  %123 = select i1 %122, i1 true, i1 %121
  %124 = add nsw i32 %117, 256
  %125 = select i1 %123, i32 %117, i32 %124
  %126 = sdiv <2 x i32> %55, <i32 512, i32 512>
  %127 = and <2 x i32> %126, <i32 1, i32 1>
  %128 = icmp eq <2 x i32> %127, zeroinitializer
  %129 = extractelement <2 x i1> %128, i64 0
  %130 = extractelement <2 x i1> %128, i64 1
  %131 = select i1 %130, i1 true, i1 %129
  %132 = add nsw i32 %125, 512
  %133 = select i1 %131, i32 %125, i32 %132
  %134 = sdiv <2 x i32> %55, <i32 1024, i32 1024>
  %135 = and <2 x i32> %134, <i32 1, i32 1>
  %136 = icmp eq <2 x i32> %135, zeroinitializer
  %137 = extractelement <2 x i1> %136, i64 0
  %138 = extractelement <2 x i1> %136, i64 1
  %139 = select i1 %138, i1 true, i1 %137
  %140 = add nsw i32 %133, 1024
  %141 = select i1 %139, i32 %133, i32 %140
  %142 = sdiv <2 x i32> %55, <i32 2048, i32 2048>
  %143 = and <2 x i32> %142, <i32 1, i32 1>
  %144 = icmp eq <2 x i32> %143, zeroinitializer
  %145 = extractelement <2 x i1> %144, i64 0
  %146 = extractelement <2 x i1> %144, i64 1
  %147 = select i1 %146, i1 true, i1 %145
  %148 = add nsw i32 %141, 2048
  %149 = select i1 %147, i32 %141, i32 %148
  %150 = sdiv <2 x i32> %55, <i32 4096, i32 4096>
  %151 = and <2 x i32> %150, <i32 1, i32 1>
  %152 = icmp eq <2 x i32> %151, zeroinitializer
  %153 = extractelement <2 x i1> %152, i64 0
  %154 = extractelement <2 x i1> %152, i64 1
  %155 = select i1 %154, i1 true, i1 %153
  %156 = add nsw i32 %149, 4096
  %157 = select i1 %155, i32 %149, i32 %156
  %158 = sdiv <2 x i32> %55, <i32 8192, i32 8192>
  %159 = and <2 x i32> %158, <i32 1, i32 1>
  %160 = icmp eq <2 x i32> %159, zeroinitializer
  %161 = extractelement <2 x i1> %160, i64 0
  %162 = extractelement <2 x i1> %160, i64 1
  %163 = select i1 %162, i1 true, i1 %161
  %164 = add nsw i32 %157, 8192
  %165 = select i1 %163, i32 %157, i32 %164
  %166 = sdiv <2 x i32> %55, <i32 16384, i32 16384>
  %167 = and <2 x i32> %166, <i32 1, i32 1>
  %168 = icmp eq <2 x i32> %167, zeroinitializer
  %169 = extractelement <2 x i1> %168, i64 0
  %170 = extractelement <2 x i1> %168, i64 1
  %171 = select i1 %170, i1 true, i1 %169
  %172 = add nsw i32 %165, 16384
  %173 = select i1 %171, i32 %165, i32 %172
  %174 = sdiv <2 x i32> %55, <i32 32768, i32 32768>
  %175 = and <2 x i32> %174, <i32 1, i32 1>
  %176 = icmp eq <2 x i32> %175, zeroinitializer
  %177 = extractelement <2 x i1> %176, i64 0
  %178 = extractelement <2 x i1> %176, i64 1
  %179 = select i1 %178, i1 true, i1 %177
  %180 = add nsw i32 %173, 32768
  %181 = select i1 %179, i32 %173, i32 %180
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %9, !llvm.loop !12

183:                                              ; preds = %53, %1
  %184 = phi i32 [ %2, %1 ], [ %28, %53 ]
  br i1 %7, label %359, label %185

185:                                              ; preds = %183, %229
  %186 = phi i32 [ %357, %229 ], [ %4, %183 ]
  %187 = phi i32 [ %204, %229 ], [ %4, %183 ]
  br label %188

188:                                              ; preds = %185, %203
  %189 = phi i64 [ 0, %185 ], [ %207, %203 ]
  %190 = phi i32 [ 0, %185 ], [ %204, %203 ]
  %191 = phi i32 [ %187, %185 ], [ %205, %203 ]
  %192 = phi i32 [ %186, %185 ], [ %206, %203 ]
  %193 = and i32 %191, 1
  %194 = icmp eq i32 %193, 0
  %195 = and i32 %192, 1
  %196 = icmp eq i32 %195, 0
  br i1 %194, label %198, label %197

197:                                              ; preds = %188
  br i1 %196, label %199, label %203

198:                                              ; preds = %188
  br i1 %196, label %203, label %199

199:                                              ; preds = %198, %197
  %200 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %189
  %201 = load i32, i32* %200, align 4, !tbaa !5
  %202 = add nsw i32 %201, %190
  br label %203

203:                                              ; preds = %199, %198, %197
  %204 = phi i32 [ %190, %197 ], [ %190, %198 ], [ %202, %199 ]
  %205 = sdiv i32 %191, 2
  %206 = sdiv i32 %192, 2
  %207 = add nuw nsw i64 %189, 1
  %208 = icmp eq i64 %207, 16
  br i1 %208, label %209, label %188, !llvm.loop !13

209:                                              ; preds = %203, %223
  %210 = phi i64 [ %227, %223 ], [ 0, %203 ]
  %211 = phi i32 [ %224, %223 ], [ 0, %203 ]
  %212 = phi i32 [ %225, %223 ], [ %187, %203 ]
  %213 = phi i32 [ %226, %223 ], [ %186, %203 ]
  %214 = and i32 %212, 1
  %215 = icmp eq i32 %214, 0
  %216 = and i32 %213, 1
  %217 = icmp eq i32 %216, 0
  %218 = select i1 %215, i1 true, i1 %217
  br i1 %218, label %223, label %219

219:                                              ; preds = %209
  %220 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %210
  %221 = load i32, i32* %220, align 4, !tbaa !5
  %222 = add nsw i32 %221, %211
  br label %223

223:                                              ; preds = %219, %209
  %224 = phi i32 [ %222, %219 ], [ %211, %209 ]
  %225 = sdiv i32 %212, 2
  %226 = sdiv i32 %213, 2
  %227 = add nuw nsw i64 %210, 1
  %228 = icmp eq i64 %227, 16
  br i1 %228, label %229, label %209, !llvm.loop !14

229:                                              ; preds = %223
  %230 = shl nsw i32 %224, 1
  %231 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %230, i64 1
  %232 = and <2 x i32> %231, <i32 1, i32 1>
  %233 = icmp eq <2 x i32> %232, zeroinitializer
  %234 = extractelement <2 x i1> %233, i64 0
  %235 = extractelement <2 x i1> %233, i64 1
  %236 = select i1 %235, i1 true, i1 %234
  %237 = select i1 %236, i32 0, i32 1
  %238 = sdiv <2 x i32> %231, <i32 2, i32 2>
  %239 = and <2 x i32> %238, <i32 1, i32 1>
  %240 = icmp eq <2 x i32> %239, zeroinitializer
  %241 = extractelement <2 x i1> %240, i64 0
  %242 = extractelement <2 x i1> %240, i64 1
  %243 = select i1 %242, i1 true, i1 %241
  %244 = or i32 %237, 2
  %245 = select i1 %243, i32 %237, i32 %244
  %246 = sdiv <2 x i32> %231, <i32 4, i32 4>
  %247 = and <2 x i32> %246, <i32 1, i32 1>
  %248 = icmp eq <2 x i32> %247, zeroinitializer
  %249 = extractelement <2 x i1> %248, i64 0
  %250 = extractelement <2 x i1> %248, i64 1
  %251 = select i1 %250, i1 true, i1 %249
  %252 = add nsw i32 %245, 4
  %253 = select i1 %251, i32 %245, i32 %252
  %254 = sdiv <2 x i32> %231, <i32 8, i32 8>
  %255 = and <2 x i32> %254, <i32 1, i32 1>
  %256 = icmp eq <2 x i32> %255, zeroinitializer
  %257 = extractelement <2 x i1> %256, i64 0
  %258 = extractelement <2 x i1> %256, i64 1
  %259 = select i1 %258, i1 true, i1 %257
  %260 = add nsw i32 %253, 8
  %261 = select i1 %259, i32 %253, i32 %260
  %262 = sdiv <2 x i32> %231, <i32 16, i32 16>
  %263 = and <2 x i32> %262, <i32 1, i32 1>
  %264 = icmp eq <2 x i32> %263, zeroinitializer
  %265 = extractelement <2 x i1> %264, i64 0
  %266 = extractelement <2 x i1> %264, i64 1
  %267 = select i1 %266, i1 true, i1 %265
  %268 = add nsw i32 %261, 16
  %269 = select i1 %267, i32 %261, i32 %268
  %270 = sdiv <2 x i32> %231, <i32 32, i32 32>
  %271 = and <2 x i32> %270, <i32 1, i32 1>
  %272 = icmp eq <2 x i32> %271, zeroinitializer
  %273 = extractelement <2 x i1> %272, i64 0
  %274 = extractelement <2 x i1> %272, i64 1
  %275 = select i1 %274, i1 true, i1 %273
  %276 = add nsw i32 %269, 32
  %277 = select i1 %275, i32 %269, i32 %276
  %278 = sdiv <2 x i32> %231, <i32 64, i32 64>
  %279 = and <2 x i32> %278, <i32 1, i32 1>
  %280 = icmp eq <2 x i32> %279, zeroinitializer
  %281 = extractelement <2 x i1> %280, i64 0
  %282 = extractelement <2 x i1> %280, i64 1
  %283 = select i1 %282, i1 true, i1 %281
  %284 = add nsw i32 %277, 64
  %285 = select i1 %283, i32 %277, i32 %284
  %286 = sdiv <2 x i32> %231, <i32 128, i32 128>
  %287 = and <2 x i32> %286, <i32 1, i32 1>
  %288 = icmp eq <2 x i32> %287, zeroinitializer
  %289 = extractelement <2 x i1> %288, i64 0
  %290 = extractelement <2 x i1> %288, i64 1
  %291 = select i1 %290, i1 true, i1 %289
  %292 = add nsw i32 %285, 128
  %293 = select i1 %291, i32 %285, i32 %292
  %294 = sdiv <2 x i32> %231, <i32 256, i32 256>
  %295 = and <2 x i32> %294, <i32 1, i32 1>
  %296 = icmp eq <2 x i32> %295, zeroinitializer
  %297 = extractelement <2 x i1> %296, i64 0
  %298 = extractelement <2 x i1> %296, i64 1
  %299 = select i1 %298, i1 true, i1 %297
  %300 = add nsw i32 %293, 256
  %301 = select i1 %299, i32 %293, i32 %300
  %302 = sdiv <2 x i32> %231, <i32 512, i32 512>
  %303 = and <2 x i32> %302, <i32 1, i32 1>
  %304 = icmp eq <2 x i32> %303, zeroinitializer
  %305 = extractelement <2 x i1> %304, i64 0
  %306 = extractelement <2 x i1> %304, i64 1
  %307 = select i1 %306, i1 true, i1 %305
  %308 = add nsw i32 %301, 512
  %309 = select i1 %307, i32 %301, i32 %308
  %310 = sdiv <2 x i32> %231, <i32 1024, i32 1024>
  %311 = and <2 x i32> %310, <i32 1, i32 1>
  %312 = icmp eq <2 x i32> %311, zeroinitializer
  %313 = extractelement <2 x i1> %312, i64 0
  %314 = extractelement <2 x i1> %312, i64 1
  %315 = select i1 %314, i1 true, i1 %313
  %316 = add nsw i32 %309, 1024
  %317 = select i1 %315, i32 %309, i32 %316
  %318 = sdiv <2 x i32> %231, <i32 2048, i32 2048>
  %319 = and <2 x i32> %318, <i32 1, i32 1>
  %320 = icmp eq <2 x i32> %319, zeroinitializer
  %321 = extractelement <2 x i1> %320, i64 0
  %322 = extractelement <2 x i1> %320, i64 1
  %323 = select i1 %322, i1 true, i1 %321
  %324 = add nsw i32 %317, 2048
  %325 = select i1 %323, i32 %317, i32 %324
  %326 = sdiv <2 x i32> %231, <i32 4096, i32 4096>
  %327 = and <2 x i32> %326, <i32 1, i32 1>
  %328 = icmp eq <2 x i32> %327, zeroinitializer
  %329 = extractelement <2 x i1> %328, i64 0
  %330 = extractelement <2 x i1> %328, i64 1
  %331 = select i1 %330, i1 true, i1 %329
  %332 = add nsw i32 %325, 4096
  %333 = select i1 %331, i32 %325, i32 %332
  %334 = sdiv <2 x i32> %231, <i32 8192, i32 8192>
  %335 = and <2 x i32> %334, <i32 1, i32 1>
  %336 = icmp eq <2 x i32> %335, zeroinitializer
  %337 = extractelement <2 x i1> %336, i64 0
  %338 = extractelement <2 x i1> %336, i64 1
  %339 = select i1 %338, i1 true, i1 %337
  %340 = add nsw i32 %333, 8192
  %341 = select i1 %339, i32 %333, i32 %340
  %342 = sdiv <2 x i32> %231, <i32 16384, i32 16384>
  %343 = and <2 x i32> %342, <i32 1, i32 1>
  %344 = icmp eq <2 x i32> %343, zeroinitializer
  %345 = extractelement <2 x i1> %344, i64 0
  %346 = extractelement <2 x i1> %344, i64 1
  %347 = select i1 %346, i1 true, i1 %345
  %348 = add nsw i32 %341, 16384
  %349 = select i1 %347, i32 %341, i32 %348
  %350 = sdiv <2 x i32> %231, <i32 32768, i32 32768>
  %351 = and <2 x i32> %350, <i32 1, i32 1>
  %352 = icmp eq <2 x i32> %351, zeroinitializer
  %353 = extractelement <2 x i1> %352, i64 0
  %354 = extractelement <2 x i1> %352, i64 1
  %355 = select i1 %354, i1 true, i1 %353
  %356 = add nsw i32 %349, 32768
  %357 = select i1 %355, i32 %349, i32 %356
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %185, !llvm.loop !15

359:                                              ; preds = %229, %183
  %360 = phi i32 [ 0, %183 ], [ %204, %229 ]
  %361 = sdiv i32 %3, 2
  %362 = add nsw i32 %3, 1
  %363 = icmp ult i32 %362, 3
  br i1 %363, label %364, label %1, !llvm.loop !16

364:                                              ; preds = %359
  tail call void @_Z6putinti(i32 noundef %184)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %365

365:                                              ; preds = %364, %1128
  %366 = phi i32 [ 2, %364 ], [ %1129, %1128 ]
  br label %367

367:                                              ; preds = %365, %1125
  %368 = phi i32 [ 1, %365 ], [ %1117, %1125 ]
  %369 = phi i32 [ %366, %365 ], [ %1126, %1125 ]
  %370 = phi i32 [ 2, %365 ], [ %1118, %1125 ]
  %371 = and i32 %369, 1
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %744, label %373

373:                                              ; preds = %367
  %374 = icmp eq i32 %370, 0
  br i1 %374, label %1116, label %375

375:                                              ; preds = %373, %741
  %376 = phi i32 [ %558, %741 ], [ 0, %373 ]
  %377 = phi i32 [ %742, %741 ], [ %370, %373 ]
  %378 = phi i32 [ %734, %741 ], [ %368, %373 ]
  %379 = and i32 %377, 1
  %380 = icmp eq i32 %379, 0
  %381 = icmp eq i32 %378, 0
  %382 = select i1 %380, i1 true, i1 %381
  br i1 %382, label %557, label %383

383:                                              ; preds = %375, %427
  %384 = phi i32 [ %555, %427 ], [ %378, %375 ]
  %385 = phi i32 [ %402, %427 ], [ %376, %375 ]
  br label %386

386:                                              ; preds = %383, %401
  %387 = phi i64 [ 0, %383 ], [ %405, %401 ]
  %388 = phi i32 [ 0, %383 ], [ %402, %401 ]
  %389 = phi i32 [ %385, %383 ], [ %403, %401 ]
  %390 = phi i32 [ %384, %383 ], [ %404, %401 ]
  %391 = and i32 %389, 1
  %392 = icmp eq i32 %391, 0
  %393 = and i32 %390, 1
  %394 = icmp eq i32 %393, 0
  br i1 %392, label %396, label %395

395:                                              ; preds = %386
  br i1 %394, label %397, label %401

396:                                              ; preds = %386
  br i1 %394, label %401, label %397

397:                                              ; preds = %396, %395
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %387
  %399 = load i32, i32* %398, align 4, !tbaa !5
  %400 = add nsw i32 %399, %388
  br label %401

401:                                              ; preds = %397, %396, %395
  %402 = phi i32 [ %388, %395 ], [ %388, %396 ], [ %400, %397 ]
  %403 = sdiv i32 %389, 2
  %404 = sdiv i32 %390, 2
  %405 = add nuw nsw i64 %387, 1
  %406 = icmp eq i64 %405, 16
  br i1 %406, label %407, label %386, !llvm.loop !17

407:                                              ; preds = %401, %421
  %408 = phi i64 [ %425, %421 ], [ 0, %401 ]
  %409 = phi i32 [ %422, %421 ], [ 0, %401 ]
  %410 = phi i32 [ %423, %421 ], [ %385, %401 ]
  %411 = phi i32 [ %424, %421 ], [ %384, %401 ]
  %412 = and i32 %410, 1
  %413 = icmp eq i32 %412, 0
  %414 = and i32 %411, 1
  %415 = icmp eq i32 %414, 0
  %416 = select i1 %413, i1 true, i1 %415
  br i1 %416, label %421, label %417

417:                                              ; preds = %407
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %408
  %419 = load i32, i32* %418, align 4, !tbaa !5
  %420 = add nsw i32 %419, %409
  br label %421

421:                                              ; preds = %417, %407
  %422 = phi i32 [ %420, %417 ], [ %409, %407 ]
  %423 = sdiv i32 %410, 2
  %424 = sdiv i32 %411, 2
  %425 = add nuw nsw i64 %408, 1
  %426 = icmp eq i64 %425, 16
  br i1 %426, label %427, label %407, !llvm.loop !18

427:                                              ; preds = %421
  %428 = shl nsw i32 %422, 1
  %429 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %428, i64 1
  %430 = and <2 x i32> %429, <i32 1, i32 1>
  %431 = icmp eq <2 x i32> %430, zeroinitializer
  %432 = extractelement <2 x i1> %431, i64 0
  %433 = extractelement <2 x i1> %431, i64 1
  %434 = select i1 %433, i1 true, i1 %432
  %435 = select i1 %434, i32 0, i32 1
  %436 = sdiv <2 x i32> %429, <i32 2, i32 2>
  %437 = and <2 x i32> %436, <i32 1, i32 1>
  %438 = icmp eq <2 x i32> %437, zeroinitializer
  %439 = extractelement <2 x i1> %438, i64 0
  %440 = extractelement <2 x i1> %438, i64 1
  %441 = select i1 %440, i1 true, i1 %439
  %442 = or i32 %435, 2
  %443 = select i1 %441, i32 %435, i32 %442
  %444 = sdiv <2 x i32> %429, <i32 4, i32 4>
  %445 = and <2 x i32> %444, <i32 1, i32 1>
  %446 = icmp eq <2 x i32> %445, zeroinitializer
  %447 = extractelement <2 x i1> %446, i64 0
  %448 = extractelement <2 x i1> %446, i64 1
  %449 = select i1 %448, i1 true, i1 %447
  %450 = add nsw i32 %443, 4
  %451 = select i1 %449, i32 %443, i32 %450
  %452 = sdiv <2 x i32> %429, <i32 8, i32 8>
  %453 = and <2 x i32> %452, <i32 1, i32 1>
  %454 = icmp eq <2 x i32> %453, zeroinitializer
  %455 = extractelement <2 x i1> %454, i64 0
  %456 = extractelement <2 x i1> %454, i64 1
  %457 = select i1 %456, i1 true, i1 %455
  %458 = add nsw i32 %451, 8
  %459 = select i1 %457, i32 %451, i32 %458
  %460 = sdiv <2 x i32> %429, <i32 16, i32 16>
  %461 = and <2 x i32> %460, <i32 1, i32 1>
  %462 = icmp eq <2 x i32> %461, zeroinitializer
  %463 = extractelement <2 x i1> %462, i64 0
  %464 = extractelement <2 x i1> %462, i64 1
  %465 = select i1 %464, i1 true, i1 %463
  %466 = add nsw i32 %459, 16
  %467 = select i1 %465, i32 %459, i32 %466
  %468 = sdiv <2 x i32> %429, <i32 32, i32 32>
  %469 = and <2 x i32> %468, <i32 1, i32 1>
  %470 = icmp eq <2 x i32> %469, zeroinitializer
  %471 = extractelement <2 x i1> %470, i64 0
  %472 = extractelement <2 x i1> %470, i64 1
  %473 = select i1 %472, i1 true, i1 %471
  %474 = add nsw i32 %467, 32
  %475 = select i1 %473, i32 %467, i32 %474
  %476 = sdiv <2 x i32> %429, <i32 64, i32 64>
  %477 = and <2 x i32> %476, <i32 1, i32 1>
  %478 = icmp eq <2 x i32> %477, zeroinitializer
  %479 = extractelement <2 x i1> %478, i64 0
  %480 = extractelement <2 x i1> %478, i64 1
  %481 = select i1 %480, i1 true, i1 %479
  %482 = add nsw i32 %475, 64
  %483 = select i1 %481, i32 %475, i32 %482
  %484 = sdiv <2 x i32> %429, <i32 128, i32 128>
  %485 = and <2 x i32> %484, <i32 1, i32 1>
  %486 = icmp eq <2 x i32> %485, zeroinitializer
  %487 = extractelement <2 x i1> %486, i64 0
  %488 = extractelement <2 x i1> %486, i64 1
  %489 = select i1 %488, i1 true, i1 %487
  %490 = add nsw i32 %483, 128
  %491 = select i1 %489, i32 %483, i32 %490
  %492 = sdiv <2 x i32> %429, <i32 256, i32 256>
  %493 = and <2 x i32> %492, <i32 1, i32 1>
  %494 = icmp eq <2 x i32> %493, zeroinitializer
  %495 = extractelement <2 x i1> %494, i64 0
  %496 = extractelement <2 x i1> %494, i64 1
  %497 = select i1 %496, i1 true, i1 %495
  %498 = add nsw i32 %491, 256
  %499 = select i1 %497, i32 %491, i32 %498
  %500 = sdiv <2 x i32> %429, <i32 512, i32 512>
  %501 = and <2 x i32> %500, <i32 1, i32 1>
  %502 = icmp eq <2 x i32> %501, zeroinitializer
  %503 = extractelement <2 x i1> %502, i64 0
  %504 = extractelement <2 x i1> %502, i64 1
  %505 = select i1 %504, i1 true, i1 %503
  %506 = add nsw i32 %499, 512
  %507 = select i1 %505, i32 %499, i32 %506
  %508 = sdiv <2 x i32> %429, <i32 1024, i32 1024>
  %509 = and <2 x i32> %508, <i32 1, i32 1>
  %510 = icmp eq <2 x i32> %509, zeroinitializer
  %511 = extractelement <2 x i1> %510, i64 0
  %512 = extractelement <2 x i1> %510, i64 1
  %513 = select i1 %512, i1 true, i1 %511
  %514 = add nsw i32 %507, 1024
  %515 = select i1 %513, i32 %507, i32 %514
  %516 = sdiv <2 x i32> %429, <i32 2048, i32 2048>
  %517 = and <2 x i32> %516, <i32 1, i32 1>
  %518 = icmp eq <2 x i32> %517, zeroinitializer
  %519 = extractelement <2 x i1> %518, i64 0
  %520 = extractelement <2 x i1> %518, i64 1
  %521 = select i1 %520, i1 true, i1 %519
  %522 = add nsw i32 %515, 2048
  %523 = select i1 %521, i32 %515, i32 %522
  %524 = sdiv <2 x i32> %429, <i32 4096, i32 4096>
  %525 = and <2 x i32> %524, <i32 1, i32 1>
  %526 = icmp eq <2 x i32> %525, zeroinitializer
  %527 = extractelement <2 x i1> %526, i64 0
  %528 = extractelement <2 x i1> %526, i64 1
  %529 = select i1 %528, i1 true, i1 %527
  %530 = add nsw i32 %523, 4096
  %531 = select i1 %529, i32 %523, i32 %530
  %532 = sdiv <2 x i32> %429, <i32 8192, i32 8192>
  %533 = and <2 x i32> %532, <i32 1, i32 1>
  %534 = icmp eq <2 x i32> %533, zeroinitializer
  %535 = extractelement <2 x i1> %534, i64 0
  %536 = extractelement <2 x i1> %534, i64 1
  %537 = select i1 %536, i1 true, i1 %535
  %538 = add nsw i32 %531, 8192
  %539 = select i1 %537, i32 %531, i32 %538
  %540 = sdiv <2 x i32> %429, <i32 16384, i32 16384>
  %541 = and <2 x i32> %540, <i32 1, i32 1>
  %542 = icmp eq <2 x i32> %541, zeroinitializer
  %543 = extractelement <2 x i1> %542, i64 0
  %544 = extractelement <2 x i1> %542, i64 1
  %545 = select i1 %544, i1 true, i1 %543
  %546 = add nsw i32 %539, 16384
  %547 = select i1 %545, i32 %539, i32 %546
  %548 = sdiv <2 x i32> %429, <i32 32768, i32 32768>
  %549 = and <2 x i32> %548, <i32 1, i32 1>
  %550 = icmp eq <2 x i32> %549, zeroinitializer
  %551 = extractelement <2 x i1> %550, i64 0
  %552 = extractelement <2 x i1> %550, i64 1
  %553 = select i1 %552, i1 true, i1 %551
  %554 = add nsw i32 %547, 32768
  %555 = select i1 %553, i32 %547, i32 %554
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %383, !llvm.loop !19

557:                                              ; preds = %427, %375
  %558 = phi i32 [ %376, %375 ], [ %402, %427 ]
  br i1 %381, label %733, label %559

559:                                              ; preds = %557, %603
  %560 = phi i32 [ %731, %603 ], [ %378, %557 ]
  %561 = phi i32 [ %578, %603 ], [ %378, %557 ]
  br label %562

562:                                              ; preds = %559, %577
  %563 = phi i64 [ 0, %559 ], [ %581, %577 ]
  %564 = phi i32 [ 0, %559 ], [ %578, %577 ]
  %565 = phi i32 [ %561, %559 ], [ %579, %577 ]
  %566 = phi i32 [ %560, %559 ], [ %580, %577 ]
  %567 = and i32 %565, 1
  %568 = icmp eq i32 %567, 0
  %569 = and i32 %566, 1
  %570 = icmp eq i32 %569, 0
  br i1 %568, label %572, label %571

571:                                              ; preds = %562
  br i1 %570, label %573, label %577

572:                                              ; preds = %562
  br i1 %570, label %577, label %573

573:                                              ; preds = %572, %571
  %574 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %563
  %575 = load i32, i32* %574, align 4, !tbaa !5
  %576 = add nsw i32 %575, %564
  br label %577

577:                                              ; preds = %573, %572, %571
  %578 = phi i32 [ %564, %571 ], [ %564, %572 ], [ %576, %573 ]
  %579 = sdiv i32 %565, 2
  %580 = sdiv i32 %566, 2
  %581 = add nuw nsw i64 %563, 1
  %582 = icmp eq i64 %581, 16
  br i1 %582, label %583, label %562, !llvm.loop !20

583:                                              ; preds = %577, %597
  %584 = phi i64 [ %601, %597 ], [ 0, %577 ]
  %585 = phi i32 [ %598, %597 ], [ 0, %577 ]
  %586 = phi i32 [ %599, %597 ], [ %561, %577 ]
  %587 = phi i32 [ %600, %597 ], [ %560, %577 ]
  %588 = and i32 %586, 1
  %589 = icmp eq i32 %588, 0
  %590 = and i32 %587, 1
  %591 = icmp eq i32 %590, 0
  %592 = select i1 %589, i1 true, i1 %591
  br i1 %592, label %597, label %593

593:                                              ; preds = %583
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %584
  %595 = load i32, i32* %594, align 4, !tbaa !5
  %596 = add nsw i32 %595, %585
  br label %597

597:                                              ; preds = %593, %583
  %598 = phi i32 [ %596, %593 ], [ %585, %583 ]
  %599 = sdiv i32 %586, 2
  %600 = sdiv i32 %587, 2
  %601 = add nuw nsw i64 %584, 1
  %602 = icmp eq i64 %601, 16
  br i1 %602, label %603, label %583, !llvm.loop !21

603:                                              ; preds = %597
  %604 = shl nsw i32 %598, 1
  %605 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %604, i64 1
  %606 = and <2 x i32> %605, <i32 1, i32 1>
  %607 = icmp eq <2 x i32> %606, zeroinitializer
  %608 = extractelement <2 x i1> %607, i64 0
  %609 = extractelement <2 x i1> %607, i64 1
  %610 = select i1 %609, i1 true, i1 %608
  %611 = select i1 %610, i32 0, i32 1
  %612 = sdiv <2 x i32> %605, <i32 2, i32 2>
  %613 = and <2 x i32> %612, <i32 1, i32 1>
  %614 = icmp eq <2 x i32> %613, zeroinitializer
  %615 = extractelement <2 x i1> %614, i64 0
  %616 = extractelement <2 x i1> %614, i64 1
  %617 = select i1 %616, i1 true, i1 %615
  %618 = or i32 %611, 2
  %619 = select i1 %617, i32 %611, i32 %618
  %620 = sdiv <2 x i32> %605, <i32 4, i32 4>
  %621 = and <2 x i32> %620, <i32 1, i32 1>
  %622 = icmp eq <2 x i32> %621, zeroinitializer
  %623 = extractelement <2 x i1> %622, i64 0
  %624 = extractelement <2 x i1> %622, i64 1
  %625 = select i1 %624, i1 true, i1 %623
  %626 = add nsw i32 %619, 4
  %627 = select i1 %625, i32 %619, i32 %626
  %628 = sdiv <2 x i32> %605, <i32 8, i32 8>
  %629 = and <2 x i32> %628, <i32 1, i32 1>
  %630 = icmp eq <2 x i32> %629, zeroinitializer
  %631 = extractelement <2 x i1> %630, i64 0
  %632 = extractelement <2 x i1> %630, i64 1
  %633 = select i1 %632, i1 true, i1 %631
  %634 = add nsw i32 %627, 8
  %635 = select i1 %633, i32 %627, i32 %634
  %636 = sdiv <2 x i32> %605, <i32 16, i32 16>
  %637 = and <2 x i32> %636, <i32 1, i32 1>
  %638 = icmp eq <2 x i32> %637, zeroinitializer
  %639 = extractelement <2 x i1> %638, i64 0
  %640 = extractelement <2 x i1> %638, i64 1
  %641 = select i1 %640, i1 true, i1 %639
  %642 = add nsw i32 %635, 16
  %643 = select i1 %641, i32 %635, i32 %642
  %644 = sdiv <2 x i32> %605, <i32 32, i32 32>
  %645 = and <2 x i32> %644, <i32 1, i32 1>
  %646 = icmp eq <2 x i32> %645, zeroinitializer
  %647 = extractelement <2 x i1> %646, i64 0
  %648 = extractelement <2 x i1> %646, i64 1
  %649 = select i1 %648, i1 true, i1 %647
  %650 = add nsw i32 %643, 32
  %651 = select i1 %649, i32 %643, i32 %650
  %652 = sdiv <2 x i32> %605, <i32 64, i32 64>
  %653 = and <2 x i32> %652, <i32 1, i32 1>
  %654 = icmp eq <2 x i32> %653, zeroinitializer
  %655 = extractelement <2 x i1> %654, i64 0
  %656 = extractelement <2 x i1> %654, i64 1
  %657 = select i1 %656, i1 true, i1 %655
  %658 = add nsw i32 %651, 64
  %659 = select i1 %657, i32 %651, i32 %658
  %660 = sdiv <2 x i32> %605, <i32 128, i32 128>
  %661 = and <2 x i32> %660, <i32 1, i32 1>
  %662 = icmp eq <2 x i32> %661, zeroinitializer
  %663 = extractelement <2 x i1> %662, i64 0
  %664 = extractelement <2 x i1> %662, i64 1
  %665 = select i1 %664, i1 true, i1 %663
  %666 = add nsw i32 %659, 128
  %667 = select i1 %665, i32 %659, i32 %666
  %668 = sdiv <2 x i32> %605, <i32 256, i32 256>
  %669 = and <2 x i32> %668, <i32 1, i32 1>
  %670 = icmp eq <2 x i32> %669, zeroinitializer
  %671 = extractelement <2 x i1> %670, i64 0
  %672 = extractelement <2 x i1> %670, i64 1
  %673 = select i1 %672, i1 true, i1 %671
  %674 = add nsw i32 %667, 256
  %675 = select i1 %673, i32 %667, i32 %674
  %676 = sdiv <2 x i32> %605, <i32 512, i32 512>
  %677 = and <2 x i32> %676, <i32 1, i32 1>
  %678 = icmp eq <2 x i32> %677, zeroinitializer
  %679 = extractelement <2 x i1> %678, i64 0
  %680 = extractelement <2 x i1> %678, i64 1
  %681 = select i1 %680, i1 true, i1 %679
  %682 = add nsw i32 %675, 512
  %683 = select i1 %681, i32 %675, i32 %682
  %684 = sdiv <2 x i32> %605, <i32 1024, i32 1024>
  %685 = and <2 x i32> %684, <i32 1, i32 1>
  %686 = icmp eq <2 x i32> %685, zeroinitializer
  %687 = extractelement <2 x i1> %686, i64 0
  %688 = extractelement <2 x i1> %686, i64 1
  %689 = select i1 %688, i1 true, i1 %687
  %690 = add nsw i32 %683, 1024
  %691 = select i1 %689, i32 %683, i32 %690
  %692 = sdiv <2 x i32> %605, <i32 2048, i32 2048>
  %693 = and <2 x i32> %692, <i32 1, i32 1>
  %694 = icmp eq <2 x i32> %693, zeroinitializer
  %695 = extractelement <2 x i1> %694, i64 0
  %696 = extractelement <2 x i1> %694, i64 1
  %697 = select i1 %696, i1 true, i1 %695
  %698 = add nsw i32 %691, 2048
  %699 = select i1 %697, i32 %691, i32 %698
  %700 = sdiv <2 x i32> %605, <i32 4096, i32 4096>
  %701 = and <2 x i32> %700, <i32 1, i32 1>
  %702 = icmp eq <2 x i32> %701, zeroinitializer
  %703 = extractelement <2 x i1> %702, i64 0
  %704 = extractelement <2 x i1> %702, i64 1
  %705 = select i1 %704, i1 true, i1 %703
  %706 = add nsw i32 %699, 4096
  %707 = select i1 %705, i32 %699, i32 %706
  %708 = sdiv <2 x i32> %605, <i32 8192, i32 8192>
  %709 = and <2 x i32> %708, <i32 1, i32 1>
  %710 = icmp eq <2 x i32> %709, zeroinitializer
  %711 = extractelement <2 x i1> %710, i64 0
  %712 = extractelement <2 x i1> %710, i64 1
  %713 = select i1 %712, i1 true, i1 %711
  %714 = add nsw i32 %707, 8192
  %715 = select i1 %713, i32 %707, i32 %714
  %716 = sdiv <2 x i32> %605, <i32 16384, i32 16384>
  %717 = and <2 x i32> %716, <i32 1, i32 1>
  %718 = icmp eq <2 x i32> %717, zeroinitializer
  %719 = extractelement <2 x i1> %718, i64 0
  %720 = extractelement <2 x i1> %718, i64 1
  %721 = select i1 %720, i1 true, i1 %719
  %722 = add nsw i32 %715, 16384
  %723 = select i1 %721, i32 %715, i32 %722
  %724 = sdiv <2 x i32> %605, <i32 32768, i32 32768>
  %725 = and <2 x i32> %724, <i32 1, i32 1>
  %726 = icmp eq <2 x i32> %725, zeroinitializer
  %727 = extractelement <2 x i1> %726, i64 0
  %728 = extractelement <2 x i1> %726, i64 1
  %729 = select i1 %728, i1 true, i1 %727
  %730 = add nsw i32 %723, 32768
  %731 = select i1 %729, i32 %723, i32 %730
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %559, !llvm.loop !22

733:                                              ; preds = %603, %557
  %734 = phi i32 [ 0, %557 ], [ %578, %603 ]
  %735 = icmp sgt i32 %377, 32767
  br i1 %735, label %736, label %739

736:                                              ; preds = %733
  %737 = lshr i32 %377, 1
  %738 = add nuw nsw i32 %737, 32768
  br label %741

739:                                              ; preds = %733
  %740 = sdiv i32 %377, 2
  br label %741

741:                                              ; preds = %739, %736
  %742 = phi i32 [ %738, %736 ], [ %740, %739 ]
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %375, !llvm.loop !23

744:                                              ; preds = %741, %367
  %745 = phi i32 [ %368, %367 ], [ %558, %741 ]
  %746 = icmp eq i32 %370, 0
  br i1 %746, label %1116, label %747

747:                                              ; preds = %744, %1113
  %748 = phi i32 [ %930, %1113 ], [ 0, %744 ]
  %749 = phi i32 [ %1114, %1113 ], [ %370, %744 ]
  %750 = phi i32 [ %1106, %1113 ], [ %370, %744 ]
  %751 = and i32 %749, 1
  %752 = icmp eq i32 %751, 0
  %753 = icmp eq i32 %750, 0
  %754 = select i1 %752, i1 true, i1 %753
  br i1 %754, label %929, label %755

755:                                              ; preds = %747, %799
  %756 = phi i32 [ %927, %799 ], [ %750, %747 ]
  %757 = phi i32 [ %774, %799 ], [ %748, %747 ]
  br label %758

758:                                              ; preds = %755, %773
  %759 = phi i64 [ 0, %755 ], [ %777, %773 ]
  %760 = phi i32 [ 0, %755 ], [ %774, %773 ]
  %761 = phi i32 [ %757, %755 ], [ %775, %773 ]
  %762 = phi i32 [ %756, %755 ], [ %776, %773 ]
  %763 = and i32 %761, 1
  %764 = icmp eq i32 %763, 0
  %765 = and i32 %762, 1
  %766 = icmp eq i32 %765, 0
  br i1 %764, label %768, label %767

767:                                              ; preds = %758
  br i1 %766, label %769, label %773

768:                                              ; preds = %758
  br i1 %766, label %773, label %769

769:                                              ; preds = %768, %767
  %770 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %759
  %771 = load i32, i32* %770, align 4, !tbaa !5
  %772 = add nsw i32 %771, %760
  br label %773

773:                                              ; preds = %769, %768, %767
  %774 = phi i32 [ %760, %767 ], [ %760, %768 ], [ %772, %769 ]
  %775 = sdiv i32 %761, 2
  %776 = sdiv i32 %762, 2
  %777 = add nuw nsw i64 %759, 1
  %778 = icmp eq i64 %777, 16
  br i1 %778, label %779, label %758, !llvm.loop !24

779:                                              ; preds = %773, %793
  %780 = phi i64 [ %797, %793 ], [ 0, %773 ]
  %781 = phi i32 [ %794, %793 ], [ 0, %773 ]
  %782 = phi i32 [ %795, %793 ], [ %757, %773 ]
  %783 = phi i32 [ %796, %793 ], [ %756, %773 ]
  %784 = and i32 %782, 1
  %785 = icmp eq i32 %784, 0
  %786 = and i32 %783, 1
  %787 = icmp eq i32 %786, 0
  %788 = select i1 %785, i1 true, i1 %787
  br i1 %788, label %793, label %789

789:                                              ; preds = %779
  %790 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %780
  %791 = load i32, i32* %790, align 4, !tbaa !5
  %792 = add nsw i32 %791, %781
  br label %793

793:                                              ; preds = %789, %779
  %794 = phi i32 [ %792, %789 ], [ %781, %779 ]
  %795 = sdiv i32 %782, 2
  %796 = sdiv i32 %783, 2
  %797 = add nuw nsw i64 %780, 1
  %798 = icmp eq i64 %797, 16
  br i1 %798, label %799, label %779, !llvm.loop !25

799:                                              ; preds = %793
  %800 = shl nsw i32 %794, 1
  %801 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %800, i64 1
  %802 = and <2 x i32> %801, <i32 1, i32 1>
  %803 = icmp eq <2 x i32> %802, zeroinitializer
  %804 = extractelement <2 x i1> %803, i64 0
  %805 = extractelement <2 x i1> %803, i64 1
  %806 = select i1 %805, i1 true, i1 %804
  %807 = select i1 %806, i32 0, i32 1
  %808 = sdiv <2 x i32> %801, <i32 2, i32 2>
  %809 = and <2 x i32> %808, <i32 1, i32 1>
  %810 = icmp eq <2 x i32> %809, zeroinitializer
  %811 = extractelement <2 x i1> %810, i64 0
  %812 = extractelement <2 x i1> %810, i64 1
  %813 = select i1 %812, i1 true, i1 %811
  %814 = or i32 %807, 2
  %815 = select i1 %813, i32 %807, i32 %814
  %816 = sdiv <2 x i32> %801, <i32 4, i32 4>
  %817 = and <2 x i32> %816, <i32 1, i32 1>
  %818 = icmp eq <2 x i32> %817, zeroinitializer
  %819 = extractelement <2 x i1> %818, i64 0
  %820 = extractelement <2 x i1> %818, i64 1
  %821 = select i1 %820, i1 true, i1 %819
  %822 = add nsw i32 %815, 4
  %823 = select i1 %821, i32 %815, i32 %822
  %824 = sdiv <2 x i32> %801, <i32 8, i32 8>
  %825 = and <2 x i32> %824, <i32 1, i32 1>
  %826 = icmp eq <2 x i32> %825, zeroinitializer
  %827 = extractelement <2 x i1> %826, i64 0
  %828 = extractelement <2 x i1> %826, i64 1
  %829 = select i1 %828, i1 true, i1 %827
  %830 = add nsw i32 %823, 8
  %831 = select i1 %829, i32 %823, i32 %830
  %832 = sdiv <2 x i32> %801, <i32 16, i32 16>
  %833 = and <2 x i32> %832, <i32 1, i32 1>
  %834 = icmp eq <2 x i32> %833, zeroinitializer
  %835 = extractelement <2 x i1> %834, i64 0
  %836 = extractelement <2 x i1> %834, i64 1
  %837 = select i1 %836, i1 true, i1 %835
  %838 = add nsw i32 %831, 16
  %839 = select i1 %837, i32 %831, i32 %838
  %840 = sdiv <2 x i32> %801, <i32 32, i32 32>
  %841 = and <2 x i32> %840, <i32 1, i32 1>
  %842 = icmp eq <2 x i32> %841, zeroinitializer
  %843 = extractelement <2 x i1> %842, i64 0
  %844 = extractelement <2 x i1> %842, i64 1
  %845 = select i1 %844, i1 true, i1 %843
  %846 = add nsw i32 %839, 32
  %847 = select i1 %845, i32 %839, i32 %846
  %848 = sdiv <2 x i32> %801, <i32 64, i32 64>
  %849 = and <2 x i32> %848, <i32 1, i32 1>
  %850 = icmp eq <2 x i32> %849, zeroinitializer
  %851 = extractelement <2 x i1> %850, i64 0
  %852 = extractelement <2 x i1> %850, i64 1
  %853 = select i1 %852, i1 true, i1 %851
  %854 = add nsw i32 %847, 64
  %855 = select i1 %853, i32 %847, i32 %854
  %856 = sdiv <2 x i32> %801, <i32 128, i32 128>
  %857 = and <2 x i32> %856, <i32 1, i32 1>
  %858 = icmp eq <2 x i32> %857, zeroinitializer
  %859 = extractelement <2 x i1> %858, i64 0
  %860 = extractelement <2 x i1> %858, i64 1
  %861 = select i1 %860, i1 true, i1 %859
  %862 = add nsw i32 %855, 128
  %863 = select i1 %861, i32 %855, i32 %862
  %864 = sdiv <2 x i32> %801, <i32 256, i32 256>
  %865 = and <2 x i32> %864, <i32 1, i32 1>
  %866 = icmp eq <2 x i32> %865, zeroinitializer
  %867 = extractelement <2 x i1> %866, i64 0
  %868 = extractelement <2 x i1> %866, i64 1
  %869 = select i1 %868, i1 true, i1 %867
  %870 = add nsw i32 %863, 256
  %871 = select i1 %869, i32 %863, i32 %870
  %872 = sdiv <2 x i32> %801, <i32 512, i32 512>
  %873 = and <2 x i32> %872, <i32 1, i32 1>
  %874 = icmp eq <2 x i32> %873, zeroinitializer
  %875 = extractelement <2 x i1> %874, i64 0
  %876 = extractelement <2 x i1> %874, i64 1
  %877 = select i1 %876, i1 true, i1 %875
  %878 = add nsw i32 %871, 512
  %879 = select i1 %877, i32 %871, i32 %878
  %880 = sdiv <2 x i32> %801, <i32 1024, i32 1024>
  %881 = and <2 x i32> %880, <i32 1, i32 1>
  %882 = icmp eq <2 x i32> %881, zeroinitializer
  %883 = extractelement <2 x i1> %882, i64 0
  %884 = extractelement <2 x i1> %882, i64 1
  %885 = select i1 %884, i1 true, i1 %883
  %886 = add nsw i32 %879, 1024
  %887 = select i1 %885, i32 %879, i32 %886
  %888 = sdiv <2 x i32> %801, <i32 2048, i32 2048>
  %889 = and <2 x i32> %888, <i32 1, i32 1>
  %890 = icmp eq <2 x i32> %889, zeroinitializer
  %891 = extractelement <2 x i1> %890, i64 0
  %892 = extractelement <2 x i1> %890, i64 1
  %893 = select i1 %892, i1 true, i1 %891
  %894 = add nsw i32 %887, 2048
  %895 = select i1 %893, i32 %887, i32 %894
  %896 = sdiv <2 x i32> %801, <i32 4096, i32 4096>
  %897 = and <2 x i32> %896, <i32 1, i32 1>
  %898 = icmp eq <2 x i32> %897, zeroinitializer
  %899 = extractelement <2 x i1> %898, i64 0
  %900 = extractelement <2 x i1> %898, i64 1
  %901 = select i1 %900, i1 true, i1 %899
  %902 = add nsw i32 %895, 4096
  %903 = select i1 %901, i32 %895, i32 %902
  %904 = sdiv <2 x i32> %801, <i32 8192, i32 8192>
  %905 = and <2 x i32> %904, <i32 1, i32 1>
  %906 = icmp eq <2 x i32> %905, zeroinitializer
  %907 = extractelement <2 x i1> %906, i64 0
  %908 = extractelement <2 x i1> %906, i64 1
  %909 = select i1 %908, i1 true, i1 %907
  %910 = add nsw i32 %903, 8192
  %911 = select i1 %909, i32 %903, i32 %910
  %912 = sdiv <2 x i32> %801, <i32 16384, i32 16384>
  %913 = and <2 x i32> %912, <i32 1, i32 1>
  %914 = icmp eq <2 x i32> %913, zeroinitializer
  %915 = extractelement <2 x i1> %914, i64 0
  %916 = extractelement <2 x i1> %914, i64 1
  %917 = select i1 %916, i1 true, i1 %915
  %918 = add nsw i32 %911, 16384
  %919 = select i1 %917, i32 %911, i32 %918
  %920 = sdiv <2 x i32> %801, <i32 32768, i32 32768>
  %921 = and <2 x i32> %920, <i32 1, i32 1>
  %922 = icmp eq <2 x i32> %921, zeroinitializer
  %923 = extractelement <2 x i1> %922, i64 0
  %924 = extractelement <2 x i1> %922, i64 1
  %925 = select i1 %924, i1 true, i1 %923
  %926 = add nsw i32 %919, 32768
  %927 = select i1 %925, i32 %919, i32 %926
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %929, label %755, !llvm.loop !26

929:                                              ; preds = %799, %747
  %930 = phi i32 [ %748, %747 ], [ %774, %799 ]
  br i1 %753, label %1105, label %931

931:                                              ; preds = %929, %975
  %932 = phi i32 [ %1103, %975 ], [ %750, %929 ]
  %933 = phi i32 [ %950, %975 ], [ %750, %929 ]
  br label %934

934:                                              ; preds = %931, %949
  %935 = phi i64 [ 0, %931 ], [ %953, %949 ]
  %936 = phi i32 [ 0, %931 ], [ %950, %949 ]
  %937 = phi i32 [ %933, %931 ], [ %951, %949 ]
  %938 = phi i32 [ %932, %931 ], [ %952, %949 ]
  %939 = and i32 %937, 1
  %940 = icmp eq i32 %939, 0
  %941 = and i32 %938, 1
  %942 = icmp eq i32 %941, 0
  br i1 %940, label %944, label %943

943:                                              ; preds = %934
  br i1 %942, label %945, label %949

944:                                              ; preds = %934
  br i1 %942, label %949, label %945

945:                                              ; preds = %944, %943
  %946 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %935
  %947 = load i32, i32* %946, align 4, !tbaa !5
  %948 = add nsw i32 %947, %936
  br label %949

949:                                              ; preds = %945, %944, %943
  %950 = phi i32 [ %936, %943 ], [ %936, %944 ], [ %948, %945 ]
  %951 = sdiv i32 %937, 2
  %952 = sdiv i32 %938, 2
  %953 = add nuw nsw i64 %935, 1
  %954 = icmp eq i64 %953, 16
  br i1 %954, label %955, label %934, !llvm.loop !27

955:                                              ; preds = %949, %969
  %956 = phi i64 [ %973, %969 ], [ 0, %949 ]
  %957 = phi i32 [ %970, %969 ], [ 0, %949 ]
  %958 = phi i32 [ %971, %969 ], [ %933, %949 ]
  %959 = phi i32 [ %972, %969 ], [ %932, %949 ]
  %960 = and i32 %958, 1
  %961 = icmp eq i32 %960, 0
  %962 = and i32 %959, 1
  %963 = icmp eq i32 %962, 0
  %964 = select i1 %961, i1 true, i1 %963
  br i1 %964, label %969, label %965

965:                                              ; preds = %955
  %966 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %956
  %967 = load i32, i32* %966, align 4, !tbaa !5
  %968 = add nsw i32 %967, %957
  br label %969

969:                                              ; preds = %965, %955
  %970 = phi i32 [ %968, %965 ], [ %957, %955 ]
  %971 = sdiv i32 %958, 2
  %972 = sdiv i32 %959, 2
  %973 = add nuw nsw i64 %956, 1
  %974 = icmp eq i64 %973, 16
  br i1 %974, label %975, label %955, !llvm.loop !28

975:                                              ; preds = %969
  %976 = shl nsw i32 %970, 1
  %977 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %976, i64 1
  %978 = and <2 x i32> %977, <i32 1, i32 1>
  %979 = icmp eq <2 x i32> %978, zeroinitializer
  %980 = extractelement <2 x i1> %979, i64 0
  %981 = extractelement <2 x i1> %979, i64 1
  %982 = select i1 %981, i1 true, i1 %980
  %983 = select i1 %982, i32 0, i32 1
  %984 = sdiv <2 x i32> %977, <i32 2, i32 2>
  %985 = and <2 x i32> %984, <i32 1, i32 1>
  %986 = icmp eq <2 x i32> %985, zeroinitializer
  %987 = extractelement <2 x i1> %986, i64 0
  %988 = extractelement <2 x i1> %986, i64 1
  %989 = select i1 %988, i1 true, i1 %987
  %990 = or i32 %983, 2
  %991 = select i1 %989, i32 %983, i32 %990
  %992 = sdiv <2 x i32> %977, <i32 4, i32 4>
  %993 = and <2 x i32> %992, <i32 1, i32 1>
  %994 = icmp eq <2 x i32> %993, zeroinitializer
  %995 = extractelement <2 x i1> %994, i64 0
  %996 = extractelement <2 x i1> %994, i64 1
  %997 = select i1 %996, i1 true, i1 %995
  %998 = add nsw i32 %991, 4
  %999 = select i1 %997, i32 %991, i32 %998
  %1000 = sdiv <2 x i32> %977, <i32 8, i32 8>
  %1001 = and <2 x i32> %1000, <i32 1, i32 1>
  %1002 = icmp eq <2 x i32> %1001, zeroinitializer
  %1003 = extractelement <2 x i1> %1002, i64 0
  %1004 = extractelement <2 x i1> %1002, i64 1
  %1005 = select i1 %1004, i1 true, i1 %1003
  %1006 = add nsw i32 %999, 8
  %1007 = select i1 %1005, i32 %999, i32 %1006
  %1008 = sdiv <2 x i32> %977, <i32 16, i32 16>
  %1009 = and <2 x i32> %1008, <i32 1, i32 1>
  %1010 = icmp eq <2 x i32> %1009, zeroinitializer
  %1011 = extractelement <2 x i1> %1010, i64 0
  %1012 = extractelement <2 x i1> %1010, i64 1
  %1013 = select i1 %1012, i1 true, i1 %1011
  %1014 = add nsw i32 %1007, 16
  %1015 = select i1 %1013, i32 %1007, i32 %1014
  %1016 = sdiv <2 x i32> %977, <i32 32, i32 32>
  %1017 = and <2 x i32> %1016, <i32 1, i32 1>
  %1018 = icmp eq <2 x i32> %1017, zeroinitializer
  %1019 = extractelement <2 x i1> %1018, i64 0
  %1020 = extractelement <2 x i1> %1018, i64 1
  %1021 = select i1 %1020, i1 true, i1 %1019
  %1022 = add nsw i32 %1015, 32
  %1023 = select i1 %1021, i32 %1015, i32 %1022
  %1024 = sdiv <2 x i32> %977, <i32 64, i32 64>
  %1025 = and <2 x i32> %1024, <i32 1, i32 1>
  %1026 = icmp eq <2 x i32> %1025, zeroinitializer
  %1027 = extractelement <2 x i1> %1026, i64 0
  %1028 = extractelement <2 x i1> %1026, i64 1
  %1029 = select i1 %1028, i1 true, i1 %1027
  %1030 = add nsw i32 %1023, 64
  %1031 = select i1 %1029, i32 %1023, i32 %1030
  %1032 = sdiv <2 x i32> %977, <i32 128, i32 128>
  %1033 = and <2 x i32> %1032, <i32 1, i32 1>
  %1034 = icmp eq <2 x i32> %1033, zeroinitializer
  %1035 = extractelement <2 x i1> %1034, i64 0
  %1036 = extractelement <2 x i1> %1034, i64 1
  %1037 = select i1 %1036, i1 true, i1 %1035
  %1038 = add nsw i32 %1031, 128
  %1039 = select i1 %1037, i32 %1031, i32 %1038
  %1040 = sdiv <2 x i32> %977, <i32 256, i32 256>
  %1041 = and <2 x i32> %1040, <i32 1, i32 1>
  %1042 = icmp eq <2 x i32> %1041, zeroinitializer
  %1043 = extractelement <2 x i1> %1042, i64 0
  %1044 = extractelement <2 x i1> %1042, i64 1
  %1045 = select i1 %1044, i1 true, i1 %1043
  %1046 = add nsw i32 %1039, 256
  %1047 = select i1 %1045, i32 %1039, i32 %1046
  %1048 = sdiv <2 x i32> %977, <i32 512, i32 512>
  %1049 = and <2 x i32> %1048, <i32 1, i32 1>
  %1050 = icmp eq <2 x i32> %1049, zeroinitializer
  %1051 = extractelement <2 x i1> %1050, i64 0
  %1052 = extractelement <2 x i1> %1050, i64 1
  %1053 = select i1 %1052, i1 true, i1 %1051
  %1054 = add nsw i32 %1047, 512
  %1055 = select i1 %1053, i32 %1047, i32 %1054
  %1056 = sdiv <2 x i32> %977, <i32 1024, i32 1024>
  %1057 = and <2 x i32> %1056, <i32 1, i32 1>
  %1058 = icmp eq <2 x i32> %1057, zeroinitializer
  %1059 = extractelement <2 x i1> %1058, i64 0
  %1060 = extractelement <2 x i1> %1058, i64 1
  %1061 = select i1 %1060, i1 true, i1 %1059
  %1062 = add nsw i32 %1055, 1024
  %1063 = select i1 %1061, i32 %1055, i32 %1062
  %1064 = sdiv <2 x i32> %977, <i32 2048, i32 2048>
  %1065 = and <2 x i32> %1064, <i32 1, i32 1>
  %1066 = icmp eq <2 x i32> %1065, zeroinitializer
  %1067 = extractelement <2 x i1> %1066, i64 0
  %1068 = extractelement <2 x i1> %1066, i64 1
  %1069 = select i1 %1068, i1 true, i1 %1067
  %1070 = add nsw i32 %1063, 2048
  %1071 = select i1 %1069, i32 %1063, i32 %1070
  %1072 = sdiv <2 x i32> %977, <i32 4096, i32 4096>
  %1073 = and <2 x i32> %1072, <i32 1, i32 1>
  %1074 = icmp eq <2 x i32> %1073, zeroinitializer
  %1075 = extractelement <2 x i1> %1074, i64 0
  %1076 = extractelement <2 x i1> %1074, i64 1
  %1077 = select i1 %1076, i1 true, i1 %1075
  %1078 = add nsw i32 %1071, 4096
  %1079 = select i1 %1077, i32 %1071, i32 %1078
  %1080 = sdiv <2 x i32> %977, <i32 8192, i32 8192>
  %1081 = and <2 x i32> %1080, <i32 1, i32 1>
  %1082 = icmp eq <2 x i32> %1081, zeroinitializer
  %1083 = extractelement <2 x i1> %1082, i64 0
  %1084 = extractelement <2 x i1> %1082, i64 1
  %1085 = select i1 %1084, i1 true, i1 %1083
  %1086 = add nsw i32 %1079, 8192
  %1087 = select i1 %1085, i32 %1079, i32 %1086
  %1088 = sdiv <2 x i32> %977, <i32 16384, i32 16384>
  %1089 = and <2 x i32> %1088, <i32 1, i32 1>
  %1090 = icmp eq <2 x i32> %1089, zeroinitializer
  %1091 = extractelement <2 x i1> %1090, i64 0
  %1092 = extractelement <2 x i1> %1090, i64 1
  %1093 = select i1 %1092, i1 true, i1 %1091
  %1094 = add nsw i32 %1087, 16384
  %1095 = select i1 %1093, i32 %1087, i32 %1094
  %1096 = sdiv <2 x i32> %977, <i32 32768, i32 32768>
  %1097 = and <2 x i32> %1096, <i32 1, i32 1>
  %1098 = icmp eq <2 x i32> %1097, zeroinitializer
  %1099 = extractelement <2 x i1> %1098, i64 0
  %1100 = extractelement <2 x i1> %1098, i64 1
  %1101 = select i1 %1100, i1 true, i1 %1099
  %1102 = add nsw i32 %1095, 32768
  %1103 = select i1 %1101, i32 %1095, i32 %1102
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1105, label %931, !llvm.loop !29

1105:                                             ; preds = %975, %929
  %1106 = phi i32 [ 0, %929 ], [ %950, %975 ]
  %1107 = icmp sgt i32 %749, 32767
  br i1 %1107, label %1108, label %1111

1108:                                             ; preds = %1105
  %1109 = lshr i32 %749, 1
  %1110 = add nuw nsw i32 %1109, 32768
  br label %1113

1111:                                             ; preds = %1105
  %1112 = sdiv i32 %749, 2
  br label %1113

1113:                                             ; preds = %1111, %1108
  %1114 = phi i32 [ %1110, %1108 ], [ %1112, %1111 ]
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1116, label %747, !llvm.loop !30

1116:                                             ; preds = %1113, %373, %744
  %1117 = phi i32 [ %745, %744 ], [ 0, %373 ], [ %745, %1113 ]
  %1118 = phi i32 [ 0, %744 ], [ 0, %373 ], [ %930, %1113 ]
  %1119 = icmp sgt i32 %369, 32767
  br i1 %1119, label %1120, label %1123

1120:                                             ; preds = %1116
  %1121 = lshr i32 %369, 1
  %1122 = add nuw nsw i32 %1121, 32768
  br label %1125

1123:                                             ; preds = %1116
  %1124 = sdiv i32 %369, 2
  br label %1125

1125:                                             ; preds = %1123, %1120
  %1126 = phi i32 [ %1122, %1120 ], [ %1124, %1123 ]
  %1127 = icmp sgt i32 %1126, 0
  br i1 %1127, label %367, label %1128, !llvm.loop !31

1128:                                             ; preds = %1125
  tail call void @_Z6putinti(i32 noundef %1117)
  tail call void @_Z5putchi(i32 noundef 10)
  %1129 = add nuw nsw i32 %366, 1
  %1130 = icmp eq i32 %1129, 16
  br i1 %1130, label %1134, label %365, !llvm.loop !32

1131:                                             ; preds = %1900
  %1132 = add nuw nsw i64 %1135, 1
  %1133 = icmp eq i64 %1132, 16
  br i1 %1133, label %1905, label %1134, !llvm.loop !33

1134:                                             ; preds = %1128, %1131
  %1135 = phi i64 [ %1132, %1131 ], [ 0, %1128 ]
  %1136 = icmp eq i64 %1135, 0
  br i1 %1136, label %1900, label %1137

1137:                                             ; preds = %1134
  %1138 = trunc i64 %1135 to i32
  br label %1139

1139:                                             ; preds = %1137, %1897
  %1140 = phi i32 [ %1889, %1897 ], [ 1, %1137 ]
  %1141 = phi i32 [ %1898, %1897 ], [ %1138, %1137 ]
  %1142 = phi i32 [ %1890, %1897 ], [ 2, %1137 ]
  %1143 = and i32 %1141, 1
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1516, label %1145

1145:                                             ; preds = %1139
  %1146 = icmp eq i32 %1142, 0
  br i1 %1146, label %1888, label %1147

1147:                                             ; preds = %1145, %1513
  %1148 = phi i32 [ %1330, %1513 ], [ 0, %1145 ]
  %1149 = phi i32 [ %1514, %1513 ], [ %1142, %1145 ]
  %1150 = phi i32 [ %1506, %1513 ], [ %1140, %1145 ]
  %1151 = and i32 %1149, 1
  %1152 = icmp eq i32 %1151, 0
  %1153 = icmp eq i32 %1150, 0
  %1154 = select i1 %1152, i1 true, i1 %1153
  br i1 %1154, label %1329, label %1155

1155:                                             ; preds = %1147, %1199
  %1156 = phi i32 [ %1327, %1199 ], [ %1150, %1147 ]
  %1157 = phi i32 [ %1174, %1199 ], [ %1148, %1147 ]
  br label %1158

1158:                                             ; preds = %1155, %1173
  %1159 = phi i64 [ 0, %1155 ], [ %1177, %1173 ]
  %1160 = phi i32 [ 0, %1155 ], [ %1174, %1173 ]
  %1161 = phi i32 [ %1157, %1155 ], [ %1175, %1173 ]
  %1162 = phi i32 [ %1156, %1155 ], [ %1176, %1173 ]
  %1163 = and i32 %1161, 1
  %1164 = icmp eq i32 %1163, 0
  %1165 = and i32 %1162, 1
  %1166 = icmp eq i32 %1165, 0
  br i1 %1164, label %1168, label %1167

1167:                                             ; preds = %1158
  br i1 %1166, label %1169, label %1173

1168:                                             ; preds = %1158
  br i1 %1166, label %1173, label %1169

1169:                                             ; preds = %1168, %1167
  %1170 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1159
  %1171 = load i32, i32* %1170, align 4, !tbaa !5
  %1172 = add nsw i32 %1171, %1160
  br label %1173

1173:                                             ; preds = %1169, %1168, %1167
  %1174 = phi i32 [ %1160, %1167 ], [ %1160, %1168 ], [ %1172, %1169 ]
  %1175 = sdiv i32 %1161, 2
  %1176 = sdiv i32 %1162, 2
  %1177 = add nuw nsw i64 %1159, 1
  %1178 = icmp eq i64 %1177, 16
  br i1 %1178, label %1179, label %1158, !llvm.loop !34

1179:                                             ; preds = %1173, %1193
  %1180 = phi i64 [ %1197, %1193 ], [ 0, %1173 ]
  %1181 = phi i32 [ %1194, %1193 ], [ 0, %1173 ]
  %1182 = phi i32 [ %1195, %1193 ], [ %1157, %1173 ]
  %1183 = phi i32 [ %1196, %1193 ], [ %1156, %1173 ]
  %1184 = and i32 %1182, 1
  %1185 = icmp eq i32 %1184, 0
  %1186 = and i32 %1183, 1
  %1187 = icmp eq i32 %1186, 0
  %1188 = select i1 %1185, i1 true, i1 %1187
  br i1 %1188, label %1193, label %1189

1189:                                             ; preds = %1179
  %1190 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1180
  %1191 = load i32, i32* %1190, align 4, !tbaa !5
  %1192 = add nsw i32 %1191, %1181
  br label %1193

1193:                                             ; preds = %1189, %1179
  %1194 = phi i32 [ %1192, %1189 ], [ %1181, %1179 ]
  %1195 = sdiv i32 %1182, 2
  %1196 = sdiv i32 %1183, 2
  %1197 = add nuw nsw i64 %1180, 1
  %1198 = icmp eq i64 %1197, 16
  br i1 %1198, label %1199, label %1179, !llvm.loop !35

1199:                                             ; preds = %1193
  %1200 = shl nsw i32 %1194, 1
  %1201 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %1200, i64 1
  %1202 = and <2 x i32> %1201, <i32 1, i32 1>
  %1203 = icmp eq <2 x i32> %1202, zeroinitializer
  %1204 = extractelement <2 x i1> %1203, i64 0
  %1205 = extractelement <2 x i1> %1203, i64 1
  %1206 = select i1 %1205, i1 true, i1 %1204
  %1207 = select i1 %1206, i32 0, i32 1
  %1208 = sdiv <2 x i32> %1201, <i32 2, i32 2>
  %1209 = and <2 x i32> %1208, <i32 1, i32 1>
  %1210 = icmp eq <2 x i32> %1209, zeroinitializer
  %1211 = extractelement <2 x i1> %1210, i64 0
  %1212 = extractelement <2 x i1> %1210, i64 1
  %1213 = select i1 %1212, i1 true, i1 %1211
  %1214 = or i32 %1207, 2
  %1215 = select i1 %1213, i32 %1207, i32 %1214
  %1216 = sdiv <2 x i32> %1201, <i32 4, i32 4>
  %1217 = and <2 x i32> %1216, <i32 1, i32 1>
  %1218 = icmp eq <2 x i32> %1217, zeroinitializer
  %1219 = extractelement <2 x i1> %1218, i64 0
  %1220 = extractelement <2 x i1> %1218, i64 1
  %1221 = select i1 %1220, i1 true, i1 %1219
  %1222 = add nsw i32 %1215, 4
  %1223 = select i1 %1221, i32 %1215, i32 %1222
  %1224 = sdiv <2 x i32> %1201, <i32 8, i32 8>
  %1225 = and <2 x i32> %1224, <i32 1, i32 1>
  %1226 = icmp eq <2 x i32> %1225, zeroinitializer
  %1227 = extractelement <2 x i1> %1226, i64 0
  %1228 = extractelement <2 x i1> %1226, i64 1
  %1229 = select i1 %1228, i1 true, i1 %1227
  %1230 = add nsw i32 %1223, 8
  %1231 = select i1 %1229, i32 %1223, i32 %1230
  %1232 = sdiv <2 x i32> %1201, <i32 16, i32 16>
  %1233 = and <2 x i32> %1232, <i32 1, i32 1>
  %1234 = icmp eq <2 x i32> %1233, zeroinitializer
  %1235 = extractelement <2 x i1> %1234, i64 0
  %1236 = extractelement <2 x i1> %1234, i64 1
  %1237 = select i1 %1236, i1 true, i1 %1235
  %1238 = add nsw i32 %1231, 16
  %1239 = select i1 %1237, i32 %1231, i32 %1238
  %1240 = sdiv <2 x i32> %1201, <i32 32, i32 32>
  %1241 = and <2 x i32> %1240, <i32 1, i32 1>
  %1242 = icmp eq <2 x i32> %1241, zeroinitializer
  %1243 = extractelement <2 x i1> %1242, i64 0
  %1244 = extractelement <2 x i1> %1242, i64 1
  %1245 = select i1 %1244, i1 true, i1 %1243
  %1246 = add nsw i32 %1239, 32
  %1247 = select i1 %1245, i32 %1239, i32 %1246
  %1248 = sdiv <2 x i32> %1201, <i32 64, i32 64>
  %1249 = and <2 x i32> %1248, <i32 1, i32 1>
  %1250 = icmp eq <2 x i32> %1249, zeroinitializer
  %1251 = extractelement <2 x i1> %1250, i64 0
  %1252 = extractelement <2 x i1> %1250, i64 1
  %1253 = select i1 %1252, i1 true, i1 %1251
  %1254 = add nsw i32 %1247, 64
  %1255 = select i1 %1253, i32 %1247, i32 %1254
  %1256 = sdiv <2 x i32> %1201, <i32 128, i32 128>
  %1257 = and <2 x i32> %1256, <i32 1, i32 1>
  %1258 = icmp eq <2 x i32> %1257, zeroinitializer
  %1259 = extractelement <2 x i1> %1258, i64 0
  %1260 = extractelement <2 x i1> %1258, i64 1
  %1261 = select i1 %1260, i1 true, i1 %1259
  %1262 = add nsw i32 %1255, 128
  %1263 = select i1 %1261, i32 %1255, i32 %1262
  %1264 = sdiv <2 x i32> %1201, <i32 256, i32 256>
  %1265 = and <2 x i32> %1264, <i32 1, i32 1>
  %1266 = icmp eq <2 x i32> %1265, zeroinitializer
  %1267 = extractelement <2 x i1> %1266, i64 0
  %1268 = extractelement <2 x i1> %1266, i64 1
  %1269 = select i1 %1268, i1 true, i1 %1267
  %1270 = add nsw i32 %1263, 256
  %1271 = select i1 %1269, i32 %1263, i32 %1270
  %1272 = sdiv <2 x i32> %1201, <i32 512, i32 512>
  %1273 = and <2 x i32> %1272, <i32 1, i32 1>
  %1274 = icmp eq <2 x i32> %1273, zeroinitializer
  %1275 = extractelement <2 x i1> %1274, i64 0
  %1276 = extractelement <2 x i1> %1274, i64 1
  %1277 = select i1 %1276, i1 true, i1 %1275
  %1278 = add nsw i32 %1271, 512
  %1279 = select i1 %1277, i32 %1271, i32 %1278
  %1280 = sdiv <2 x i32> %1201, <i32 1024, i32 1024>
  %1281 = and <2 x i32> %1280, <i32 1, i32 1>
  %1282 = icmp eq <2 x i32> %1281, zeroinitializer
  %1283 = extractelement <2 x i1> %1282, i64 0
  %1284 = extractelement <2 x i1> %1282, i64 1
  %1285 = select i1 %1284, i1 true, i1 %1283
  %1286 = add nsw i32 %1279, 1024
  %1287 = select i1 %1285, i32 %1279, i32 %1286
  %1288 = sdiv <2 x i32> %1201, <i32 2048, i32 2048>
  %1289 = and <2 x i32> %1288, <i32 1, i32 1>
  %1290 = icmp eq <2 x i32> %1289, zeroinitializer
  %1291 = extractelement <2 x i1> %1290, i64 0
  %1292 = extractelement <2 x i1> %1290, i64 1
  %1293 = select i1 %1292, i1 true, i1 %1291
  %1294 = add nsw i32 %1287, 2048
  %1295 = select i1 %1293, i32 %1287, i32 %1294
  %1296 = sdiv <2 x i32> %1201, <i32 4096, i32 4096>
  %1297 = and <2 x i32> %1296, <i32 1, i32 1>
  %1298 = icmp eq <2 x i32> %1297, zeroinitializer
  %1299 = extractelement <2 x i1> %1298, i64 0
  %1300 = extractelement <2 x i1> %1298, i64 1
  %1301 = select i1 %1300, i1 true, i1 %1299
  %1302 = add nsw i32 %1295, 4096
  %1303 = select i1 %1301, i32 %1295, i32 %1302
  %1304 = sdiv <2 x i32> %1201, <i32 8192, i32 8192>
  %1305 = and <2 x i32> %1304, <i32 1, i32 1>
  %1306 = icmp eq <2 x i32> %1305, zeroinitializer
  %1307 = extractelement <2 x i1> %1306, i64 0
  %1308 = extractelement <2 x i1> %1306, i64 1
  %1309 = select i1 %1308, i1 true, i1 %1307
  %1310 = add nsw i32 %1303, 8192
  %1311 = select i1 %1309, i32 %1303, i32 %1310
  %1312 = sdiv <2 x i32> %1201, <i32 16384, i32 16384>
  %1313 = and <2 x i32> %1312, <i32 1, i32 1>
  %1314 = icmp eq <2 x i32> %1313, zeroinitializer
  %1315 = extractelement <2 x i1> %1314, i64 0
  %1316 = extractelement <2 x i1> %1314, i64 1
  %1317 = select i1 %1316, i1 true, i1 %1315
  %1318 = add nsw i32 %1311, 16384
  %1319 = select i1 %1317, i32 %1311, i32 %1318
  %1320 = sdiv <2 x i32> %1201, <i32 32768, i32 32768>
  %1321 = and <2 x i32> %1320, <i32 1, i32 1>
  %1322 = icmp eq <2 x i32> %1321, zeroinitializer
  %1323 = extractelement <2 x i1> %1322, i64 0
  %1324 = extractelement <2 x i1> %1322, i64 1
  %1325 = select i1 %1324, i1 true, i1 %1323
  %1326 = add nsw i32 %1319, 32768
  %1327 = select i1 %1325, i32 %1319, i32 %1326
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1329, label %1155, !llvm.loop !36

1329:                                             ; preds = %1199, %1147
  %1330 = phi i32 [ %1148, %1147 ], [ %1174, %1199 ]
  br i1 %1153, label %1505, label %1331

1331:                                             ; preds = %1329, %1375
  %1332 = phi i32 [ %1503, %1375 ], [ %1150, %1329 ]
  %1333 = phi i32 [ %1350, %1375 ], [ %1150, %1329 ]
  br label %1334

1334:                                             ; preds = %1331, %1349
  %1335 = phi i64 [ 0, %1331 ], [ %1353, %1349 ]
  %1336 = phi i32 [ 0, %1331 ], [ %1350, %1349 ]
  %1337 = phi i32 [ %1333, %1331 ], [ %1351, %1349 ]
  %1338 = phi i32 [ %1332, %1331 ], [ %1352, %1349 ]
  %1339 = and i32 %1337, 1
  %1340 = icmp eq i32 %1339, 0
  %1341 = and i32 %1338, 1
  %1342 = icmp eq i32 %1341, 0
  br i1 %1340, label %1344, label %1343

1343:                                             ; preds = %1334
  br i1 %1342, label %1345, label %1349

1344:                                             ; preds = %1334
  br i1 %1342, label %1349, label %1345

1345:                                             ; preds = %1344, %1343
  %1346 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1335
  %1347 = load i32, i32* %1346, align 4, !tbaa !5
  %1348 = add nsw i32 %1347, %1336
  br label %1349

1349:                                             ; preds = %1345, %1344, %1343
  %1350 = phi i32 [ %1336, %1343 ], [ %1336, %1344 ], [ %1348, %1345 ]
  %1351 = sdiv i32 %1337, 2
  %1352 = sdiv i32 %1338, 2
  %1353 = add nuw nsw i64 %1335, 1
  %1354 = icmp eq i64 %1353, 16
  br i1 %1354, label %1355, label %1334, !llvm.loop !37

1355:                                             ; preds = %1349, %1369
  %1356 = phi i64 [ %1373, %1369 ], [ 0, %1349 ]
  %1357 = phi i32 [ %1370, %1369 ], [ 0, %1349 ]
  %1358 = phi i32 [ %1371, %1369 ], [ %1333, %1349 ]
  %1359 = phi i32 [ %1372, %1369 ], [ %1332, %1349 ]
  %1360 = and i32 %1358, 1
  %1361 = icmp eq i32 %1360, 0
  %1362 = and i32 %1359, 1
  %1363 = icmp eq i32 %1362, 0
  %1364 = select i1 %1361, i1 true, i1 %1363
  br i1 %1364, label %1369, label %1365

1365:                                             ; preds = %1355
  %1366 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1356
  %1367 = load i32, i32* %1366, align 4, !tbaa !5
  %1368 = add nsw i32 %1367, %1357
  br label %1369

1369:                                             ; preds = %1365, %1355
  %1370 = phi i32 [ %1368, %1365 ], [ %1357, %1355 ]
  %1371 = sdiv i32 %1358, 2
  %1372 = sdiv i32 %1359, 2
  %1373 = add nuw nsw i64 %1356, 1
  %1374 = icmp eq i64 %1373, 16
  br i1 %1374, label %1375, label %1355, !llvm.loop !38

1375:                                             ; preds = %1369
  %1376 = shl nsw i32 %1370, 1
  %1377 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %1376, i64 1
  %1378 = and <2 x i32> %1377, <i32 1, i32 1>
  %1379 = icmp eq <2 x i32> %1378, zeroinitializer
  %1380 = extractelement <2 x i1> %1379, i64 0
  %1381 = extractelement <2 x i1> %1379, i64 1
  %1382 = select i1 %1381, i1 true, i1 %1380
  %1383 = select i1 %1382, i32 0, i32 1
  %1384 = sdiv <2 x i32> %1377, <i32 2, i32 2>
  %1385 = and <2 x i32> %1384, <i32 1, i32 1>
  %1386 = icmp eq <2 x i32> %1385, zeroinitializer
  %1387 = extractelement <2 x i1> %1386, i64 0
  %1388 = extractelement <2 x i1> %1386, i64 1
  %1389 = select i1 %1388, i1 true, i1 %1387
  %1390 = or i32 %1383, 2
  %1391 = select i1 %1389, i32 %1383, i32 %1390
  %1392 = sdiv <2 x i32> %1377, <i32 4, i32 4>
  %1393 = and <2 x i32> %1392, <i32 1, i32 1>
  %1394 = icmp eq <2 x i32> %1393, zeroinitializer
  %1395 = extractelement <2 x i1> %1394, i64 0
  %1396 = extractelement <2 x i1> %1394, i64 1
  %1397 = select i1 %1396, i1 true, i1 %1395
  %1398 = add nsw i32 %1391, 4
  %1399 = select i1 %1397, i32 %1391, i32 %1398
  %1400 = sdiv <2 x i32> %1377, <i32 8, i32 8>
  %1401 = and <2 x i32> %1400, <i32 1, i32 1>
  %1402 = icmp eq <2 x i32> %1401, zeroinitializer
  %1403 = extractelement <2 x i1> %1402, i64 0
  %1404 = extractelement <2 x i1> %1402, i64 1
  %1405 = select i1 %1404, i1 true, i1 %1403
  %1406 = add nsw i32 %1399, 8
  %1407 = select i1 %1405, i32 %1399, i32 %1406
  %1408 = sdiv <2 x i32> %1377, <i32 16, i32 16>
  %1409 = and <2 x i32> %1408, <i32 1, i32 1>
  %1410 = icmp eq <2 x i32> %1409, zeroinitializer
  %1411 = extractelement <2 x i1> %1410, i64 0
  %1412 = extractelement <2 x i1> %1410, i64 1
  %1413 = select i1 %1412, i1 true, i1 %1411
  %1414 = add nsw i32 %1407, 16
  %1415 = select i1 %1413, i32 %1407, i32 %1414
  %1416 = sdiv <2 x i32> %1377, <i32 32, i32 32>
  %1417 = and <2 x i32> %1416, <i32 1, i32 1>
  %1418 = icmp eq <2 x i32> %1417, zeroinitializer
  %1419 = extractelement <2 x i1> %1418, i64 0
  %1420 = extractelement <2 x i1> %1418, i64 1
  %1421 = select i1 %1420, i1 true, i1 %1419
  %1422 = add nsw i32 %1415, 32
  %1423 = select i1 %1421, i32 %1415, i32 %1422
  %1424 = sdiv <2 x i32> %1377, <i32 64, i32 64>
  %1425 = and <2 x i32> %1424, <i32 1, i32 1>
  %1426 = icmp eq <2 x i32> %1425, zeroinitializer
  %1427 = extractelement <2 x i1> %1426, i64 0
  %1428 = extractelement <2 x i1> %1426, i64 1
  %1429 = select i1 %1428, i1 true, i1 %1427
  %1430 = add nsw i32 %1423, 64
  %1431 = select i1 %1429, i32 %1423, i32 %1430
  %1432 = sdiv <2 x i32> %1377, <i32 128, i32 128>
  %1433 = and <2 x i32> %1432, <i32 1, i32 1>
  %1434 = icmp eq <2 x i32> %1433, zeroinitializer
  %1435 = extractelement <2 x i1> %1434, i64 0
  %1436 = extractelement <2 x i1> %1434, i64 1
  %1437 = select i1 %1436, i1 true, i1 %1435
  %1438 = add nsw i32 %1431, 128
  %1439 = select i1 %1437, i32 %1431, i32 %1438
  %1440 = sdiv <2 x i32> %1377, <i32 256, i32 256>
  %1441 = and <2 x i32> %1440, <i32 1, i32 1>
  %1442 = icmp eq <2 x i32> %1441, zeroinitializer
  %1443 = extractelement <2 x i1> %1442, i64 0
  %1444 = extractelement <2 x i1> %1442, i64 1
  %1445 = select i1 %1444, i1 true, i1 %1443
  %1446 = add nsw i32 %1439, 256
  %1447 = select i1 %1445, i32 %1439, i32 %1446
  %1448 = sdiv <2 x i32> %1377, <i32 512, i32 512>
  %1449 = and <2 x i32> %1448, <i32 1, i32 1>
  %1450 = icmp eq <2 x i32> %1449, zeroinitializer
  %1451 = extractelement <2 x i1> %1450, i64 0
  %1452 = extractelement <2 x i1> %1450, i64 1
  %1453 = select i1 %1452, i1 true, i1 %1451
  %1454 = add nsw i32 %1447, 512
  %1455 = select i1 %1453, i32 %1447, i32 %1454
  %1456 = sdiv <2 x i32> %1377, <i32 1024, i32 1024>
  %1457 = and <2 x i32> %1456, <i32 1, i32 1>
  %1458 = icmp eq <2 x i32> %1457, zeroinitializer
  %1459 = extractelement <2 x i1> %1458, i64 0
  %1460 = extractelement <2 x i1> %1458, i64 1
  %1461 = select i1 %1460, i1 true, i1 %1459
  %1462 = add nsw i32 %1455, 1024
  %1463 = select i1 %1461, i32 %1455, i32 %1462
  %1464 = sdiv <2 x i32> %1377, <i32 2048, i32 2048>
  %1465 = and <2 x i32> %1464, <i32 1, i32 1>
  %1466 = icmp eq <2 x i32> %1465, zeroinitializer
  %1467 = extractelement <2 x i1> %1466, i64 0
  %1468 = extractelement <2 x i1> %1466, i64 1
  %1469 = select i1 %1468, i1 true, i1 %1467
  %1470 = add nsw i32 %1463, 2048
  %1471 = select i1 %1469, i32 %1463, i32 %1470
  %1472 = sdiv <2 x i32> %1377, <i32 4096, i32 4096>
  %1473 = and <2 x i32> %1472, <i32 1, i32 1>
  %1474 = icmp eq <2 x i32> %1473, zeroinitializer
  %1475 = extractelement <2 x i1> %1474, i64 0
  %1476 = extractelement <2 x i1> %1474, i64 1
  %1477 = select i1 %1476, i1 true, i1 %1475
  %1478 = add nsw i32 %1471, 4096
  %1479 = select i1 %1477, i32 %1471, i32 %1478
  %1480 = sdiv <2 x i32> %1377, <i32 8192, i32 8192>
  %1481 = and <2 x i32> %1480, <i32 1, i32 1>
  %1482 = icmp eq <2 x i32> %1481, zeroinitializer
  %1483 = extractelement <2 x i1> %1482, i64 0
  %1484 = extractelement <2 x i1> %1482, i64 1
  %1485 = select i1 %1484, i1 true, i1 %1483
  %1486 = add nsw i32 %1479, 8192
  %1487 = select i1 %1485, i32 %1479, i32 %1486
  %1488 = sdiv <2 x i32> %1377, <i32 16384, i32 16384>
  %1489 = and <2 x i32> %1488, <i32 1, i32 1>
  %1490 = icmp eq <2 x i32> %1489, zeroinitializer
  %1491 = extractelement <2 x i1> %1490, i64 0
  %1492 = extractelement <2 x i1> %1490, i64 1
  %1493 = select i1 %1492, i1 true, i1 %1491
  %1494 = add nsw i32 %1487, 16384
  %1495 = select i1 %1493, i32 %1487, i32 %1494
  %1496 = sdiv <2 x i32> %1377, <i32 32768, i32 32768>
  %1497 = and <2 x i32> %1496, <i32 1, i32 1>
  %1498 = icmp eq <2 x i32> %1497, zeroinitializer
  %1499 = extractelement <2 x i1> %1498, i64 0
  %1500 = extractelement <2 x i1> %1498, i64 1
  %1501 = select i1 %1500, i1 true, i1 %1499
  %1502 = add nsw i32 %1495, 32768
  %1503 = select i1 %1501, i32 %1495, i32 %1502
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1505, label %1331, !llvm.loop !39

1505:                                             ; preds = %1375, %1329
  %1506 = phi i32 [ 0, %1329 ], [ %1350, %1375 ]
  %1507 = icmp sgt i32 %1149, 32767
  br i1 %1507, label %1508, label %1511

1508:                                             ; preds = %1505
  %1509 = lshr i32 %1149, 1
  %1510 = add nuw nsw i32 %1509, 32768
  br label %1513

1511:                                             ; preds = %1505
  %1512 = sdiv i32 %1149, 2
  br label %1513

1513:                                             ; preds = %1511, %1508
  %1514 = phi i32 [ %1510, %1508 ], [ %1512, %1511 ]
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1516, label %1147, !llvm.loop !40

1516:                                             ; preds = %1513, %1139
  %1517 = phi i32 [ %1140, %1139 ], [ %1330, %1513 ]
  %1518 = icmp eq i32 %1142, 0
  br i1 %1518, label %1888, label %1519

1519:                                             ; preds = %1516, %1885
  %1520 = phi i32 [ %1702, %1885 ], [ 0, %1516 ]
  %1521 = phi i32 [ %1886, %1885 ], [ %1142, %1516 ]
  %1522 = phi i32 [ %1878, %1885 ], [ %1142, %1516 ]
  %1523 = and i32 %1521, 1
  %1524 = icmp eq i32 %1523, 0
  %1525 = icmp eq i32 %1522, 0
  %1526 = select i1 %1524, i1 true, i1 %1525
  br i1 %1526, label %1701, label %1527

1527:                                             ; preds = %1519, %1571
  %1528 = phi i32 [ %1699, %1571 ], [ %1522, %1519 ]
  %1529 = phi i32 [ %1546, %1571 ], [ %1520, %1519 ]
  br label %1530

1530:                                             ; preds = %1527, %1545
  %1531 = phi i64 [ 0, %1527 ], [ %1549, %1545 ]
  %1532 = phi i32 [ 0, %1527 ], [ %1546, %1545 ]
  %1533 = phi i32 [ %1529, %1527 ], [ %1547, %1545 ]
  %1534 = phi i32 [ %1528, %1527 ], [ %1548, %1545 ]
  %1535 = and i32 %1533, 1
  %1536 = icmp eq i32 %1535, 0
  %1537 = and i32 %1534, 1
  %1538 = icmp eq i32 %1537, 0
  br i1 %1536, label %1540, label %1539

1539:                                             ; preds = %1530
  br i1 %1538, label %1541, label %1545

1540:                                             ; preds = %1530
  br i1 %1538, label %1545, label %1541

1541:                                             ; preds = %1540, %1539
  %1542 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1531
  %1543 = load i32, i32* %1542, align 4, !tbaa !5
  %1544 = add nsw i32 %1543, %1532
  br label %1545

1545:                                             ; preds = %1541, %1540, %1539
  %1546 = phi i32 [ %1532, %1539 ], [ %1532, %1540 ], [ %1544, %1541 ]
  %1547 = sdiv i32 %1533, 2
  %1548 = sdiv i32 %1534, 2
  %1549 = add nuw nsw i64 %1531, 1
  %1550 = icmp eq i64 %1549, 16
  br i1 %1550, label %1551, label %1530, !llvm.loop !41

1551:                                             ; preds = %1545, %1565
  %1552 = phi i64 [ %1569, %1565 ], [ 0, %1545 ]
  %1553 = phi i32 [ %1566, %1565 ], [ 0, %1545 ]
  %1554 = phi i32 [ %1567, %1565 ], [ %1529, %1545 ]
  %1555 = phi i32 [ %1568, %1565 ], [ %1528, %1545 ]
  %1556 = and i32 %1554, 1
  %1557 = icmp eq i32 %1556, 0
  %1558 = and i32 %1555, 1
  %1559 = icmp eq i32 %1558, 0
  %1560 = select i1 %1557, i1 true, i1 %1559
  br i1 %1560, label %1565, label %1561

1561:                                             ; preds = %1551
  %1562 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1552
  %1563 = load i32, i32* %1562, align 4, !tbaa !5
  %1564 = add nsw i32 %1563, %1553
  br label %1565

1565:                                             ; preds = %1561, %1551
  %1566 = phi i32 [ %1564, %1561 ], [ %1553, %1551 ]
  %1567 = sdiv i32 %1554, 2
  %1568 = sdiv i32 %1555, 2
  %1569 = add nuw nsw i64 %1552, 1
  %1570 = icmp eq i64 %1569, 16
  br i1 %1570, label %1571, label %1551, !llvm.loop !42

1571:                                             ; preds = %1565
  %1572 = shl nsw i32 %1566, 1
  %1573 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %1572, i64 1
  %1574 = and <2 x i32> %1573, <i32 1, i32 1>
  %1575 = icmp eq <2 x i32> %1574, zeroinitializer
  %1576 = extractelement <2 x i1> %1575, i64 0
  %1577 = extractelement <2 x i1> %1575, i64 1
  %1578 = select i1 %1577, i1 true, i1 %1576
  %1579 = select i1 %1578, i32 0, i32 1
  %1580 = sdiv <2 x i32> %1573, <i32 2, i32 2>
  %1581 = and <2 x i32> %1580, <i32 1, i32 1>
  %1582 = icmp eq <2 x i32> %1581, zeroinitializer
  %1583 = extractelement <2 x i1> %1582, i64 0
  %1584 = extractelement <2 x i1> %1582, i64 1
  %1585 = select i1 %1584, i1 true, i1 %1583
  %1586 = or i32 %1579, 2
  %1587 = select i1 %1585, i32 %1579, i32 %1586
  %1588 = sdiv <2 x i32> %1573, <i32 4, i32 4>
  %1589 = and <2 x i32> %1588, <i32 1, i32 1>
  %1590 = icmp eq <2 x i32> %1589, zeroinitializer
  %1591 = extractelement <2 x i1> %1590, i64 0
  %1592 = extractelement <2 x i1> %1590, i64 1
  %1593 = select i1 %1592, i1 true, i1 %1591
  %1594 = add nsw i32 %1587, 4
  %1595 = select i1 %1593, i32 %1587, i32 %1594
  %1596 = sdiv <2 x i32> %1573, <i32 8, i32 8>
  %1597 = and <2 x i32> %1596, <i32 1, i32 1>
  %1598 = icmp eq <2 x i32> %1597, zeroinitializer
  %1599 = extractelement <2 x i1> %1598, i64 0
  %1600 = extractelement <2 x i1> %1598, i64 1
  %1601 = select i1 %1600, i1 true, i1 %1599
  %1602 = add nsw i32 %1595, 8
  %1603 = select i1 %1601, i32 %1595, i32 %1602
  %1604 = sdiv <2 x i32> %1573, <i32 16, i32 16>
  %1605 = and <2 x i32> %1604, <i32 1, i32 1>
  %1606 = icmp eq <2 x i32> %1605, zeroinitializer
  %1607 = extractelement <2 x i1> %1606, i64 0
  %1608 = extractelement <2 x i1> %1606, i64 1
  %1609 = select i1 %1608, i1 true, i1 %1607
  %1610 = add nsw i32 %1603, 16
  %1611 = select i1 %1609, i32 %1603, i32 %1610
  %1612 = sdiv <2 x i32> %1573, <i32 32, i32 32>
  %1613 = and <2 x i32> %1612, <i32 1, i32 1>
  %1614 = icmp eq <2 x i32> %1613, zeroinitializer
  %1615 = extractelement <2 x i1> %1614, i64 0
  %1616 = extractelement <2 x i1> %1614, i64 1
  %1617 = select i1 %1616, i1 true, i1 %1615
  %1618 = add nsw i32 %1611, 32
  %1619 = select i1 %1617, i32 %1611, i32 %1618
  %1620 = sdiv <2 x i32> %1573, <i32 64, i32 64>
  %1621 = and <2 x i32> %1620, <i32 1, i32 1>
  %1622 = icmp eq <2 x i32> %1621, zeroinitializer
  %1623 = extractelement <2 x i1> %1622, i64 0
  %1624 = extractelement <2 x i1> %1622, i64 1
  %1625 = select i1 %1624, i1 true, i1 %1623
  %1626 = add nsw i32 %1619, 64
  %1627 = select i1 %1625, i32 %1619, i32 %1626
  %1628 = sdiv <2 x i32> %1573, <i32 128, i32 128>
  %1629 = and <2 x i32> %1628, <i32 1, i32 1>
  %1630 = icmp eq <2 x i32> %1629, zeroinitializer
  %1631 = extractelement <2 x i1> %1630, i64 0
  %1632 = extractelement <2 x i1> %1630, i64 1
  %1633 = select i1 %1632, i1 true, i1 %1631
  %1634 = add nsw i32 %1627, 128
  %1635 = select i1 %1633, i32 %1627, i32 %1634
  %1636 = sdiv <2 x i32> %1573, <i32 256, i32 256>
  %1637 = and <2 x i32> %1636, <i32 1, i32 1>
  %1638 = icmp eq <2 x i32> %1637, zeroinitializer
  %1639 = extractelement <2 x i1> %1638, i64 0
  %1640 = extractelement <2 x i1> %1638, i64 1
  %1641 = select i1 %1640, i1 true, i1 %1639
  %1642 = add nsw i32 %1635, 256
  %1643 = select i1 %1641, i32 %1635, i32 %1642
  %1644 = sdiv <2 x i32> %1573, <i32 512, i32 512>
  %1645 = and <2 x i32> %1644, <i32 1, i32 1>
  %1646 = icmp eq <2 x i32> %1645, zeroinitializer
  %1647 = extractelement <2 x i1> %1646, i64 0
  %1648 = extractelement <2 x i1> %1646, i64 1
  %1649 = select i1 %1648, i1 true, i1 %1647
  %1650 = add nsw i32 %1643, 512
  %1651 = select i1 %1649, i32 %1643, i32 %1650
  %1652 = sdiv <2 x i32> %1573, <i32 1024, i32 1024>
  %1653 = and <2 x i32> %1652, <i32 1, i32 1>
  %1654 = icmp eq <2 x i32> %1653, zeroinitializer
  %1655 = extractelement <2 x i1> %1654, i64 0
  %1656 = extractelement <2 x i1> %1654, i64 1
  %1657 = select i1 %1656, i1 true, i1 %1655
  %1658 = add nsw i32 %1651, 1024
  %1659 = select i1 %1657, i32 %1651, i32 %1658
  %1660 = sdiv <2 x i32> %1573, <i32 2048, i32 2048>
  %1661 = and <2 x i32> %1660, <i32 1, i32 1>
  %1662 = icmp eq <2 x i32> %1661, zeroinitializer
  %1663 = extractelement <2 x i1> %1662, i64 0
  %1664 = extractelement <2 x i1> %1662, i64 1
  %1665 = select i1 %1664, i1 true, i1 %1663
  %1666 = add nsw i32 %1659, 2048
  %1667 = select i1 %1665, i32 %1659, i32 %1666
  %1668 = sdiv <2 x i32> %1573, <i32 4096, i32 4096>
  %1669 = and <2 x i32> %1668, <i32 1, i32 1>
  %1670 = icmp eq <2 x i32> %1669, zeroinitializer
  %1671 = extractelement <2 x i1> %1670, i64 0
  %1672 = extractelement <2 x i1> %1670, i64 1
  %1673 = select i1 %1672, i1 true, i1 %1671
  %1674 = add nsw i32 %1667, 4096
  %1675 = select i1 %1673, i32 %1667, i32 %1674
  %1676 = sdiv <2 x i32> %1573, <i32 8192, i32 8192>
  %1677 = and <2 x i32> %1676, <i32 1, i32 1>
  %1678 = icmp eq <2 x i32> %1677, zeroinitializer
  %1679 = extractelement <2 x i1> %1678, i64 0
  %1680 = extractelement <2 x i1> %1678, i64 1
  %1681 = select i1 %1680, i1 true, i1 %1679
  %1682 = add nsw i32 %1675, 8192
  %1683 = select i1 %1681, i32 %1675, i32 %1682
  %1684 = sdiv <2 x i32> %1573, <i32 16384, i32 16384>
  %1685 = and <2 x i32> %1684, <i32 1, i32 1>
  %1686 = icmp eq <2 x i32> %1685, zeroinitializer
  %1687 = extractelement <2 x i1> %1686, i64 0
  %1688 = extractelement <2 x i1> %1686, i64 1
  %1689 = select i1 %1688, i1 true, i1 %1687
  %1690 = add nsw i32 %1683, 16384
  %1691 = select i1 %1689, i32 %1683, i32 %1690
  %1692 = sdiv <2 x i32> %1573, <i32 32768, i32 32768>
  %1693 = and <2 x i32> %1692, <i32 1, i32 1>
  %1694 = icmp eq <2 x i32> %1693, zeroinitializer
  %1695 = extractelement <2 x i1> %1694, i64 0
  %1696 = extractelement <2 x i1> %1694, i64 1
  %1697 = select i1 %1696, i1 true, i1 %1695
  %1698 = add nsw i32 %1691, 32768
  %1699 = select i1 %1697, i32 %1691, i32 %1698
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1701, label %1527, !llvm.loop !43

1701:                                             ; preds = %1571, %1519
  %1702 = phi i32 [ %1520, %1519 ], [ %1546, %1571 ]
  br i1 %1525, label %1877, label %1703

1703:                                             ; preds = %1701, %1747
  %1704 = phi i32 [ %1875, %1747 ], [ %1522, %1701 ]
  %1705 = phi i32 [ %1722, %1747 ], [ %1522, %1701 ]
  br label %1706

1706:                                             ; preds = %1703, %1721
  %1707 = phi i64 [ 0, %1703 ], [ %1725, %1721 ]
  %1708 = phi i32 [ 0, %1703 ], [ %1722, %1721 ]
  %1709 = phi i32 [ %1705, %1703 ], [ %1723, %1721 ]
  %1710 = phi i32 [ %1704, %1703 ], [ %1724, %1721 ]
  %1711 = and i32 %1709, 1
  %1712 = icmp eq i32 %1711, 0
  %1713 = and i32 %1710, 1
  %1714 = icmp eq i32 %1713, 0
  br i1 %1712, label %1716, label %1715

1715:                                             ; preds = %1706
  br i1 %1714, label %1717, label %1721

1716:                                             ; preds = %1706
  br i1 %1714, label %1721, label %1717

1717:                                             ; preds = %1716, %1715
  %1718 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1707
  %1719 = load i32, i32* %1718, align 4, !tbaa !5
  %1720 = add nsw i32 %1719, %1708
  br label %1721

1721:                                             ; preds = %1717, %1716, %1715
  %1722 = phi i32 [ %1708, %1715 ], [ %1708, %1716 ], [ %1720, %1717 ]
  %1723 = sdiv i32 %1709, 2
  %1724 = sdiv i32 %1710, 2
  %1725 = add nuw nsw i64 %1707, 1
  %1726 = icmp eq i64 %1725, 16
  br i1 %1726, label %1727, label %1706, !llvm.loop !44

1727:                                             ; preds = %1721, %1741
  %1728 = phi i64 [ %1745, %1741 ], [ 0, %1721 ]
  %1729 = phi i32 [ %1742, %1741 ], [ 0, %1721 ]
  %1730 = phi i32 [ %1743, %1741 ], [ %1705, %1721 ]
  %1731 = phi i32 [ %1744, %1741 ], [ %1704, %1721 ]
  %1732 = and i32 %1730, 1
  %1733 = icmp eq i32 %1732, 0
  %1734 = and i32 %1731, 1
  %1735 = icmp eq i32 %1734, 0
  %1736 = select i1 %1733, i1 true, i1 %1735
  br i1 %1736, label %1741, label %1737

1737:                                             ; preds = %1727
  %1738 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1728
  %1739 = load i32, i32* %1738, align 4, !tbaa !5
  %1740 = add nsw i32 %1739, %1729
  br label %1741

1741:                                             ; preds = %1737, %1727
  %1742 = phi i32 [ %1740, %1737 ], [ %1729, %1727 ]
  %1743 = sdiv i32 %1730, 2
  %1744 = sdiv i32 %1731, 2
  %1745 = add nuw nsw i64 %1728, 1
  %1746 = icmp eq i64 %1745, 16
  br i1 %1746, label %1747, label %1727, !llvm.loop !45

1747:                                             ; preds = %1741
  %1748 = shl nsw i32 %1742, 1
  %1749 = insertelement <2 x i32> <i32 65535, i32 poison>, i32 %1748, i64 1
  %1750 = and <2 x i32> %1749, <i32 1, i32 1>
  %1751 = icmp eq <2 x i32> %1750, zeroinitializer
  %1752 = extractelement <2 x i1> %1751, i64 0
  %1753 = extractelement <2 x i1> %1751, i64 1
  %1754 = select i1 %1753, i1 true, i1 %1752
  %1755 = select i1 %1754, i32 0, i32 1
  %1756 = sdiv <2 x i32> %1749, <i32 2, i32 2>
  %1757 = and <2 x i32> %1756, <i32 1, i32 1>
  %1758 = icmp eq <2 x i32> %1757, zeroinitializer
  %1759 = extractelement <2 x i1> %1758, i64 0
  %1760 = extractelement <2 x i1> %1758, i64 1
  %1761 = select i1 %1760, i1 true, i1 %1759
  %1762 = or i32 %1755, 2
  %1763 = select i1 %1761, i32 %1755, i32 %1762
  %1764 = sdiv <2 x i32> %1749, <i32 4, i32 4>
  %1765 = and <2 x i32> %1764, <i32 1, i32 1>
  %1766 = icmp eq <2 x i32> %1765, zeroinitializer
  %1767 = extractelement <2 x i1> %1766, i64 0
  %1768 = extractelement <2 x i1> %1766, i64 1
  %1769 = select i1 %1768, i1 true, i1 %1767
  %1770 = add nsw i32 %1763, 4
  %1771 = select i1 %1769, i32 %1763, i32 %1770
  %1772 = sdiv <2 x i32> %1749, <i32 8, i32 8>
  %1773 = and <2 x i32> %1772, <i32 1, i32 1>
  %1774 = icmp eq <2 x i32> %1773, zeroinitializer
  %1775 = extractelement <2 x i1> %1774, i64 0
  %1776 = extractelement <2 x i1> %1774, i64 1
  %1777 = select i1 %1776, i1 true, i1 %1775
  %1778 = add nsw i32 %1771, 8
  %1779 = select i1 %1777, i32 %1771, i32 %1778
  %1780 = sdiv <2 x i32> %1749, <i32 16, i32 16>
  %1781 = and <2 x i32> %1780, <i32 1, i32 1>
  %1782 = icmp eq <2 x i32> %1781, zeroinitializer
  %1783 = extractelement <2 x i1> %1782, i64 0
  %1784 = extractelement <2 x i1> %1782, i64 1
  %1785 = select i1 %1784, i1 true, i1 %1783
  %1786 = add nsw i32 %1779, 16
  %1787 = select i1 %1785, i32 %1779, i32 %1786
  %1788 = sdiv <2 x i32> %1749, <i32 32, i32 32>
  %1789 = and <2 x i32> %1788, <i32 1, i32 1>
  %1790 = icmp eq <2 x i32> %1789, zeroinitializer
  %1791 = extractelement <2 x i1> %1790, i64 0
  %1792 = extractelement <2 x i1> %1790, i64 1
  %1793 = select i1 %1792, i1 true, i1 %1791
  %1794 = add nsw i32 %1787, 32
  %1795 = select i1 %1793, i32 %1787, i32 %1794
  %1796 = sdiv <2 x i32> %1749, <i32 64, i32 64>
  %1797 = and <2 x i32> %1796, <i32 1, i32 1>
  %1798 = icmp eq <2 x i32> %1797, zeroinitializer
  %1799 = extractelement <2 x i1> %1798, i64 0
  %1800 = extractelement <2 x i1> %1798, i64 1
  %1801 = select i1 %1800, i1 true, i1 %1799
  %1802 = add nsw i32 %1795, 64
  %1803 = select i1 %1801, i32 %1795, i32 %1802
  %1804 = sdiv <2 x i32> %1749, <i32 128, i32 128>
  %1805 = and <2 x i32> %1804, <i32 1, i32 1>
  %1806 = icmp eq <2 x i32> %1805, zeroinitializer
  %1807 = extractelement <2 x i1> %1806, i64 0
  %1808 = extractelement <2 x i1> %1806, i64 1
  %1809 = select i1 %1808, i1 true, i1 %1807
  %1810 = add nsw i32 %1803, 128
  %1811 = select i1 %1809, i32 %1803, i32 %1810
  %1812 = sdiv <2 x i32> %1749, <i32 256, i32 256>
  %1813 = and <2 x i32> %1812, <i32 1, i32 1>
  %1814 = icmp eq <2 x i32> %1813, zeroinitializer
  %1815 = extractelement <2 x i1> %1814, i64 0
  %1816 = extractelement <2 x i1> %1814, i64 1
  %1817 = select i1 %1816, i1 true, i1 %1815
  %1818 = add nsw i32 %1811, 256
  %1819 = select i1 %1817, i32 %1811, i32 %1818
  %1820 = sdiv <2 x i32> %1749, <i32 512, i32 512>
  %1821 = and <2 x i32> %1820, <i32 1, i32 1>
  %1822 = icmp eq <2 x i32> %1821, zeroinitializer
  %1823 = extractelement <2 x i1> %1822, i64 0
  %1824 = extractelement <2 x i1> %1822, i64 1
  %1825 = select i1 %1824, i1 true, i1 %1823
  %1826 = add nsw i32 %1819, 512
  %1827 = select i1 %1825, i32 %1819, i32 %1826
  %1828 = sdiv <2 x i32> %1749, <i32 1024, i32 1024>
  %1829 = and <2 x i32> %1828, <i32 1, i32 1>
  %1830 = icmp eq <2 x i32> %1829, zeroinitializer
  %1831 = extractelement <2 x i1> %1830, i64 0
  %1832 = extractelement <2 x i1> %1830, i64 1
  %1833 = select i1 %1832, i1 true, i1 %1831
  %1834 = add nsw i32 %1827, 1024
  %1835 = select i1 %1833, i32 %1827, i32 %1834
  %1836 = sdiv <2 x i32> %1749, <i32 2048, i32 2048>
  %1837 = and <2 x i32> %1836, <i32 1, i32 1>
  %1838 = icmp eq <2 x i32> %1837, zeroinitializer
  %1839 = extractelement <2 x i1> %1838, i64 0
  %1840 = extractelement <2 x i1> %1838, i64 1
  %1841 = select i1 %1840, i1 true, i1 %1839
  %1842 = add nsw i32 %1835, 2048
  %1843 = select i1 %1841, i32 %1835, i32 %1842
  %1844 = sdiv <2 x i32> %1749, <i32 4096, i32 4096>
  %1845 = and <2 x i32> %1844, <i32 1, i32 1>
  %1846 = icmp eq <2 x i32> %1845, zeroinitializer
  %1847 = extractelement <2 x i1> %1846, i64 0
  %1848 = extractelement <2 x i1> %1846, i64 1
  %1849 = select i1 %1848, i1 true, i1 %1847
  %1850 = add nsw i32 %1843, 4096
  %1851 = select i1 %1849, i32 %1843, i32 %1850
  %1852 = sdiv <2 x i32> %1749, <i32 8192, i32 8192>
  %1853 = and <2 x i32> %1852, <i32 1, i32 1>
  %1854 = icmp eq <2 x i32> %1853, zeroinitializer
  %1855 = extractelement <2 x i1> %1854, i64 0
  %1856 = extractelement <2 x i1> %1854, i64 1
  %1857 = select i1 %1856, i1 true, i1 %1855
  %1858 = add nsw i32 %1851, 8192
  %1859 = select i1 %1857, i32 %1851, i32 %1858
  %1860 = sdiv <2 x i32> %1749, <i32 16384, i32 16384>
  %1861 = and <2 x i32> %1860, <i32 1, i32 1>
  %1862 = icmp eq <2 x i32> %1861, zeroinitializer
  %1863 = extractelement <2 x i1> %1862, i64 0
  %1864 = extractelement <2 x i1> %1862, i64 1
  %1865 = select i1 %1864, i1 true, i1 %1863
  %1866 = add nsw i32 %1859, 16384
  %1867 = select i1 %1865, i32 %1859, i32 %1866
  %1868 = sdiv <2 x i32> %1749, <i32 32768, i32 32768>
  %1869 = and <2 x i32> %1868, <i32 1, i32 1>
  %1870 = icmp eq <2 x i32> %1869, zeroinitializer
  %1871 = extractelement <2 x i1> %1870, i64 0
  %1872 = extractelement <2 x i1> %1870, i64 1
  %1873 = select i1 %1872, i1 true, i1 %1871
  %1874 = add nsw i32 %1867, 32768
  %1875 = select i1 %1873, i32 %1867, i32 %1874
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1877, label %1703, !llvm.loop !46

1877:                                             ; preds = %1747, %1701
  %1878 = phi i32 [ 0, %1701 ], [ %1722, %1747 ]
  %1879 = icmp sgt i32 %1521, 32767
  br i1 %1879, label %1880, label %1883

1880:                                             ; preds = %1877
  %1881 = lshr i32 %1521, 1
  %1882 = add nuw nsw i32 %1881, 32768
  br label %1885

1883:                                             ; preds = %1877
  %1884 = sdiv i32 %1521, 2
  br label %1885

1885:                                             ; preds = %1883, %1880
  %1886 = phi i32 [ %1882, %1880 ], [ %1884, %1883 ]
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1888, label %1519, !llvm.loop !47

1888:                                             ; preds = %1885, %1145, %1516
  %1889 = phi i32 [ %1517, %1516 ], [ 0, %1145 ], [ %1517, %1885 ]
  %1890 = phi i32 [ 0, %1516 ], [ 0, %1145 ], [ %1702, %1885 ]
  %1891 = icmp sgt i32 %1141, 32767
  br i1 %1891, label %1892, label %1895

1892:                                             ; preds = %1888
  %1893 = lshr i32 %1141, 1
  %1894 = add nuw nsw i32 %1893, 32768
  br label %1897

1895:                                             ; preds = %1888
  %1896 = sdiv i32 %1141, 2
  br label %1897

1897:                                             ; preds = %1895, %1892
  %1898 = phi i32 [ %1894, %1892 ], [ %1896, %1895 ]
  %1899 = icmp sgt i32 %1898, 0
  br i1 %1899, label %1139, label %1900, !llvm.loop !48

1900:                                             ; preds = %1897, %1134
  %1901 = phi i32 [ 1, %1134 ], [ %1889, %1897 ]
  %1902 = getelementptr inbounds [16 x i32], [16 x i32]* @_ZL11SHIFT_TABLE, i64 0, i64 %1135
  %1903 = load i32, i32* %1902, align 4, !tbaa !5
  %1904 = icmp eq i32 %1903, %1901
  br i1 %1904, label %1131, label %1905

1905:                                             ; preds = %1131, %1900
  %1906 = phi i32 [ 1, %1900 ], [ 0, %1131 ]
  ret i32 %1906
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z9long_funcv(), !range !49
  ret i32 %1
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = !{i32 0, i32 2}
