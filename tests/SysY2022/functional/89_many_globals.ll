; ModuleID = 'tests//SysY2022/functional/89_many_globals.sy'
source_filename = "tests//SysY2022/functional/89_many_globals.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a0 = dso_local local_unnamed_addr global i32 0, align 4
@a1 = dso_local local_unnamed_addr global i32 0, align 4
@a2 = dso_local local_unnamed_addr global i32 0, align 4
@a3 = dso_local local_unnamed_addr global i32 0, align 4
@a4 = dso_local local_unnamed_addr global i32 0, align 4
@a5 = dso_local local_unnamed_addr global i32 0, align 4
@a6 = dso_local local_unnamed_addr global i32 0, align 4
@a7 = dso_local local_unnamed_addr global i32 0, align 4
@a8 = dso_local local_unnamed_addr global i32 0, align 4
@a9 = dso_local local_unnamed_addr global i32 0, align 4
@a10 = dso_local local_unnamed_addr global i32 0, align 4
@a11 = dso_local local_unnamed_addr global i32 0, align 4
@a12 = dso_local local_unnamed_addr global i32 0, align 4
@a13 = dso_local local_unnamed_addr global i32 0, align 4
@a14 = dso_local local_unnamed_addr global i32 0, align 4
@a15 = dso_local local_unnamed_addr global i32 0, align 4
@a16 = dso_local local_unnamed_addr global i32 0, align 4
@a17 = dso_local local_unnamed_addr global i32 0, align 4
@a18 = dso_local local_unnamed_addr global i32 0, align 4
@a19 = dso_local local_unnamed_addr global i32 0, align 4
@a20 = dso_local local_unnamed_addr global i32 0, align 4
@a21 = dso_local local_unnamed_addr global i32 0, align 4
@a22 = dso_local local_unnamed_addr global i32 0, align 4
@a23 = dso_local local_unnamed_addr global i32 0, align 4
@a24 = dso_local local_unnamed_addr global i32 0, align 4
@a25 = dso_local local_unnamed_addr global i32 0, align 4
@a26 = dso_local local_unnamed_addr global i32 0, align 4
@a27 = dso_local local_unnamed_addr global i32 0, align 4
@a28 = dso_local local_unnamed_addr global i32 0, align 4
@a29 = dso_local local_unnamed_addr global i32 0, align 4
@a30 = dso_local local_unnamed_addr global i32 0, align 4
@a31 = dso_local local_unnamed_addr global i32 0, align 4
@a32 = dso_local local_unnamed_addr global i32 0, align 4
@a33 = dso_local local_unnamed_addr global i32 0, align 4
@a34 = dso_local local_unnamed_addr global i32 0, align 4
@a35 = dso_local local_unnamed_addr global i32 0, align 4
@a36 = dso_local local_unnamed_addr global i32 0, align 4
@a37 = dso_local local_unnamed_addr global i32 0, align 4
@a38 = dso_local local_unnamed_addr global i32 0, align 4
@a39 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z10testParam8iiiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = add nsw i32 %1, %0
  %10 = add nsw i32 %9, %2
  %11 = add nsw i32 %10, %3
  %12 = add nsw i32 %11, %4
  %13 = add nsw i32 %12, %5
  %14 = add nsw i32 %13, %6
  %15 = add nsw i32 %14, %7
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z11testParam16iiiiiiiiiiiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) local_unnamed_addr #0 {
  %17 = add i32 %1, %0
  %18 = add i32 %17, %2
  %19 = add i32 %3, %4
  %20 = add i32 %19, %5
  %21 = add i32 %20, %6
  %22 = add i32 %21, %7
  %23 = sub i32 %18, %22
  %24 = add i32 %23, %8
  %25 = add i32 %24, %9
  %26 = add i32 %25, %10
  %27 = add i32 %26, %11
  %28 = add i32 %27, %12
  %29 = add i32 %28, %13
  %30 = add i32 %29, %14
  %31 = add i32 %30, %15
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31) local_unnamed_addr #0 {
  %33 = add i32 %1, %0
  %34 = add i32 %33, %2
  %35 = add i32 %34, %3
  %36 = add i32 %35, %4
  %37 = add i32 %36, %5
  %38 = add i32 %37, %6
  %39 = add i32 %38, %7
  %40 = add i32 %39, %8
  %41 = add i32 %40, %9
  %42 = add i32 %41, %10
  %43 = add i32 %42, %11
  %44 = add i32 %43, %12
  %45 = add i32 %44, %13
  %46 = add i32 %45, %14
  %47 = add i32 %46, %15
  %48 = add i32 %47, %16
  %49 = add i32 %48, %17
  %50 = add i32 %18, %19
  %51 = add i32 %50, %20
  %52 = add i32 %51, %21
  %53 = add i32 %52, %22
  %54 = sub i32 %49, %53
  %55 = add i32 %54, %23
  %56 = add i32 %55, %24
  %57 = add i32 %56, %25
  %58 = add i32 %57, %26
  %59 = add i32 %58, %27
  %60 = add i32 %59, %28
  %61 = add i32 %60, %29
  %62 = add i32 %61, %30
  %63 = add i32 %62, %31
  ret i32 %63
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  store i32 1, i32* @a1, align 4, !tbaa !4
  store i32 2, i32* @a2, align 4, !tbaa !4
  store i32 3, i32* @a3, align 4, !tbaa !4
  store i32 4, i32* @a4, align 4, !tbaa !4
  store i32 5, i32* @a5, align 4, !tbaa !4
  store i32 6, i32* @a6, align 4, !tbaa !4
  store i32 7, i32* @a7, align 4, !tbaa !4
  store i32 8, i32* @a8, align 4, !tbaa !4
  store i32 9, i32* @a9, align 4, !tbaa !4
  store i32 0, i32* @a10, align 4, !tbaa !4
  store i32 1, i32* @a11, align 4, !tbaa !4
  store i32 2, i32* @a12, align 4, !tbaa !4
  store i32 3, i32* @a13, align 4, !tbaa !4
  store i32 4, i32* @a14, align 4, !tbaa !4
  store i32 5, i32* @a15, align 4, !tbaa !4
  store i32 6, i32* @a16, align 4, !tbaa !4
  store i32 7, i32* @a17, align 4, !tbaa !4
  store i32 8, i32* @a18, align 4, !tbaa !4
  store i32 9, i32* @a19, align 4, !tbaa !4
  store i32 0, i32* @a20, align 4, !tbaa !4
  store i32 1, i32* @a21, align 4, !tbaa !4
  store i32 2, i32* @a22, align 4, !tbaa !4
  store i32 3, i32* @a23, align 4, !tbaa !4
  store i32 4, i32* @a24, align 4, !tbaa !4
  store i32 5, i32* @a25, align 4, !tbaa !4
  store i32 6, i32* @a26, align 4, !tbaa !4
  store i32 7, i32* @a27, align 4, !tbaa !4
  store i32 8, i32* @a28, align 4, !tbaa !4
  store i32 9, i32* @a29, align 4, !tbaa !4
  store i32 0, i32* @a30, align 4, !tbaa !4
  store i32 1, i32* @a31, align 4, !tbaa !4
  store i32 4, i32* @a32, align 4, !tbaa !4
  store i32 5, i32* @a33, align 4, !tbaa !4
  store i32 6, i32* @a34, align 4, !tbaa !4
  store i32 7, i32* @a35, align 4, !tbaa !4
  store i32 8, i32* @a36, align 4, !tbaa !4
  store i32 9, i32* @a37, align 4, !tbaa !4
  store i32 0, i32* @a38, align 4, !tbaa !4
  store i32 1, i32* @a39, align 4, !tbaa !4
  store i32 28, i32* @a0, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef 28)
  %1 = load i32, i32* @a32, align 4, !tbaa !4
  %2 = load i32, i32* @a33, align 4, !tbaa !4
  %3 = load i32, i32* @a34, align 4, !tbaa !4
  %4 = load i32, i32* @a35, align 4, !tbaa !4
  %5 = load i32, i32* @a36, align 4, !tbaa !4
  %6 = load i32, i32* @a37, align 4, !tbaa !4
  %7 = load i32, i32* @a38, align 4, !tbaa !4
  %8 = load i32, i32* @a39, align 4, !tbaa !4
  %9 = load i32, i32* @a8, align 4, !tbaa !4
  %10 = load i32, i32* @a9, align 4, !tbaa !4
  %11 = load i32, i32* @a10, align 4, !tbaa !4
  %12 = load i32, i32* @a11, align 4, !tbaa !4
  %13 = load i32, i32* @a12, align 4, !tbaa !4
  %14 = load i32, i32* @a13, align 4, !tbaa !4
  %15 = load i32, i32* @a14, align 4, !tbaa !4
  %16 = load i32, i32* @a15, align 4, !tbaa !4
  %17 = add i32 %2, %1
  %18 = add i32 %17, %3
  %19 = add i32 %4, %5
  %20 = add i32 %19, %6
  %21 = add i32 %20, %7
  %22 = add i32 %21, %8
  %23 = sub i32 %18, %22
  %24 = add i32 %23, %9
  %25 = add i32 %24, %10
  %26 = add i32 %25, %11
  %27 = add i32 %26, %12
  %28 = add i32 %27, %13
  %29 = add i32 %28, %14
  %30 = add i32 %29, %15
  %31 = add i32 %30, %16
  store i32 %31, i32* @a0, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %31)
  %32 = load i32, i32* @a0, align 4, !tbaa !4
  %33 = load i32, i32* @a1, align 4, !tbaa !4
  %34 = load i32, i32* @a2, align 4, !tbaa !4
  %35 = load i32, i32* @a3, align 4, !tbaa !4
  %36 = load i32, i32* @a4, align 4, !tbaa !4
  %37 = load i32, i32* @a5, align 4, !tbaa !4
  %38 = load i32, i32* @a6, align 4, !tbaa !4
  %39 = load i32, i32* @a7, align 4, !tbaa !4
  %40 = load i32, i32* @a8, align 4, !tbaa !4
  %41 = load i32, i32* @a9, align 4, !tbaa !4
  %42 = load i32, i32* @a10, align 4, !tbaa !4
  %43 = load i32, i32* @a11, align 4, !tbaa !4
  %44 = load i32, i32* @a12, align 4, !tbaa !4
  %45 = load i32, i32* @a13, align 4, !tbaa !4
  %46 = load i32, i32* @a14, align 4, !tbaa !4
  %47 = load i32, i32* @a15, align 4, !tbaa !4
  %48 = load i32, i32* @a16, align 4, !tbaa !4
  %49 = load i32, i32* @a17, align 4, !tbaa !4
  %50 = load i32, i32* @a18, align 4, !tbaa !4
  %51 = load i32, i32* @a19, align 4, !tbaa !4
  %52 = load i32, i32* @a20, align 4, !tbaa !4
  %53 = load i32, i32* @a21, align 4, !tbaa !4
  %54 = load i32, i32* @a22, align 4, !tbaa !4
  %55 = load i32, i32* @a23, align 4, !tbaa !4
  %56 = load i32, i32* @a24, align 4, !tbaa !4
  %57 = load i32, i32* @a25, align 4, !tbaa !4
  %58 = load i32, i32* @a26, align 4, !tbaa !4
  %59 = load i32, i32* @a27, align 4, !tbaa !4
  %60 = load i32, i32* @a28, align 4, !tbaa !4
  %61 = load i32, i32* @a29, align 4, !tbaa !4
  %62 = load i32, i32* @a30, align 4, !tbaa !4
  %63 = load i32, i32* @a31, align 4, !tbaa !4
  %64 = add i32 %33, %32
  %65 = add i32 %64, %34
  %66 = add i32 %65, %35
  %67 = add i32 %66, %36
  %68 = add i32 %67, %37
  %69 = add i32 %68, %38
  %70 = add i32 %69, %39
  %71 = add i32 %70, %40
  %72 = add i32 %71, %41
  %73 = add i32 %72, %42
  %74 = add i32 %73, %43
  %75 = add i32 %74, %44
  %76 = add i32 %75, %45
  %77 = add i32 %76, %46
  %78 = add i32 %77, %47
  %79 = add i32 %78, %48
  %80 = add i32 %79, %49
  %81 = add i32 %50, %51
  %82 = add i32 %81, %52
  %83 = add i32 %82, %53
  %84 = add i32 %83, %54
  %85 = sub i32 %80, %84
  %86 = add i32 %85, %55
  %87 = add i32 %86, %56
  %88 = add i32 %87, %57
  %89 = add i32 %88, %58
  %90 = add i32 %89, %59
  %91 = add i32 %90, %60
  %92 = add i32 %91, %61
  %93 = add i32 %92, %62
  %94 = add i32 %93, %63
  store i32 %94, i32* @a0, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %94)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
