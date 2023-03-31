; ModuleID = 'tests//SysY2022/final_performance/large_loop_array_1.sy'
source_filename = "tests//SysY2022/final_performance/large_loop_array_1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@COUNT = dso_local local_unnamed_addr global i32 500000, align 4

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef float @_Z4loopPfS_i(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = add nsw i64 %6, -1
  %8 = and i64 %6, 3
  %9 = icmp ult i64 %7, 3
  br i1 %9, label %42, label %10

10:                                               ; preds = %5
  %11 = and i64 %6, 4294967292
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %39, %12 ]
  %14 = phi float [ 0.000000e+00, %10 ], [ %38, %12 ]
  %15 = phi i64 [ 0, %10 ], [ %40, %12 ]
  %16 = getelementptr inbounds float, float* %0, i64 %13
  %17 = load float, float* %16, align 4, !tbaa !5
  %18 = getelementptr inbounds float, float* %1, i64 %13
  %19 = load float, float* %18, align 4, !tbaa !5
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %14)
  %21 = or i64 %13, 1
  %22 = getelementptr inbounds float, float* %0, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !5
  %24 = getelementptr inbounds float, float* %1, i64 %21
  %25 = load float, float* %24, align 4, !tbaa !5
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %25, float %20)
  %27 = or i64 %13, 2
  %28 = getelementptr inbounds float, float* %0, i64 %27
  %29 = load float, float* %28, align 4, !tbaa !5
  %30 = getelementptr inbounds float, float* %1, i64 %27
  %31 = load float, float* %30, align 4, !tbaa !5
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %26)
  %33 = or i64 %13, 3
  %34 = getelementptr inbounds float, float* %0, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !5
  %36 = getelementptr inbounds float, float* %1, i64 %33
  %37 = load float, float* %36, align 4, !tbaa !5
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %32)
  %39 = add nuw nsw i64 %13, 4
  %40 = add i64 %15, 4
  %41 = icmp eq i64 %40, %11
  br i1 %41, label %42, label %12, !llvm.loop !9

42:                                               ; preds = %12, %5
  %43 = phi float [ undef, %5 ], [ %38, %12 ]
  %44 = phi i64 [ 0, %5 ], [ %39, %12 ]
  %45 = phi float [ 0.000000e+00, %5 ], [ %38, %12 ]
  %46 = icmp eq i64 %8, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %42, %47
  %48 = phi i64 [ %56, %47 ], [ %44, %42 ]
  %49 = phi float [ %55, %47 ], [ %45, %42 ]
  %50 = phi i64 [ %57, %47 ], [ 0, %42 ]
  %51 = getelementptr inbounds float, float* %0, i64 %48
  %52 = load float, float* %51, align 4, !tbaa !5
  %53 = getelementptr inbounds float, float* %1, i64 %48
  %54 = load float, float* %53, align 4, !tbaa !5
  %55 = tail call float @llvm.fmuladd.f32(float %52, float %54, float %49)
  %56 = add nuw nsw i64 %48, 1
  %57 = add i64 %50, 1
  %58 = icmp eq i64 %57, %8
  br i1 %58, label %59, label %47, !llvm.loop !11

59:                                               ; preds = %42, %47, %3
  %60 = phi float [ 0.000000e+00, %3 ], [ %43, %42 ], [ %55, %47 ]
  ret float %60
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [2048 x float], align 16
  %2 = alloca [2048 x float], align 16
  %3 = tail call noundef i32 @_Z6getintv()
  %4 = bitcast [2048 x float]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %4) #5
  %5 = bitcast [2048 x float]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %5) #5
  tail call void @_Z15_sysy_starttimei(i32 noundef 22)
  %6 = load i32, i32* @COUNT, align 4, !tbaa !13
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %249

8:                                                ; preds = %0
  %9 = icmp sgt i32 %3, 0
  %10 = zext i32 %3 to i64
  %11 = sext i32 %3 to i64
  br i1 %9, label %12, label %157

12:                                               ; preds = %8
  %13 = add nsw i64 %10, -1
  %14 = and i64 %10, 3
  %15 = icmp ult i64 %13, 3
  %16 = and i64 %10, 4294967292
  %17 = icmp eq i64 %14, 0
  br label %18

18:                                               ; preds = %12, %152
  %19 = phi float [ %154, %152 ], [ 0.000000e+00, %12 ]
  %20 = phi i32 [ %95, %152 ], [ 0, %12 ]
  %21 = phi i32 [ %155, %152 ], [ 0, %12 ]
  %22 = phi <2 x float> [ %28, %152 ], [ <float 0.000000e+00, float 1.000000e+00>, %12 ]
  %23 = urem i32 %21, 10
  %24 = icmp eq i32 %23, 0
  %25 = fpext <2 x float> %22 to <2 x double>
  %26 = fadd <2 x double> %25, <double 1.000000e-01, double 2.000000e-01>
  %27 = fptrunc <2 x double> %26 to <2 x float>
  %28 = select i1 %24, <2 x float> %27, <2 x float> <float 0.000000e+00, float 1.000000e+00>
  %29 = icmp slt i32 %20, %3
  br i1 %29, label %30, label %94

30:                                               ; preds = %18
  %31 = sext i32 %20 to i64
  %32 = sub nsw i64 %11, %31
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %90, label %34

34:                                               ; preds = %30
  %35 = and i64 %32, -4
  %36 = add nsw i64 %35, %31
  %37 = insertelement <4 x i32> poison, i32 %20, i64 0
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> zeroinitializer
  %39 = add <4 x i32> %38, <i32 0, i32 1, i32 2, i32 3>
  %40 = shufflevector <2 x float> %28, <2 x float> undef, <4 x i32> zeroinitializer
  %41 = shufflevector <2 x float> %28, <2 x float> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %42 = add nsw i64 %35, -4
  %43 = lshr exact i64 %42, 2
  %44 = add nuw nsw i64 %43, 1
  %45 = and i64 %44, 1
  %46 = icmp eq i64 %42, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %34
  %48 = and i64 %44, 9223372036854775806
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i64 [ 0, %47 ], [ %71, %49 ]
  %51 = phi <4 x i32> [ %39, %47 ], [ %72, %49 ]
  %52 = phi i64 [ 0, %47 ], [ %73, %49 ]
  %53 = add i64 %50, %31
  %54 = sitofp <4 x i32> %51 to <4 x float>
  %55 = fadd <4 x float> %40, %54
  %56 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %53
  %57 = bitcast float* %56 to <4 x float>*
  store <4 x float> %55, <4 x float>* %57, align 4, !tbaa !5
  %58 = fadd <4 x float> %41, %54
  %59 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %53
  %60 = bitcast float* %59 to <4 x float>*
  store <4 x float> %58, <4 x float>* %60, align 4, !tbaa !5
  %61 = or i64 %50, 4
  %62 = add <4 x i32> %51, <i32 4, i32 4, i32 4, i32 4>
  %63 = add i64 %61, %31
  %64 = sitofp <4 x i32> %62 to <4 x float>
  %65 = fadd <4 x float> %40, %64
  %66 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %63
  %67 = bitcast float* %66 to <4 x float>*
  store <4 x float> %65, <4 x float>* %67, align 4, !tbaa !5
  %68 = fadd <4 x float> %41, %64
  %69 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %63
  %70 = bitcast float* %69 to <4 x float>*
  store <4 x float> %68, <4 x float>* %70, align 4, !tbaa !5
  %71 = add nuw i64 %50, 8
  %72 = add <4 x i32> %51, <i32 8, i32 8, i32 8, i32 8>
  %73 = add i64 %52, 2
  %74 = icmp eq i64 %73, %48
  br i1 %74, label %75, label %49, !llvm.loop !15

75:                                               ; preds = %49, %34
  %76 = phi i64 [ 0, %34 ], [ %71, %49 ]
  %77 = phi <4 x i32> [ %39, %34 ], [ %72, %49 ]
  %78 = icmp eq i64 %45, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = add i64 %76, %31
  %81 = sitofp <4 x i32> %77 to <4 x float>
  %82 = fadd <4 x float> %40, %81
  %83 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %80
  %84 = bitcast float* %83 to <4 x float>*
  store <4 x float> %82, <4 x float>* %84, align 4, !tbaa !5
  %85 = fadd <4 x float> %41, %81
  %86 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %80
  %87 = bitcast float* %86 to <4 x float>*
  store <4 x float> %85, <4 x float>* %87, align 4, !tbaa !5
  br label %88

88:                                               ; preds = %75, %79
  %89 = icmp eq i64 %32, %35
  br i1 %89, label %94, label %90

90:                                               ; preds = %30, %88
  %91 = phi i64 [ %31, %30 ], [ %36, %88 ]
  %92 = extractelement <2 x float> %28, i64 0
  %93 = extractelement <2 x float> %28, i64 1
  br label %126

94:                                               ; preds = %126, %88, %18
  %95 = phi i32 [ %20, %18 ], [ %3, %88 ], [ %3, %126 ]
  br i1 %15, label %136, label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ %123, %96 ], [ 0, %94 ]
  %98 = phi float [ %122, %96 ], [ 0.000000e+00, %94 ]
  %99 = phi i64 [ %124, %96 ], [ 0, %94 ]
  %100 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %97
  %101 = load float, float* %100, align 16, !tbaa !5
  %102 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %97
  %103 = load float, float* %102, align 16, !tbaa !5
  %104 = tail call float @llvm.fmuladd.f32(float %101, float %103, float %98) #5
  %105 = or i64 %97, 1
  %106 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %105
  %107 = load float, float* %106, align 4, !tbaa !5
  %108 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %105
  %109 = load float, float* %108, align 4, !tbaa !5
  %110 = tail call float @llvm.fmuladd.f32(float %107, float %109, float %104) #5
  %111 = or i64 %97, 2
  %112 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %111
  %113 = load float, float* %112, align 8, !tbaa !5
  %114 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %111
  %115 = load float, float* %114, align 8, !tbaa !5
  %116 = tail call float @llvm.fmuladd.f32(float %113, float %115, float %110) #5
  %117 = or i64 %97, 3
  %118 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %117
  %119 = load float, float* %118, align 4, !tbaa !5
  %120 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %117
  %121 = load float, float* %120, align 4, !tbaa !5
  %122 = tail call float @llvm.fmuladd.f32(float %119, float %121, float %116) #5
  %123 = add nuw nsw i64 %97, 4
  %124 = add i64 %99, 4
  %125 = icmp eq i64 %124, %16
  br i1 %125, label %136, label %96, !llvm.loop !9

126:                                              ; preds = %90, %126
  %127 = phi i64 [ %134, %126 ], [ %91, %90 ]
  %128 = trunc i64 %127 to i32
  %129 = sitofp i32 %128 to float
  %130 = fadd float %92, %129
  %131 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %127
  store float %130, float* %131, align 4, !tbaa !5
  %132 = fadd float %93, %129
  %133 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %127
  store float %132, float* %133, align 4, !tbaa !5
  %134 = add nsw i64 %127, 1
  %135 = icmp eq i64 %134, %11
  br i1 %135, label %94, label %126, !llvm.loop !17

136:                                              ; preds = %96, %94
  %137 = phi float [ undef, %94 ], [ %122, %96 ]
  %138 = phi i64 [ 0, %94 ], [ %123, %96 ]
  %139 = phi float [ 0.000000e+00, %94 ], [ %122, %96 ]
  br i1 %17, label %152, label %140

140:                                              ; preds = %136, %140
  %141 = phi i64 [ %149, %140 ], [ %138, %136 ]
  %142 = phi float [ %148, %140 ], [ %139, %136 ]
  %143 = phi i64 [ %150, %140 ], [ 0, %136 ]
  %144 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %141
  %145 = load float, float* %144, align 4, !tbaa !5
  %146 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %141
  %147 = load float, float* %146, align 4, !tbaa !5
  %148 = tail call float @llvm.fmuladd.f32(float %145, float %147, float %142) #5
  %149 = add nuw nsw i64 %141, 1
  %150 = add i64 %143, 1
  %151 = icmp eq i64 %150, %14
  br i1 %151, label %152, label %140, !llvm.loop !19

152:                                              ; preds = %140, %136
  %153 = phi float [ %137, %136 ], [ %148, %140 ]
  %154 = fadd float %19, %153
  %155 = add nuw nsw i32 %21, 1
  %156 = icmp eq i32 %155, %6
  br i1 %156, label %246, label %18, !llvm.loop !20

157:                                              ; preds = %8, %242
  %158 = phi i32 [ %243, %242 ], [ 0, %8 ]
  %159 = phi i32 [ %244, %242 ], [ 0, %8 ]
  %160 = phi <2 x float> [ %166, %242 ], [ <float 0.000000e+00, float 1.000000e+00>, %8 ]
  %161 = urem i32 %159, 10
  %162 = icmp eq i32 %161, 0
  %163 = fpext <2 x float> %160 to <2 x double>
  %164 = fadd <2 x double> %163, <double 1.000000e-01, double 2.000000e-01>
  %165 = fptrunc <2 x double> %164 to <2 x float>
  %166 = select i1 %162, <2 x float> %165, <2 x float> <float 0.000000e+00, float 1.000000e+00>
  %167 = icmp slt i32 %158, %3
  br i1 %167, label %168, label %242

168:                                              ; preds = %157
  %169 = sext i32 %158 to i64
  %170 = sub nsw i64 %11, %169
  %171 = icmp ult i64 %170, 4
  br i1 %171, label %228, label %172

172:                                              ; preds = %168
  %173 = and i64 %170, -4
  %174 = add nsw i64 %173, %169
  %175 = insertelement <4 x i32> poison, i32 %158, i64 0
  %176 = shufflevector <4 x i32> %175, <4 x i32> poison, <4 x i32> zeroinitializer
  %177 = add <4 x i32> %176, <i32 0, i32 1, i32 2, i32 3>
  %178 = shufflevector <2 x float> %166, <2 x float> undef, <4 x i32> zeroinitializer
  %179 = shufflevector <2 x float> %166, <2 x float> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %180 = add nsw i64 %173, -4
  %181 = lshr exact i64 %180, 2
  %182 = add nuw nsw i64 %181, 1
  %183 = and i64 %182, 1
  %184 = icmp eq i64 %180, 0
  br i1 %184, label %213, label %185

185:                                              ; preds = %172
  %186 = and i64 %182, 9223372036854775806
  br label %187

187:                                              ; preds = %187, %185
  %188 = phi i64 [ 0, %185 ], [ %209, %187 ]
  %189 = phi <4 x i32> [ %177, %185 ], [ %210, %187 ]
  %190 = phi i64 [ 0, %185 ], [ %211, %187 ]
  %191 = add i64 %188, %169
  %192 = sitofp <4 x i32> %189 to <4 x float>
  %193 = fadd <4 x float> %178, %192
  %194 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %191
  %195 = bitcast float* %194 to <4 x float>*
  store <4 x float> %193, <4 x float>* %195, align 4, !tbaa !5
  %196 = fadd <4 x float> %179, %192
  %197 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %191
  %198 = bitcast float* %197 to <4 x float>*
  store <4 x float> %196, <4 x float>* %198, align 4, !tbaa !5
  %199 = or i64 %188, 4
  %200 = add <4 x i32> %189, <i32 4, i32 4, i32 4, i32 4>
  %201 = add i64 %199, %169
  %202 = sitofp <4 x i32> %200 to <4 x float>
  %203 = fadd <4 x float> %178, %202
  %204 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %201
  %205 = bitcast float* %204 to <4 x float>*
  store <4 x float> %203, <4 x float>* %205, align 4, !tbaa !5
  %206 = fadd <4 x float> %179, %202
  %207 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %201
  %208 = bitcast float* %207 to <4 x float>*
  store <4 x float> %206, <4 x float>* %208, align 4, !tbaa !5
  %209 = add nuw i64 %188, 8
  %210 = add <4 x i32> %189, <i32 8, i32 8, i32 8, i32 8>
  %211 = add i64 %190, 2
  %212 = icmp eq i64 %211, %186
  br i1 %212, label %213, label %187, !llvm.loop !21

213:                                              ; preds = %187, %172
  %214 = phi i64 [ 0, %172 ], [ %209, %187 ]
  %215 = phi <4 x i32> [ %177, %172 ], [ %210, %187 ]
  %216 = icmp eq i64 %183, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %213
  %218 = add i64 %214, %169
  %219 = sitofp <4 x i32> %215 to <4 x float>
  %220 = fadd <4 x float> %178, %219
  %221 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %218
  %222 = bitcast float* %221 to <4 x float>*
  store <4 x float> %220, <4 x float>* %222, align 4, !tbaa !5
  %223 = fadd <4 x float> %179, %219
  %224 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %218
  %225 = bitcast float* %224 to <4 x float>*
  store <4 x float> %223, <4 x float>* %225, align 4, !tbaa !5
  br label %226

226:                                              ; preds = %213, %217
  %227 = icmp eq i64 %170, %173
  br i1 %227, label %242, label %228

228:                                              ; preds = %168, %226
  %229 = phi i64 [ %169, %168 ], [ %174, %226 ]
  %230 = extractelement <2 x float> %166, i64 0
  %231 = extractelement <2 x float> %166, i64 1
  br label %232

232:                                              ; preds = %228, %232
  %233 = phi i64 [ %240, %232 ], [ %229, %228 ]
  %234 = trunc i64 %233 to i32
  %235 = sitofp i32 %234 to float
  %236 = fadd float %230, %235
  %237 = getelementptr inbounds [2048 x float], [2048 x float]* %1, i64 0, i64 %233
  store float %236, float* %237, align 4, !tbaa !5
  %238 = fadd float %231, %235
  %239 = getelementptr inbounds [2048 x float], [2048 x float]* %2, i64 0, i64 %233
  store float %238, float* %239, align 4, !tbaa !5
  %240 = add nsw i64 %233, 1
  %241 = icmp eq i64 %240, %11
  br i1 %241, label %242, label %232, !llvm.loop !22

242:                                              ; preds = %232, %226, %157
  %243 = phi i32 [ %158, %157 ], [ %3, %226 ], [ %3, %232 ]
  %244 = add nuw nsw i32 %159, 1
  %245 = icmp eq i32 %244, %6
  br i1 %245, label %249, label %157, !llvm.loop !20

246:                                              ; preds = %152
  %247 = fpext float %154 to double
  %248 = fadd double %247, 0xC314537800000000
  br label %249

249:                                              ; preds = %242, %246, %0
  %250 = phi double [ 0xC314537800000000, %0 ], [ %248, %246 ], [ 0xC314537800000000, %242 ]
  tail call void @_Z14_sysy_stoptimei(i32 noundef 39)
  %251 = fcmp ugt double %250, 0x3EB0C6F7A0B5ED8D
  %252 = fcmp ult double %250, 0xBEB0C6F7A0B5ED8D
  %253 = and i1 %251, %252
  %254 = zext i1 %253 to i32
  tail call void @_Z6putinti(i32 noundef %254)
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %4) #5
  ret i32 %254
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #4

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #4

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #4

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !10, !16}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !10, !18, !16}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10, !16}
!22 = distinct !{!22, !10, !18, !16}
