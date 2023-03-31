; ModuleID = 'tests//SysY2022/hidden_functional/26_scope4.sy'
source_filename = "tests//SysY2022/hidden_functional/26_scope4.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global i32 0, align 4
@count = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z4getAv() local_unnamed_addr #0 {
  %1 = load i32, i32* @count, align 4, !tbaa !4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @count, align 4, !tbaa !4
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z2f1i(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @sum, align 4, !tbaa !4
  %3 = add nsw i32 %2, %0
  %4 = load i32, i32* @count, align 4, !tbaa !4
  %5 = add nsw i32 %4, 1
  %6 = add nsw i32 %5, %3
  %7 = add nsw i32 %4, 2
  store i32 %7, i32* @count, align 4, !tbaa !4
  %8 = add nsw i32 %6, %7
  %9 = shl i32 %5, 1
  %10 = add i32 %8, %9
  store i32 %10, i32* @sum, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z2f2v() local_unnamed_addr #0 {
  %1 = load i32, i32* @sum, align 4, !tbaa !4
  %2 = load i32, i32* @a, align 4, !tbaa !4
  %3 = load i32, i32* @count, align 4, !tbaa !4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @count, align 4, !tbaa !4
  %5 = shl i32 %2, 1
  %6 = add i32 %1, %5
  store i32 %6, i32* @sum, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z2f3v() local_unnamed_addr #0 {
  %1 = load i32, i32* @count, align 4, !tbaa !4
  %2 = add nsw i32 %1, 1
  %3 = load i32, i32* @sum, align 4, !tbaa !4
  %4 = add nsw i32 %3, %2
  %5 = add nsw i32 %1, 3
  store i32 %5, i32* @count, align 4, !tbaa !4
  %6 = shl i32 %1, 1
  %7 = add i32 %6, 4
  %8 = add i32 %4, %7
  store i32 %8, i32* @sum, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = load i32, i32* @count, align 4, !tbaa !4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @a, align 4, !tbaa !4
  %3 = add nsw i32 %1, 2
  %4 = add nsw i32 %2, %3
  %5 = add nsw i32 %1, 3
  %6 = add nsw i32 %4, %5
  %7 = add nsw i32 %1, 4
  %8 = add nsw i32 %6, %7
  %9 = shl i32 %5, 1
  %10 = add i32 %8, %9
  %11 = shl i32 %2, 1
  %12 = add i32 %10, %11
  %13 = shl i32 %1, 1
  %14 = add i32 %13, 10
  %15 = add i32 %1, 10
  %16 = add i32 %15, %14
  %17 = add i32 %16, %12
  %18 = add nsw i32 %1, 9
  %19 = shl i32 %18, 1
  %20 = add i32 %18, %3
  %21 = add i32 %20, %15
  %22 = add i32 %21, %19
  %23 = add i32 %22, %17
  %24 = add i32 %23, %11
  %25 = shl i32 %1, 1
  %26 = add i32 %25, 22
  %27 = add i32 %1, 16
  %28 = add i32 %27, %26
  %29 = add i32 %28, %24
  %30 = add nsw i32 %1, 17
  %31 = shl i32 %27, 1
  %32 = add i32 %27, %3
  %33 = add i32 %32, %30
  %34 = add i32 %33, %31
  %35 = add i32 %34, %29
  %36 = add nsw i32 %1, 18
  store i32 %36, i32* @count, align 4, !tbaa !4
  %37 = add i32 %35, %11
  %38 = shl i32 %36, 1
  %39 = add i32 %1, 23
  %40 = add i32 %39, %38
  %41 = add i32 %40, %37
  %42 = add nsw i32 %1, 24
  %43 = add nsw i32 %1, 25
  %44 = shl i32 %42, 1
  %45 = add i32 %39, %42
  %46 = add i32 %45, %43
  %47 = add i32 %46, %44
  %48 = add i32 %47, %41
  %49 = add i32 %48, %11
  %50 = shl i32 %1, 1
  %51 = add i32 %50, 52
  %52 = add i32 %1, 31
  %53 = add i32 %52, %51
  %54 = add i32 %53, %49
  store i32 %54, i32* @sum, align 4, !tbaa !4
  %55 = add nsw i32 %1, 30
  %56 = add nsw i32 %1, 32
  %57 = shl i32 %52, 1
  %58 = add i32 %55, %52
  %59 = add i32 %58, %56
  %60 = add i32 %59, %57
  %61 = add i32 %60, %54
  %62 = add i32 %61, %11
  %63 = shl i32 %1, 1
  %64 = add i32 %63, 66
  %65 = add i32 %1, 38
  %66 = add i32 %65, %64
  %67 = add i32 %66, %62
  %68 = add nsw i32 %1, 37
  %69 = add nsw i32 %1, 39
  %70 = shl i32 %65, 1
  %71 = add i32 %68, %65
  %72 = add i32 %71, %69
  %73 = add i32 %72, %70
  %74 = add i32 %73, %67
  %75 = add i32 %74, %11
  %76 = shl i32 %1, 1
  %77 = add i32 %76, 80
  %78 = add i32 %1, 45
  %79 = add i32 %78, %77
  %80 = add i32 %79, %75
  %81 = add nsw i32 %1, 44
  %82 = shl i32 %81, 1
  %83 = add i32 %81, %3
  %84 = add i32 %83, %78
  %85 = add i32 %84, %82
  %86 = add i32 %85, %80
  %87 = add i32 %86, %11
  %88 = add nsw i32 %1, 49
  %89 = mul i32 %1, 3
  %90 = add i32 %89, 143
  %91 = add i32 %90, %87
  br label %92

92:                                               ; preds = %0, %133
  %93 = phi i32 [ %3, %0 ], [ %148, %133 ]
  %94 = phi i32 [ 0, %0 ], [ %149, %133 ]
  %95 = phi i32 [ %91, %0 ], [ %147, %133 ]
  %96 = phi i32 [ %88, %0 ], [ %148, %133 ]
  %97 = add nsw i32 %95, %93
  %98 = add nsw i32 %96, 1
  %99 = add nsw i32 %97, %98
  %100 = add nsw i32 %96, 2
  %101 = add nsw i32 %99, %100
  %102 = shl i32 %98, 1
  %103 = add i32 %101, %102
  %104 = add i32 %103, %11
  %105 = mul i32 %96, 3
  %106 = add i32 %105, 14
  %107 = add i32 %106, %104
  %108 = icmp eq i32 %94, 1
  br i1 %108, label %109, label %133

109:                                              ; preds = %92
  %110 = add nsw i32 %96, 8
  %111 = add nsw i32 %96, 13
  %112 = add nsw i32 %96, 14
  %113 = mul i32 %111, 3
  %114 = add i32 %113, 14
  %115 = add i32 %105, 35
  %116 = add nsw i32 %96, 7
  %117 = add i32 %116, %110
  %118 = add nsw i32 %96, 9
  %119 = add i32 %117, %118
  %120 = shl i32 %110, 1
  %121 = add i32 %119, %120
  %122 = add i32 %121, %107
  %123 = add i32 %122, %11
  %124 = add i32 %115, %123
  %125 = add nsw i32 %124, %93
  %126 = add nsw i32 %125, %112
  %127 = add nsw i32 %96, 15
  %128 = add nsw i32 %126, %127
  %129 = shl i32 %112, 1
  %130 = add i32 %128, %129
  %131 = add i32 %130, %11
  %132 = add i32 %114, %131
  br label %133

133:                                              ; preds = %109, %92
  %134 = phi i32 [ 2, %109 ], [ %94, %92 ]
  %135 = phi i32 [ %111, %109 ], [ %96, %92 ]
  %136 = phi i32 [ %113, %109 ], [ %105, %92 ]
  %137 = phi i32 [ %132, %109 ], [ %107, %92 ]
  %138 = add nsw i32 %135, 7
  %139 = add nsw i32 %135, 8
  %140 = shl i32 %138, 1
  %141 = add i32 %138, %93
  %142 = add i32 %141, %139
  %143 = add i32 %142, %140
  %144 = add i32 %143, %137
  %145 = add i32 %144, %11
  %146 = add i32 %136, 32
  %147 = add i32 %146, %145
  %148 = add nsw i32 %135, 13
  %149 = add nsw i32 %134, 1
  %150 = icmp slt i32 %134, 2
  br i1 %150, label %92, label %151, !llvm.loop !8

151:                                              ; preds = %133
  store i32 %147, i32* @sum, align 4, !tbaa !4
  store i32 %148, i32* @count, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %147)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
