; ModuleID = 'tests//SysY2022/functional/78_side_effect.sy'
source_filename = "tests//SysY2022/functional/78_side_effect.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global i32 -1, align 4
@b = dso_local local_unnamed_addr global i32 1, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z5inc_av() local_unnamed_addr #0 {
  %1 = load i32, i32* @a, align 4, !tbaa !5
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @a, align 4, !tbaa !5
  ret i32 %2
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = load i32, i32* @a, align 4, !tbaa !5
  %2 = icmp ugt i32 %1, -3
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = add nsw i32 %1, 3
  store i32 %4, i32* @a, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  store i32 1, i32* @a, align 4, !tbaa !5
  br label %12

7:                                                ; preds = %3
  tail call void @_Z6putinti(i32 noundef %4)
  tail call void @_Z5putchi(i32 noundef 32)
  %8 = load i32, i32* @b, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %8)
  tail call void @_Z5putchi(i32 noundef 10)
  %9 = load i32, i32* @a, align 4, !tbaa !5
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @a, align 4, !tbaa !5
  %11 = icmp slt i32 %9, 13
  br i1 %11, label %12, label %17

12:                                               ; preds = %6, %7
  %13 = phi i32 [ 1, %6 ], [ %10, %7 ]
  tail call void @_Z6putinti(i32 noundef %13)
  tail call void @_Z5putchi(i32 noundef 10)
  %14 = load i32, i32* @b, align 4, !tbaa !5
  %15 = shl nsw i32 %14, 1
  store i32 %15, i32* @b, align 4, !tbaa !5
  %16 = load i32, i32* @a, align 4, !tbaa !5
  br label %19

17:                                               ; preds = %7
  %18 = add nuw nsw i32 %9, 5
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ %16, %12 ]
  %21 = icmp ugt i32 %20, -3
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = add nsw i32 %20, 3
  store i32 %23, i32* @a, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  store i32 1, i32* @a, align 4, !tbaa !5
  br label %33

26:                                               ; preds = %22
  tail call void @_Z6putinti(i32 noundef %23)
  tail call void @_Z5putchi(i32 noundef 32)
  %27 = load i32, i32* @b, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %27)
  tail call void @_Z5putchi(i32 noundef 10)
  %28 = load i32, i32* @a, align 4, !tbaa !5
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @a, align 4, !tbaa !5
  %30 = icmp slt i32 %28, 13
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = add nuw nsw i32 %28, 5
  br label %38

33:                                               ; preds = %25, %26
  %34 = phi i32 [ 1, %25 ], [ %29, %26 ]
  tail call void @_Z6putinti(i32 noundef %34)
  tail call void @_Z5putchi(i32 noundef 10)
  %35 = load i32, i32* @b, align 4, !tbaa !5
  %36 = shl nsw i32 %35, 1
  store i32 %36, i32* @b, align 4, !tbaa !5
  %37 = load i32, i32* @a, align 4, !tbaa !5
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %37, %33 ], [ %32, %31 ]
  %40 = icmp ugt i32 %39, -3
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = add nsw i32 %39, 3
  store i32 %42, i32* @a, align 4, !tbaa !5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38
  store i32 1, i32* @a, align 4, !tbaa !5
  br label %52

45:                                               ; preds = %41
  tail call void @_Z6putinti(i32 noundef %42)
  tail call void @_Z5putchi(i32 noundef 32)
  %46 = load i32, i32* @b, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %46)
  tail call void @_Z5putchi(i32 noundef 10)
  %47 = load i32, i32* @a, align 4, !tbaa !5
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @a, align 4, !tbaa !5
  %49 = icmp slt i32 %47, 13
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = add nuw nsw i32 %47, 5
  br label %57

52:                                               ; preds = %44, %45
  %53 = phi i32 [ 1, %44 ], [ %48, %45 ]
  tail call void @_Z6putinti(i32 noundef %53)
  tail call void @_Z5putchi(i32 noundef 10)
  %54 = load i32, i32* @b, align 4, !tbaa !5
  %55 = shl nsw i32 %54, 1
  store i32 %55, i32* @b, align 4, !tbaa !5
  %56 = load i32, i32* @a, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %52, %50
  %58 = phi i32 [ %56, %52 ], [ %51, %50 ]
  %59 = icmp ugt i32 %58, -3
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = add nsw i32 %58, 3
  store i32 %61, i32* @a, align 4, !tbaa !5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %57
  store i32 1, i32* @a, align 4, !tbaa !5
  br label %71

64:                                               ; preds = %60
  tail call void @_Z6putinti(i32 noundef %61)
  tail call void @_Z5putchi(i32 noundef 32)
  %65 = load i32, i32* @b, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %65)
  tail call void @_Z5putchi(i32 noundef 10)
  %66 = load i32, i32* @a, align 4, !tbaa !5
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @a, align 4, !tbaa !5
  %68 = icmp slt i32 %66, 13
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = add nuw nsw i32 %66, 5
  br label %76

71:                                               ; preds = %63, %64
  %72 = phi i32 [ 1, %63 ], [ %67, %64 ]
  tail call void @_Z6putinti(i32 noundef %72)
  tail call void @_Z5putchi(i32 noundef 10)
  %73 = load i32, i32* @b, align 4, !tbaa !5
  %74 = shl nsw i32 %73, 1
  store i32 %74, i32* @b, align 4, !tbaa !5
  %75 = load i32, i32* @a, align 4, !tbaa !5
  br label %76

76:                                               ; preds = %71, %69
  %77 = phi i32 [ %75, %71 ], [ %70, %69 ]
  %78 = icmp ugt i32 %77, -3
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = add nsw i32 %77, 3
  store i32 %80, i32* @a, align 4, !tbaa !5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %76
  store i32 1, i32* @a, align 4, !tbaa !5
  br label %90

83:                                               ; preds = %79
  tail call void @_Z6putinti(i32 noundef %80)
  tail call void @_Z5putchi(i32 noundef 32)
  %84 = load i32, i32* @b, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %84)
  tail call void @_Z5putchi(i32 noundef 10)
  %85 = load i32, i32* @a, align 4, !tbaa !5
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @a, align 4, !tbaa !5
  %87 = icmp slt i32 %85, 13
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = add nuw nsw i32 %85, 5
  br label %95

90:                                               ; preds = %82, %83
  %91 = phi i32 [ 1, %82 ], [ %86, %83 ]
  tail call void @_Z6putinti(i32 noundef %91)
  tail call void @_Z5putchi(i32 noundef 10)
  %92 = load i32, i32* @b, align 4, !tbaa !5
  %93 = shl nsw i32 %92, 1
  store i32 %93, i32* @b, align 4, !tbaa !5
  %94 = load i32, i32* @a, align 4, !tbaa !5
  br label %95

95:                                               ; preds = %90, %88
  %96 = phi i32 [ %94, %90 ], [ %89, %88 ]
  %97 = icmp ugt i32 %96, -3
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = add nsw i32 %96, 3
  store i32 %99, i32* @a, align 4, !tbaa !5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %95
  store i32 1, i32* @a, align 4, !tbaa !5
  br label %109

102:                                              ; preds = %98
  tail call void @_Z6putinti(i32 noundef %99)
  tail call void @_Z5putchi(i32 noundef 32)
  %103 = load i32, i32* @b, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %103)
  tail call void @_Z5putchi(i32 noundef 10)
  %104 = load i32, i32* @a, align 4, !tbaa !5
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @a, align 4, !tbaa !5
  %106 = icmp slt i32 %104, 13
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = add nuw nsw i32 %104, 5
  store i32 %108, i32* @a, align 4, !tbaa !5
  br label %114

109:                                              ; preds = %101, %102
  %110 = phi i32 [ 1, %101 ], [ %105, %102 ]
  tail call void @_Z6putinti(i32 noundef %110)
  tail call void @_Z5putchi(i32 noundef 10)
  %111 = load i32, i32* @b, align 4, !tbaa !5
  %112 = shl nsw i32 %111, 1
  store i32 %112, i32* @b, align 4, !tbaa !5
  %113 = load i32, i32* @a, align 4, !tbaa !5
  br label %114

114:                                              ; preds = %109, %107
  %115 = phi i32 [ %113, %109 ], [ %108, %107 ]
  tail call void @_Z6putinti(i32 noundef %115)
  tail call void @_Z5putchi(i32 noundef 32)
  %116 = load i32, i32* @b, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %116)
  tail call void @_Z5putchi(i32 noundef 10)
  %117 = load i32, i32* @a, align 4, !tbaa !5
  ret i32 %117
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
