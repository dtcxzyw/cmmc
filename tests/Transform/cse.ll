; ModuleID = 'tests//Transform/cse.sy'
source_filename = "tests//Transform/cse.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4pow1i(i32 noundef returned %0) local_unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4pow2i(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul nsw i32 %0, %0
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4pow3i(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul nsw i32 %0, %0
  %3 = mul nsw i32 %2, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4pow4i(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, %0
  %3 = mul i32 %2, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4pow5i(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, %0
  %3 = mul i32 %2, %0
  %4 = mul i32 %3, %2
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4pow6i(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, %0
  %3 = mul i32 %2, %0
  %4 = mul i32 %3, %3
  ret i32 %4
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  tail call void @_Z6putinti(i32 noundef %1)
  %2 = mul nsw i32 %1, %1
  tail call void @_Z6putinti(i32 noundef %2)
  %3 = mul nsw i32 %2, %1
  tail call void @_Z6putinti(i32 noundef %3)
  %4 = mul i32 %2, %2
  tail call void @_Z6putinti(i32 noundef %4)
  %5 = mul i32 %3, %2
  tail call void @_Z6putinti(i32 noundef %5)
  %6 = mul i32 %3, %3
  tail call void @_Z6putinti(i32 noundef %6)
  ret i32 %1
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
