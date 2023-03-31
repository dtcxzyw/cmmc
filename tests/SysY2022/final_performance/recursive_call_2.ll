; ModuleID = 'tests//SysY2022/final_performance/recursive_call_2.sy'
source_filename = "tests//SysY2022/final_performance/recursive_call_2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local noundef float @_Z5myabsf(float noundef %0) local_unnamed_addr #0 {
  %2 = fcmp ogt float %0, 0.000000e+00
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  tail call void @llvm.assume(i1 %4)
  %5 = fneg float %0
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi float [ %5, %3 ], [ %0, %1 ]
  ret float %7
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef float @_Z4funcfi(float noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2, %6
  %5 = phi float [ %11, %6 ], [ 0.000000e+00, %2 ]
  ret float %5

6:                                                ; preds = %2
  %7 = add nsw i32 %1, -1
  %8 = tail call noundef float @_Z4funcfi(float noundef %0, i32 noundef %7)
  %9 = fadd float %8, %0
  %10 = tail call noundef float @_Z4funcfi(float noundef %9, i32 noundef %7)
  %11 = fsub float %9, %10
  br label %4
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  tail call void @_Z15_sysy_starttimei(i32 noundef 21)
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef float @_Z4funcfi(float noundef 0x3FF00418A0000000, i32 noundef %1)
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @_Z5putchi(i32 noundef 112)
  br label %5

5:                                                ; preds = %4, %0
  tail call void @_Z14_sysy_stoptimei(i32 noundef 32)
  ret i32 0
}

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
