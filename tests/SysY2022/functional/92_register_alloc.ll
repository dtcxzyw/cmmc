; ModuleID = 'tests//SysY2022/functional/92_register_alloc.sy'
source_filename = "tests//SysY2022/functional/92_register_alloc.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a1 = dso_local local_unnamed_addr global i32 1, align 4
@a2 = dso_local local_unnamed_addr global i32 2, align 4
@a3 = dso_local local_unnamed_addr global i32 3, align 4
@a4 = dso_local local_unnamed_addr global i32 4, align 4
@a5 = dso_local local_unnamed_addr global i32 5, align 4
@a6 = dso_local local_unnamed_addr global i32 6, align 4
@a7 = dso_local local_unnamed_addr global i32 7, align 4
@a8 = dso_local local_unnamed_addr global i32 8, align 4
@a9 = dso_local local_unnamed_addr global i32 9, align 4
@a10 = dso_local local_unnamed_addr global i32 10, align 4
@a11 = dso_local local_unnamed_addr global i32 11, align 4
@a12 = dso_local local_unnamed_addr global i32 12, align 4
@a13 = dso_local local_unnamed_addr global i32 13, align 4
@a14 = dso_local local_unnamed_addr global i32 14, align 4
@a15 = dso_local local_unnamed_addr global i32 15, align 4
@a16 = dso_local local_unnamed_addr global i32 16, align 4
@a17 = dso_local local_unnamed_addr global i32 1, align 4
@a18 = dso_local local_unnamed_addr global i32 2, align 4
@a19 = dso_local local_unnamed_addr global i32 3, align 4
@a20 = dso_local local_unnamed_addr global i32 4, align 4
@a21 = dso_local local_unnamed_addr global i32 5, align 4
@a22 = dso_local local_unnamed_addr global i32 6, align 4
@a23 = dso_local local_unnamed_addr global i32 7, align 4
@a24 = dso_local local_unnamed_addr global i32 8, align 4
@a25 = dso_local local_unnamed_addr global i32 9, align 4
@a26 = dso_local local_unnamed_addr global i32 10, align 4
@a27 = dso_local local_unnamed_addr global i32 11, align 4
@a28 = dso_local local_unnamed_addr global i32 12, align 4
@a29 = dso_local local_unnamed_addr global i32 13, align 4
@a30 = dso_local local_unnamed_addr global i32 14, align 4
@a31 = dso_local local_unnamed_addr global i32 15, align 4
@a32 = dso_local local_unnamed_addr global i32 16, align 4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z4funcii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_Z6getintv()
  %4 = tail call noundef i32 @_Z6getintv()
  %5 = tail call noundef i32 @_Z6getintv()
  %6 = tail call noundef i32 @_Z6getintv()
  %7 = add nsw i32 %3, 1
  %8 = load i32, i32* @a1, align 4, !tbaa !4
  %9 = add nsw i32 %7, %8
  %10 = add nsw i32 %4, 2
  %11 = load i32, i32* @a2, align 4, !tbaa !4
  %12 = add nsw i32 %10, %11
  %13 = add nsw i32 %5, 3
  %14 = load i32, i32* @a3, align 4, !tbaa !4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %6, 4
  %17 = load i32, i32* @a4, align 4, !tbaa !4
  %18 = add nsw i32 %16, %17
  %19 = add nsw i32 %9, 1
  %20 = load i32, i32* @a5, align 4, !tbaa !4
  %21 = add nsw i32 %19, %20
  %22 = add nsw i32 %12, 2
  %23 = load i32, i32* @a6, align 4, !tbaa !4
  %24 = add nsw i32 %22, %23
  %25 = add nsw i32 %15, 3
  %26 = load i32, i32* @a7, align 4, !tbaa !4
  %27 = add nsw i32 %25, %26
  %28 = add nsw i32 %18, 4
  %29 = load i32, i32* @a8, align 4, !tbaa !4
  %30 = add nsw i32 %28, %29
  %31 = add nsw i32 %21, 1
  %32 = load i32, i32* @a9, align 4, !tbaa !4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %24, 2
  %35 = load i32, i32* @a10, align 4, !tbaa !4
  %36 = add nsw i32 %34, %35
  %37 = add nsw i32 %27, 3
  %38 = load i32, i32* @a11, align 4, !tbaa !4
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %30, 4
  %41 = load i32, i32* @a12, align 4, !tbaa !4
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %33, 1
  %44 = load i32, i32* @a13, align 4, !tbaa !4
  %45 = add nsw i32 %43, %44
  %46 = add nsw i32 %36, 2
  %47 = add nsw i32 %39, 3
  %48 = load i32, i32* @a15, align 4, !tbaa !4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %42, 4
  %51 = load i32, i32* @a17, align 4, !tbaa !4
  %52 = load i32, i32* @a18, align 4, !tbaa !4
  %53 = load i32, i32* @a19, align 4, !tbaa !4
  %54 = load i32, i32* @a20, align 4, !tbaa !4
  %55 = load i32, i32* @a21, align 4, !tbaa !4
  %56 = load i32, i32* @a23, align 4, !tbaa !4
  %57 = load i32, i32* @a25, align 4, !tbaa !4
  %58 = load i32, i32* @a26, align 4, !tbaa !4
  %59 = load i32, i32* @a27, align 4, !tbaa !4
  %60 = load i32, i32* @a28, align 4, !tbaa !4
  %61 = load i32, i32* @a29, align 4, !tbaa !4
  %62 = load i32, i32* @a31, align 4, !tbaa !4
  %63 = add i32 %56, %55
  %64 = add i32 %63, %61
  %65 = add i32 %64, %62
  %66 = shl i32 %65, 1
  %67 = add i32 %0, 30
  %68 = sub i32 %67, %1
  %69 = add i32 %68, %3
  %70 = add i32 %69, %4
  %71 = add i32 %70, %5
  %72 = add i32 %71, %6
  %73 = add i32 %72, %8
  %74 = add i32 %9, %11
  %75 = add i32 %74, %12
  %76 = add i32 %73, %14
  %77 = add i32 %75, %15
  %78 = add i32 %77, %17
  %79 = add i32 %78, %18
  %80 = sub i32 %76, %79
  %81 = add i32 %80, %20
  %82 = add i32 %81, %21
  %83 = add i32 %22, %82
  %84 = add i32 %83, %26
  %85 = add i32 %84, %27
  %86 = add i32 %28, %85
  %87 = add i32 %86, %32
  %88 = add i32 %33, %35
  %89 = add i32 %88, %36
  %90 = add i32 %87, %38
  %91 = add i32 %89, %39
  %92 = add i32 %91, %41
  %93 = add i32 %92, %42
  %94 = sub i32 %90, %93
  %95 = add i32 %94, %44
  %96 = add i32 %95, %45
  %97 = add i32 %46, %96
  %98 = add i32 %97, %48
  %99 = add i32 %98, %49
  %100 = add i32 %50, %99
  %101 = add i32 %100, %51
  %102 = add i32 %101, %53
  %103 = add i32 %52, %54
  %104 = add i32 %102, %57
  %105 = add i32 %103, %58
  %106 = add i32 %104, %59
  %107 = add i32 %105, %60
  %108 = sub i32 %106, %107
  %109 = add i32 %108, %66
  ret i32 %109
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = add nsw i32 %1, 18
  %3 = tail call noundef i32 @_Z4funcii(i32 noundef %1, i32 noundef %2)
  tail call void @_Z6putinti(i32 noundef %3)
  ret i32 %3
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
