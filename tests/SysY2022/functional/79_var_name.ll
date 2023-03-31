; ModuleID = 'tests//SysY2022/functional/79_var_name.sy'
source_filename = "tests//SysY2022/functional/79_var_name.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  tail call void @_Z6putinti(i32 noundef 3)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 5)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 8)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 13)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 21)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 34)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 55)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 89)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 144)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 233)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 377)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 610)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 987)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 1597)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 2584)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 4181)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 6765)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 10946)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 28652
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
