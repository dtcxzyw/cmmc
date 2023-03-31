; ModuleID = 'tests//SysY2022/functional/84_long_array2.sy'
source_filename = "tests//SysY2022/functional/84_long_array2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global [4096 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z2f1Pi(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i32 4000, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 5), align 4, !tbaa !4
  store i32 3, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 4000), align 16, !tbaa !4
  store i32 7, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 4095), align 4, !tbaa !4
  %2 = load i32, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 2216), align 16, !tbaa !4
  %3 = add nsw i32 %2, 9
  %4 = getelementptr inbounds i32, i32* %0, i64 7
  store i32 %3, i32* %4, align 4, !tbaa !4
  %5 = load i32, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 4000), align 16, !tbaa !4
  ret i32 %5
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  store i32 4000, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 5), align 4, !tbaa !4
  store i32 3, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 4000), align 16, !tbaa !4
  store i32 7, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 4095), align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef 3)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
