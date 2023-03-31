; ModuleID = 'tests//SysY2022/hidden_functional/39_fp_params.sy'
source_filename = "tests//SysY2022/hidden_functional/39_fp_params.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@k = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_Z10params_f40ffffffffffffffffffffffffffffffffffffffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, float noundef %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20, float noundef %21, float noundef %22, float noundef %23, float noundef %24, float noundef %25, float noundef %26, float noundef %27, float noundef %28, float noundef %29, float noundef %30, float noundef %31, float noundef %32, float noundef %33, float noundef %34, float noundef %35, float noundef %36, float noundef %37, float noundef %38, float noundef %39) local_unnamed_addr #0 {
  %41 = alloca [10 x float], align 16
  %42 = fcmp une float %39, 0.000000e+00
  br i1 %42, label %43, label %129

43:                                               ; preds = %129, %40
  %44 = phi float [ %0, %40 ], [ %168, %129 ]
  %45 = phi float [ %1, %40 ], [ %167, %129 ]
  %46 = phi float [ %2, %40 ], [ %166, %129 ]
  %47 = phi float [ %3, %40 ], [ %165, %129 ]
  %48 = phi float [ %4, %40 ], [ %164, %129 ]
  %49 = phi float [ %5, %40 ], [ %163, %129 ]
  %50 = phi float [ %6, %40 ], [ %162, %129 ]
  %51 = phi float [ %7, %40 ], [ %161, %129 ]
  %52 = phi float [ %8, %40 ], [ %160, %129 ]
  %53 = phi float [ %9, %40 ], [ %159, %129 ]
  %54 = phi float [ %10, %40 ], [ %158, %129 ]
  %55 = phi float [ %11, %40 ], [ %157, %129 ]
  %56 = phi float [ %12, %40 ], [ %156, %129 ]
  %57 = phi float [ %13, %40 ], [ %155, %129 ]
  %58 = phi float [ %14, %40 ], [ %154, %129 ]
  %59 = phi float [ %15, %40 ], [ %153, %129 ]
  %60 = phi float [ %16, %40 ], [ %152, %129 ]
  %61 = phi float [ %17, %40 ], [ %151, %129 ]
  %62 = phi float [ %18, %40 ], [ %150, %129 ]
  %63 = phi float [ %19, %40 ], [ %149, %129 ]
  %64 = phi float [ %20, %40 ], [ %148, %129 ]
  %65 = phi float [ %21, %40 ], [ %147, %129 ]
  %66 = phi float [ %22, %40 ], [ %146, %129 ]
  %67 = phi float [ %23, %40 ], [ %145, %129 ]
  %68 = phi float [ %24, %40 ], [ %144, %129 ]
  %69 = phi float [ %25, %40 ], [ %143, %129 ]
  %70 = phi float [ %26, %40 ], [ %142, %129 ]
  %71 = phi float [ %27, %40 ], [ %141, %129 ]
  %72 = phi float [ %28, %40 ], [ %140, %129 ]
  %73 = phi float [ %29, %40 ], [ %139, %129 ]
  %74 = phi float [ %30, %40 ], [ %138, %129 ]
  %75 = phi float [ %31, %40 ], [ %137, %129 ]
  %76 = phi float [ %32, %40 ], [ %136, %129 ]
  %77 = phi float [ %33, %40 ], [ %135, %129 ]
  %78 = phi float [ %34, %40 ], [ %134, %129 ]
  %79 = phi float [ %35, %40 ], [ %133, %129 ]
  %80 = phi float [ %36, %40 ], [ %132, %129 ]
  %81 = phi float [ %37, %40 ], [ %131, %129 ]
  %82 = phi float [ %38, %40 ], [ %130, %129 ]
  %83 = phi float [ %39, %40 ], [ %171, %129 ]
  %84 = bitcast [10 x float]* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %84) #4
  %85 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 0
  %86 = fadd float %44, %45
  %87 = fadd float %86, %46
  %88 = fadd float %87, %47
  store float %88, float* %85, align 16, !tbaa !4
  %89 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 1
  %90 = fadd float %48, %49
  %91 = fadd float %90, %50
  %92 = fadd float %91, %51
  store float %92, float* %89, align 4, !tbaa !4
  %93 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 2
  %94 = fadd float %52, %53
  %95 = fadd float %94, %54
  %96 = fadd float %95, %55
  store float %96, float* %93, align 8, !tbaa !4
  %97 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 3
  %98 = fadd float %56, %57
  %99 = fadd float %98, %58
  %100 = fadd float %99, %59
  store float %100, float* %97, align 4, !tbaa !4
  %101 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 4
  %102 = fadd float %60, %61
  %103 = fadd float %102, %62
  %104 = fadd float %103, %63
  store float %104, float* %101, align 16, !tbaa !4
  %105 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 5
  %106 = fadd float %64, %65
  %107 = fadd float %106, %66
  %108 = fadd float %107, %67
  store float %108, float* %105, align 4, !tbaa !4
  %109 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 6
  %110 = fadd float %68, %69
  %111 = fadd float %110, %70
  %112 = fadd float %111, %71
  store float %112, float* %109, align 8, !tbaa !4
  %113 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 7
  %114 = fadd float %72, %73
  %115 = fadd float %114, %74
  %116 = fadd float %115, %75
  store float %116, float* %113, align 4, !tbaa !4
  %117 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 8
  %118 = fadd float %76, %77
  %119 = fadd float %118, %78
  %120 = fadd float %119, %79
  store float %120, float* %117, align 16, !tbaa !4
  %121 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 9
  %122 = fadd float %80, %81
  %123 = fadd float %122, %82
  %124 = fadd float %123, %83
  store float %124, float* %121, align 4, !tbaa !4
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %85)
  %125 = load i32, i32* @k, align 4, !tbaa !8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %84) #4
  ret float %128

129:                                              ; preds = %40, %129
  %130 = phi float [ %171, %129 ], [ %39, %40 ]
  %131 = phi float [ %130, %129 ], [ %38, %40 ]
  %132 = phi float [ %131, %129 ], [ %37, %40 ]
  %133 = phi float [ %132, %129 ], [ %36, %40 ]
  %134 = phi float [ %133, %129 ], [ %35, %40 ]
  %135 = phi float [ %134, %129 ], [ %34, %40 ]
  %136 = phi float [ %135, %129 ], [ %33, %40 ]
  %137 = phi float [ %136, %129 ], [ %32, %40 ]
  %138 = phi float [ %137, %129 ], [ %31, %40 ]
  %139 = phi float [ %138, %129 ], [ %30, %40 ]
  %140 = phi float [ %139, %129 ], [ %29, %40 ]
  %141 = phi float [ %140, %129 ], [ %28, %40 ]
  %142 = phi float [ %141, %129 ], [ %27, %40 ]
  %143 = phi float [ %142, %129 ], [ %26, %40 ]
  %144 = phi float [ %143, %129 ], [ %25, %40 ]
  %145 = phi float [ %144, %129 ], [ %24, %40 ]
  %146 = phi float [ %145, %129 ], [ %23, %40 ]
  %147 = phi float [ %146, %129 ], [ %22, %40 ]
  %148 = phi float [ %147, %129 ], [ %21, %40 ]
  %149 = phi float [ %148, %129 ], [ %20, %40 ]
  %150 = phi float [ %149, %129 ], [ %19, %40 ]
  %151 = phi float [ %150, %129 ], [ %18, %40 ]
  %152 = phi float [ %151, %129 ], [ %17, %40 ]
  %153 = phi float [ %152, %129 ], [ %16, %40 ]
  %154 = phi float [ %153, %129 ], [ %15, %40 ]
  %155 = phi float [ %154, %129 ], [ %14, %40 ]
  %156 = phi float [ %155, %129 ], [ %13, %40 ]
  %157 = phi float [ %156, %129 ], [ %12, %40 ]
  %158 = phi float [ %157, %129 ], [ %11, %40 ]
  %159 = phi float [ %158, %129 ], [ %10, %40 ]
  %160 = phi float [ %159, %129 ], [ %9, %40 ]
  %161 = phi float [ %160, %129 ], [ %8, %40 ]
  %162 = phi float [ %161, %129 ], [ %7, %40 ]
  %163 = phi float [ %162, %129 ], [ %6, %40 ]
  %164 = phi float [ %163, %129 ], [ %5, %40 ]
  %165 = phi float [ %164, %129 ], [ %4, %40 ]
  %166 = phi float [ %165, %129 ], [ %3, %40 ]
  %167 = phi float [ %166, %129 ], [ %2, %40 ]
  %168 = phi float [ %167, %129 ], [ %1, %40 ]
  %169 = phi float [ %168, %129 ], [ %0, %40 ]
  %170 = fadd float %169, %168
  %171 = fadd float %170, %167
  %172 = fcmp une float %171, 0.000000e+00
  br i1 %172, label %43, label %129
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
  %71 = fadd float %18, %42
  %72 = fadd float %71, %61
  %73 = fadd float %72, %11
  store float %73, float* %70, align 16, !tbaa !4
  %74 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 1
  %75 = fadd float %3, %36
  %76 = fadd float %75, %21
  %77 = fadd float %76, %9
  store float %77, float* %74, align 4, !tbaa !4
  %78 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 2
  %79 = fadd float %7, %29
  %80 = fadd float %79, %41
  %81 = fadd float %80, %19
  store float %81, float* %78, align 8, !tbaa !4
  %82 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 3
  %83 = fadd float %17, %49
  %84 = fadd float %83, %40
  %85 = fadd float %84, %8
  store float %85, float* %82, align 4, !tbaa !4
  %86 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 4
  %87 = fadd float %35, %59
  %88 = fadd float %87, %54
  %89 = fadd float %88, %55
  store float %89, float* %86, align 16, !tbaa !4
  %90 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 5
  %91 = fadd float %26, %34
  %92 = fadd float %91, %56
  %93 = fadd float %92, %28
  store float %93, float* %90, align 4, !tbaa !4
  %94 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 6
  %95 = fadd float %30, %48
  %96 = fadd float %95, %57
  %97 = fadd float %96, %47
  store float %97, float* %94, align 8, !tbaa !4
  %98 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 7
  %99 = fadd float %12, %50
  %100 = fadd float %99, %16
  %101 = fadd float %100, %44
  store float %101, float* %98, align 4, !tbaa !4
  %102 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 8
  %103 = fadd float %23, %27
  %104 = fadd float %103, %37
  %105 = fadd float %104, %63
  store float %105, float* %102, align 16, !tbaa !4
  %106 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 9
  %107 = fadd float %14, %58
  %108 = fadd float %107, %20
  %109 = fadd float %108, %32
  store float %109, float* %106, align 4, !tbaa !4
  %110 = bitcast [8 x i32]* %66 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %110) #4
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 0
  %112 = add i32 %4, %1
  %113 = add i32 %112, %13
  store i32 %113, i32* %111, align 16, !tbaa !8
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 1
  %115 = add i32 %6, %5
  %116 = add i32 %115, %51
  store i32 %116, i32* %114, align 4, !tbaa !8
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 2
  %118 = add nsw i32 %22, %2
  %119 = add nsw i32 %118, %31
  store i32 %119, i32* %117, align 8, !tbaa !8
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 3
  %121 = add nsw i32 %39, %24
  %122 = add nsw i32 %121, %45
  store i32 %122, i32* %120, align 4, !tbaa !8
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 4
  %124 = add nsw i32 %43, %25
  %125 = add nsw i32 %124, %62
  store i32 %125, i32* %123, align 16, !tbaa !8
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 5
  %127 = add i32 %46, %33
  %128 = add i32 %127, %60
  store i32 %128, i32* %126, align 4, !tbaa !8
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 6
  %130 = add nsw i32 %38, %15
  %131 = add nsw i32 %130, %53
  store i32 %131, i32* %129, align 8, !tbaa !8
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 7
  %133 = add nsw i32 %52, %10
  %134 = add nsw i32 %133, %68
  store i32 %134, i32* %132, align 4, !tbaa !8
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %70)
  call void @_Z8putarrayiPi(i32 noundef 8, i32* noundef nonnull %111)
  %135 = load i32, i32* %111, align 16, !tbaa !8
  %136 = sitofp i32 %135 to float
  %137 = load float, float* %70, align 16, !tbaa !4
  %138 = fsub float %136, %137
  %139 = fptosi float %138 to i32
  store i32 %139, i32* %111, align 16, !tbaa !8
  %140 = load i32, i32* %114, align 4, !tbaa !8
  %141 = sitofp i32 %140 to float
  %142 = load float, float* %74, align 4, !tbaa !4
  %143 = fsub float %141, %142
  %144 = fptosi float %143 to i32
  store i32 %144, i32* %114, align 4, !tbaa !8
  %145 = load i32, i32* %117, align 8, !tbaa !8
  %146 = sitofp i32 %145 to float
  %147 = load float, float* %78, align 8, !tbaa !4
  %148 = fsub float %146, %147
  %149 = fptosi float %148 to i32
  store i32 %149, i32* %117, align 8, !tbaa !8
  %150 = load i32, i32* %120, align 4, !tbaa !8
  %151 = sitofp i32 %150 to float
  %152 = load float, float* %82, align 4, !tbaa !4
  %153 = fsub float %151, %152
  %154 = fptosi float %153 to i32
  store i32 %154, i32* %120, align 4, !tbaa !8
  %155 = load i32, i32* %123, align 16, !tbaa !8
  %156 = sitofp i32 %155 to float
  %157 = load float, float* %86, align 16, !tbaa !4
  %158 = fsub float %156, %157
  %159 = fptosi float %158 to i32
  store i32 %159, i32* %123, align 16, !tbaa !8
  %160 = load i32, i32* %126, align 4, !tbaa !8
  %161 = sitofp i32 %160 to float
  %162 = load float, float* %90, align 4, !tbaa !4
  %163 = fsub float %161, %162
  %164 = fptosi float %163 to i32
  store i32 %164, i32* %126, align 4, !tbaa !8
  %165 = load i32, i32* %129, align 8, !tbaa !8
  %166 = sitofp i32 %165 to float
  %167 = load float, float* %94, align 8, !tbaa !4
  %168 = fsub float %166, %167
  %169 = fptosi float %168 to i32
  store i32 %169, i32* %129, align 8, !tbaa !8
  %170 = load i32, i32* %132, align 4, !tbaa !8
  %171 = sitofp i32 %170 to float
  %172 = load float, float* %98, align 4, !tbaa !4
  %173 = fsub float %171, %172
  %174 = fptosi float %173 to i32
  store i32 %174, i32* %132, align 4, !tbaa !8
  %175 = load i32, i32* @k, align 4, !tbaa !8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4, !tbaa !8
  %179 = sitofp i32 %178 to float
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %110) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %69) #4
  ret float %179
}

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_Z11params_fa40PfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, float* nocapture noundef readonly %2, float* nocapture noundef readonly %3, float* nocapture noundef readonly %4, float* nocapture noundef readonly %5, float* nocapture noundef readonly %6, float* nocapture noundef readonly %7, float* nocapture noundef readonly %8, float* nocapture noundef readonly %9, float* nocapture noundef readonly %10, float* nocapture noundef readonly %11, float* nocapture noundef readonly %12, float* nocapture noundef readonly %13, float* nocapture noundef readonly %14, float* nocapture noundef readonly %15, float* nocapture noundef readonly %16, float* nocapture noundef readonly %17, float* nocapture noundef readonly %18, float* nocapture noundef readonly %19, float* nocapture noundef readonly %20, float* nocapture noundef readonly %21, float* nocapture noundef readonly %22, float* nocapture noundef readonly %23, float* nocapture noundef readonly %24, float* nocapture noundef readonly %25, float* nocapture noundef readonly %26, float* nocapture noundef readonly %27, float* nocapture noundef readonly %28, float* nocapture noundef readonly %29, float* nocapture noundef readonly %30, float* nocapture noundef readonly %31, float* nocapture noundef readonly %32, float* nocapture noundef readonly %33, float* nocapture noundef readonly %34, float* nocapture noundef readonly %35, float* nocapture noundef readonly %36, float* nocapture noundef readonly %37, float* nocapture noundef readonly %38, float* nocapture noundef readonly %39) local_unnamed_addr #0 {
  %41 = alloca [10 x float], align 16
  %42 = bitcast [10 x float]* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %42) #4
  %43 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 0
  %44 = load i32, i32* @k, align 4, !tbaa !8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %0, i64 %45
  %47 = load float, float* %46, align 4, !tbaa !4
  %48 = getelementptr inbounds float, float* %1, i64 %45
  %49 = load float, float* %48, align 4, !tbaa !4
  %50 = fadd float %47, %49
  %51 = getelementptr inbounds float, float* %2, i64 %45
  %52 = load float, float* %51, align 4, !tbaa !4
  %53 = fadd float %50, %52
  %54 = getelementptr inbounds float, float* %3, i64 %45
  %55 = load float, float* %54, align 4, !tbaa !4
  %56 = fadd float %53, %55
  store float %56, float* %43, align 16, !tbaa !4
  %57 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 1
  %58 = getelementptr inbounds float, float* %4, i64 %45
  %59 = load float, float* %58, align 4, !tbaa !4
  %60 = getelementptr inbounds float, float* %5, i64 %45
  %61 = load float, float* %60, align 4, !tbaa !4
  %62 = fadd float %59, %61
  %63 = getelementptr inbounds float, float* %6, i64 %45
  %64 = load float, float* %63, align 4, !tbaa !4
  %65 = fadd float %62, %64
  %66 = getelementptr inbounds float, float* %7, i64 %45
  %67 = load float, float* %66, align 4, !tbaa !4
  %68 = fadd float %65, %67
  store float %68, float* %57, align 4, !tbaa !4
  %69 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 2
  %70 = getelementptr inbounds float, float* %8, i64 %45
  %71 = load float, float* %70, align 4, !tbaa !4
  %72 = getelementptr inbounds float, float* %9, i64 %45
  %73 = load float, float* %72, align 4, !tbaa !4
  %74 = fadd float %71, %73
  %75 = getelementptr inbounds float, float* %10, i64 %45
  %76 = load float, float* %75, align 4, !tbaa !4
  %77 = fadd float %74, %76
  %78 = getelementptr inbounds float, float* %11, i64 %45
  %79 = load float, float* %78, align 4, !tbaa !4
  %80 = fadd float %77, %79
  store float %80, float* %69, align 8, !tbaa !4
  %81 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 3
  %82 = getelementptr inbounds float, float* %12, i64 %45
  %83 = load float, float* %82, align 4, !tbaa !4
  %84 = getelementptr inbounds float, float* %13, i64 %45
  %85 = load float, float* %84, align 4, !tbaa !4
  %86 = fadd float %83, %85
  %87 = getelementptr inbounds float, float* %14, i64 %45
  %88 = load float, float* %87, align 4, !tbaa !4
  %89 = fadd float %86, %88
  %90 = getelementptr inbounds float, float* %15, i64 %45
  %91 = load float, float* %90, align 4, !tbaa !4
  %92 = fadd float %89, %91
  store float %92, float* %81, align 4, !tbaa !4
  %93 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 4
  %94 = getelementptr inbounds float, float* %16, i64 %45
  %95 = load float, float* %94, align 4, !tbaa !4
  %96 = getelementptr inbounds float, float* %17, i64 %45
  %97 = load float, float* %96, align 4, !tbaa !4
  %98 = fadd float %95, %97
  %99 = getelementptr inbounds float, float* %18, i64 %45
  %100 = load float, float* %99, align 4, !tbaa !4
  %101 = fadd float %98, %100
  %102 = getelementptr inbounds float, float* %19, i64 %45
  %103 = load float, float* %102, align 4, !tbaa !4
  %104 = fadd float %101, %103
  store float %104, float* %93, align 16, !tbaa !4
  %105 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 5
  %106 = getelementptr inbounds float, float* %20, i64 %45
  %107 = load float, float* %106, align 4, !tbaa !4
  %108 = getelementptr inbounds float, float* %21, i64 %45
  %109 = load float, float* %108, align 4, !tbaa !4
  %110 = fadd float %107, %109
  %111 = getelementptr inbounds float, float* %22, i64 %45
  %112 = load float, float* %111, align 4, !tbaa !4
  %113 = fadd float %110, %112
  %114 = getelementptr inbounds float, float* %23, i64 %45
  %115 = load float, float* %114, align 4, !tbaa !4
  %116 = fadd float %113, %115
  store float %116, float* %105, align 4, !tbaa !4
  %117 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 6
  %118 = getelementptr inbounds float, float* %24, i64 %45
  %119 = load float, float* %118, align 4, !tbaa !4
  %120 = getelementptr inbounds float, float* %25, i64 %45
  %121 = load float, float* %120, align 4, !tbaa !4
  %122 = fadd float %119, %121
  %123 = getelementptr inbounds float, float* %26, i64 %45
  %124 = load float, float* %123, align 4, !tbaa !4
  %125 = fadd float %122, %124
  %126 = getelementptr inbounds float, float* %27, i64 %45
  %127 = load float, float* %126, align 4, !tbaa !4
  %128 = fadd float %125, %127
  store float %128, float* %117, align 8, !tbaa !4
  %129 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 7
  %130 = getelementptr inbounds float, float* %28, i64 %45
  %131 = load float, float* %130, align 4, !tbaa !4
  %132 = getelementptr inbounds float, float* %29, i64 %45
  %133 = load float, float* %132, align 4, !tbaa !4
  %134 = fadd float %131, %133
  %135 = getelementptr inbounds float, float* %30, i64 %45
  %136 = load float, float* %135, align 4, !tbaa !4
  %137 = fadd float %134, %136
  %138 = getelementptr inbounds float, float* %31, i64 %45
  %139 = load float, float* %138, align 4, !tbaa !4
  %140 = fadd float %137, %139
  store float %140, float* %129, align 4, !tbaa !4
  %141 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 8
  %142 = getelementptr inbounds float, float* %32, i64 %45
  %143 = load float, float* %142, align 4, !tbaa !4
  %144 = getelementptr inbounds float, float* %33, i64 %45
  %145 = load float, float* %144, align 4, !tbaa !4
  %146 = fadd float %143, %145
  %147 = getelementptr inbounds float, float* %34, i64 %45
  %148 = load float, float* %147, align 4, !tbaa !4
  %149 = fadd float %146, %148
  %150 = getelementptr inbounds float, float* %35, i64 %45
  %151 = load float, float* %150, align 4, !tbaa !4
  %152 = fadd float %149, %151
  store float %152, float* %141, align 16, !tbaa !4
  %153 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 9
  %154 = getelementptr inbounds float, float* %36, i64 %45
  %155 = load float, float* %154, align 4, !tbaa !4
  %156 = getelementptr inbounds float, float* %37, i64 %45
  %157 = load float, float* %156, align 4, !tbaa !4
  %158 = fadd float %155, %157
  %159 = getelementptr inbounds float, float* %38, i64 %45
  %160 = load float, float* %159, align 4, !tbaa !4
  %161 = fadd float %158, %160
  %162 = getelementptr inbounds float, float* %39, i64 %45
  %163 = load float, float* %162, align 4, !tbaa !4
  %164 = fadd float %161, %163
  store float %164, float* %153, align 4, !tbaa !4
  %165 = fcmp une float %163, 0.000000e+00
  br i1 %165, label %166, label %171

166:                                              ; preds = %40
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %43)
  %167 = load i32, i32* @k, align 4, !tbaa !8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [10 x float], [10 x float]* %41, i64 0, i64 %168
  %170 = load float, float* %169, align 4, !tbaa !4
  br label %173

171:                                              ; preds = %40
  %172 = call noundef float @_Z11params_fa40PfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(float* noundef nonnull %1, float* noundef nonnull %2, float* noundef nonnull %3, float* noundef nonnull %4, float* noundef nonnull %5, float* noundef nonnull %6, float* noundef nonnull %7, float* noundef nonnull %8, float* noundef nonnull %9, float* noundef nonnull %10, float* noundef nonnull %11, float* noundef nonnull %12, float* noundef nonnull %13, float* noundef nonnull %14, float* noundef nonnull %15, float* noundef nonnull %16, float* noundef nonnull %17, float* noundef nonnull %18, float* noundef nonnull %19, float* noundef nonnull %20, float* noundef nonnull %21, float* noundef nonnull %22, float* noundef nonnull %23, float* noundef nonnull %24, float* noundef nonnull %25, float* noundef nonnull %26, float* noundef nonnull %27, float* noundef nonnull %28, float* noundef nonnull %29, float* noundef nonnull %30, float* noundef nonnull %31, float* noundef nonnull %32, float* noundef nonnull %33, float* noundef nonnull %34, float* noundef nonnull %35, float* noundef nonnull %36, float* noundef nonnull %37, float* noundef nonnull %38, float* noundef nonnull %39, float* noundef nonnull %43)
  br label %173

173:                                              ; preds = %171, %166
  %174 = phi float [ %170, %166 ], [ %172, %171 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %42) #4
  ret float %174
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z10params_mixfPiiPffiffS0_S_iiS0_S_S_iS0_S0_fffS0_ifffS_S0_S_S_S0_ffS_iS0_S0_ffS_S_iiffS_iS0_iS_S_ffS0_iS_S0_fifS0_S0_fi(float noundef %0, i32* nocapture noundef readonly %1, i32 noundef %2, float* nocapture noundef readonly %3, float noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float* nocapture noundef readonly %8, i32* nocapture noundef readonly %9, i32 noundef %10, i32 noundef %11, float* nocapture noundef readonly %12, i32* nocapture noundef readonly %13, i32* nocapture noundef readonly %14, i32 noundef %15, float* nocapture noundef readonly %16, float* nocapture noundef readonly %17, float noundef %18, float noundef %19, float noundef %20, float* nocapture noundef readonly %21, i32 noundef %22, float noundef %23, float noundef %24, float noundef %25, i32* nocapture noundef readonly %26, float* nocapture noundef readonly %27, i32* nocapture noundef readonly %28, i32* nocapture noundef readonly %29, float* nocapture noundef readonly %30, float noundef %31, float noundef %32, i32* nocapture noundef readonly %33, i32 noundef %34, float* nocapture noundef readonly %35, float* nocapture noundef readonly %36, float noundef %37, float noundef %38, i32* nocapture noundef readonly %39, i32* nocapture noundef readonly %40, i32 noundef %41, i32 noundef %42, float noundef %43, float noundef %44, i32* nocapture noundef readonly %45, i32 noundef %46, float* nocapture noundef readonly %47, i32 noundef %48, i32* nocapture noundef readonly %49, i32* nocapture noundef readonly %50, float noundef %51, float noundef %52, float* nocapture noundef readonly %53, i32 noundef %54, i32* nocapture noundef readonly %55, float* nocapture noundef readonly %56, float noundef %57, i32 noundef %58, float noundef %59, float* nocapture noundef readonly %60, float* nocapture noundef readonly %61, float noundef %62, i32 noundef %63) local_unnamed_addr #0 {
  %65 = alloca [10 x float], align 16
  %66 = alloca [10 x i32], align 16
  %67 = bitcast [10 x float]* %65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %67) #4
  %68 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 0
  %69 = load i32, i32* @k, align 4, !tbaa !8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %3, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !4
  %73 = fadd float %72, %0
  %74 = fadd float %73, %4
  %75 = fadd float %74, %6
  store float %75, float* %68, align 16, !tbaa !4
  %76 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 1
  %77 = getelementptr inbounds float, float* %8, i64 %70
  %78 = load float, float* %77, align 4, !tbaa !4
  %79 = fadd float %78, %7
  %80 = getelementptr inbounds float, float* %12, i64 %70
  %81 = load float, float* %80, align 4, !tbaa !4
  %82 = fadd float %79, %81
  %83 = getelementptr inbounds float, float* %16, i64 %70
  %84 = load float, float* %83, align 4, !tbaa !4
  %85 = fadd float %82, %84
  store float %85, float* %76, align 4, !tbaa !4
  %86 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 2
  %87 = getelementptr inbounds float, float* %17, i64 %70
  %88 = load float, float* %87, align 4, !tbaa !4
  %89 = fadd float %88, %18
  %90 = fadd float %89, %19
  %91 = fadd float %90, %20
  store float %91, float* %86, align 8, !tbaa !4
  %92 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 3
  %93 = getelementptr inbounds float, float* %21, i64 %70
  %94 = load float, float* %93, align 4, !tbaa !4
  %95 = fadd float %94, %23
  %96 = fadd float %95, %24
  %97 = fadd float %96, %25
  store float %97, float* %92, align 4, !tbaa !4
  %98 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 4
  %99 = getelementptr inbounds float, float* %27, i64 %70
  %100 = load float, float* %99, align 4, !tbaa !4
  %101 = getelementptr inbounds float, float* %30, i64 %70
  %102 = load float, float* %101, align 4, !tbaa !4
  %103 = fadd float %100, %102
  %104 = fadd float %103, %31
  %105 = fadd float %104, %32
  store float %105, float* %98, align 16, !tbaa !4
  %106 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 5
  %107 = getelementptr inbounds float, float* %35, i64 %70
  %108 = load float, float* %107, align 4, !tbaa !4
  %109 = getelementptr inbounds float, float* %36, i64 %70
  %110 = load float, float* %109, align 4, !tbaa !4
  %111 = fadd float %108, %110
  %112 = fadd float %111, %37
  %113 = fadd float %112, %38
  store float %113, float* %106, align 4, !tbaa !4
  %114 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 6
  %115 = fadd float %43, %44
  %116 = getelementptr inbounds float, float* %47, i64 %70
  %117 = load float, float* %116, align 4, !tbaa !4
  %118 = fadd float %115, %117
  %119 = fadd float %118, %51
  store float %119, float* %114, align 8, !tbaa !4
  %120 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 7
  %121 = getelementptr inbounds float, float* %53, i64 %70
  %122 = load float, float* %121, align 4, !tbaa !4
  %123 = fadd float %122, %52
  %124 = getelementptr inbounds float, float* %56, i64 %70
  %125 = load float, float* %124, align 4, !tbaa !4
  %126 = fadd float %123, %125
  %127 = fadd float %126, %57
  store float %127, float* %120, align 4, !tbaa !4
  %128 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 8
  %129 = getelementptr inbounds float, float* %60, i64 %70
  %130 = load float, float* %129, align 4, !tbaa !4
  %131 = fadd float %130, %59
  %132 = getelementptr inbounds float, float* %61, i64 %70
  %133 = load float, float* %132, align 4, !tbaa !4
  %134 = fadd float %131, %133
  %135 = fadd float %134, %62
  store float %135, float* %128, align 16, !tbaa !4
  %136 = getelementptr inbounds [10 x float], [10 x float]* %65, i64 0, i64 9
  store float 0.000000e+00, float* %136, align 4, !tbaa !4
  %137 = bitcast [10 x i32]* %66 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %137) #4
  %138 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 0
  %139 = getelementptr inbounds i32, i32* %1, i64 %70
  %140 = load i32, i32* %139, align 4, !tbaa !8
  %141 = add i32 %5, %2
  %142 = add i32 %141, %140
  store i32 %142, i32* %138, align 16, !tbaa !8
  %143 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 1
  %144 = getelementptr inbounds i32, i32* %9, i64 %70
  %145 = load i32, i32* %144, align 4, !tbaa !8
  %146 = add i32 %11, %10
  %147 = add i32 %146, %145
  store i32 %147, i32* %143, align 4, !tbaa !8
  %148 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 2
  %149 = getelementptr inbounds i32, i32* %13, i64 %70
  %150 = load i32, i32* %149, align 4, !tbaa !8
  %151 = getelementptr inbounds i32, i32* %14, i64 %70
  %152 = load i32, i32* %151, align 4, !tbaa !8
  %153 = add i32 %150, %15
  %154 = add i32 %153, %152
  store i32 %154, i32* %148, align 8, !tbaa !8
  %155 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 3
  %156 = getelementptr inbounds i32, i32* %26, i64 %70
  %157 = load i32, i32* %156, align 4, !tbaa !8
  %158 = add nsw i32 %157, %22
  %159 = getelementptr inbounds i32, i32* %28, i64 %70
  %160 = load i32, i32* %159, align 4, !tbaa !8
  %161 = add nsw i32 %158, %160
  store i32 %161, i32* %155, align 4, !tbaa !8
  %162 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 4
  %163 = getelementptr inbounds i32, i32* %29, i64 %70
  %164 = load i32, i32* %163, align 4, !tbaa !8
  %165 = getelementptr inbounds i32, i32* %33, i64 %70
  %166 = load i32, i32* %165, align 4, !tbaa !8
  %167 = add i32 %164, %34
  %168 = add i32 %167, %166
  store i32 %168, i32* %162, align 16, !tbaa !8
  %169 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 5
  %170 = getelementptr inbounds i32, i32* %39, i64 %70
  %171 = load i32, i32* %170, align 4, !tbaa !8
  %172 = getelementptr inbounds i32, i32* %40, i64 %70
  %173 = load i32, i32* %172, align 4, !tbaa !8
  %174 = add i32 %171, %41
  %175 = add i32 %174, %173
  store i32 %175, i32* %169, align 4, !tbaa !8
  %176 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 6
  %177 = getelementptr inbounds i32, i32* %45, i64 %70
  %178 = load i32, i32* %177, align 4, !tbaa !8
  %179 = add i32 %46, %42
  %180 = add i32 %179, %178
  store i32 %180, i32* %176, align 8, !tbaa !8
  %181 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 7
  %182 = getelementptr inbounds i32, i32* %49, i64 %70
  %183 = load i32, i32* %182, align 4, !tbaa !8
  %184 = add nsw i32 %183, %48
  %185 = getelementptr inbounds i32, i32* %50, i64 %70
  %186 = load i32, i32* %185, align 4, !tbaa !8
  %187 = add nsw i32 %184, %186
  store i32 %187, i32* %181, align 4, !tbaa !8
  %188 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 8
  %189 = getelementptr inbounds i32, i32* %55, i64 %70
  %190 = load i32, i32* %189, align 4, !tbaa !8
  %191 = add i32 %58, %54
  %192 = add i32 %191, %63
  %193 = add i32 %192, %190
  store i32 %193, i32* %188, align 16, !tbaa !8
  %194 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 9
  store i32 0, i32* %194, align 4, !tbaa !8
  %195 = icmp eq i32 %63, 0
  br i1 %195, label %254, label %196

196:                                              ; preds = %64
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %68)
  call void @_Z8putarrayiPi(i32 noundef 10, i32* noundef nonnull %138)
  %197 = load i32, i32* %138, align 16, !tbaa !8
  %198 = sitofp i32 %197 to float
  %199 = load float, float* %68, align 16, !tbaa !4
  %200 = fsub float %198, %199
  %201 = fptosi float %200 to i32
  store i32 %201, i32* %138, align 16, !tbaa !8
  %202 = load i32, i32* %143, align 4, !tbaa !8
  %203 = sitofp i32 %202 to float
  %204 = load float, float* %76, align 4, !tbaa !4
  %205 = fsub float %203, %204
  %206 = fptosi float %205 to i32
  store i32 %206, i32* %143, align 4, !tbaa !8
  %207 = load i32, i32* %148, align 8, !tbaa !8
  %208 = sitofp i32 %207 to float
  %209 = load float, float* %86, align 8, !tbaa !4
  %210 = fsub float %208, %209
  %211 = fptosi float %210 to i32
  store i32 %211, i32* %148, align 8, !tbaa !8
  %212 = load i32, i32* %155, align 4, !tbaa !8
  %213 = sitofp i32 %212 to float
  %214 = load float, float* %92, align 4, !tbaa !4
  %215 = fsub float %213, %214
  %216 = fptosi float %215 to i32
  store i32 %216, i32* %155, align 4, !tbaa !8
  %217 = load i32, i32* %162, align 16, !tbaa !8
  %218 = sitofp i32 %217 to float
  %219 = load float, float* %98, align 16, !tbaa !4
  %220 = fsub float %218, %219
  %221 = fptosi float %220 to i32
  store i32 %221, i32* %162, align 16, !tbaa !8
  %222 = load i32, i32* %169, align 4, !tbaa !8
  %223 = sitofp i32 %222 to float
  %224 = load float, float* %106, align 4, !tbaa !4
  %225 = fsub float %223, %224
  %226 = fptosi float %225 to i32
  store i32 %226, i32* %169, align 4, !tbaa !8
  %227 = load i32, i32* %176, align 8, !tbaa !8
  %228 = sitofp i32 %227 to float
  %229 = load float, float* %114, align 8, !tbaa !4
  %230 = fsub float %228, %229
  %231 = fptosi float %230 to i32
  store i32 %231, i32* %176, align 8, !tbaa !8
  %232 = load i32, i32* %181, align 4, !tbaa !8
  %233 = sitofp i32 %232 to float
  %234 = load float, float* %120, align 4, !tbaa !4
  %235 = fsub float %233, %234
  %236 = fptosi float %235 to i32
  store i32 %236, i32* %181, align 4, !tbaa !8
  %237 = load i32, i32* %188, align 16, !tbaa !8
  %238 = sitofp i32 %237 to float
  %239 = load float, float* %128, align 16, !tbaa !4
  %240 = fsub float %238, %239
  %241 = fptosi float %240 to i32
  store i32 %241, i32* %188, align 16, !tbaa !8
  %242 = load i32, i32* %194, align 4, !tbaa !8
  %243 = sitofp i32 %242 to float
  %244 = load float, float* %136, align 4, !tbaa !4
  %245 = fsub float %243, %244
  %246 = fptosi float %245 to i32
  store i32 %246, i32* %194, align 4, !tbaa !8
  %247 = load i32, i32* @k, align 4, !tbaa !8
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4, !tbaa !8
  %251 = sitofp i32 %250 to float
  %252 = fmul float %239, %251
  %253 = fptosi float %252 to i32
  br label %257

254:                                              ; preds = %64
  %255 = fptosi float %62 to i32
  %256 = call noundef i32 @_Z10params_mixfPiiPffiffS0_S_iiS0_S_S_iS0_S0_fffS0_ifffS_S0_S_S_S0_ffS_iS0_S0_ffS_S_iiffS_iS0_iS_S_ffS0_iS_S0_fifS0_S0_fi(float noundef %0, i32* noundef nonnull %138, i32 noundef %2, float* noundef nonnull %68, float noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float* noundef nonnull %8, i32* noundef nonnull %9, i32 noundef %10, i32 noundef %11, float* noundef nonnull %12, i32* noundef nonnull %13, i32* noundef nonnull %14, i32 noundef %15, float* noundef nonnull %16, float* noundef nonnull %17, float noundef %18, float noundef %19, float noundef %20, float* noundef nonnull %21, i32 noundef %22, float noundef %23, float noundef %24, float noundef %25, i32* noundef nonnull %26, float* noundef nonnull %27, i32* noundef nonnull %28, i32* noundef nonnull %29, float* noundef nonnull %30, float noundef %31, float noundef %32, i32* noundef nonnull %33, i32 noundef %34, float* noundef nonnull %35, float* noundef nonnull %36, float noundef %37, float noundef %38, i32* noundef nonnull %39, i32* noundef nonnull %40, i32 noundef %41, i32 noundef %42, float noundef %43, float noundef %44, i32* noundef nonnull %45, i32 noundef %46, float* noundef nonnull %47, i32 noundef %48, i32* noundef nonnull %49, i32* noundef nonnull %50, float noundef %51, float noundef %52, float* noundef nonnull %53, i32 noundef %54, i32* noundef nonnull %55, float* noundef nonnull %56, float noundef %57, i32 noundef %58, float noundef %59, float* noundef nonnull %60, float* noundef nonnull %61, float noundef 0.000000e+00, i32 noundef %255)
  br label %257

257:                                              ; preds = %254, %196
  %258 = phi i32 [ %253, %196 ], [ %256, %254 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %137) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %67) #4
  ret i32 %258
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
  store i32 %6, i32* @k, align 4, !tbaa !8
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
  %135 = load i32, i32* @k, align 4, !tbaa !8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 0, i64 %136
  %138 = load float, float* %137, align 4, !tbaa !4
  %139 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 1, i64 %136
  %140 = load float, float* %139, align 4, !tbaa !4
  %141 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 2, i64 %136
  %142 = load float, float* %141, align 4, !tbaa !4
  %143 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 3, i64 %136
  %144 = load float, float* %143, align 4, !tbaa !4
  %145 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 4, i64 %136
  %146 = load float, float* %145, align 4, !tbaa !4
  %147 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 5, i64 %136
  %148 = load float, float* %147, align 4, !tbaa !4
  %149 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 6, i64 %136
  %150 = load float, float* %149, align 4, !tbaa !4
  %151 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 7, i64 %136
  %152 = load float, float* %151, align 4, !tbaa !4
  %153 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 8, i64 %136
  %154 = load float, float* %153, align 4, !tbaa !4
  %155 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 9, i64 %136
  %156 = load float, float* %155, align 4, !tbaa !4
  %157 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 10, i64 %136
  %158 = load float, float* %157, align 4, !tbaa !4
  %159 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 11, i64 %136
  %160 = load float, float* %159, align 4, !tbaa !4
  %161 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 12, i64 %136
  %162 = load float, float* %161, align 4, !tbaa !4
  %163 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 13, i64 %136
  %164 = load float, float* %163, align 4, !tbaa !4
  %165 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 14, i64 %136
  %166 = load float, float* %165, align 4, !tbaa !4
  %167 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 15, i64 %136
  %168 = load float, float* %167, align 4, !tbaa !4
  %169 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 16, i64 %136
  %170 = load float, float* %169, align 4, !tbaa !4
  %171 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 17, i64 %136
  %172 = load float, float* %171, align 4, !tbaa !4
  %173 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 18, i64 %136
  %174 = load float, float* %173, align 4, !tbaa !4
  %175 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 19, i64 %136
  %176 = load float, float* %175, align 4, !tbaa !4
  %177 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 20, i64 %136
  %178 = load float, float* %177, align 4, !tbaa !4
  %179 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 21, i64 %136
  %180 = load float, float* %179, align 4, !tbaa !4
  %181 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 22, i64 %136
  %182 = load float, float* %181, align 4, !tbaa !4
  %183 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 23, i64 %136
  %184 = load float, float* %183, align 4, !tbaa !4
  %185 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 24, i64 %136
  %186 = load float, float* %185, align 4, !tbaa !4
  %187 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 25, i64 %136
  %188 = load float, float* %187, align 4, !tbaa !4
  %189 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 26, i64 %136
  %190 = load float, float* %189, align 4, !tbaa !4
  %191 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 27, i64 %136
  %192 = load float, float* %191, align 4, !tbaa !4
  %193 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 28, i64 %136
  %194 = load float, float* %193, align 4, !tbaa !4
  %195 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 29, i64 %136
  %196 = load float, float* %195, align 4, !tbaa !4
  %197 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 30, i64 %136
  %198 = load float, float* %197, align 4, !tbaa !4
  %199 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 31, i64 %136
  %200 = load float, float* %199, align 4, !tbaa !4
  %201 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 32, i64 %136
  %202 = load float, float* %201, align 4, !tbaa !4
  %203 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 33, i64 %136
  %204 = load float, float* %203, align 4, !tbaa !4
  %205 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 34, i64 %136
  %206 = load float, float* %205, align 4, !tbaa !4
  %207 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 35, i64 %136
  %208 = load float, float* %207, align 4, !tbaa !4
  %209 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 36, i64 %136
  %210 = load float, float* %209, align 4, !tbaa !4
  %211 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 37, i64 %136
  %212 = load float, float* %211, align 4, !tbaa !4
  %213 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 38, i64 %136
  %214 = load float, float* %213, align 4, !tbaa !4
  %215 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 39, i64 %136
  %216 = load float, float* %215, align 4, !tbaa !4
  %217 = fcmp une float %216, 0.000000e+00
  br i1 %217, label %262, label %218

218:                                              ; preds = %0, %218
  %219 = phi float [ %260, %218 ], [ %216, %0 ]
  %220 = phi float [ %219, %218 ], [ %214, %0 ]
  %221 = phi float [ %220, %218 ], [ %212, %0 ]
  %222 = phi float [ %221, %218 ], [ %210, %0 ]
  %223 = phi float [ %222, %218 ], [ %208, %0 ]
  %224 = phi float [ %223, %218 ], [ %206, %0 ]
  %225 = phi float [ %224, %218 ], [ %204, %0 ]
  %226 = phi float [ %225, %218 ], [ %202, %0 ]
  %227 = phi float [ %226, %218 ], [ %200, %0 ]
  %228 = phi float [ %227, %218 ], [ %198, %0 ]
  %229 = phi float [ %228, %218 ], [ %196, %0 ]
  %230 = phi float [ %229, %218 ], [ %194, %0 ]
  %231 = phi float [ %230, %218 ], [ %192, %0 ]
  %232 = phi float [ %231, %218 ], [ %190, %0 ]
  %233 = phi float [ %232, %218 ], [ %188, %0 ]
  %234 = phi float [ %233, %218 ], [ %186, %0 ]
  %235 = phi float [ %234, %218 ], [ %184, %0 ]
  %236 = phi float [ %235, %218 ], [ %182, %0 ]
  %237 = phi float [ %236, %218 ], [ %180, %0 ]
  %238 = phi float [ %237, %218 ], [ %178, %0 ]
  %239 = phi float [ %238, %218 ], [ %176, %0 ]
  %240 = phi float [ %239, %218 ], [ %174, %0 ]
  %241 = phi float [ %240, %218 ], [ %172, %0 ]
  %242 = phi float [ %241, %218 ], [ %170, %0 ]
  %243 = phi float [ %242, %218 ], [ %168, %0 ]
  %244 = phi float [ %243, %218 ], [ %166, %0 ]
  %245 = phi float [ %244, %218 ], [ %164, %0 ]
  %246 = phi float [ %245, %218 ], [ %162, %0 ]
  %247 = phi float [ %246, %218 ], [ %160, %0 ]
  %248 = phi float [ %247, %218 ], [ %158, %0 ]
  %249 = phi float [ %248, %218 ], [ %156, %0 ]
  %250 = phi float [ %249, %218 ], [ %154, %0 ]
  %251 = phi float [ %250, %218 ], [ %152, %0 ]
  %252 = phi float [ %251, %218 ], [ %150, %0 ]
  %253 = phi float [ %252, %218 ], [ %148, %0 ]
  %254 = phi float [ %253, %218 ], [ %146, %0 ]
  %255 = phi float [ %254, %218 ], [ %144, %0 ]
  %256 = phi float [ %255, %218 ], [ %142, %0 ]
  %257 = phi float [ %256, %218 ], [ %140, %0 ]
  %258 = phi float [ %257, %218 ], [ %138, %0 ]
  %259 = fadd float %257, %258
  %260 = fadd float %256, %259
  %261 = fcmp une float %260, 0.000000e+00
  br i1 %261, label %262, label %218

262:                                              ; preds = %218, %0
  %263 = phi float [ %138, %0 ], [ %257, %218 ]
  %264 = phi float [ %140, %0 ], [ %256, %218 ]
  %265 = phi float [ %142, %0 ], [ %255, %218 ]
  %266 = phi float [ %144, %0 ], [ %254, %218 ]
  %267 = phi float [ %146, %0 ], [ %253, %218 ]
  %268 = phi float [ %148, %0 ], [ %252, %218 ]
  %269 = phi float [ %150, %0 ], [ %251, %218 ]
  %270 = phi float [ %152, %0 ], [ %250, %218 ]
  %271 = phi float [ %154, %0 ], [ %249, %218 ]
  %272 = phi float [ %156, %0 ], [ %248, %218 ]
  %273 = phi float [ %158, %0 ], [ %247, %218 ]
  %274 = phi float [ %160, %0 ], [ %246, %218 ]
  %275 = phi float [ %162, %0 ], [ %245, %218 ]
  %276 = phi float [ %164, %0 ], [ %244, %218 ]
  %277 = phi float [ %166, %0 ], [ %243, %218 ]
  %278 = phi float [ %168, %0 ], [ %242, %218 ]
  %279 = phi float [ %170, %0 ], [ %241, %218 ]
  %280 = phi float [ %172, %0 ], [ %240, %218 ]
  %281 = phi float [ %174, %0 ], [ %239, %218 ]
  %282 = phi float [ %176, %0 ], [ %238, %218 ]
  %283 = phi float [ %178, %0 ], [ %237, %218 ]
  %284 = phi float [ %180, %0 ], [ %236, %218 ]
  %285 = phi float [ %182, %0 ], [ %235, %218 ]
  %286 = phi float [ %184, %0 ], [ %234, %218 ]
  %287 = phi float [ %186, %0 ], [ %233, %218 ]
  %288 = phi float [ %188, %0 ], [ %232, %218 ]
  %289 = phi float [ %190, %0 ], [ %231, %218 ]
  %290 = phi float [ %192, %0 ], [ %230, %218 ]
  %291 = phi float [ %194, %0 ], [ %229, %218 ]
  %292 = phi float [ %196, %0 ], [ %228, %218 ]
  %293 = phi float [ %198, %0 ], [ %227, %218 ]
  %294 = phi float [ %200, %0 ], [ %226, %218 ]
  %295 = phi float [ %202, %0 ], [ %225, %218 ]
  %296 = phi float [ %204, %0 ], [ %224, %218 ]
  %297 = phi float [ %206, %0 ], [ %223, %218 ]
  %298 = phi float [ %208, %0 ], [ %222, %218 ]
  %299 = phi float [ %210, %0 ], [ %221, %218 ]
  %300 = phi float [ %212, %0 ], [ %220, %218 ]
  %301 = phi float [ %214, %0 ], [ %219, %218 ]
  %302 = phi float [ %216, %0 ], [ %260, %218 ]
  %303 = bitcast [10 x float]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %303) #4
  %304 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 0
  %305 = fadd float %263, %264
  %306 = fadd float %305, %265
  %307 = fadd float %306, %266
  store float %307, float* %304, align 16, !tbaa !4
  %308 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 1
  %309 = fadd float %267, %268
  %310 = fadd float %309, %269
  %311 = fadd float %310, %270
  store float %311, float* %308, align 4, !tbaa !4
  %312 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 2
  %313 = fadd float %271, %272
  %314 = fadd float %313, %273
  %315 = fadd float %314, %274
  store float %315, float* %312, align 8, !tbaa !4
  %316 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 3
  %317 = fadd float %275, %276
  %318 = fadd float %317, %277
  %319 = fadd float %318, %278
  store float %319, float* %316, align 4, !tbaa !4
  %320 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 4
  %321 = fadd float %279, %280
  %322 = fadd float %321, %281
  %323 = fadd float %322, %282
  store float %323, float* %320, align 16, !tbaa !4
  %324 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 5
  %325 = fadd float %283, %284
  %326 = fadd float %325, %285
  %327 = fadd float %326, %286
  store float %327, float* %324, align 4, !tbaa !4
  %328 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 6
  %329 = fadd float %287, %288
  %330 = fadd float %329, %289
  %331 = fadd float %330, %290
  store float %331, float* %328, align 8, !tbaa !4
  %332 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 7
  %333 = fadd float %291, %292
  %334 = fadd float %333, %293
  %335 = fadd float %334, %294
  store float %335, float* %332, align 4, !tbaa !4
  %336 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 8
  %337 = fadd float %295, %296
  %338 = fadd float %337, %297
  %339 = fadd float %338, %298
  store float %339, float* %336, align 16, !tbaa !4
  %340 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 9
  %341 = fadd float %299, %300
  %342 = fadd float %341, %301
  %343 = fadd float %342, %302
  store float %343, float* %340, align 4, !tbaa !4
  call void @_Z9putfarrayiPf(i32 noundef 10, float* noundef nonnull %304)
  %344 = load i32, i32* @k, align 4, !tbaa !8
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 %345
  %347 = load float, float* %346, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %303) #4
  %348 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 23, i64 %345
  %349 = load i32, i32* %348, align 4, !tbaa !8
  %350 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 2, i64 %345
  %351 = load i32, i32* %350, align 4, !tbaa !8
  %352 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 6, i64 %345
  %353 = load i32, i32* %352, align 4, !tbaa !8
  %354 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 4, i64 %345
  %355 = load float, float* %354, align 4, !tbaa !4
  %356 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 1, i64 %345
  %357 = load i32, i32* %356, align 4, !tbaa !8
  %358 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 4, i64 %345
  %359 = load i32, i32* %358, align 4, !tbaa !8
  %360 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 5, i64 %345
  %361 = load i32, i32* %360, align 4, !tbaa !8
  %362 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 8, i64 %345
  %363 = load float, float* %362, align 4, !tbaa !4
  %364 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 15, i64 %345
  %365 = load float, float* %364, align 4, !tbaa !4
  %366 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 7, i64 %345
  %367 = load float, float* %366, align 4, !tbaa !4
  %368 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 22, i64 %345
  %369 = load i32, i32* %368, align 4, !tbaa !8
  %370 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 3, i64 %345
  %371 = load float, float* %370, align 4, !tbaa !4
  %372 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 28, i64 %345
  %373 = load float, float* %372, align 4, !tbaa !4
  %374 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 0, i64 %345
  %375 = load i32, i32* %374, align 4, !tbaa !8
  %376 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 37, i64 %345
  %377 = load float, float* %376, align 4, !tbaa !4
  %378 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 19, i64 %345
  %379 = load i32, i32* %378, align 4, !tbaa !8
  %380 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 30, i64 %345
  %381 = load float, float* %380, align 4, !tbaa !4
  %382 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 12, i64 %345
  %383 = load float, float* %382, align 4, !tbaa !4
  %384 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 1, i64 %345
  %385 = load float, float* %384, align 4, !tbaa !4
  %386 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 11, i64 %345
  %387 = load float, float* %386, align 4, !tbaa !4
  %388 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 38, i64 %345
  %389 = load float, float* %388, align 4, !tbaa !4
  %390 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 6, i64 %345
  %391 = load float, float* %390, align 4, !tbaa !4
  %392 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 7, i64 %345
  %393 = load i32, i32* %392, align 4, !tbaa !8
  %394 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 32, i64 %345
  %395 = load float, float* %394, align 4, !tbaa !4
  %396 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 10, i64 %345
  %397 = load i32, i32* %396, align 4, !tbaa !8
  %398 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 13, i64 %345
  %399 = load i32, i32* %398, align 4, !tbaa !8
  %400 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 20, i64 %345
  %401 = load float, float* %400, align 4, !tbaa !4
  %402 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 33, i64 %345
  %403 = load float, float* %402, align 4, !tbaa !4
  %404 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 23, i64 %345
  %405 = load float, float* %404, align 4, !tbaa !4
  %406 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 9, i64 %345
  %407 = load float, float* %406, align 4, !tbaa !4
  %408 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 25, i64 %345
  %409 = load float, float* %408, align 4, !tbaa !4
  %410 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 8, i64 %345
  %411 = load i32, i32* %410, align 4, !tbaa !8
  %412 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 39, i64 %345
  %413 = load float, float* %412, align 4, !tbaa !4
  %414 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 17, i64 %345
  %415 = load i32, i32* %414, align 4, !tbaa !8
  %416 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 21, i64 %345
  %417 = load float, float* %416, align 4, !tbaa !4
  %418 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 16, i64 %345
  %419 = load float, float* %418, align 4, !tbaa !4
  %420 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 5, i64 %345
  %421 = load float, float* %420, align 4, !tbaa !4
  %422 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 34, i64 %345
  %423 = load float, float* %422, align 4, !tbaa !4
  %424 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 18, i64 %345
  %425 = load i32, i32* %424, align 4, !tbaa !8
  %426 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 9, i64 %345
  %427 = load i32, i32* %426, align 4, !tbaa !8
  %428 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 14, i64 %345
  %429 = load float, float* %428, align 4, !tbaa !4
  %430 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 10, i64 %345
  %431 = load float, float* %430, align 4, !tbaa !4
  %432 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 0, i64 %345
  %433 = load float, float* %432, align 4, !tbaa !4
  %434 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 12, i64 %345
  %435 = load i32, i32* %434, align 4, !tbaa !8
  %436 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 31, i64 %345
  %437 = load float, float* %436, align 4, !tbaa !4
  %438 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 11, i64 %345
  %439 = load i32, i32* %438, align 4, !tbaa !8
  %440 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 16, i64 %345
  %441 = load i32, i32* %440, align 4, !tbaa !8
  %442 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 27, i64 %345
  %443 = load float, float* %442, align 4, !tbaa !4
  %444 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 24, i64 %345
  %445 = load float, float* %444, align 4, !tbaa !4
  %446 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 13, i64 %345
  %447 = load float, float* %446, align 4, !tbaa !4
  %448 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 29, i64 %345
  %449 = load float, float* %448, align 4, !tbaa !4
  %450 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 3, i64 %345
  %451 = load i32, i32* %450, align 4, !tbaa !8
  %452 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 21, i64 %345
  %453 = load i32, i32* %452, align 4, !tbaa !8
  %454 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 20, i64 %345
  %455 = load i32, i32* %454, align 4, !tbaa !8
  %456 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 18, i64 %345
  %457 = load float, float* %456, align 4, !tbaa !4
  %458 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 19, i64 %345
  %459 = load float, float* %458, align 4, !tbaa !4
  %460 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 22, i64 %345
  %461 = load float, float* %460, align 4, !tbaa !4
  %462 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 26, i64 %345
  %463 = load float, float* %462, align 4, !tbaa !4
  %464 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 36, i64 %345
  %465 = load float, float* %464, align 4, !tbaa !4
  %466 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 17, i64 %345
  %467 = load float, float* %466, align 4, !tbaa !4
  %468 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 15, i64 %345
  %469 = load i32, i32* %468, align 4, !tbaa !8
  %470 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 2, i64 %345
  %471 = load float, float* %470, align 4, !tbaa !4
  %472 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 14, i64 %345
  %473 = load i32, i32* %472, align 4, !tbaa !8
  %474 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 35, i64 %345
  %475 = load float, float* %474, align 4, !tbaa !4
  %476 = call noundef float @_Z14params_f40_i24iiifiiifffiffififfffffifiifffffififfffiifffifiiffffiiiffffffifif(i32 noundef %349, i32 noundef %351, i32 noundef %353, float noundef %355, i32 noundef %357, i32 noundef %359, i32 noundef %361, float noundef %363, float noundef %365, float noundef %367, i32 noundef %369, float noundef %371, float noundef %373, i32 noundef %375, float noundef %377, i32 noundef %379, float noundef %381, float noundef %383, float noundef %385, float noundef %387, float noundef %389, float noundef %391, i32 noundef %393, float noundef %395, i32 noundef %397, i32 noundef %399, float noundef %401, float noundef %403, float noundef %405, float noundef %407, float noundef %409, i32 noundef %411, float noundef %413, i32 noundef %415, float noundef %417, float noundef %419, float noundef %421, float noundef %423, i32 noundef %425, i32 noundef %427, float noundef %429, float noundef %431, float noundef %433, i32 noundef %435, float noundef %437, i32 noundef %439, i32 noundef %441, float noundef %443, float noundef %445, float noundef %447, float noundef %449, i32 noundef %451, i32 noundef %453, i32 noundef %455, float noundef %457, float noundef %459, float noundef %461, float noundef %463, float noundef %465, float noundef %467, i32 noundef %469, float noundef %471, i32 noundef %473, float noundef %475)
  %477 = call noundef float @_Z11params_fa40PfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(float* noundef nonnull %7, float* noundef nonnull %9, float* noundef nonnull %11, float* noundef nonnull %13, float* noundef nonnull %15, float* noundef nonnull %17, float* noundef nonnull %19, float* noundef nonnull %21, float* noundef nonnull %23, float* noundef nonnull %25, float* noundef nonnull %27, float* noundef nonnull %29, float* noundef nonnull %31, float* noundef nonnull %33, float* noundef nonnull %35, float* noundef nonnull %37, float* noundef nonnull %39, float* noundef nonnull %41, float* noundef nonnull %43, float* noundef nonnull %45, float* noundef nonnull %47, float* noundef nonnull %49, float* noundef nonnull %51, float* noundef nonnull %53, float* noundef nonnull %55, float* noundef nonnull %57, float* noundef nonnull %59, float* noundef nonnull %61, float* noundef nonnull %63, float* noundef nonnull %65, float* noundef nonnull %67, float* noundef nonnull %69, float* noundef nonnull %71, float* noundef nonnull %73, float* noundef nonnull %75, float* noundef nonnull %77, float* noundef nonnull %79, float* noundef nonnull %81, float* noundef nonnull %83, float* noundef nonnull %85)
  %478 = load i32, i32* @k, align 4, !tbaa !8
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 0, i64 %479
  %481 = load float, float* %480, align 4, !tbaa !4
  %482 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 1, i64 %479
  %483 = load i32, i32* %482, align 4, !tbaa !8
  %484 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 2, i64 %479
  %485 = load float, float* %484, align 4, !tbaa !4
  %486 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 2, i64 %479
  %487 = load i32, i32* %486, align 4, !tbaa !8
  %488 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 3, i64 %479
  %489 = load float, float* %488, align 4, !tbaa !4
  %490 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 4, i64 %479
  %491 = load float, float* %490, align 4, !tbaa !4
  %492 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 4, i64 %479
  %493 = load i32, i32* %492, align 4, !tbaa !8
  %494 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 5, i64 %479
  %495 = load i32, i32* %494, align 4, !tbaa !8
  %496 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 8, i64 %479
  %497 = load i32, i32* %496, align 4, !tbaa !8
  %498 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 9, i64 %479
  %499 = load float, float* %498, align 4, !tbaa !4
  %500 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 10, i64 %479
  %501 = load float, float* %500, align 4, !tbaa !4
  %502 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 11, i64 %479
  %503 = load float, float* %502, align 4, !tbaa !4
  %504 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 9, i64 %479
  %505 = load i32, i32* %504, align 4, !tbaa !8
  %506 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 13, i64 %479
  %507 = load float, float* %506, align 4, !tbaa !4
  %508 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 14, i64 %479
  %509 = load float, float* %508, align 4, !tbaa !4
  %510 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 15, i64 %479
  %511 = load float, float* %510, align 4, !tbaa !4
  %512 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 18, i64 %479
  %513 = load float, float* %512, align 4, !tbaa !4
  %514 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 19, i64 %479
  %515 = load float, float* %514, align 4, !tbaa !4
  %516 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 14, i64 %479
  %517 = load i32, i32* %516, align 4, !tbaa !8
  %518 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 22, i64 %479
  %519 = load float, float* %518, align 4, !tbaa !4
  %520 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 23, i64 %479
  %521 = load float, float* %520, align 4, !tbaa !4
  %522 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 17, i64 %479
  %523 = load i32, i32* %522, align 4, !tbaa !8
  %524 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 18, i64 %479
  %525 = load i32, i32* %524, align 4, !tbaa !8
  %526 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 24, i64 %479
  %527 = load float, float* %526, align 4, !tbaa !4
  %528 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 25, i64 %479
  %529 = load float, float* %528, align 4, !tbaa !4
  %530 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 20, i64 %479
  %531 = load i32, i32* %530, align 4, !tbaa !8
  %532 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 21, i64 %479
  %533 = load i32, i32* %532, align 4, !tbaa !8
  %534 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 27, i64 %479
  %535 = load float, float* %534, align 4, !tbaa !4
  %536 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 28, i64 %479
  %537 = load float, float* %536, align 4, !tbaa !4
  %538 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 0, i64 %479
  %539 = load i32, i32* %538, align 4, !tbaa !8
  %540 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 31, i64 %479
  %541 = load float, float* %540, align 4, !tbaa !4
  %542 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 32, i64 %479
  %543 = load float, float* %542, align 4, !tbaa !4
  %544 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %2, i64 0, i64 35, i64 %479
  %545 = load float, float* %544, align 4, !tbaa !4
  %546 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %3, i64 0, i64 3, i64 %479
  %547 = load i32, i32* %546, align 4, !tbaa !8
  %548 = call noundef i32 @_Z10params_mixfPiiPffiffS0_S_iiS0_S_S_iS0_S0_fffS0_ifffS_S0_S_S_S0_ffS_iS0_S0_ffS_S_iiffS_iS0_iS_S_ffS0_iS_S0_fifS0_S0_fi(float noundef %481, i32* noundef nonnull %87, i32 noundef %483, float* noundef nonnull %9, float noundef %485, i32 noundef %487, float noundef %489, float noundef %491, float* noundef nonnull %17, i32* noundef nonnull %93, i32 noundef %493, i32 noundef %495, float* noundef nonnull %19, i32* noundef nonnull %99, i32* noundef nonnull %101, i32 noundef %497, float* noundef nonnull %21, float* noundef nonnull %23, float noundef %499, float noundef %501, float noundef %503, float* noundef nonnull %31, i32 noundef %505, float noundef %507, float noundef %509, float noundef %511, i32* noundef nonnull %107, float* noundef nonnull %39, i32* noundef nonnull %109, i32* noundef nonnull %111, float* noundef nonnull %41, float noundef %513, float noundef %515, i32* noundef nonnull %113, i32 noundef %517, float* noundef nonnull %47, float* noundef nonnull %49, float noundef %519, float noundef %521, i32* noundef nonnull %117, i32* noundef nonnull %119, i32 noundef %523, i32 noundef %525, float noundef %527, float noundef %529, i32* noundef nonnull %125, i32 noundef %531, float* noundef nonnull %59, i32 noundef %533, i32* noundef nonnull %131, i32* noundef nonnull %133, float noundef %535, float noundef %537, float* noundef nonnull %65, i32 noundef %539, i32* noundef nonnull %89, float* noundef nonnull %67, float noundef %541, i32 noundef %487, float noundef %543, float* noundef nonnull %73, float* noundef nonnull %75, float noundef %545, i32 noundef %547)
  call void @_Z8putfloatf(float noundef %347)
  call void @_Z5putchi(i32 noundef 10)
  call void @_Z8putfloatf(float noundef %476)
  call void @_Z5putchi(i32 noundef 10)
  call void @_Z8putfloatf(float noundef %477)
  call void @_Z5putchi(i32 noundef 10)
  call void @_Z6putinti(i32 noundef %548)
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

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
