; ModuleID = 'tests//SysY2022/hidden_functional/39_fp_params.sy'
source_filename = "tests//SysY2022/hidden_functional/39_fp_params.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@k = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_Z10params_f40ffffffffffffffffffffffffffffffffffffffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, float noundef %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20, float noundef %21, float noundef %22, float noundef %23, float noundef %24, float noundef %25, float noundef %26, float noundef %27, float noundef %28, float noundef %29, float noundef %30, float noundef %31, float noundef %32, float noundef %33, float noundef %34, float noundef %35, float noundef %36, float noundef %37, float noundef %38, float noundef %39) local_unnamed_addr #0 {
  %41 = alloca [10 x float], align 16
  %42 = fcmp une float %39, 0.000000e+00
  %43 = insertelement <4 x float> poison, float %0, i64 0
  %44 = insertelement <4 x float> %43, float %4, i64 1
  %45 = insertelement <4 x float> %44, float %8, i64 2
  %46 = insertelement <4 x float> %45, float %12, i64 3
  %47 = insertelement <4 x float> poison, float %3, i64 0
  %48 = insertelement <4 x float> %47, float %7, i64 1
  %49 = insertelement <4 x float> %48, float %11, i64 2
  %50 = insertelement <4 x float> %49, float %15, i64 3
  %51 = insertelement <4 x float> poison, float %2, i64 0
  %52 = insertelement <4 x float> %51, float %6, i64 1
  %53 = insertelement <4 x float> %52, float %10, i64 2
  %54 = insertelement <4 x float> %53, float %14, i64 3
  %55 = insertelement <4 x float> poison, float %1, i64 0
  %56 = insertelement <4 x float> %55, float %5, i64 1
  %57 = insertelement <4 x float> %56, float %9, i64 2
  %58 = insertelement <4 x float> %57, float %13, i64 3
  %59 = insertelement <4 x float> poison, float %16, i64 0
  %60 = insertelement <4 x float> %59, float %20, i64 1
  %61 = insertelement <4 x float> %60, float %24, i64 2
  %62 = insertelement <4 x float> %61, float %28, i64 3
  %63 = insertelement <4 x float> poison, float %19, i64 0
  %64 = insertelement <4 x float> %63, float %23, i64 1
  %65 = insertelement <4 x float> %64, float %27, i64 2
  %66 = insertelement <4 x float> %65, float %31, i64 3
  %67 = insertelement <4 x float> poison, float %18, i64 0
  %68 = insertelement <4 x float> %67, float %22, i64 1
  %69 = insertelement <4 x float> %68, float %26, i64 2
  %70 = insertelement <4 x float> %69, float %30, i64 3
  %71 = insertelement <4 x float> poison, float %17, i64 0
  %72 = insertelement <4 x float> %71, float %21, i64 1
  %73 = insertelement <4 x float> %72, float %25, i64 2
  %74 = insertelement <4 x float> %73, float %29, i64 3
  br i1 %42, label %84, label %75

75:                                               ; preds = %40
  %76 = insertelement <4 x float> poison, float %20, i64 0
  %77 = insertelement <4 x float> %76, float %24, i64 1
  %78 = insertelement <4 x float> %77, float %28, i64 2
  %79 = insertelement <4 x float> %78, float %32, i64 3
  %80 = insertelement <4 x float> poison, float %4, i64 0
  %81 = insertelement <4 x float> %80, float %8, i64 1
  %82 = insertelement <4 x float> %81, float %12, i64 2
  %83 = insertelement <4 x float> %82, float %16, i64 3
  br label %124

84:                                               ; preds = %124, %40
  %85 = phi float [ %32, %40 ], [ %131, %124 ]
  %86 = phi float [ %33, %40 ], [ %130, %124 ]
  %87 = phi float [ %34, %40 ], [ %129, %124 ]
  %88 = phi float [ %35, %40 ], [ %128, %124 ]
  %89 = phi float [ %36, %40 ], [ %127, %124 ]
  %90 = phi float [ %37, %40 ], [ %126, %124 ]
  %91 = phi float [ %38, %40 ], [ %125, %124 ]
  %92 = phi float [ %39, %40 ], [ %144, %124 ]
  %93 = phi <4 x float> [ %46, %40 ], [ %133, %124 ]
  %94 = phi <4 x float> [ %58, %40 ], [ %134, %124 ]
  %95 = phi <4 x float> [ %54, %40 ], [ %135, %124 ]
  %96 = phi <4 x float> [ %50, %40 ], [ %136, %124 ]
  %97 = phi <4 x float> [ %62, %40 ], [ %137, %124 ]
  %98 = phi <4 x float> [ %74, %40 ], [ %138, %124 ]
  %99 = phi <4 x float> [ %70, %40 ], [ %139, %124 ]
  %100 = phi <4 x float> [ %66, %40 ], [ %140, %124 ]
  %101 = bitcast [10 x float]* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %101) #4
  %102 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 0
  %103 = fadd <4 x float> %93, %94
  %104 = fadd <4 x float> %103, %95
  %105 = fadd <4 x float> %104, %96
  %106 = bitcast [10 x float]* %41 to <4 x float>*
  store <4 x float> %105, <4 x float>* %106, align 16, !tbaa !5
  %107 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 4
  %108 = fadd <4 x float> %97, %98
  %109 = fadd <4 x float> %108, %99
  %110 = fadd <4 x float> %109, %100
  %111 = bitcast float* %107 to <4 x float>*
  store <4 x float> %110, <4 x float>* %111, align 16, !tbaa !5
  %112 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 8
  %113 = fadd float %85, %86
  %114 = fadd float %113, %87
  %115 = fadd float %114, %88
  store float %115, float* %112, align 16, !tbaa !5
  %116 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 9
  %117 = fadd float %89, %90
  %118 = fadd float %117, %91
  %119 = fadd float %118, %92
  store float %119, float* %116, align 4, !tbaa !5
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %102)
  %120 = load i32, i32* @k, align 4, !tbaa !9
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 %121
  %123 = load float, float* %122, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %101) #4
  ret float %123

124:                                              ; preds = %75, %124
  %125 = phi float [ %144, %124 ], [ %39, %75 ]
  %126 = phi float [ %125, %124 ], [ %38, %75 ]
  %127 = phi float [ %126, %124 ], [ %37, %75 ]
  %128 = phi float [ %127, %124 ], [ %36, %75 ]
  %129 = phi float [ %128, %124 ], [ %35, %75 ]
  %130 = phi float [ %129, %124 ], [ %34, %75 ]
  %131 = phi float [ %130, %124 ], [ %33, %75 ]
  %132 = phi float [ %141, %124 ], [ %0, %75 ]
  %133 = phi <4 x float> [ %134, %124 ], [ %58, %75 ]
  %134 = phi <4 x float> [ %135, %124 ], [ %54, %75 ]
  %135 = phi <4 x float> [ %136, %124 ], [ %50, %75 ]
  %136 = phi <4 x float> [ %146, %124 ], [ %83, %75 ]
  %137 = phi <4 x float> [ %138, %124 ], [ %74, %75 ]
  %138 = phi <4 x float> [ %139, %124 ], [ %70, %75 ]
  %139 = phi <4 x float> [ %140, %124 ], [ %66, %75 ]
  %140 = phi <4 x float> [ %153, %124 ], [ %79, %75 ]
  %141 = extractelement <4 x float> %133, i64 0
  %142 = fadd float %132, %141
  %143 = extractelement <4 x float> %134, i64 0
  %144 = fadd float %142, %143
  %145 = fcmp une float %144, 0.000000e+00
  %146 = shufflevector <4 x float> %133, <4 x float> %137, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %147 = extractelement <4 x float> %137, i64 1
  %148 = insertelement <4 x float> poison, float %147, i64 0
  %149 = extractelement <4 x float> %137, i64 2
  %150 = insertelement <4 x float> %148, float %149, i64 1
  %151 = extractelement <4 x float> %137, i64 3
  %152 = insertelement <4 x float> %150, float %151, i64 2
  %153 = insertelement <4 x float> %152, float %131, i64 3
  br i1 %145, label %84, label %124
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @_Z9putfarrayiPf(i32 noundef, float* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_Z14params_f40_i24iiifiiifffiffififfffffifiifffffififfffiifffifiiffffiiiffffffifif(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %10, float noundef %11, float noundef %12, i32 noundef %13, float noundef %14, i32 noundef %15, float noundef %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20, float noundef %21, i32 noundef %22, float noundef %23, i32 noundef %24, i32 noundef %25, float noundef %26, float noundef %27, float noundef %28, float noundef %29, float noundef %30, i32 noundef %31, float noundef %32, i32 noundef %33, float noundef %34, float noundef %35, float noundef %36, float noundef %37, i32 noundef %38, i32 noundef %39, float noundef %40, float noundef %41, float noundef %42, i32 noundef %43, float noundef %44, i32 noundef %45, i32 noundef %46, float noundef %47, float noundef %48, float noundef %49, float noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, float noundef %54, float noundef %55, float noundef %56, float noundef %57, float noundef %58, float noundef %59, i32 noundef %60, float noundef %61, i32 noundef %62, float noundef %63) local_unnamed_addr #0 {
  %65 = alloca [10 x float], align 16
  %66 = alloca [8 x i32], align 16
  %67 = icmp eq i32 %0, 0
  %68 = select i1 %67, i32 %4, i32 %0
  %69 = bitcast [10 x float]* %65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %69) #4
  %70 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 0
  %71 = insertelement <4 x float> poison, float %18, i64 0
  %72 = insertelement <4 x float> %71, float %3, i64 1
  %73 = insertelement <4 x float> %72, float %7, i64 2
  %74 = insertelement <4 x float> %73, float %17, i64 3
  %75 = insertelement <4 x float> poison, float %42, i64 0
  %76 = insertelement <4 x float> %75, float %36, i64 1
  %77 = insertelement <4 x float> %76, float %29, i64 2
  %78 = insertelement <4 x float> %77, float %49, i64 3
  %79 = fadd <4 x float> %74, %78
  %80 = insertelement <4 x float> poison, float %61, i64 0
  %81 = insertelement <4 x float> %80, float %21, i64 1
  %82 = insertelement <4 x float> %81, float %41, i64 2
  %83 = insertelement <4 x float> %82, float %40, i64 3
  %84 = fadd <4 x float> %79, %83
  %85 = insertelement <4 x float> poison, float %11, i64 0
  %86 = insertelement <4 x float> %85, float %9, i64 1
  %87 = insertelement <4 x float> %86, float %19, i64 2
  %88 = insertelement <4 x float> %87, float %8, i64 3
  %89 = fadd <4 x float> %84, %88
  %90 = bitcast [10 x float]* %65 to <4 x float>*
  store <4 x float> %89, <4 x float>* %90, align 16, !tbaa !5
  %91 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 4
  %92 = insertelement <4 x float> poison, float %35, i64 0
  %93 = insertelement <4 x float> %92, float %26, i64 1
  %94 = insertelement <4 x float> %93, float %30, i64 2
  %95 = insertelement <4 x float> %94, float %12, i64 3
  %96 = insertelement <4 x float> poison, float %59, i64 0
  %97 = insertelement <4 x float> %96, float %34, i64 1
  %98 = insertelement <4 x float> %97, float %48, i64 2
  %99 = insertelement <4 x float> %98, float %50, i64 3
  %100 = fadd <4 x float> %95, %99
  %101 = insertelement <4 x float> poison, float %54, i64 0
  %102 = insertelement <4 x float> %101, float %56, i64 1
  %103 = insertelement <4 x float> %102, float %57, i64 2
  %104 = insertelement <4 x float> %103, float %16, i64 3
  %105 = fadd <4 x float> %100, %104
  %106 = insertelement <4 x float> poison, float %55, i64 0
  %107 = insertelement <4 x float> %106, float %28, i64 1
  %108 = insertelement <4 x float> %107, float %47, i64 2
  %109 = insertelement <4 x float> %108, float %44, i64 3
  %110 = fadd <4 x float> %105, %109
  %111 = bitcast float* %91 to <4 x float>*
  store <4 x float> %110, <4 x float>* %111, align 16, !tbaa !5
  %112 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 8
  %113 = fadd float %23, %27
  %114 = fadd float %113, %37
  %115 = fadd float %114, %63
  store float %115, float* %112, align 16, !tbaa !5
  %116 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 9
  %117 = fadd float %14, %58
  %118 = fadd float %117, %20
  %119 = fadd float %118, %32
  store float %119, float* %116, align 4, !tbaa !5
  %120 = bitcast [8 x i32]* %66 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %120) #4
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 0
  %122 = add i32 %4, %1
  %123 = add i32 %122, %13
  store i32 %123, i32* %121, align 16, !tbaa !9
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 1
  %125 = add i32 %6, %5
  %126 = add i32 %125, %51
  store i32 %126, i32* %124, align 4, !tbaa !9
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 2
  %128 = add nsw i32 %22, %2
  %129 = add nsw i32 %128, %31
  store i32 %129, i32* %127, align 8, !tbaa !9
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 3
  %131 = add nsw i32 %39, %24
  %132 = add nsw i32 %131, %45
  store i32 %132, i32* %130, align 4, !tbaa !9
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 4
  %134 = add nsw i32 %43, %25
  %135 = add nsw i32 %134, %62
  store i32 %135, i32* %133, align 16, !tbaa !9
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 5
  %137 = add i32 %46, %33
  %138 = add i32 %137, %60
  store i32 %138, i32* %136, align 4, !tbaa !9
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 6
  %140 = add nsw i32 %38, %15
  %141 = add nsw i32 %140, %53
  store i32 %141, i32* %139, align 8, !tbaa !9
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 7
  %143 = add nsw i32 %52, %10
  %144 = add nsw i32 %143, %68
  store i32 %144, i32* %142, align 4, !tbaa !9
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %70)
  call void @_Z8putarrayiPi(i32 noundef 8, i32* noundef nonnull %121)
  %145 = bitcast [8 x i32]* %66 to <4 x i32>*
  %146 = load <4 x i32>, <4 x i32>* %145, align 16, !tbaa !9
  %147 = sitofp <4 x i32> %146 to <4 x float>
  %148 = bitcast [10 x float]* %65 to <4 x float>*
  %149 = load <4 x float>, <4 x float>* %148, align 16, !tbaa !5
  %150 = fsub <4 x float> %147, %149
  %151 = fptosi <4 x float> %150 to <4 x i32>
  %152 = bitcast [8 x i32]* %66 to <4 x i32>*
  store <4 x i32> %151, <4 x i32>* %152, align 16, !tbaa !9
  %153 = bitcast i32* %133 to <4 x i32>*
  %154 = load <4 x i32>, <4 x i32>* %153, align 16, !tbaa !9
  %155 = sitofp <4 x i32> %154 to <4 x float>
  %156 = bitcast float* %91 to <4 x float>*
  %157 = load <4 x float>, <4 x float>* %156, align 16, !tbaa !5
  %158 = fsub <4 x float> %155, %157
  %159 = fptosi <4 x float> %158 to <4 x i32>
  %160 = bitcast i32* %133 to <4 x i32>*
  store <4 x i32> %159, <4 x i32>* %160, align 16, !tbaa !9
  %161 = load i32, i32* @k, align 4, !tbaa !9
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4, !tbaa !9
  %165 = sitofp i32 %164 to float
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %120) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %69) #4
  ret float %165
}

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_Z11params_fa40PfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, float* nocapture noundef readonly %2, float* nocapture noundef readonly %3, float* nocapture noundef readonly %4, float* nocapture noundef readonly %5, float* nocapture noundef readonly %6, float* nocapture noundef readonly %7, float* nocapture noundef readonly %8, float* nocapture noundef readonly %9, float* nocapture noundef readonly %10, float* nocapture noundef readonly %11, float* nocapture noundef readonly %12, float* nocapture noundef readonly %13, float* nocapture noundef readonly %14, float* nocapture noundef readonly %15, float* nocapture noundef readonly %16, float* nocapture noundef readonly %17, float* nocapture noundef readonly %18, float* nocapture noundef readonly %19, float* nocapture noundef readonly %20, float* nocapture noundef readonly %21, float* nocapture noundef readonly %22, float* nocapture noundef readonly %23, float* nocapture noundef readonly %24, float* nocapture noundef readonly %25, float* nocapture noundef readonly %26, float* nocapture noundef readonly %27, float* nocapture noundef readonly %28, float* nocapture noundef readonly %29, float* nocapture noundef readonly %30, float* nocapture noundef readonly %31, float* nocapture noundef readonly %32, float* nocapture noundef readonly %33, float* nocapture noundef readonly %34, float* nocapture noundef readonly %35, float* nocapture noundef readonly %36, float* nocapture noundef readonly %37, float* nocapture noundef readonly %38, float* nocapture noundef readonly %39) local_unnamed_addr #0 {
  %41 = alloca [10 x float], align 16
  %42 = bitcast [10 x float]* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %42) #4
  %43 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 0
  %44 = load i32, i32* @k, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %0, i64 %45
  %47 = load float, float* %46, align 4, !tbaa !5
  %48 = getelementptr inbounds float, float* %1, i64 %45
  %49 = load float, float* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds float, float* %2, i64 %45
  %51 = load float, float* %50, align 4, !tbaa !5
  %52 = getelementptr inbounds float, float* %3, i64 %45
  %53 = load float, float* %52, align 4, !tbaa !5
  %54 = getelementptr inbounds float, float* %4, i64 %45
  %55 = load float, float* %54, align 4, !tbaa !5
  %56 = getelementptr inbounds float, float* %5, i64 %45
  %57 = load float, float* %56, align 4, !tbaa !5
  %58 = getelementptr inbounds float, float* %6, i64 %45
  %59 = load float, float* %58, align 4, !tbaa !5
  %60 = getelementptr inbounds float, float* %7, i64 %45
  %61 = load float, float* %60, align 4, !tbaa !5
  %62 = getelementptr inbounds float, float* %8, i64 %45
  %63 = load float, float* %62, align 4, !tbaa !5
  %64 = getelementptr inbounds float, float* %9, i64 %45
  %65 = load float, float* %64, align 4, !tbaa !5
  %66 = getelementptr inbounds float, float* %10, i64 %45
  %67 = load float, float* %66, align 4, !tbaa !5
  %68 = getelementptr inbounds float, float* %11, i64 %45
  %69 = load float, float* %68, align 4, !tbaa !5
  %70 = getelementptr inbounds float, float* %12, i64 %45
  %71 = load float, float* %70, align 4, !tbaa !5
  %72 = getelementptr inbounds float, float* %13, i64 %45
  %73 = load float, float* %72, align 4, !tbaa !5
  %74 = insertelement <4 x float> poison, float %47, i64 0
  %75 = insertelement <4 x float> %74, float %55, i64 1
  %76 = insertelement <4 x float> %75, float %63, i64 2
  %77 = insertelement <4 x float> %76, float %71, i64 3
  %78 = insertelement <4 x float> poison, float %49, i64 0
  %79 = insertelement <4 x float> %78, float %57, i64 1
  %80 = insertelement <4 x float> %79, float %65, i64 2
  %81 = insertelement <4 x float> %80, float %73, i64 3
  %82 = fadd <4 x float> %77, %81
  %83 = getelementptr inbounds float, float* %14, i64 %45
  %84 = load float, float* %83, align 4, !tbaa !5
  %85 = insertelement <4 x float> poison, float %51, i64 0
  %86 = insertelement <4 x float> %85, float %59, i64 1
  %87 = insertelement <4 x float> %86, float %67, i64 2
  %88 = insertelement <4 x float> %87, float %84, i64 3
  %89 = fadd <4 x float> %82, %88
  %90 = getelementptr inbounds float, float* %15, i64 %45
  %91 = load float, float* %90, align 4, !tbaa !5
  %92 = insertelement <4 x float> poison, float %53, i64 0
  %93 = insertelement <4 x float> %92, float %61, i64 1
  %94 = insertelement <4 x float> %93, float %69, i64 2
  %95 = insertelement <4 x float> %94, float %91, i64 3
  %96 = fadd <4 x float> %89, %95
  %97 = bitcast [10 x float]* %41 to <4 x float>*
  store <4 x float> %96, <4 x float>* %97, align 16, !tbaa !5
  %98 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 4
  %99 = getelementptr inbounds float, float* %16, i64 %45
  %100 = load float, float* %99, align 4, !tbaa !5
  %101 = getelementptr inbounds float, float* %17, i64 %45
  %102 = load float, float* %101, align 4, !tbaa !5
  %103 = getelementptr inbounds float, float* %18, i64 %45
  %104 = load float, float* %103, align 4, !tbaa !5
  %105 = getelementptr inbounds float, float* %19, i64 %45
  %106 = load float, float* %105, align 4, !tbaa !5
  %107 = getelementptr inbounds float, float* %20, i64 %45
  %108 = load float, float* %107, align 4, !tbaa !5
  %109 = getelementptr inbounds float, float* %21, i64 %45
  %110 = load float, float* %109, align 4, !tbaa !5
  %111 = getelementptr inbounds float, float* %22, i64 %45
  %112 = load float, float* %111, align 4, !tbaa !5
  %113 = getelementptr inbounds float, float* %23, i64 %45
  %114 = load float, float* %113, align 4, !tbaa !5
  %115 = getelementptr inbounds float, float* %24, i64 %45
  %116 = load float, float* %115, align 4, !tbaa !5
  %117 = getelementptr inbounds float, float* %25, i64 %45
  %118 = load float, float* %117, align 4, !tbaa !5
  %119 = getelementptr inbounds float, float* %26, i64 %45
  %120 = load float, float* %119, align 4, !tbaa !5
  %121 = getelementptr inbounds float, float* %27, i64 %45
  %122 = load float, float* %121, align 4, !tbaa !5
  %123 = getelementptr inbounds float, float* %28, i64 %45
  %124 = load float, float* %123, align 4, !tbaa !5
  %125 = getelementptr inbounds float, float* %29, i64 %45
  %126 = load float, float* %125, align 4, !tbaa !5
  %127 = insertelement <4 x float> poison, float %100, i64 0
  %128 = insertelement <4 x float> %127, float %108, i64 1
  %129 = insertelement <4 x float> %128, float %116, i64 2
  %130 = insertelement <4 x float> %129, float %124, i64 3
  %131 = insertelement <4 x float> poison, float %102, i64 0
  %132 = insertelement <4 x float> %131, float %110, i64 1
  %133 = insertelement <4 x float> %132, float %118, i64 2
  %134 = insertelement <4 x float> %133, float %126, i64 3
  %135 = fadd <4 x float> %130, %134
  %136 = getelementptr inbounds float, float* %30, i64 %45
  %137 = load float, float* %136, align 4, !tbaa !5
  %138 = insertelement <4 x float> poison, float %104, i64 0
  %139 = insertelement <4 x float> %138, float %112, i64 1
  %140 = insertelement <4 x float> %139, float %120, i64 2
  %141 = insertelement <4 x float> %140, float %137, i64 3
  %142 = fadd <4 x float> %135, %141
  %143 = getelementptr inbounds float, float* %31, i64 %45
  %144 = load float, float* %143, align 4, !tbaa !5
  %145 = insertelement <4 x float> poison, float %106, i64 0
  %146 = insertelement <4 x float> %145, float %114, i64 1
  %147 = insertelement <4 x float> %146, float %122, i64 2
  %148 = insertelement <4 x float> %147, float %144, i64 3
  %149 = fadd <4 x float> %142, %148
  %150 = bitcast float* %98 to <4 x float>*
  store <4 x float> %149, <4 x float>* %150, align 16, !tbaa !5
  %151 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 8
  %152 = getelementptr inbounds float, float* %32, i64 %45
  %153 = load float, float* %152, align 4, !tbaa !5
  %154 = getelementptr inbounds float, float* %33, i64 %45
  %155 = load float, float* %154, align 4, !tbaa !5
  %156 = fadd float %153, %155
  %157 = getelementptr inbounds float, float* %34, i64 %45
  %158 = load float, float* %157, align 4, !tbaa !5
  %159 = fadd float %156, %158
  %160 = getelementptr inbounds float, float* %35, i64 %45
  %161 = load float, float* %160, align 4, !tbaa !5
  %162 = fadd float %159, %161
  store float %162, float* %151, align 16, !tbaa !5
  %163 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 9
  %164 = getelementptr inbounds float, float* %36, i64 %45
  %165 = load float, float* %164, align 4, !tbaa !5
  %166 = getelementptr inbounds float, float* %37, i64 %45
  %167 = load float, float* %166, align 4, !tbaa !5
  %168 = fadd float %165, %167
  %169 = getelementptr inbounds float, float* %38, i64 %45
  %170 = load float, float* %169, align 4, !tbaa !5
  %171 = fadd float %168, %170
  %172 = getelementptr inbounds float, float* %39, i64 %45
  %173 = load float, float* %172, align 4, !tbaa !5
  %174 = fadd float %171, %173
  store float %174, float* %163, align 4, !tbaa !5
  %175 = fcmp une float %173, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %40
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %43)
  %177 = load i32, i32* @k, align 4, !tbaa !9
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 %178
  %180 = load float, float* %179, align 4, !tbaa !5
  br label %183

181:                                              ; preds = %40
  %182 = call noundef float @_Z11params_fa40PfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(float* noundef nonnull %1, float* noundef nonnull %2, float* noundef nonnull %3, float* noundef nonnull %4, float* noundef nonnull %5, float* noundef nonnull %6, float* noundef nonnull %7, float* noundef nonnull %8, float* noundef nonnull %9, float* noundef nonnull %10, float* noundef nonnull %11, float* noundef nonnull %12, float* noundef nonnull %13, float* noundef nonnull %14, float* noundef nonnull %15, float* noundef nonnull %16, float* noundef nonnull %17, float* noundef nonnull %18, float* noundef nonnull %19, float* noundef nonnull %20, float* noundef nonnull %21, float* noundef nonnull %22, float* noundef nonnull %23, float* noundef nonnull %24, float* noundef nonnull %25, float* noundef nonnull %26, float* noundef nonnull %27, float* noundef nonnull %28, float* noundef nonnull %29, float* noundef nonnull %30, float* noundef nonnull %31, float* noundef nonnull %32, float* noundef nonnull %33, float* noundef nonnull %34, float* noundef nonnull %35, float* noundef nonnull %36, float* noundef nonnull %37, float* noundef nonnull %38, float* noundef nonnull %39, float* noundef nonnull %43)
  br label %183

183:                                              ; preds = %181, %176
  %184 = phi float [ %180, %176 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %42) #4
  ret float %184
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z10params_mixfPiiPffiffS0_S_iiS0_S_S_iS0_S0_fffS0_ifffS_S0_S_S_S0_ffS_iS0_S0_ffS_S_iiffS_iS0_iS_S_ffS0_iS_S0_fifS0_S0_fi(float noundef %0, i32* nocapture noundef readonly %1, i32 noundef %2, float* nocapture noundef readonly %3, float noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float* nocapture noundef readonly %8, i32* nocapture noundef readonly %9, i32 noundef %10, i32 noundef %11, float* nocapture noundef readonly %12, i32* nocapture noundef readonly %13, i32* nocapture noundef readonly %14, i32 noundef %15, float* nocapture noundef readonly %16, float* nocapture noundef readonly %17, float noundef %18, float noundef %19, float noundef %20, float* nocapture noundef readonly %21, i32 noundef %22, float noundef %23, float noundef %24, float noundef %25, i32* nocapture noundef readonly %26, float* nocapture noundef readonly %27, i32* nocapture noundef readonly %28, i32* nocapture noundef readonly %29, float* nocapture noundef readonly %30, float noundef %31, float noundef %32, i32* nocapture noundef readonly %33, i32 noundef %34, float* nocapture noundef readonly %35, float* nocapture noundef readonly %36, float noundef %37, float noundef %38, i32* nocapture noundef readonly %39, i32* nocapture noundef readonly %40, i32 noundef %41, i32 noundef %42, float noundef %43, float noundef %44, i32* nocapture noundef readonly %45, i32 noundef %46, float* nocapture noundef readonly %47, i32 noundef %48, i32* nocapture noundef readonly %49, i32* nocapture noundef readonly %50, float noundef %51, float noundef %52, float* nocapture noundef readonly %53, i32 noundef %54, i32* nocapture noundef readonly %55, float* nocapture noundef readonly %56, float noundef %57, i32 noundef %58, float noundef %59, float* nocapture noundef readonly %60, float* nocapture noundef readonly %61, float noundef %62, i32 noundef %63) local_unnamed_addr #0 {
  %65 = alloca [10 x float], align 16
  %66 = alloca [10 x i32], align 16
  %67 = bitcast [10 x float]* %65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %67) #4
  %68 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 0
  %69 = load i32, i32* @k, align 4, !tbaa !9
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %3, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !5
  %73 = getelementptr inbounds float, float* %8, i64 %70
  %74 = load float, float* %73, align 4, !tbaa !5
  %75 = getelementptr inbounds float, float* %12, i64 %70
  %76 = load float, float* %75, align 4, !tbaa !5
  %77 = getelementptr inbounds float, float* %16, i64 %70
  %78 = load float, float* %77, align 4, !tbaa !5
  %79 = getelementptr inbounds float, float* %17, i64 %70
  %80 = load float, float* %79, align 4, !tbaa !5
  %81 = getelementptr inbounds float, float* %21, i64 %70
  %82 = load float, float* %81, align 4, !tbaa !5
  %83 = insertelement <4 x float> poison, float %72, i64 0
  %84 = insertelement <4 x float> %83, float %74, i64 1
  %85 = insertelement <4 x float> %84, float %80, i64 2
  %86 = insertelement <4 x float> %85, float %82, i64 3
  %87 = insertelement <4 x float> poison, float %0, i64 0
  %88 = insertelement <4 x float> %87, float %7, i64 1
  %89 = insertelement <4 x float> %88, float %18, i64 2
  %90 = insertelement <4 x float> %89, float %23, i64 3
  %91 = fadd <4 x float> %86, %90
  %92 = insertelement <4 x float> poison, float %4, i64 0
  %93 = insertelement <4 x float> %92, float %19, i64 2
  %94 = insertelement <4 x float> %93, float %24, i64 3
  %95 = insertelement <4 x float> %94, float %76, i64 1
  %96 = fadd <4 x float> %91, %95
  %97 = insertelement <4 x float> poison, float %6, i64 0
  %98 = insertelement <4 x float> %97, float %20, i64 2
  %99 = insertelement <4 x float> %98, float %25, i64 3
  %100 = insertelement <4 x float> %99, float %78, i64 1
  %101 = fadd <4 x float> %96, %100
  %102 = bitcast [10 x float]* %65 to <4 x float>*
  store <4 x float> %101, <4 x float>* %102, align 16, !tbaa !5
  %103 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 4
  %104 = getelementptr inbounds float, float* %27, i64 %70
  %105 = load float, float* %104, align 4, !tbaa !5
  %106 = getelementptr inbounds float, float* %30, i64 %70
  %107 = load float, float* %106, align 4, !tbaa !5
  %108 = getelementptr inbounds float, float* %35, i64 %70
  %109 = load float, float* %108, align 4, !tbaa !5
  %110 = getelementptr inbounds float, float* %36, i64 %70
  %111 = load float, float* %110, align 4, !tbaa !5
  %112 = getelementptr inbounds float, float* %47, i64 %70
  %113 = load float, float* %112, align 4, !tbaa !5
  %114 = getelementptr inbounds float, float* %53, i64 %70
  %115 = load float, float* %114, align 4, !tbaa !5
  %116 = insertelement <4 x float> poison, float %43, i64 2
  %117 = insertelement <4 x float> %116, float %105, i64 0
  %118 = insertelement <4 x float> %117, float %109, i64 1
  %119 = insertelement <4 x float> %118, float %115, i64 3
  %120 = insertelement <4 x float> poison, float %44, i64 2
  %121 = insertelement <4 x float> %120, float %52, i64 3
  %122 = insertelement <4 x float> %121, float %107, i64 0
  %123 = insertelement <4 x float> %122, float %111, i64 1
  %124 = fadd <4 x float> %119, %123
  %125 = getelementptr inbounds float, float* %56, i64 %70
  %126 = load float, float* %125, align 4, !tbaa !5
  %127 = insertelement <4 x float> poison, float %31, i64 0
  %128 = insertelement <4 x float> %127, float %37, i64 1
  %129 = insertelement <4 x float> %128, float %113, i64 2
  %130 = insertelement <4 x float> %129, float %126, i64 3
  %131 = fadd <4 x float> %124, %130
  %132 = insertelement <4 x float> poison, float %32, i64 0
  %133 = insertelement <4 x float> %132, float %38, i64 1
  %134 = insertelement <4 x float> %133, float %51, i64 2
  %135 = insertelement <4 x float> %134, float %57, i64 3
  %136 = fadd <4 x float> %131, %135
  %137 = bitcast float* %103 to <4 x float>*
  store <4 x float> %136, <4 x float>* %137, align 16, !tbaa !5
  %138 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 8
  %139 = getelementptr inbounds float, float* %60, i64 %70
  %140 = load float, float* %139, align 4, !tbaa !5
  %141 = fadd float %140, %59
  %142 = getelementptr inbounds float, float* %61, i64 %70
  %143 = load float, float* %142, align 4, !tbaa !5
  %144 = fadd float %141, %143
  %145 = fadd float %144, %62
  store float %145, float* %138, align 16, !tbaa !5
  %146 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 9
  store float 0.000000e+00, float* %146, align 4, !tbaa !5
  %147 = bitcast [10 x i32]* %66 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %147) #4
  %148 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 0
  %149 = getelementptr inbounds i32, i32* %1, i64 %70
  %150 = load i32, i32* %149, align 4, !tbaa !9
  %151 = add i32 %5, %2
  %152 = add i32 %151, %150
  store i32 %152, i32* %148, align 16, !tbaa !9
  %153 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 1
  %154 = getelementptr inbounds i32, i32* %9, i64 %70
  %155 = load i32, i32* %154, align 4, !tbaa !9
  %156 = add i32 %11, %10
  %157 = add i32 %156, %155
  store i32 %157, i32* %153, align 4, !tbaa !9
  %158 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 2
  %159 = getelementptr inbounds i32, i32* %13, i64 %70
  %160 = load i32, i32* %159, align 4, !tbaa !9
  %161 = getelementptr inbounds i32, i32* %14, i64 %70
  %162 = load i32, i32* %161, align 4, !tbaa !9
  %163 = add i32 %160, %15
  %164 = add i32 %163, %162
  store i32 %164, i32* %158, align 8, !tbaa !9
  %165 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 3
  %166 = getelementptr inbounds i32, i32* %26, i64 %70
  %167 = load i32, i32* %166, align 4, !tbaa !9
  %168 = add nsw i32 %167, %22
  %169 = getelementptr inbounds i32, i32* %28, i64 %70
  %170 = load i32, i32* %169, align 4, !tbaa !9
  %171 = add nsw i32 %168, %170
  store i32 %171, i32* %165, align 4, !tbaa !9
  %172 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 4
  %173 = getelementptr inbounds i32, i32* %29, i64 %70
  %174 = load i32, i32* %173, align 4, !tbaa !9
  %175 = getelementptr inbounds i32, i32* %33, i64 %70
  %176 = load i32, i32* %175, align 4, !tbaa !9
  %177 = add i32 %174, %34
  %178 = add i32 %177, %176
  store i32 %178, i32* %172, align 16, !tbaa !9
  %179 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 5
  %180 = getelementptr inbounds i32, i32* %39, i64 %70
  %181 = load i32, i32* %180, align 4, !tbaa !9
  %182 = getelementptr inbounds i32, i32* %40, i64 %70
  %183 = load i32, i32* %182, align 4, !tbaa !9
  %184 = add i32 %181, %41
  %185 = add i32 %184, %183
  store i32 %185, i32* %179, align 4, !tbaa !9
  %186 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 6
  %187 = getelementptr inbounds i32, i32* %45, i64 %70
  %188 = load i32, i32* %187, align 4, !tbaa !9
  %189 = add i32 %46, %42
  %190 = add i32 %189, %188
  store i32 %190, i32* %186, align 8, !tbaa !9
  %191 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 7
  %192 = getelementptr inbounds i32, i32* %49, i64 %70
  %193 = load i32, i32* %192, align 4, !tbaa !9
  %194 = add nsw i32 %193, %48
  %195 = getelementptr inbounds i32, i32* %50, i64 %70
  %196 = load i32, i32* %195, align 4, !tbaa !9
  %197 = add nsw i32 %194, %196
  store i32 %197, i32* %191, align 4, !tbaa !9
  %198 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 8
  %199 = getelementptr inbounds i32, i32* %55, i64 %70
  %200 = load i32, i32* %199, align 4, !tbaa !9
  %201 = add i32 %58, %54
  %202 = add i32 %201, %63
  %203 = add i32 %202, %200
  store i32 %203, i32* %198, align 16, !tbaa !9
  %204 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 9
  store i32 0, i32* %204, align 4, !tbaa !9
  %205 = icmp eq i32 %63, 0
  br i1 %205, label %240, label %206

206:                                              ; preds = %64
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %68)
  call void @_Z8putarrayiPi(i32 noundef 10, i32* noundef nonnull %148)
  %207 = bitcast [10 x i32]* %66 to <4 x i32>*
  %208 = load <4 x i32>, <4 x i32>* %207, align 16, !tbaa !9
  %209 = sitofp <4 x i32> %208 to <4 x float>
  %210 = bitcast [10 x float]* %65 to <4 x float>*
  %211 = load <4 x float>, <4 x float>* %210, align 16, !tbaa !5
  %212 = fsub <4 x float> %209, %211
  %213 = fptosi <4 x float> %212 to <4 x i32>
  %214 = bitcast [10 x i32]* %66 to <4 x i32>*
  store <4 x i32> %213, <4 x i32>* %214, align 16, !tbaa !9
  %215 = bitcast i32* %172 to <4 x i32>*
  %216 = load <4 x i32>, <4 x i32>* %215, align 16, !tbaa !9
  %217 = sitofp <4 x i32> %216 to <4 x float>
  %218 = bitcast float* %103 to <4 x float>*
  %219 = load <4 x float>, <4 x float>* %218, align 16, !tbaa !5
  %220 = fsub <4 x float> %217, %219
  %221 = fptosi <4 x float> %220 to <4 x i32>
  %222 = bitcast i32* %172 to <4 x i32>*
  store <4 x i32> %221, <4 x i32>* %222, align 16, !tbaa !9
  %223 = load i32, i32* %198, align 16, !tbaa !9
  %224 = sitofp i32 %223 to float
  %225 = load float, float* %138, align 16, !tbaa !5
  %226 = fsub float %224, %225
  %227 = fptosi float %226 to i32
  store i32 %227, i32* %198, align 16, !tbaa !9
  %228 = load i32, i32* %204, align 4, !tbaa !9
  %229 = sitofp i32 %228 to float
  %230 = load float, float* %146, align 4, !tbaa !5
  %231 = fsub float %229, %230
  %232 = fptosi float %231 to i32
  store i32 %232, i32* %204, align 4, !tbaa !9
  %233 = load i32, i32* @k, align 4, !tbaa !9
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4, !tbaa !9
  %237 = sitofp i32 %236 to float
  %238 = fmul float %225, %237
  %239 = fptosi float %238 to i32
  br label %243

240:                                              ; preds = %64
  %241 = fptosi float %62 to i32
  %242 = call noundef i32 @_Z10params_mixfPiiPffiffS0_S_iiS0_S_S_iS0_S0_fffS0_ifffS_S0_S_S_S0_ffS_iS0_S0_ffS_S_iiffS_iS0_iS_S_ffS0_iS_S0_fifS0_S0_fi(float noundef %0, i32* noundef nonnull %148, i32 noundef %2, float* noundef nonnull %68, float noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float* noundef nonnull %8, i32* noundef nonnull %9, i32 noundef %10, i32 noundef %11, float* noundef nonnull %12, i32* noundef nonnull %13, i32* noundef nonnull %14, i32 noundef %15, float* noundef nonnull %16, float* noundef nonnull %17, float noundef %18, float noundef %19, float noundef %20, float* noundef nonnull %21, i32 noundef %22, float noundef %23, float noundef %24, float noundef %25, i32* noundef nonnull %26, float* noundef nonnull %27, i32* noundef nonnull %28, i32* noundef nonnull %29, float* noundef nonnull %30, float noundef %31, float noundef %32, i32* noundef nonnull %33, i32 noundef %34, float* noundef nonnull %35, float* noundef nonnull %36, float noundef %37, float noundef %38, i32* noundef nonnull %39, i32* noundef nonnull %40, i32 noundef %41, i32 noundef %42, float noundef %43, float noundef %44, i32* noundef nonnull %45, i32 noundef %46, float* noundef nonnull %47, i32 noundef %48, i32* noundef nonnull %49, i32* noundef nonnull %50, float noundef %51, float noundef %52, float* noundef nonnull %53, i32 noundef %54, i32* noundef nonnull %55, float* noundef nonnull %56, float noundef %57, i32 noundef %58, float noundef %59, float* noundef nonnull %60, float* noundef nonnull %61, float noundef 0.000000e+00, i32 noundef %241)
  br label %243

243:                                              ; preds = %240, %206
  %244 = phi i32 [ %239, %206 ], [ %242, %240 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %147) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %67) #4
  ret i32 %244
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [10 x float], align 16
  %2 = alloca [40 x [3 x float]], align 16
  %3 = alloca [24 x [3 x i32]], align 16
  %4 = bitcast [40 x [3 x float]]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %4) #4
  %5 = bitcast [24 x [3 x i32]]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %5) #4
  %6 = tail call noundef i32 @_Z6getintv()
  store i32 %6, i32* @k, align 4, !tbaa !9
  %7 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 0, i64 0
  %8 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %7)
  %9 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 1, i64 0
  %10 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %9)
  %11 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 2, i64 0
  %12 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %11)
  %13 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 3, i64 0
  %14 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %13)
  %15 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 4, i64 0
  %16 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %15)
  %17 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 5, i64 0
  %18 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %17)
  %19 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 6, i64 0
  %20 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %19)
  %21 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 7, i64 0
  %22 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %21)
  %23 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 8, i64 0
  %24 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %23)
  %25 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 9, i64 0
  %26 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %25)
  %27 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 10, i64 0
  %28 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %27)
  %29 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 11, i64 0
  %30 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %29)
  %31 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 12, i64 0
  %32 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %31)
  %33 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 13, i64 0
  %34 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %33)
  %35 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 14, i64 0
  %36 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %35)
  %37 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 15, i64 0
  %38 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %37)
  %39 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 16, i64 0
  %40 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %39)
  %41 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 17, i64 0
  %42 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %41)
  %43 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 18, i64 0
  %44 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %43)
  %45 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 19, i64 0
  %46 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %45)
  %47 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 20, i64 0
  %48 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %47)
  %49 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 21, i64 0
  %50 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %49)
  %51 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 22, i64 0
  %52 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %51)
  %53 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 23, i64 0
  %54 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %53)
  %55 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 24, i64 0
  %56 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %55)
  %57 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 25, i64 0
  %58 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %57)
  %59 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 26, i64 0
  %60 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %59)
  %61 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 27, i64 0
  %62 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %61)
  %63 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 28, i64 0
  %64 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %63)
  %65 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 29, i64 0
  %66 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %65)
  %67 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 30, i64 0
  %68 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %67)
  %69 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 31, i64 0
  %70 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %69)
  %71 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 32, i64 0
  %72 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %71)
  %73 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 33, i64 0
  %74 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %73)
  %75 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 34, i64 0
  %76 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %75)
  %77 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 35, i64 0
  %78 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %77)
  %79 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 36, i64 0
  %80 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %79)
  %81 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 37, i64 0
  %82 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %81)
  %83 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 38, i64 0
  %84 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %83)
  %85 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 39, i64 0
  %86 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %85)
  %87 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 0, i64 0
  %88 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %87)
  %89 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 1, i64 0
  %90 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %89)
  %91 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 2, i64 0
  %92 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %91)
  %93 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 3, i64 0
  %94 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %93)
  %95 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 4, i64 0
  %96 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %95)
  %97 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 5, i64 0
  %98 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %97)
  %99 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 6, i64 0
  %100 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %99)
  %101 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 7, i64 0
  %102 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %101)
  %103 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 8, i64 0
  %104 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %103)
  %105 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 9, i64 0
  %106 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %105)
  %107 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 10, i64 0
  %108 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %107)
  %109 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 11, i64 0
  %110 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %109)
  %111 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 12, i64 0
  %112 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %111)
  %113 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 13, i64 0
  %114 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %113)
  %115 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 14, i64 0
  %116 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %115)
  %117 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 15, i64 0
  %118 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %117)
  %119 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 16, i64 0
  %120 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %119)
  %121 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 17, i64 0
  %122 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %121)
  %123 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 18, i64 0
  %124 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %123)
  %125 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 19, i64 0
  %126 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %125)
  %127 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 20, i64 0
  %128 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %127)
  %129 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 21, i64 0
  %130 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %129)
  %131 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 22, i64 0
  %132 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %131)
  %133 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 23, i64 0
  %134 = call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %133)
  %135 = load i32, i32* @k, align 4, !tbaa !9
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 0, i64 %136
  %138 = load float, float* %137, align 4, !tbaa !5
  %139 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 1, i64 %136
  %140 = load float, float* %139, align 4, !tbaa !5
  %141 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 2, i64 %136
  %142 = load float, float* %141, align 4, !tbaa !5
  %143 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 3, i64 %136
  %144 = load float, float* %143, align 4, !tbaa !5
  %145 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 4, i64 %136
  %146 = load float, float* %145, align 4, !tbaa !5
  %147 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 5, i64 %136
  %148 = load float, float* %147, align 4, !tbaa !5
  %149 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 6, i64 %136
  %150 = load float, float* %149, align 4, !tbaa !5
  %151 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 7, i64 %136
  %152 = load float, float* %151, align 4, !tbaa !5
  %153 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 8, i64 %136
  %154 = load float, float* %153, align 4, !tbaa !5
  %155 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 9, i64 %136
  %156 = load float, float* %155, align 4, !tbaa !5
  %157 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 10, i64 %136
  %158 = load float, float* %157, align 4, !tbaa !5
  %159 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 11, i64 %136
  %160 = load float, float* %159, align 4, !tbaa !5
  %161 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 12, i64 %136
  %162 = load float, float* %161, align 4, !tbaa !5
  %163 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 13, i64 %136
  %164 = load float, float* %163, align 4, !tbaa !5
  %165 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 14, i64 %136
  %166 = load float, float* %165, align 4, !tbaa !5
  %167 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 15, i64 %136
  %168 = load float, float* %167, align 4, !tbaa !5
  %169 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 16, i64 %136
  %170 = load float, float* %169, align 4, !tbaa !5
  %171 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 17, i64 %136
  %172 = load float, float* %171, align 4, !tbaa !5
  %173 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 18, i64 %136
  %174 = load float, float* %173, align 4, !tbaa !5
  %175 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 19, i64 %136
  %176 = load float, float* %175, align 4, !tbaa !5
  %177 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 20, i64 %136
  %178 = load float, float* %177, align 4, !tbaa !5
  %179 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 21, i64 %136
  %180 = load float, float* %179, align 4, !tbaa !5
  %181 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 22, i64 %136
  %182 = load float, float* %181, align 4, !tbaa !5
  %183 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 23, i64 %136
  %184 = load float, float* %183, align 4, !tbaa !5
  %185 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 24, i64 %136
  %186 = load float, float* %185, align 4, !tbaa !5
  %187 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 25, i64 %136
  %188 = load float, float* %187, align 4, !tbaa !5
  %189 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 26, i64 %136
  %190 = load float, float* %189, align 4, !tbaa !5
  %191 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 27, i64 %136
  %192 = load float, float* %191, align 4, !tbaa !5
  %193 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 28, i64 %136
  %194 = load float, float* %193, align 4, !tbaa !5
  %195 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 29, i64 %136
  %196 = load float, float* %195, align 4, !tbaa !5
  %197 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 30, i64 %136
  %198 = load float, float* %197, align 4, !tbaa !5
  %199 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 31, i64 %136
  %200 = load float, float* %199, align 4, !tbaa !5
  %201 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 32, i64 %136
  %202 = load float, float* %201, align 4, !tbaa !5
  %203 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 33, i64 %136
  %204 = load float, float* %203, align 4, !tbaa !5
  %205 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 34, i64 %136
  %206 = load float, float* %205, align 4, !tbaa !5
  %207 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 35, i64 %136
  %208 = load float, float* %207, align 4, !tbaa !5
  %209 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 36, i64 %136
  %210 = load float, float* %209, align 4, !tbaa !5
  %211 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 37, i64 %136
  %212 = load float, float* %211, align 4, !tbaa !5
  %213 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 38, i64 %136
  %214 = load float, float* %213, align 4, !tbaa !5
  %215 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 39, i64 %136
  %216 = load float, float* %215, align 4, !tbaa !5
  %217 = fcmp une float %216, 0.000000e+00
  %218 = insertelement <4 x float> poison, float %138, i64 0
  %219 = insertelement <4 x float> %218, float %146, i64 1
  %220 = insertelement <4 x float> %219, float %154, i64 2
  %221 = insertelement <4 x float> %220, float %162, i64 3
  %222 = insertelement <4 x float> poison, float %144, i64 0
  %223 = insertelement <4 x float> %222, float %152, i64 1
  %224 = insertelement <4 x float> %223, float %160, i64 2
  %225 = insertelement <4 x float> %224, float %168, i64 3
  %226 = insertelement <4 x float> poison, float %142, i64 0
  %227 = insertelement <4 x float> %226, float %150, i64 1
  %228 = insertelement <4 x float> %227, float %158, i64 2
  %229 = insertelement <4 x float> %228, float %166, i64 3
  %230 = insertelement <4 x float> poison, float %140, i64 0
  %231 = insertelement <4 x float> %230, float %148, i64 1
  %232 = insertelement <4 x float> %231, float %156, i64 2
  %233 = insertelement <4 x float> %232, float %164, i64 3
  %234 = insertelement <4 x float> poison, float %170, i64 0
  %235 = insertelement <4 x float> %234, float %178, i64 1
  %236 = insertelement <4 x float> %235, float %186, i64 2
  %237 = insertelement <4 x float> %236, float %194, i64 3
  %238 = insertelement <4 x float> poison, float %176, i64 0
  %239 = insertelement <4 x float> %238, float %184, i64 1
  %240 = insertelement <4 x float> %239, float %192, i64 2
  %241 = insertelement <4 x float> %240, float %200, i64 3
  %242 = insertelement <4 x float> poison, float %174, i64 0
  %243 = insertelement <4 x float> %242, float %182, i64 1
  %244 = insertelement <4 x float> %243, float %190, i64 2
  %245 = insertelement <4 x float> %244, float %198, i64 3
  %246 = insertelement <4 x float> poison, float %172, i64 0
  %247 = insertelement <4 x float> %246, float %180, i64 1
  %248 = insertelement <4 x float> %247, float %188, i64 2
  %249 = insertelement <4 x float> %248, float %196, i64 3
  br i1 %217, label %289, label %250

250:                                              ; preds = %0
  %251 = insertelement <4 x float> poison, float %178, i64 0
  %252 = insertelement <4 x float> %251, float %186, i64 1
  %253 = insertelement <4 x float> %252, float %194, i64 2
  %254 = insertelement <4 x float> %253, float %202, i64 3
  %255 = insertelement <4 x float> poison, float %146, i64 0
  %256 = insertelement <4 x float> %255, float %154, i64 1
  %257 = insertelement <4 x float> %256, float %162, i64 2
  %258 = insertelement <4 x float> %257, float %170, i64 3
  br label %259

259:                                              ; preds = %250, %259
  %260 = phi float [ %279, %259 ], [ %216, %250 ]
  %261 = phi float [ %260, %259 ], [ %214, %250 ]
  %262 = phi float [ %261, %259 ], [ %212, %250 ]
  %263 = phi float [ %262, %259 ], [ %210, %250 ]
  %264 = phi float [ %263, %259 ], [ %208, %250 ]
  %265 = phi float [ %264, %259 ], [ %206, %250 ]
  %266 = phi float [ %265, %259 ], [ %204, %250 ]
  %267 = phi float [ %276, %259 ], [ %138, %250 ]
  %268 = phi <4 x float> [ %269, %259 ], [ %233, %250 ]
  %269 = phi <4 x float> [ %270, %259 ], [ %229, %250 ]
  %270 = phi <4 x float> [ %271, %259 ], [ %225, %250 ]
  %271 = phi <4 x float> [ %281, %259 ], [ %258, %250 ]
  %272 = phi <4 x float> [ %273, %259 ], [ %249, %250 ]
  %273 = phi <4 x float> [ %274, %259 ], [ %245, %250 ]
  %274 = phi <4 x float> [ %275, %259 ], [ %241, %250 ]
  %275 = phi <4 x float> [ %288, %259 ], [ %254, %250 ]
  %276 = extractelement <4 x float> %268, i64 0
  %277 = fadd float %276, %267
  %278 = extractelement <4 x float> %269, i64 0
  %279 = fadd float %278, %277
  %280 = fcmp une float %279, 0.000000e+00
  %281 = shufflevector <4 x float> %268, <4 x float> %272, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %282 = extractelement <4 x float> %272, i64 1
  %283 = insertelement <4 x float> poison, float %282, i64 0
  %284 = extractelement <4 x float> %272, i64 2
  %285 = insertelement <4 x float> %283, float %284, i64 1
  %286 = extractelement <4 x float> %272, i64 3
  %287 = insertelement <4 x float> %285, float %286, i64 2
  %288 = insertelement <4 x float> %287, float %266, i64 3
  br i1 %280, label %289, label %259

289:                                              ; preds = %259, %0
  %290 = phi float [ %202, %0 ], [ %266, %259 ]
  %291 = phi float [ %204, %0 ], [ %265, %259 ]
  %292 = phi float [ %206, %0 ], [ %264, %259 ]
  %293 = phi float [ %208, %0 ], [ %263, %259 ]
  %294 = phi float [ %210, %0 ], [ %262, %259 ]
  %295 = phi float [ %212, %0 ], [ %261, %259 ]
  %296 = phi float [ %214, %0 ], [ %260, %259 ]
  %297 = phi float [ %216, %0 ], [ %279, %259 ]
  %298 = phi <4 x float> [ %221, %0 ], [ %268, %259 ]
  %299 = phi <4 x float> [ %233, %0 ], [ %269, %259 ]
  %300 = phi <4 x float> [ %229, %0 ], [ %270, %259 ]
  %301 = phi <4 x float> [ %225, %0 ], [ %271, %259 ]
  %302 = phi <4 x float> [ %237, %0 ], [ %272, %259 ]
  %303 = phi <4 x float> [ %249, %0 ], [ %273, %259 ]
  %304 = phi <4 x float> [ %245, %0 ], [ %274, %259 ]
  %305 = phi <4 x float> [ %241, %0 ], [ %275, %259 ]
  %306 = bitcast [10 x float]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %306) #4
  %307 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 0
  %308 = fadd <4 x float> %298, %299
  %309 = fadd <4 x float> %308, %300
  %310 = fadd <4 x float> %309, %301
  %311 = bitcast [10 x float]* %1 to <4 x float>*
  store <4 x float> %310, <4 x float>* %311, align 16, !tbaa !5
  %312 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 4
  %313 = fadd <4 x float> %302, %303
  %314 = fadd <4 x float> %313, %304
  %315 = fadd <4 x float> %314, %305
  %316 = bitcast float* %312 to <4 x float>*
  store <4 x float> %315, <4 x float>* %316, align 16, !tbaa !5
  %317 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 8
  %318 = fadd float %290, %291
  %319 = fadd float %318, %292
  %320 = fadd float %319, %293
  store float %320, float* %317, align 16, !tbaa !5
  %321 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 9
  %322 = fadd float %294, %295
  %323 = fadd float %322, %296
  %324 = fadd float %323, %297
  store float %324, float* %321, align 4, !tbaa !5
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %307)
  %325 = load i32, i32* @k, align 4, !tbaa !9
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 %326
  %328 = load float, float* %327, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %306) #4
  %329 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 23, i64 %326
  %330 = load i32, i32* %329, align 4, !tbaa !9
  %331 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 2, i64 %326
  %332 = load i32, i32* %331, align 4, !tbaa !9
  %333 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 6, i64 %326
  %334 = load i32, i32* %333, align 4, !tbaa !9
  %335 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 4, i64 %326
  %336 = load float, float* %335, align 4, !tbaa !5
  %337 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 1, i64 %326
  %338 = load i32, i32* %337, align 4, !tbaa !9
  %339 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 4, i64 %326
  %340 = load i32, i32* %339, align 4, !tbaa !9
  %341 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 5, i64 %326
  %342 = load i32, i32* %341, align 4, !tbaa !9
  %343 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 8, i64 %326
  %344 = load float, float* %343, align 4, !tbaa !5
  %345 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 15, i64 %326
  %346 = load float, float* %345, align 4, !tbaa !5
  %347 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 7, i64 %326
  %348 = load float, float* %347, align 4, !tbaa !5
  %349 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 22, i64 %326
  %350 = load i32, i32* %349, align 4, !tbaa !9
  %351 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 3, i64 %326
  %352 = load float, float* %351, align 4, !tbaa !5
  %353 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 28, i64 %326
  %354 = load float, float* %353, align 4, !tbaa !5
  %355 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 0, i64 %326
  %356 = load i32, i32* %355, align 4, !tbaa !9
  %357 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 37, i64 %326
  %358 = load float, float* %357, align 4, !tbaa !5
  %359 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 19, i64 %326
  %360 = load i32, i32* %359, align 4, !tbaa !9
  %361 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 30, i64 %326
  %362 = load float, float* %361, align 4, !tbaa !5
  %363 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 12, i64 %326
  %364 = load float, float* %363, align 4, !tbaa !5
  %365 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 1, i64 %326
  %366 = load float, float* %365, align 4, !tbaa !5
  %367 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 11, i64 %326
  %368 = load float, float* %367, align 4, !tbaa !5
  %369 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 38, i64 %326
  %370 = load float, float* %369, align 4, !tbaa !5
  %371 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 6, i64 %326
  %372 = load float, float* %371, align 4, !tbaa !5
  %373 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 7, i64 %326
  %374 = load i32, i32* %373, align 4, !tbaa !9
  %375 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 32, i64 %326
  %376 = load float, float* %375, align 4, !tbaa !5
  %377 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 10, i64 %326
  %378 = load i32, i32* %377, align 4, !tbaa !9
  %379 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 13, i64 %326
  %380 = load i32, i32* %379, align 4, !tbaa !9
  %381 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 20, i64 %326
  %382 = load float, float* %381, align 4, !tbaa !5
  %383 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 33, i64 %326
  %384 = load float, float* %383, align 4, !tbaa !5
  %385 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 23, i64 %326
  %386 = load float, float* %385, align 4, !tbaa !5
  %387 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 9, i64 %326
  %388 = load float, float* %387, align 4, !tbaa !5
  %389 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 25, i64 %326
  %390 = load float, float* %389, align 4, !tbaa !5
  %391 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 8, i64 %326
  %392 = load i32, i32* %391, align 4, !tbaa !9
  %393 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 39, i64 %326
  %394 = load float, float* %393, align 4, !tbaa !5
  %395 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 17, i64 %326
  %396 = load i32, i32* %395, align 4, !tbaa !9
  %397 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 21, i64 %326
  %398 = load float, float* %397, align 4, !tbaa !5
  %399 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 16, i64 %326
  %400 = load float, float* %399, align 4, !tbaa !5
  %401 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 5, i64 %326
  %402 = load float, float* %401, align 4, !tbaa !5
  %403 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 34, i64 %326
  %404 = load float, float* %403, align 4, !tbaa !5
  %405 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 18, i64 %326
  %406 = load i32, i32* %405, align 4, !tbaa !9
  %407 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 9, i64 %326
  %408 = load i32, i32* %407, align 4, !tbaa !9
  %409 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 14, i64 %326
  %410 = load float, float* %409, align 4, !tbaa !5
  %411 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 10, i64 %326
  %412 = load float, float* %411, align 4, !tbaa !5
  %413 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 0, i64 %326
  %414 = load float, float* %413, align 4, !tbaa !5
  %415 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 12, i64 %326
  %416 = load i32, i32* %415, align 4, !tbaa !9
  %417 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 31, i64 %326
  %418 = load float, float* %417, align 4, !tbaa !5
  %419 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 11, i64 %326
  %420 = load i32, i32* %419, align 4, !tbaa !9
  %421 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 16, i64 %326
  %422 = load i32, i32* %421, align 4, !tbaa !9
  %423 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 27, i64 %326
  %424 = load float, float* %423, align 4, !tbaa !5
  %425 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 24, i64 %326
  %426 = load float, float* %425, align 4, !tbaa !5
  %427 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 13, i64 %326
  %428 = load float, float* %427, align 4, !tbaa !5
  %429 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 29, i64 %326
  %430 = load float, float* %429, align 4, !tbaa !5
  %431 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 3, i64 %326
  %432 = load i32, i32* %431, align 4, !tbaa !9
  %433 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 21, i64 %326
  %434 = load i32, i32* %433, align 4, !tbaa !9
  %435 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 20, i64 %326
  %436 = load i32, i32* %435, align 4, !tbaa !9
  %437 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 18, i64 %326
  %438 = load float, float* %437, align 4, !tbaa !5
  %439 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 19, i64 %326
  %440 = load float, float* %439, align 4, !tbaa !5
  %441 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 22, i64 %326
  %442 = load float, float* %441, align 4, !tbaa !5
  %443 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 26, i64 %326
  %444 = load float, float* %443, align 4, !tbaa !5
  %445 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 36, i64 %326
  %446 = load float, float* %445, align 4, !tbaa !5
  %447 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 17, i64 %326
  %448 = load float, float* %447, align 4, !tbaa !5
  %449 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 15, i64 %326
  %450 = load i32, i32* %449, align 4, !tbaa !9
  %451 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 2, i64 %326
  %452 = load float, float* %451, align 4, !tbaa !5
  %453 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 14, i64 %326
  %454 = load i32, i32* %453, align 4, !tbaa !9
  %455 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 35, i64 %326
  %456 = load float, float* %455, align 4, !tbaa !5
  %457 = call noundef float @_Z14params_f40_i24iiifiiifffiffififfffffifiifffffififfffiifffifiiffffiiiffffffifif(i32 noundef %330, i32 noundef %332, i32 noundef %334, float noundef %336, i32 noundef %338, i32 noundef %340, i32 noundef %342, float noundef %344, float noundef %346, float noundef %348, i32 noundef %350, float noundef %352, float noundef %354, i32 noundef %356, float noundef %358, i32 noundef %360, float noundef %362, float noundef %364, float noundef %366, float noundef %368, float noundef %370, float noundef %372, i32 noundef %374, float noundef %376, i32 noundef %378, i32 noundef %380, float noundef %382, float noundef %384, float noundef %386, float noundef %388, float noundef %390, i32 noundef %392, float noundef %394, i32 noundef %396, float noundef %398, float noundef %400, float noundef %402, float noundef %404, i32 noundef %406, i32 noundef %408, float noundef %410, float noundef %412, float noundef %414, i32 noundef %416, float noundef %418, i32 noundef %420, i32 noundef %422, float noundef %424, float noundef %426, float noundef %428, float noundef %430, i32 noundef %432, i32 noundef %434, i32 noundef %436, float noundef %438, float noundef %440, float noundef %442, float noundef %444, float noundef %446, float noundef %448, i32 noundef %450, float noundef %452, i32 noundef %454, float noundef %456)
  %458 = call noundef float @_Z11params_fa40PfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(float* noundef nonnull %7, float* noundef nonnull %9, float* noundef nonnull %11, float* noundef nonnull %13, float* noundef nonnull %15, float* noundef nonnull %17, float* noundef nonnull %19, float* noundef nonnull %21, float* noundef nonnull %23, float* noundef nonnull %25, float* noundef nonnull %27, float* noundef nonnull %29, float* noundef nonnull %31, float* noundef nonnull %33, float* noundef nonnull %35, float* noundef nonnull %37, float* noundef nonnull %39, float* noundef nonnull %41, float* noundef nonnull %43, float* noundef nonnull %45, float* noundef nonnull %47, float* noundef nonnull %49, float* noundef nonnull %51, float* noundef nonnull %53, float* noundef nonnull %55, float* noundef nonnull %57, float* noundef nonnull %59, float* noundef nonnull %61, float* noundef nonnull %63, float* noundef nonnull %65, float* noundef nonnull %67, float* noundef nonnull %69, float* noundef nonnull %71, float* noundef nonnull %73, float* noundef nonnull %75, float* noundef nonnull %77, float* noundef nonnull %79, float* noundef nonnull %81, float* noundef nonnull %83, float* noundef nonnull %85)
  %459 = load i32, i32* @k, align 4, !tbaa !9
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 0, i64 %460
  %462 = load float, float* %461, align 4, !tbaa !5
  %463 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 1, i64 %460
  %464 = load i32, i32* %463, align 4, !tbaa !9
  %465 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 2, i64 %460
  %466 = load float, float* %465, align 4, !tbaa !5
  %467 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 2, i64 %460
  %468 = load i32, i32* %467, align 4, !tbaa !9
  %469 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 3, i64 %460
  %470 = load float, float* %469, align 4, !tbaa !5
  %471 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 4, i64 %460
  %472 = load float, float* %471, align 4, !tbaa !5
  %473 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 4, i64 %460
  %474 = load i32, i32* %473, align 4, !tbaa !9
  %475 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 5, i64 %460
  %476 = load i32, i32* %475, align 4, !tbaa !9
  %477 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 8, i64 %460
  %478 = load i32, i32* %477, align 4, !tbaa !9
  %479 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 9, i64 %460
  %480 = load float, float* %479, align 4, !tbaa !5
  %481 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 10, i64 %460
  %482 = load float, float* %481, align 4, !tbaa !5
  %483 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 11, i64 %460
  %484 = load float, float* %483, align 4, !tbaa !5
  %485 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 9, i64 %460
  %486 = load i32, i32* %485, align 4, !tbaa !9
  %487 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 13, i64 %460
  %488 = load float, float* %487, align 4, !tbaa !5
  %489 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 14, i64 %460
  %490 = load float, float* %489, align 4, !tbaa !5
  %491 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 15, i64 %460
  %492 = load float, float* %491, align 4, !tbaa !5
  %493 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 18, i64 %460
  %494 = load float, float* %493, align 4, !tbaa !5
  %495 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 19, i64 %460
  %496 = load float, float* %495, align 4, !tbaa !5
  %497 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 14, i64 %460
  %498 = load i32, i32* %497, align 4, !tbaa !9
  %499 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 22, i64 %460
  %500 = load float, float* %499, align 4, !tbaa !5
  %501 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 23, i64 %460
  %502 = load float, float* %501, align 4, !tbaa !5
  %503 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 17, i64 %460
  %504 = load i32, i32* %503, align 4, !tbaa !9
  %505 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 18, i64 %460
  %506 = load i32, i32* %505, align 4, !tbaa !9
  %507 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 24, i64 %460
  %508 = load float, float* %507, align 4, !tbaa !5
  %509 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 25, i64 %460
  %510 = load float, float* %509, align 4, !tbaa !5
  %511 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 20, i64 %460
  %512 = load i32, i32* %511, align 4, !tbaa !9
  %513 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 21, i64 %460
  %514 = load i32, i32* %513, align 4, !tbaa !9
  %515 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 27, i64 %460
  %516 = load float, float* %515, align 4, !tbaa !5
  %517 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 28, i64 %460
  %518 = load float, float* %517, align 4, !tbaa !5
  %519 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 0, i64 %460
  %520 = load i32, i32* %519, align 4, !tbaa !9
  %521 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 31, i64 %460
  %522 = load float, float* %521, align 4, !tbaa !5
  %523 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 32, i64 %460
  %524 = load float, float* %523, align 4, !tbaa !5
  %525 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 35, i64 %460
  %526 = load float, float* %525, align 4, !tbaa !5
  %527 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 3, i64 %460
  %528 = load i32, i32* %527, align 4, !tbaa !9
  %529 = call noundef i32 @_Z10params_mixfPiiPffiffS0_S_iiS0_S_S_iS0_S0_fffS0_ifffS_S0_S_S_S0_ffS_iS0_S0_ffS_S_iiffS_iS0_iS_S_ffS0_iS_S0_fifS0_S0_fi(float noundef %462, i32* noundef nonnull %87, i32 noundef %464, float* noundef nonnull %9, float noundef %466, i32 noundef %468, float noundef %470, float noundef %472, float* noundef nonnull %17, i32* noundef nonnull %93, i32 noundef %474, i32 noundef %476, float* noundef nonnull %19, i32* noundef nonnull %99, i32* noundef nonnull %101, i32 noundef %478, float* noundef nonnull %21, float* noundef nonnull %23, float noundef %480, float noundef %482, float noundef %484, float* noundef nonnull %31, i32 noundef %486, float noundef %488, float noundef %490, float noundef %492, i32* noundef nonnull %107, float* noundef nonnull %39, i32* noundef nonnull %109, i32* noundef nonnull %111, float* noundef nonnull %41, float noundef %494, float noundef %496, i32* noundef nonnull %113, i32 noundef %498, float* noundef nonnull %47, float* noundef nonnull %49, float noundef %500, float noundef %502, i32* noundef nonnull %117, i32* noundef nonnull %119, i32 noundef %504, i32 noundef %506, float noundef %508, float noundef %510, i32* noundef nonnull %125, i32 noundef %512, float* noundef nonnull %59, i32 noundef %514, i32* noundef nonnull %131, i32* noundef nonnull %133, float noundef %516, float noundef %518, float* noundef nonnull %65, i32 noundef %520, i32* noundef nonnull %89, float* noundef nonnull %67, float noundef %522, i32 noundef %468, float noundef %524, float* noundef nonnull %73, float* noundef nonnull %75, float noundef %526, i32 noundef %528)
  call void @_Z8putfloatf(float noundef %328)
  call void @_Z5putchi(i32 noundef 10)
  call void @_Z8putfloatf(float noundef %457)
  call void @_Z5putchi(i32 noundef 10)
  call void @_Z8putfloatf(float noundef %458)
  call void @_Z5putchi(i32 noundef 10)
  call void @_Z6putinti(i32 noundef %529)
  call void @_Z5putchi(i32 noundef 10)
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %4) #4
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare noundef i32 @_Z9getfarrayPf(float* noundef) local_unnamed_addr #2

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #2

declare void @_Z8putfloatf(float noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
