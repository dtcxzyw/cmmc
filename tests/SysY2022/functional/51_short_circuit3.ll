; ModuleID = 'tests//SysY2022/functional/51_short_circuit3.sy'
source_filename = "tests//SysY2022/functional/51_short_circuit3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local noundef i32 @_Z5set_ai(i32 noundef returned %0) local_unnamed_addr #0 {
  store i32 %0, i32* @a, align 4, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local noundef i32 @_Z5set_bi(i32 noundef returned %0) local_unnamed_addr #0 {
  store i32 %0, i32* @b, align 4, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local noundef i32 @_Z5set_di(i32 noundef returned %0) local_unnamed_addr #0 {
  store i32 %0, i32* @d, align 4, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  store i32 3, i32* @b, align 4, !tbaa !4
  store i32 0, i32* @a, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z5putchi(i32 noundef 32)
  %1 = load i32, i32* @b, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %1)
  tail call void @_Z5putchi(i32 noundef 32)
  store i32 3, i32* @b, align 4, !tbaa !4
  store i32 0, i32* @a, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef 0)
  tail call void @_Z5putchi(i32 noundef 32)
  %2 = load i32, i32* @b, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %2)
  tail call void @_Z5putchi(i32 noundef 10)
  store i32 3, i32* @d, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef 3)
  tail call void @_Z5putchi(i32 noundef 32)
  %3 = load i32, i32* @d, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %3)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 65)
  tail call void @_Z5putchi(i32 noundef 68)
  tail call void @_Z5putchi(i32 noundef 70)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z5putchi(i32 noundef 67)
  tail call void @_Z5putchi(i32 noundef 73)
  tail call void @_Z5putchi(i32 noundef 74)
  tail call void @_Z5putchi(i32 noundef 75)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
