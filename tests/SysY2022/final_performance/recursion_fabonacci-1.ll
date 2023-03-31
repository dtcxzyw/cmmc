; ModuleID = 'tests//SysY2022/final_performance/recursion_fabonacci-1.sy'
source_filename = "tests//SysY2022/final_performance/recursion_fabonacci-1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z5fibFPf(float noundef %0) local_unnamed_addr #0 {
  %2 = fcmp olt float %0, 2.000000e+00
  br i1 %2, label %3, label %5

3:                                                ; preds = %1, %5
  %4 = phi float [ %10, %5 ], [ 1.000000e+00, %1 ]
  ret float %4

5:                                                ; preds = %1
  %6 = fadd float %0, -2.000000e+00
  %7 = tail call noundef float @_Z5fibFPf(float noundef %6)
  %8 = fadd float %0, -1.000000e+00
  %9 = tail call noundef float @_Z5fibFPf(float noundef %8)
  %10 = fadd float %7, %9
  br label %3
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z5takFPfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fcmp olt float %1, %0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3, %5
  %6 = phi float [ %14, %5 ], [ %2, %3 ]
  %7 = phi float [ %12, %5 ], [ %1, %3 ]
  %8 = phi float [ %10, %5 ], [ %0, %3 ]
  %9 = fadd float %8, -1.000000e+00
  %10 = tail call noundef float @_Z5takFPfff(float noundef %9, float noundef %7, float noundef %6)
  %11 = fadd float %7, -1.000000e+00
  %12 = tail call noundef float @_Z5takFPfff(float noundef %11, float noundef %6, float noundef %8)
  %13 = fadd float %6, -1.000000e+00
  %14 = tail call noundef float @_Z5takFPfff(float noundef %13, float noundef %8, float noundef %7)
  %15 = fcmp olt float %12, %10
  br i1 %15, label %5, label %16

16:                                               ; preds = %5, %3
  %17 = phi float [ %2, %3 ], [ %14, %5 ]
  ret float %17
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  tail call void @_Z15_sysy_starttimei(i32 noundef 19)
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef float @_Z8getfloatv()
  %3 = tail call noundef float @_Z8getfloatv()
  %4 = tail call noundef float @_Z8getfloatv()
  %5 = sitofp i32 %1 to double
  %6 = fadd double %5, 2.800000e+01
  %7 = fptrunc double %6 to float
  %8 = tail call noundef float @_Z5fibFPf(float noundef %7)
  %9 = tail call noundef float @_Z5takFPfff(float noundef %2, float noundef %3, float noundef %4)
  %10 = fcmp oeq float %8, 0x418E287500000000
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  tail call void @_Z5putchi(i32 noundef 112)
  br label %13

12:                                               ; preds = %0
  tail call void @_Z6putinti(i32 noundef 1)
  br label %13

13:                                               ; preds = %12, %11
  %14 = fcmp oeq float %9, 2.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @_Z5putchi(i32 noundef 112)
  br label %17

16:                                               ; preds = %13
  tail call void @_Z6putinti(i32 noundef 1)
  br label %17

17:                                               ; preds = %16, %15
  tail call void @_Z14_sysy_stoptimei(i32 noundef 40)
  ret i32 0
}

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare noundef float @_Z8getfloatv() local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
