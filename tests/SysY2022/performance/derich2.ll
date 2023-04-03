; ModuleID = 'tests//SysY2022/performance/derich2.sy'
source_filename = "tests//SysY2022/performance/derich2.sy"
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
  br i1 %64, label %65, label %159

65:                                               ; preds = %7
  %66 = icmp sgt i32 %1, 0
  br i1 %66, label %67, label %255

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
  %78 = load float, float* %77, align 4, !tbaa !4
  %79 = fmul float %74, %44
  %80 = tail call float @llvm.fmuladd.f32(float %39, float %78, float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %62, float %75, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %63, float %76, float %81)
  %83 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %71, i64 %73
  store float %82, float* %83, align 4, !tbaa !4
  %84 = load float, float* %77, align 4, !tbaa !4
  %85 = add nuw nsw i64 %73, 1
  %86 = icmp eq i64 %85, %69
  br i1 %86, label %87, label %72, !llvm.loop !8

87:                                               ; preds = %72
  %88 = add nuw nsw i64 %71, 1
  %89 = icmp eq i64 %88, %68
  br i1 %89, label %90, label %70, !llvm.loop !10

90:                                               ; preds = %87
  br i1 %64, label %91, label %159

91:                                               ; preds = %90
  %92 = icmp sgt i32 %1, 0
  br i1 %92, label %93, label %255

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
  store float %108, float* %110, align 4, !tbaa !4
  %111 = getelementptr inbounds [270 x float], [270 x float]* %3, i64 %97, i64 %109
  %112 = load float, float* %111, align 4, !tbaa !4
  %113 = icmp sgt i64 %99, 1
  br i1 %113, label %98, label %114, !llvm.loop !11

114:                                              ; preds = %98
  %115 = add nuw nsw i64 %97, 1
  %116 = icmp eq i64 %115, %95
  br i1 %116, label %117, label %96, !llvm.loop !12

117:                                              ; preds = %114
  br i1 %64, label %118, label %159

118:                                              ; preds = %117
  %119 = icmp sgt i32 %1, 0
  br i1 %119, label %120, label %255

120:                                              ; preds = %118
  %121 = zext i32 %0 to i64
  %122 = and i64 %69, 1
  %123 = icmp eq i32 %1, 1
  %124 = and i64 %69, 4294967294
  %125 = icmp eq i64 %122, 0
  br label %126

126:                                              ; preds = %120, %156
  %127 = phi i64 [ 0, %120 ], [ %157, %156 ]
  br i1 %123, label %147, label %128

128:                                              ; preds = %126, %128
  %129 = phi i64 [ %144, %128 ], [ 0, %126 ]
  %130 = phi i64 [ %145, %128 ], [ 0, %126 ]
  %131 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %127, i64 %129
  %132 = load float, float* %131, align 4, !tbaa !4
  %133 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %127, i64 %129
  %134 = load float, float* %133, align 4, !tbaa !4
  %135 = fadd float %132, %134
  %136 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %127, i64 %129
  store float %135, float* %136, align 4, !tbaa !4
  %137 = or i64 %129, 1
  %138 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %127, i64 %137
  %139 = load float, float* %138, align 4, !tbaa !4
  %140 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %127, i64 %137
  %141 = load float, float* %140, align 4, !tbaa !4
  %142 = fadd float %139, %141
  %143 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %127, i64 %137
  store float %142, float* %143, align 4, !tbaa !4
  %144 = add nuw nsw i64 %129, 2
  %145 = add i64 %130, 2
  %146 = icmp eq i64 %145, %124
  br i1 %146, label %147, label %128, !llvm.loop !13

147:                                              ; preds = %128, %126
  %148 = phi i64 [ 0, %126 ], [ %144, %128 ]
  br i1 %125, label %156, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %127, i64 %148
  %151 = load float, float* %150, align 4, !tbaa !4
  %152 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %127, i64 %148
  %153 = load float, float* %152, align 4, !tbaa !4
  %154 = fadd float %151, %153
  %155 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %127, i64 %148
  store float %154, float* %155, align 4, !tbaa !4
  br label %156

156:                                              ; preds = %147, %149
  %157 = add nuw nsw i64 %127, 1
  %158 = icmp eq i64 %157, %121
  br i1 %158, label %159, label %126, !llvm.loop !14

159:                                              ; preds = %156, %7, %90, %117
  %160 = icmp sgt i32 %1, 0
  br i1 %160, label %161, label %211

161:                                              ; preds = %159
  br i1 %64, label %162, label %255

162:                                              ; preds = %161
  %163 = zext i32 %1 to i64
  %164 = zext i32 %0 to i64
  br label %165

165:                                              ; preds = %162, %182
  %166 = phi i64 [ 0, %162 ], [ %183, %182 ]
  br label %167

167:                                              ; preds = %165, %167
  %168 = phi i64 [ 0, %165 ], [ %180, %167 ]
  %169 = phi float [ 0.000000e+00, %165 ], [ %179, %167 ]
  %170 = phi float [ 0.000000e+00, %165 ], [ %177, %167 ]
  %171 = phi float [ 0.000000e+00, %165 ], [ %170, %167 ]
  %172 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %168, i64 %166
  %173 = load float, float* %172, align 4, !tbaa !4
  %174 = fmul float %169, %44
  %175 = tail call float @llvm.fmuladd.f32(float %39, float %173, float %174)
  %176 = tail call float @llvm.fmuladd.f32(float %62, float %170, float %175)
  %177 = tail call float @llvm.fmuladd.f32(float %63, float %171, float %176)
  %178 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %168, i64 %166
  store float %177, float* %178, align 4, !tbaa !4
  %179 = load float, float* %172, align 4, !tbaa !4
  %180 = add nuw nsw i64 %168, 1
  %181 = icmp eq i64 %180, %164
  br i1 %181, label %182, label %167, !llvm.loop !15

182:                                              ; preds = %167
  %183 = add nuw nsw i64 %166, 1
  %184 = icmp eq i64 %183, %163
  br i1 %184, label %185, label %165, !llvm.loop !16

185:                                              ; preds = %182
  br i1 %160, label %186, label %211

186:                                              ; preds = %185
  br i1 %64, label %187, label %255

187:                                              ; preds = %186
  %188 = zext i32 %0 to i64
  %189 = zext i32 %1 to i64
  br label %190

190:                                              ; preds = %187, %208
  %191 = phi i64 [ 0, %187 ], [ %209, %208 ]
  br label %192

192:                                              ; preds = %190, %192
  %193 = phi i64 [ %188, %190 ], [ %198, %192 ]
  %194 = phi float [ 0.000000e+00, %190 ], [ %206, %192 ]
  %195 = phi float [ 0.000000e+00, %190 ], [ %194, %192 ]
  %196 = phi float [ 0.000000e+00, %190 ], [ %202, %192 ]
  %197 = phi float [ 0.000000e+00, %190 ], [ %196, %192 ]
  %198 = add nsw i64 %193, -1
  %199 = fmul float %60, %195
  %200 = tail call float @llvm.fmuladd.f32(float %47, float %194, float %199)
  %201 = tail call float @llvm.fmuladd.f32(float %62, float %196, float %200)
  %202 = tail call float @llvm.fmuladd.f32(float %63, float %197, float %201)
  %203 = and i64 %198, 4294967295
  %204 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %203, i64 %191
  store float %202, float* %204, align 4, !tbaa !4
  %205 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %203, i64 %191
  %206 = load float, float* %205, align 4, !tbaa !4
  %207 = icmp sgt i64 %193, 1
  br i1 %207, label %192, label %208, !llvm.loop !17

208:                                              ; preds = %192
  %209 = add nuw nsw i64 %191, 1
  %210 = icmp eq i64 %209, %189
  br i1 %210, label %211, label %190, !llvm.loop !18

211:                                              ; preds = %208, %159, %185
  %212 = phi i1 [ true, %185 ], [ true, %159 ], [ false, %208 ]
  %213 = xor i1 %64, true
  %214 = or i1 %212, %213
  br i1 %214, label %255, label %215

215:                                              ; preds = %211
  %216 = zext i32 %0 to i64
  %217 = zext i32 %1 to i64
  %218 = and i64 %217, 1
  %219 = icmp eq i32 %1, 1
  %220 = and i64 %217, 4294967294
  %221 = icmp eq i64 %218, 0
  br label %222

222:                                              ; preds = %215, %252
  %223 = phi i64 [ 0, %215 ], [ %253, %252 ]
  br i1 %219, label %243, label %224

224:                                              ; preds = %222, %224
  %225 = phi i64 [ %240, %224 ], [ 0, %222 ]
  %226 = phi i64 [ %241, %224 ], [ 0, %222 ]
  %227 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %223, i64 %225
  %228 = load float, float* %227, align 4, !tbaa !4
  %229 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %223, i64 %225
  %230 = load float, float* %229, align 4, !tbaa !4
  %231 = fadd float %228, %230
  %232 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %223, i64 %225
  store float %231, float* %232, align 4, !tbaa !4
  %233 = or i64 %225, 1
  %234 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %223, i64 %233
  %235 = load float, float* %234, align 4, !tbaa !4
  %236 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %223, i64 %233
  %237 = load float, float* %236, align 4, !tbaa !4
  %238 = fadd float %235, %237
  %239 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %223, i64 %233
  store float %238, float* %239, align 4, !tbaa !4
  %240 = add nuw nsw i64 %225, 2
  %241 = add i64 %226, 2
  %242 = icmp eq i64 %241, %220
  br i1 %242, label %243, label %224, !llvm.loop !19

243:                                              ; preds = %224, %222
  %244 = phi i64 [ 0, %222 ], [ %240, %224 ]
  br i1 %221, label %252, label %245

245:                                              ; preds = %243
  %246 = getelementptr inbounds [270 x float], [270 x float]* %5, i64 %223, i64 %244
  %247 = load float, float* %246, align 4, !tbaa !4
  %248 = getelementptr inbounds [270 x float], [270 x float]* %6, i64 %223, i64 %244
  %249 = load float, float* %248, align 4, !tbaa !4
  %250 = fadd float %247, %249
  %251 = getelementptr inbounds [270 x float], [270 x float]* %4, i64 %223, i64 %244
  store float %250, float* %251, align 4, !tbaa !4
  br label %252

252:                                              ; preds = %243, %245
  %253 = add nuw nsw i64 %223, 1
  %254 = icmp eq i64 %253, %216
  br i1 %254, label %255, label %222, !llvm.loop !20

255:                                              ; preds = %252, %211, %161, %186, %91, %65, %118
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
  %2 = load i32, i32* @w, align 4, !tbaa !21
  %3 = load i32, i32* @h, align 4, !tbaa !21
  %4 = load float, float* @alpha, align 4, !tbaa !4
  tail call void @_Z14kernel_dericheiifPA270_fS0_S0_S0_(i32 noundef %2, i32 noundef %3, float noundef %4, [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @imgIn, i64 0, i64 0), [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @imgOut, i64 0, i64 0), [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @my_y1, i64 0, i64 0), [270 x float]* noundef getelementptr inbounds ([512 x [270 x float]], [512 x [270 x float]]* @my_y2, i64 0, i64 0))
  tail call void @_Z14_sysy_stoptimei(i32 noundef 158)
  %5 = load i32, i32* @w, align 4, !tbaa !21
  %6 = load i32, i32* @h, align 4, !tbaa !21
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

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !6, i64 0}
