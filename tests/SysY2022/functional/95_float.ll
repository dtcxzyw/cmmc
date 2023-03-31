; ModuleID = 'tests//SysY2022/functional/95_float.sy'
source_filename = "tests//SysY2022/functional/95_float.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z9float_absf(float noundef %0) local_unnamed_addr #0 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z11circle_areai(i32 noundef %0) local_unnamed_addr #1 {
  %2 = sitofp i32 %0 to float
  %3 = fmul float %2, 0x400921FB60000000
  %4 = mul nsw i32 %0, %0
  %5 = sitofp i32 %4 to float
  %6 = fmul float %5, 0x400921FB60000000
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %2, float %6)
  %8 = fmul float %7, 5.000000e-01
  ret float %8
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z8float_eqff(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = fsub float %0, %1
  %4 = fcmp olt float %3, 0.000000e+00
  %5 = fneg float %3
  %6 = select i1 %4, float %5, float %3
  %7 = fcmp olt float %6, 0x3EB0C6F7A0000000
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5errorv() local_unnamed_addr #3 {
  tail call void @_Z5putchi(i32 noundef 101)
  tail call void @_Z5putchi(i32 noundef 114)
  tail call void @_Z5putchi(i32 noundef 114)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 114)
  tail call void @_Z5putchi(i32 noundef 10)
  ret void
}

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z2okv() local_unnamed_addr #3 {
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6asserti(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @_Z5putchi(i32 noundef 101)
  tail call void @_Z5putchi(i32 noundef 114)
  tail call void @_Z5putchi(i32 noundef 114)
  br label %4

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 114, %3 ], [ 107, %1 ]
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef %5)
  tail call void @_Z5putchi(i32 noundef 10)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10assert_noti(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @_Z5putchi(i32 noundef 101)
  tail call void @_Z5putchi(i32 noundef 114)
  tail call void @_Z5putchi(i32 noundef 114)
  br label %4

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 114, %3 ], [ 107, %1 ]
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef %5)
  tail call void @_Z5putchi(i32 noundef 10)
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  %1 = alloca [10 x float], align 16
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  %2 = bitcast [10 x float]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %3 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 0
  store float 1.000000e+00, float* %3, align 16
  %4 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 1
  store float 2.000000e+00, float* %4, align 4
  %5 = call noundef i32 @_Z9getfarrayPf(float* noundef nonnull %3)
  %6 = call noundef float @_Z8getfloatv()
  %7 = fmul float %6, 0x400921FB60000000
  %8 = fmul float %6, %7
  %9 = fptosi float %6 to i32
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 0x400921FB60000000
  %12 = mul nsw i32 %9, %9
  %13 = sitofp i32 %12 to float
  %14 = fmul float %13, 0x400921FB60000000
  %15 = call float @llvm.fmuladd.f32(float %11, float %10, float %14) #8
  %16 = fmul float %15, 5.000000e-01
  %17 = load float, float* %3, align 16, !tbaa !4
  %18 = fadd float %6, %17
  store float %18, float* %3, align 16, !tbaa !4
  call void @_Z8putfloatf(float noundef %8)
  call void @_Z5putchi(i32 noundef 32)
  %19 = fptosi float %16 to i32
  call void @_Z6putinti(i32 noundef %19)
  call void @_Z5putchi(i32 noundef 10)
  %20 = call noundef float @_Z8getfloatv()
  %21 = fmul float %20, 0x400921FB60000000
  %22 = fmul float %20, %21
  %23 = fptosi float %20 to i32
  %24 = sitofp i32 %23 to float
  %25 = fmul float %24, 0x400921FB60000000
  %26 = mul nsw i32 %23, %23
  %27 = sitofp i32 %26 to float
  %28 = fmul float %27, 0x400921FB60000000
  %29 = call float @llvm.fmuladd.f32(float %25, float %24, float %28) #8
  %30 = fmul float %29, 5.000000e-01
  %31 = load float, float* %4, align 4, !tbaa !4
  %32 = fadd float %20, %31
  store float %32, float* %4, align 4, !tbaa !4
  call void @_Z8putfloatf(float noundef %22)
  call void @_Z5putchi(i32 noundef 32)
  %33 = fptosi float %30 to i32
  call void @_Z6putinti(i32 noundef %33)
  call void @_Z5putchi(i32 noundef 10)
  %34 = call noundef float @_Z8getfloatv()
  %35 = fmul float %34, 0x400921FB60000000
  %36 = fmul float %34, %35
  %37 = fptosi float %34 to i32
  %38 = sitofp i32 %37 to float
  %39 = fmul float %38, 0x400921FB60000000
  %40 = mul nsw i32 %37, %37
  %41 = sitofp i32 %40 to float
  %42 = fmul float %41, 0x400921FB60000000
  %43 = call float @llvm.fmuladd.f32(float %39, float %38, float %42) #8
  %44 = fmul float %43, 5.000000e-01
  %45 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 2
  %46 = load float, float* %45, align 8, !tbaa !4
  %47 = fadd float %34, %46
  store float %47, float* %45, align 8, !tbaa !4
  call void @_Z8putfloatf(float noundef %36)
  call void @_Z5putchi(i32 noundef 32)
  %48 = fptosi float %44 to i32
  call void @_Z6putinti(i32 noundef %48)
  call void @_Z5putchi(i32 noundef 10)
  %49 = call noundef float @_Z8getfloatv()
  %50 = fmul float %49, 0x400921FB60000000
  %51 = fmul float %49, %50
  %52 = fptosi float %49 to i32
  %53 = sitofp i32 %52 to float
  %54 = fmul float %53, 0x400921FB60000000
  %55 = mul nsw i32 %52, %52
  %56 = sitofp i32 %55 to float
  %57 = fmul float %56, 0x400921FB60000000
  %58 = call float @llvm.fmuladd.f32(float %54, float %53, float %57) #8
  %59 = fmul float %58, 5.000000e-01
  %60 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 3
  %61 = load float, float* %60, align 4, !tbaa !4
  %62 = fadd float %49, %61
  store float %62, float* %60, align 4, !tbaa !4
  call void @_Z8putfloatf(float noundef %51)
  call void @_Z5putchi(i32 noundef 32)
  %63 = fptosi float %59 to i32
  call void @_Z6putinti(i32 noundef %63)
  call void @_Z5putchi(i32 noundef 10)
  %64 = call noundef float @_Z8getfloatv()
  %65 = fmul float %64, 0x400921FB60000000
  %66 = fmul float %64, %65
  %67 = fptosi float %64 to i32
  %68 = sitofp i32 %67 to float
  %69 = fmul float %68, 0x400921FB60000000
  %70 = mul nsw i32 %67, %67
  %71 = sitofp i32 %70 to float
  %72 = fmul float %71, 0x400921FB60000000
  %73 = call float @llvm.fmuladd.f32(float %69, float %68, float %72) #8
  %74 = fmul float %73, 5.000000e-01
  %75 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 4
  %76 = load float, float* %75, align 16, !tbaa !4
  %77 = fadd float %64, %76
  store float %77, float* %75, align 16, !tbaa !4
  call void @_Z8putfloatf(float noundef %66)
  call void @_Z5putchi(i32 noundef 32)
  %78 = fptosi float %74 to i32
  call void @_Z6putinti(i32 noundef %78)
  call void @_Z5putchi(i32 noundef 10)
  %79 = call noundef float @_Z8getfloatv()
  %80 = fmul float %79, 0x400921FB60000000
  %81 = fmul float %79, %80
  %82 = fptosi float %79 to i32
  %83 = sitofp i32 %82 to float
  %84 = fmul float %83, 0x400921FB60000000
  %85 = mul nsw i32 %82, %82
  %86 = sitofp i32 %85 to float
  %87 = fmul float %86, 0x400921FB60000000
  %88 = call float @llvm.fmuladd.f32(float %84, float %83, float %87) #8
  %89 = fmul float %88, 5.000000e-01
  %90 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 5
  %91 = load float, float* %90, align 4, !tbaa !4
  %92 = fadd float %79, %91
  store float %92, float* %90, align 4, !tbaa !4
  call void @_Z8putfloatf(float noundef %81)
  call void @_Z5putchi(i32 noundef 32)
  %93 = fptosi float %89 to i32
  call void @_Z6putinti(i32 noundef %93)
  call void @_Z5putchi(i32 noundef 10)
  %94 = call noundef float @_Z8getfloatv()
  %95 = fmul float %94, 0x400921FB60000000
  %96 = fmul float %94, %95
  %97 = fptosi float %94 to i32
  %98 = sitofp i32 %97 to float
  %99 = fmul float %98, 0x400921FB60000000
  %100 = mul nsw i32 %97, %97
  %101 = sitofp i32 %100 to float
  %102 = fmul float %101, 0x400921FB60000000
  %103 = call float @llvm.fmuladd.f32(float %99, float %98, float %102) #8
  %104 = fmul float %103, 5.000000e-01
  %105 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 6
  %106 = load float, float* %105, align 8, !tbaa !4
  %107 = fadd float %94, %106
  store float %107, float* %105, align 8, !tbaa !4
  call void @_Z8putfloatf(float noundef %96)
  call void @_Z5putchi(i32 noundef 32)
  %108 = fptosi float %104 to i32
  call void @_Z6putinti(i32 noundef %108)
  call void @_Z5putchi(i32 noundef 10)
  %109 = call noundef float @_Z8getfloatv()
  %110 = fmul float %109, 0x400921FB60000000
  %111 = fmul float %109, %110
  %112 = fptosi float %109 to i32
  %113 = sitofp i32 %112 to float
  %114 = fmul float %113, 0x400921FB60000000
  %115 = mul nsw i32 %112, %112
  %116 = sitofp i32 %115 to float
  %117 = fmul float %116, 0x400921FB60000000
  %118 = call float @llvm.fmuladd.f32(float %114, float %113, float %117) #8
  %119 = fmul float %118, 5.000000e-01
  %120 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 7
  %121 = load float, float* %120, align 4, !tbaa !4
  %122 = fadd float %109, %121
  store float %122, float* %120, align 4, !tbaa !4
  call void @_Z8putfloatf(float noundef %111)
  call void @_Z5putchi(i32 noundef 32)
  %123 = fptosi float %119 to i32
  call void @_Z6putinti(i32 noundef %123)
  call void @_Z5putchi(i32 noundef 10)
  %124 = call noundef float @_Z8getfloatv()
  %125 = fmul float %124, 0x400921FB60000000
  %126 = fmul float %124, %125
  %127 = fptosi float %124 to i32
  %128 = sitofp i32 %127 to float
  %129 = fmul float %128, 0x400921FB60000000
  %130 = mul nsw i32 %127, %127
  %131 = sitofp i32 %130 to float
  %132 = fmul float %131, 0x400921FB60000000
  %133 = call float @llvm.fmuladd.f32(float %129, float %128, float %132) #8
  %134 = fmul float %133, 5.000000e-01
  %135 = getelementptr inbounds [10 x float], [10 x float]* %1, i64 0, i64 8
  %136 = load float, float* %135, align 16, !tbaa !4
  %137 = fadd float %124, %136
  store float %137, float* %135, align 16, !tbaa !4
  call void @_Z8putfloatf(float noundef %126)
  call void @_Z5putchi(i32 noundef 32)
  %138 = fptosi float %134 to i32
  call void @_Z6putinti(i32 noundef %138)
  call void @_Z5putchi(i32 noundef 10)
  call void @_Z9putfarrayiPf(i32 noundef %5, float* noundef nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

declare noundef i32 @_Z9getfarrayPf(float* noundef) local_unnamed_addr #4

declare noundef float @_Z8getfloatv() local_unnamed_addr #4

declare void @_Z8putfloatf(float noundef) local_unnamed_addr #4

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

declare void @_Z9putfarrayiPf(i32 noundef, float* noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
