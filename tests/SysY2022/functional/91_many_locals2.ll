; ModuleID = 'tests//SysY2022/functional/91_many_locals2.sy'
source_filename = "tests//SysY2022/functional/91_many_locals2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp eq i32 %1, 5
  %3 = select i1 %2, i32 6, i32 %1
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
  tail call void @_Z6putinti(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef 11)
  tail call void @_Z6putinti(i32 noundef 12)
  tail call void @_Z6putinti(i32 noundef 13)
  tail call void @_Z6putinti(i32 noundef 14)
  tail call void @_Z6putinti(i32 noundef 15)
  tail call void @_Z6putinti(i32 noundef 16)
  tail call void @_Z6putinti(i32 noundef 17)
  tail call void @_Z6putinti(i32 noundef 18)
  tail call void @_Z6putinti(i32 noundef 19)
  tail call void @_Z6putinti(i32 noundef 20)
  tail call void @_Z6putinti(i32 noundef 21)
  tail call void @_Z6putinti(i32 noundef 22)
  tail call void @_Z6putinti(i32 noundef 23)
  tail call void @_Z6putinti(i32 noundef 24)
  tail call void @_Z6putinti(i32 noundef 25)
  tail call void @_Z6putinti(i32 noundef 26)
  tail call void @_Z6putinti(i32 noundef 27)
  tail call void @_Z6putinti(i32 noundef 28)
  tail call void @_Z6putinti(i32 noundef 29)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z6putinti(i32 noundef %3)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 25
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
