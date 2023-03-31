; ModuleID = 'tests//Extra/for_loop.sy'
source_filename = "tests//Extra/for_loop.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef 1)
  tail call void @_Z6putinti(i32 noundef 2)
  tail call void @_Z6putinti(i32 noundef 3)
  tail call void @_Z6putinti(i32 noundef 4)
  tail call void @_Z6putinti(i32 noundef 5)
  tail call void @_Z6putinti(i32 noundef 6)
  tail call void @_Z6putinti(i32 noundef 7)
  tail call void @_Z6putinti(i32 noundef 8)
  tail call void @_Z6putinti(i32 noundef 9)
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z6putinti(i32 noundef 1)
  tail call void @_Z6putinti(i32 noundef 2)
  tail call void @_Z6putinti(i32 noundef 3)
  tail call void @_Z6putinti(i32 noundef 4)
  tail call void @_Z6putinti(i32 noundef 5)
  tail call void @_Z6putinti(i32 noundef 6)
  tail call void @_Z6putinti(i32 noundef 7)
  tail call void @_Z6putinti(i32 noundef 8)
  tail call void @_Z6putinti(i32 noundef 9)
  ret i32 10
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
