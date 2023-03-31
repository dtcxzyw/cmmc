; ModuleID = 'tests//SysY2022/functional/67_reverse_output.sy'
source_filename = "tests//SysY2022/functional/67_reverse_output.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7reversei(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 2
  %3 = tail call noundef i32 @_Z6getintv()
  br i1 %2, label %4, label %5

4:                                                ; preds = %1, %5
  tail call void @_Z6putinti(i32 noundef %3)
  ret void

5:                                                ; preds = %1
  %6 = add nsw i32 %0, -1
  tail call void @_Z7reversei(i32 noundef %6)
  br label %4
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  tail call void @_Z7reversei(i32 noundef 200)
  ret i32 0
}

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
