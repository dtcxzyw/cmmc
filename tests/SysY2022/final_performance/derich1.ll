; ModuleID = 'tests//SysY2022/final_performance/derich1.sy'
source_filename = "tests//SysY2022/final_performance/derich1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@w = dso_local local_unnamed_addr global i32 512, align 4
@h = dso_local local_unnamed_addr global i32 270, align 4
@imgIn = dso_local global [512 x [270 x float]] zeroinitializer, align 16
@imgOut = dso_local global [512 x [270 x float]] zeroinitializer, align 16
@my_y1 = dso_local global [512 x [270 x float]] zeroinitializer, align 16
@my_y2 = dso_local global [512 x [270 x float]] zeroinitializer, align 16
@alpha = dso_local local_unnamed_addr global float 2.500000e-01, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z6newExpf(float noundef %0) local_unnamed_addr #0 {
  %2 = fmul float %0, 3.906250e-03
  %3 = fadd float %2, 1.000000e+00
  %4 = fmul float %3, %3
  %5 = fmul float %4, %4
  %6 = fmul float %5, %5
  %7 = fmul float %6, %6
  %8 = fmul float %7, %7
  %9 = fmul float %8, %8
  %10 = fmul float %9, %9
  %11 = fmul float %10, %10
  ret float %11
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z6newPowfi(float noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %6, label %10

4:                                                ; preds = %10, %12, %6
  %5 = phi float [ %9, %6 ], [ %15, %12 ], [ 1.000000e+00, %10 ]
  ret float %5

6:                                                ; preds = %2
  %7 = sub nsw i32 0, %1
  %8 = tail call noundef float @_Z6newPowfi(float noundef %0, i32 noundef %7)
  %9 = fdiv float 1.000000e+00, %8
  br label %4

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %4, label %12

12:                                               ; preds = %10
  %13 = add nsw i32 %1, -1
  %14 = tail call noundef float @_Z6newPowfi(float noundef %0, i32 noundef %13)
  %15 = fmul float %14, %0
  br label %4
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z14kernel_dericheiifPA270_fS0_S0_S0_(i32 noundef %0, i32 noundef %1, float noundef %2, [270 x float]* nocapture noundef readonly %3, [270 x float]* nocapture noundef %4, [270 x float]* nocapture noundef %5, [270 x float]* nocapture noundef %6) local_unnamed_addr #2 {
  %8 = fneg float %2
  %9 = fmul float %2, 3.906250e-03
  %10 = fsub float 1.000000e+00, %9
  %11 = fmul float %10, %10
  %12 = fmul float %11, %11
  %13 = fmul float %12, %12
  %14 = fmul float %13, %13
  %15 = fmul float %14, %14
  %16 = fmul float %15, %15
  %17 = fmul float %16, %16
  %18 = fmul float %17, %17
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, %20
  %22 = fpext float %2 to double
  %23 = fmul double %22, 2.000000e+00
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %19, double 1.000000e+00)
  %25 = fptrunc double %23 to float
  %26 = fmul float %25, 3.906250e-03
  %27 = fadd float %26, 1.000000e+00
  %28 = fmul float %27, %27
  %29 = fmul float %28, %28
  %30 = fmul float %29, %29
  %31 = fmul float %30, %30
  %32 = fmul float %31, %31
  %33 = fmul float %32, %32
  %34 = fmul float %33, %33
  %35 = fmul float %34, %34
  %36 = fpext float %35 to double
  %37 = fsub double %24, %36
  %38 = fdiv double %21, %37
  %39 = fptrunc double %38 to float
  %40 = fmul float %18, %39
  %41 = fpext float %40 to double
  %42 = fadd double %22, -1.000000e+00
  %43 = fmul double %42, %41
  %44 = fptrunc double %43 to float
  %45 = fadd double %22, 1.000000e+00
  %46 = fmul double %45, %41
  %47 = fptrunc double %46 to float
  %48 = fneg float %39
  %49 = fmul float %2, 2.000000e+00
  %50 = fmul float %49, 3.906250e-03
  %51 = fsub float 1.000000e+00, %50
  %52 = fmul float %51, %51
  %53 = fmul float %52, %52
  %54 = fmul float %53, %53
  %55 = fmul float %54, %54
  %56 = fmul float %55, %55
  %57 = fmul float %56, %56
  %58 = fmul float %57, %57
  %59 = fmul float %58, %58
  %60 = fmul float %59, %48
  %61 = fptosi float %8 to i32
  %62 = tail call noundef float @_Z6newPowfi(float noundef 2.000000e+00, i32 noundef %61)
  %63 = fneg float %59
  %64 = icmp sgt i32 %0, 0
  br i1 %64, label %65, label %253

65:                                               ; preds = %7
  %66 = icmp sgt i32 %1, 0
  br i1 %66, label %67, label %442

67:                                               ; preds = %65
  %68 = zext i32 %0 to i64
  %69 = zext i32 %1 to i64
  br label %70

70:                                               ; preds = %67, %87
  %71 = phi i64 [ 0, %67 ], [ %88, %87 ]
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi i64 [ 0, %70 ], [ %85, %72 ]
  %74 = phi float [ 0.000000e+00, %70 ], [ %84, %72 ]
  %75 = phi float [ 0.000000e+00, %70 ], [ %82, %72 ]
  %76 = phi float [ 0.000000e+00, %70 ], [ %75, %72 ]
  %77 = getelementptr inbounds [270 x float], [270 x float]* %3, i64 %71, i64 %73
  %78 = load float, float* %77, align 4, !tbaa !5
  %79 = fmul float %74, %44
  %80 = tail call float @llvm.fmuladd.f32(float %39, float %78, float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %62, float %75, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %63, float %76, float %81)
  %83 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %71, i64 %73
  store float %82, float* %83, align 4, !tbaa !5
  %84 = load float, float* %77, align 4, !tbaa !5
  %85 = add nuw nsw i64 %73, 1
  %86 = icmp eq i64 %85, %69
  br i1 %86, label %87, label %72, !llvm.loop !9

87:                                               ; preds = %72
  %88 = add nuw nsw i64 %71, 1
  %89 = icmp eq i64 %88, %68
  br i1 %89, label %90, label %70, !llvm.loop !11

90:                                               ; preds = %87
  br i1 %64, label %91, label %253

91:                                               ; preds = %90
  %92 = icmp sgt i32 %1, 0
  br i1 %92, label %93, label %442

93:                                               ; preds = %91
  %94 = zext i32 %1 to i64
  %95 = zext i32 %0 to i64
  br label %96

96:                                               ; preds = %93, %114
  %97 = phi i64 [ 0, %93 ], [ %115, %114 ]
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ %94, %96 ], [ %104, %98 ]
  %100 = phi float [ 0.000000e+00, %96 ], [ %112, %98 ]
  %101 = phi float [ 0.000000e+00, %96 ], [ %100, %98 ]
  %102 = phi float [ 0.000000e+00, %96 ], [ %108, %98 ]
  %103 = phi float [ 0.000000e+00, %96 ], [ %102, %98 ]
  %104 = add nsw i64 %99, -1
  %105 = fmul float %60, %101
  %106 = tail call float @llvm.fmuladd.f32(float %47, float %100, float %105)
  %107 = tail call float @llvm.fmuladd.f32(float %62, float %102, float %106)
  %108 = tail call float @llvm.fmuladd.f32(float %63, float %103, float %107)
  %109 = and i64 %104, 4294967295
  %110 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %97, i64 %109
  store float %108, float* %110, align 4, !tbaa !5
  %111 = getelementptr inbounds [270 x float], [270 x float]* %3, i64 %97, i64 %109
  %112 = load float, float* %111, align 4, !tbaa !5
  %113 = icmp sgt i64 %99, 1
  br i1 %113, label %98, label %114, !llvm.loop !12

114:                                              ; preds = %98
  %115 = add nuw nsw i64 %97, 1
  %116 = icmp eq i64 %115, %95
  br i1 %116, label %117, label %96, !llvm.loop !13

117:                                              ; preds = %114
  br i1 %64, label %118, label %253

118:                                              ; preds = %117
  %119 = icmp sgt i32 %1, 0
  br i1 %119, label %120, label %442

120:                                              ; preds = %118
  %121 = zext i32 %0 to i64
  %122 = zext i32 %1 to i64
  %123 = and i64 %69, 4294967288
  %124 = add nsw i64 %123, -8
  %125 = lshr exact i64 %124, 3
  %126 = add nuw nsw i64 %125, 1
  %127 = icmp ult i32 %1, 8
  %128 = and i64 %69, 4294967288
  %129 = and i64 %126, 1
  %130 = icmp eq i64 %124, 0
  %131 = and i64 %126, 4611686018427387902
  %132 = icmp eq i64 %129, 0
  %133 = icmp eq i64 %128, %69
  %134 = and i64 %69, 1
  %135 = icmp eq i64 %134, 0
  %136 = sub nsw i64 0, %69
  br label %137

137:                                              ; preds = %120, %250
  %138 = phi i64 [ 0, %120 ], [ %251, %250 ]
  %139 = getelementptr [270 x float], [270 x float]* %4, i64 %138, i64 0
  %140 = getelementptr [270 x float], [270 x float]* %4, i64 %138, i64 %69
  br i1 %127, label %219, label %141

141:                                              ; preds = %137
  %142 = getelementptr [270 x float], [270 x float]* %6, i64 %138, i64 %69
  %143 = getelementptr [270 x float], [270 x float]* %6, i64 %138, i64 0
  %144 = getelementptr [270 x float], [270 x float]* %5, i64 %138, i64 %69
  %145 = getelementptr [270 x float], [270 x float]* %5, i64 %138, i64 0
  %146 = icmp ult float* %139, %144
  %147 = icmp ult float* %145, %140
  %148 = and i1 %146, %147
  %149 = icmp ult float* %139, %142
  %150 = icmp ult float* %143, %140
  %151 = and i1 %149, %150
  %152 = or i1 %148, %151
  br i1 %152, label %219, label %153

153:                                              ; preds = %141
  br i1 %130, label %197, label %154

154:                                              ; preds = %153, %154
  %155 = phi i64 [ %194, %154 ], [ 0, %153 ]
  %156 = phi i64 [ %195, %154 ], [ 0, %153 ]
  %157 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %138, i64 %155
  %158 = bitcast float* %157 to <4 x float>*
  %159 = load <4 x float>, <4 x float>* %158, align 4, !tbaa !5, !alias.scope !14
  %160 = getelementptr inbounds float, float* %157, i64 4
  %161 = bitcast float* %160 to <4 x float>*
  %162 = load <4 x float>, <4 x float>* %161, align 4, !tbaa !5, !alias.scope !14
  %163 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %138, i64 %155
  %164 = bitcast float* %163 to <4 x float>*
  %165 = load <4 x float>, <4 x float>* %164, align 4, !tbaa !5, !alias.scope !17
  %166 = getelementptr inbounds float, float* %163, i64 4
  %167 = bitcast float* %166 to <4 x float>*
  %168 = load <4 x float>, <4 x float>* %167, align 4, !tbaa !5, !alias.scope !17
  %169 = fadd <4 x float> %159, %165
  %170 = fadd <4 x float> %162, %168
  %171 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %138, i64 %155
  %172 = bitcast float* %171 to <4 x float>*
  store <4 x float> %169, <4 x float>* %172, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  %173 = getelementptr inbounds float, float* %171, i64 4
  %174 = bitcast float* %173 to <4 x float>*
  store <4 x float> %170, <4 x float>* %174, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  %175 = or i64 %155, 8
  %176 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %138, i64 %175
  %177 = bitcast float* %176 to <4 x float>*
  %178 = load <4 x float>, <4 x float>* %177, align 4, !tbaa !5, !alias.scope !14
  %179 = getelementptr inbounds float, float* %176, i64 4
  %180 = bitcast float* %179 to <4 x float>*
  %181 = load <4 x float>, <4 x float>* %180, align 4, !tbaa !5, !alias.scope !14
  %182 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %138, i64 %175
  %183 = bitcast float* %182 to <4 x float>*
  %184 = load <4 x float>, <4 x float>* %183, align 4, !tbaa !5, !alias.scope !17
  %185 = getelementptr inbounds float, float* %182, i64 4
  %186 = bitcast float* %185 to <4 x float>*
  %187 = load <4 x float>, <4 x float>* %186, align 4, !tbaa !5, !alias.scope !17
  %188 = fadd <4 x float> %178, %184
  %189 = fadd <4 x float> %181, %187
  %190 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %138, i64 %175
  %191 = bitcast float* %190 to <4 x float>*
  store <4 x float> %188, <4 x float>* %191, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  %192 = getelementptr inbounds float, float* %190, i64 4
  %193 = bitcast float* %192 to <4 x float>*
  store <4 x float> %189, <4 x float>* %193, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  %194 = add nuw i64 %155, 16
  %195 = add i64 %156, 2
  %196 = icmp eq i64 %195, %131
  br i1 %196, label %197, label %154, !llvm.loop !22

197:                                              ; preds = %154, %153
  %198 = phi i64 [ 0, %153 ], [ %194, %154 ]
  br i1 %132, label %218, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %138, i64 %198
  %201 = bitcast float* %200 to <4 x float>*
  %202 = load <4 x float>, <4 x float>* %201, align 4, !tbaa !5, !alias.scope !14
  %203 = getelementptr inbounds float, float* %200, i64 4
  %204 = bitcast float* %203 to <4 x float>*
  %205 = load <4 x float>, <4 x float>* %204, align 4, !tbaa !5, !alias.scope !14
  %206 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %138, i64 %198
  %207 = bitcast float* %206 to <4 x float>*
  %208 = load <4 x float>, <4 x float>* %207, align 4, !tbaa !5, !alias.scope !17
  %209 = getelementptr inbounds float, float* %206, i64 4
  %210 = bitcast float* %209 to <4 x float>*
  %211 = load <4 x float>, <4 x float>* %210, align 4, !tbaa !5, !alias.scope !17
  %212 = fadd <4 x float> %202, %208
  %213 = fadd <4 x float> %205, %211
  %214 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %138, i64 %198
  %215 = bitcast float* %214 to <4 x float>*
  store <4 x float> %212, <4 x float>* %215, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  %216 = getelementptr inbounds float, float* %214, i64 4
  %217 = bitcast float* %216 to <4 x float>*
  store <4 x float> %213, <4 x float>* %217, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %218

218:                                              ; preds = %197, %199
  br i1 %133, label %250, label %219

219:                                              ; preds = %141, %137, %218
  %220 = phi i64 [ 0, %141 ], [ 0, %137 ], [ %128, %218 ]
  %221 = xor i64 %220, -1
  br i1 %135, label %230, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %138, i64 %220
  %224 = load float, float* %223, align 4, !tbaa !5
  %225 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %138, i64 %220
  %226 = load float, float* %225, align 4, !tbaa !5
  %227 = fadd float %224, %226
  %228 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %138, i64 %220
  store float %227, float* %228, align 4, !tbaa !5
  %229 = or i64 %220, 1
  br label %230

230:                                              ; preds = %222, %219
  %231 = phi i64 [ %220, %219 ], [ %229, %222 ]
  %232 = icmp eq i64 %221, %136
  br i1 %232, label %250, label %233

233:                                              ; preds = %230, %233
  %234 = phi i64 [ %248, %233 ], [ %231, %230 ]
  %235 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %138, i64 %234
  %236 = load float, float* %235, align 4, !tbaa !5
  %237 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %138, i64 %234
  %238 = load float, float* %237, align 4, !tbaa !5
  %239 = fadd float %236, %238
  %240 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %138, i64 %234
  store float %239, float* %240, align 4, !tbaa !5
  %241 = add nuw nsw i64 %234, 1
  %242 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %138, i64 %241
  %243 = load float, float* %242, align 4, !tbaa !5
  %244 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %138, i64 %241
  %245 = load float, float* %244, align 4, !tbaa !5
  %246 = fadd float %243, %245
  %247 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %138, i64 %241
  store float %246, float* %247, align 4, !tbaa !5
  %248 = add nuw nsw i64 %234, 2
  %249 = icmp eq i64 %248, %122
  br i1 %249, label %250, label %233, !llvm.loop !24

250:                                              ; preds = %230, %233, %218
  %251 = add nuw nsw i64 %138, 1
  %252 = icmp eq i64 %251, %121
  br i1 %252, label %253, label %137, !llvm.loop !25

253:                                              ; preds = %250, %7, %90, %117
  %254 = icmp sgt i32 %1, 0
  br i1 %254, label %255, label %305

255:                                              ; preds = %253
  br i1 %64, label %256, label %442

256:                                              ; preds = %255
  %257 = zext i32 %1 to i64
  %258 = zext i32 %0 to i64
  br label %259

259:                                              ; preds = %256, %276
  %260 = phi i64 [ 0, %256 ], [ %277, %276 ]
  br label %261

261:                                              ; preds = %259, %261
  %262 = phi i64 [ 0, %259 ], [ %274, %261 ]
  %263 = phi float [ 0.000000e+00, %259 ], [ %273, %261 ]
  %264 = phi float [ 0.000000e+00, %259 ], [ %271, %261 ]
  %265 = phi float [ 0.000000e+00, %259 ], [ %264, %261 ]
  %266 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %262, i64 %260
  %267 = load float, float* %266, align 4, !tbaa !5
  %268 = fmul float %263, %44
  %269 = tail call float @llvm.fmuladd.f32(float %39, float %267, float %268)
  %270 = tail call float @llvm.fmuladd.f32(float %62, float %264, float %269)
  %271 = tail call float @llvm.fmuladd.f32(float %63, float %265, float %270)
  %272 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %262, i64 %260
  store float %271, float* %272, align 4, !tbaa !5
  %273 = load float, float* %266, align 4, !tbaa !5
  %274 = add nuw nsw i64 %262, 1
  %275 = icmp eq i64 %274, %258
  br i1 %275, label %276, label %261, !llvm.loop !26

276:                                              ; preds = %261
  %277 = add nuw nsw i64 %260, 1
  %278 = icmp eq i64 %277, %257
  br i1 %278, label %279, label %259, !llvm.loop !27

279:                                              ; preds = %276
  br i1 %254, label %280, label %305

280:                                              ; preds = %279
  br i1 %64, label %281, label %442

281:                                              ; preds = %280
  %282 = zext i32 %0 to i64
  %283 = zext i32 %1 to i64
  br label %284

284:                                              ; preds = %281, %302
  %285 = phi i64 [ 0, %281 ], [ %303, %302 ]
  br label %286

286:                                              ; preds = %284, %286
  %287 = phi i64 [ %282, %284 ], [ %292, %286 ]
  %288 = phi float [ 0.000000e+00, %284 ], [ %300, %286 ]
  %289 = phi float [ 0.000000e+00, %284 ], [ %288, %286 ]
  %290 = phi float [ 0.000000e+00, %284 ], [ %296, %286 ]
  %291 = phi float [ 0.000000e+00, %284 ], [ %290, %286 ]
  %292 = add nsw i64 %287, -1
  %293 = fmul float %60, %289
  %294 = tail call float @llvm.fmuladd.f32(float %47, float %288, float %293)
  %295 = tail call float @llvm.fmuladd.f32(float %62, float %290, float %294)
  %296 = tail call float @llvm.fmuladd.f32(float %63, float %291, float %295)
  %297 = and i64 %292, 4294967295
  %298 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %297, i64 %285
  store float %296, float* %298, align 4, !tbaa !5
  %299 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %297, i64 %285
  %300 = load float, float* %299, align 4, !tbaa !5
  %301 = icmp sgt i64 %287, 1
  br i1 %301, label %286, label %302, !llvm.loop !28

302:                                              ; preds = %286
  %303 = add nuw nsw i64 %285, 1
  %304 = icmp eq i64 %303, %283
  br i1 %304, label %305, label %284, !llvm.loop !29

305:                                              ; preds = %302, %253, %279
  %306 = phi i1 [ true, %279 ], [ true, %253 ], [ false, %302 ]
  %307 = xor i1 %64, true
  %308 = or i1 %306, %307
  br i1 %308, label %442, label %309

309:                                              ; preds = %305
  %310 = zext i32 %0 to i64
  %311 = zext i32 %1 to i64
  %312 = and i64 %311, 4294967288
  %313 = add nsw i64 %312, -8
  %314 = lshr exact i64 %313, 3
  %315 = add nuw nsw i64 %314, 1
  %316 = icmp ult i32 %1, 8
  %317 = and i64 %311, 4294967288
  %318 = and i64 %315, 1
  %319 = icmp eq i64 %313, 0
  %320 = and i64 %315, 4611686018427387902
  %321 = icmp eq i64 %318, 0
  %322 = icmp eq i64 %317, %311
  %323 = and i64 %311, 1
  %324 = icmp eq i64 %323, 0
  %325 = sub nsw i64 0, %311
  br label %326

326:                                              ; preds = %309, %439
  %327 = phi i64 [ 0, %309 ], [ %440, %439 ]
  %328 = getelementptr [270 x float], [270 x float]* %4, i64 %327, i64 0
  %329 = getelementptr [270 x float], [270 x float]* %4, i64 %327, i64 %311
  br i1 %316, label %408, label %330

330:                                              ; preds = %326
  %331 = getelementptr [270 x float], [270 x float]* %6, i64 %327, i64 %311
  %332 = getelementptr [270 x float], [270 x float]* %6, i64 %327, i64 0
  %333 = getelementptr [270 x float], [270 x float]* %5, i64 %327, i64 %311
  %334 = getelementptr [270 x float], [270 x float]* %5, i64 %327, i64 0
  %335 = icmp ult float* %328, %333
  %336 = icmp ult float* %334, %329
  %337 = and i1 %335, %336
  %338 = icmp ult float* %328, %331
  %339 = icmp ult float* %332, %329
  %340 = and i1 %338, %339
  %341 = or i1 %337, %340
  br i1 %341, label %408, label %342

342:                                              ; preds = %330
  br i1 %319, label %386, label %343

343:                                              ; preds = %342, %343
  %344 = phi i64 [ %383, %343 ], [ 0, %342 ]
  %345 = phi i64 [ %384, %343 ], [ 0, %342 ]
  %346 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %327, i64 %344
  %347 = bitcast float* %346 to <4 x float>*
  %348 = load <4 x float>, <4 x float>* %347, align 4, !tbaa !5, !alias.scope !30
  %349 = getelementptr inbounds float, float* %346, i64 4
  %350 = bitcast float* %349 to <4 x float>*
  %351 = load <4 x float>, <4 x float>* %350, align 4, !tbaa !5, !alias.scope !30
  %352 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %327, i64 %344
  %353 = bitcast float* %352 to <4 x float>*
  %354 = load <4 x float>, <4 x float>* %353, align 4, !tbaa !5, !alias.scope !33
  %355 = getelementptr inbounds float, float* %352, i64 4
  %356 = bitcast float* %355 to <4 x float>*
  %357 = load <4 x float>, <4 x float>* %356, align 4, !tbaa !5, !alias.scope !33
  %358 = fadd <4 x float> %348, %354
  %359 = fadd <4 x float> %351, %357
  %360 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %327, i64 %344
  %361 = bitcast float* %360 to <4 x float>*
  store <4 x float> %358, <4 x float>* %361, align 4, !tbaa !5, !alias.scope !35, !noalias !37
  %362 = getelementptr inbounds float, float* %360, i64 4
  %363 = bitcast float* %362 to <4 x float>*
  store <4 x float> %359, <4 x float>* %363, align 4, !tbaa !5, !alias.scope !35, !noalias !37
  %364 = or i64 %344, 8
  %365 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %327, i64 %364
  %366 = bitcast float* %365 to <4 x float>*
  %367 = load <4 x float>, <4 x float>* %366, align 4, !tbaa !5, !alias.scope !30
  %368 = getelementptr inbounds float, float* %365, i64 4
  %369 = bitcast float* %368 to <4 x float>*
  %370 = load <4 x float>, <4 x float>* %369, align 4, !tbaa !5, !alias.scope !30
  %371 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %327, i64 %364
  %372 = bitcast float* %371 to <4 x float>*
  %373 = load <4 x float>, <4 x float>* %372, align 4, !tbaa !5, !alias.scope !33
  %374 = getelementptr inbounds float, float* %371, i64 4
  %375 = bitcast float* %374 to <4 x float>*
  %376 = load <4 x float>, <4 x float>* %375, align 4, !tbaa !5, !alias.scope !33
  %377 = fadd <4 x float> %367, %373
  %378 = fadd <4 x float> %370, %376
  %379 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %327, i64 %364
  %380 = bitcast float* %379 to <4 x float>*
  store <4 x float> %377, <4 x float>* %380, align 4, !tbaa !5, !alias.scope !35, !noalias !37
  %381 = getelementptr inbounds float, float* %379, i64 4
  %382 = bitcast float* %381 to <4 x float>*
  store <4 x float> %378, <4 x float>* %382, align 4, !tbaa !5, !alias.scope !35, !noalias !37
  %383 = add nuw i64 %344, 16
  %384 = add i64 %345, 2
  %385 = icmp eq i64 %384, %320
  br i1 %385, label %386, label %343, !llvm.loop !38

386:                                              ; preds = %343, %342
  %387 = phi i64 [ 0, %342 ], [ %383, %343 ]
  br i1 %321, label %407, label %388

388:                                              ; preds = %386
  %389 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %327, i64 %387
  %390 = bitcast float* %389 to <4 x float>*
  %391 = load <4 x float>, <4 x float>* %390, align 4, !tbaa !5, !alias.scope !30
  %392 = getelementptr inbounds float, float* %389, i64 4
  %393 = bitcast float* %392 to <4 x float>*
  %394 = load <4 x float>, <4 x float>* %393, align 4, !tbaa !5, !alias.scope !30
  %395 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %327, i64 %387
  %396 = bitcast float* %395 to <4 x float>*
  %397 = load <4 x float>, <4 x float>* %396, align 4, !tbaa !5, !alias.scope !33
  %398 = getelementptr inbounds float, float* %395, i64 4
  %399 = bitcast float* %398 to <4 x float>*
  %400 = load <4 x float>, <4 x float>* %399, align 4, !tbaa !5, !alias.scope !33
  %401 = fadd <4 x float> %391, %397
  %402 = fadd <4 x float> %394, %400
  %403 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %327, i64 %387
  %404 = bitcast float* %403 to <4 x float>*
  store <4 x float> %401, <4 x float>* %404, align 4, !tbaa !5, !alias.scope !35, !noalias !37
  %405 = getelementptr inbounds float, float* %403, i64 4
  %406 = bitcast float* %405 to <4 x float>*
  store <4 x float> %402, <4 x float>* %406, align 4, !tbaa !5, !alias.scope !35, !noalias !37
  br label %407

407:                                              ; preds = %386, %388
  br i1 %322, label %439, label %408

408:                                              ; preds = %330, %326, %407
  %409 = phi i64 [ 0, %330 ], [ 0, %326 ], [ %317, %407 ]
  %410 = xor i64 %409, -1
  br i1 %324, label %419, label %411

411:                                              ; preds = %408
  %412 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %327, i64 %409
  %413 = load float, float* %412, align 4, !tbaa !5
  %414 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %327, i64 %409
  %415 = load float, float* %414, align 4, !tbaa !5
  %416 = fadd float %413, %415
  %417 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %327, i64 %409
  store float %416, float* %417, align 4, !tbaa !5
  %418 = or i64 %409, 1
  br label %419

419:                                              ; preds = %411, %408
  %420 = phi i64 [ %409, %408 ], [ %418, %411 ]
  %421 = icmp eq i64 %410, %325
  br i1 %421, label %439, label %422

422:                                              ; preds = %419, %422
  %423 = phi i64 [ %437, %422 ], [ %420, %419 ]
  %424 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %327, i64 %423
  %425 = load float, float* %424, align 4, !tbaa !5
  %426 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %327, i64 %423
  %427 = load float, float* %426, align 4, !tbaa !5
  %428 = fadd float %425, %427
  %429 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %327, i64 %423
  store float %428, float* %429, align 4, !tbaa !5
  %430 = add nuw nsw i64 %423, 1
  %431 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %327, i64 %430
  %432 = load float, float* %431, align 4, !tbaa !5
  %433 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %327, i64 %430
  %434 = load float, float* %433, align 4, !tbaa !5
  %435 = fadd float %432, %434
  %436 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %327, i64 %430
  store float %435, float* %436, align 4, !tbaa !5
  %437 = add nuw nsw i64 %423, 2
  %438 = icmp eq i64 %437, %311
  br i1 %438, label %439, label %422, !llvm.loop !39

439:                                              ; preds = %419, %422, %407
  %440 = add nuw nsw i64 %327, 1
  %441 = icmp eq i64 %440, %310
  br i1 %441, label %442, label %326, !llvm.loop !40

442:                                              ; preds = %439, %305, %255, %280, %91, %65, %118
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = tail call noundef i32 @_Z9getfarrayPA270_f([270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @imgIn, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 156)
  %2 = load i32, i32* @w, align 4, !tbaa !41
  %3 = load i32, i32* @h, align 4, !tbaa !41
  %4 = load float, float* @alpha, align 4, !tbaa !5
  tail call void @_Z14kernel_dericheiifPA270_fS0_S0_S0_(i32 noundef %2, i32 noundef %3, float noundef %4, [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @imgIn, i64 0, i64 0), [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @imgOut, i64 0, i64 0), [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @my_y1, i64 0, i64 0), [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @my_y2, i64 0, i64 0))
  tail call void @_Z14_sysy_stoptimei(i32 noundef 158)
  %5 = load i32, i32* @w, align 4, !tbaa !41
  %6 = load i32, i32* @h, align 4, !tbaa !41
  %7 = mul nsw i32 %6, %5
  tail call void @_Z9putfarrayiPA270_f(i32 noundef %7, [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @imgOut, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z9getfarrayPA270_f([270 x float]* noundef) local_unnamed_addr #5

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #5

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #5

declare void @_Z9putfarrayiPA270_f(i32 noundef, [270 x float]* noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = !{!20}
!20 = distinct !{!20, !16}
!21 = !{!15, !18}
!22 = distinct !{!22, !10, !23}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !10, !23}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = !{!31, !34}
!38 = distinct !{!38, !10, !23}
!39 = distinct !{!39, !10, !23}
!40 = distinct !{!40, !10}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !7, i64 0}
