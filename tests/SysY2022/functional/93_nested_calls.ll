; ModuleID = 'tests//SysY2022/functional/93_nested_calls.sy'
source_filename = "tests//SysY2022/functional/93_nested_calls.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5func1iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sub nsw i32 %1, %2
  %5 = mul nsw i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5func2ii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = srem i32 %0, %1
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i32 [ %5, %4 ], [ %0, %2 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5func3ii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, 1
  %4 = add i32 %3, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5func4iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i32 %2, i32 %1
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5func5i(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sub nsw i32 0, %0
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5func6ii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %0, 0
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5func7i(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  %3 = tail call noundef i32 @_Z6getintv()
  %4 = tail call noundef i32 @_Z6getintv()
  %5 = tail call noundef i32 @_Z6getintv()
  %6 = tail call noundef i32 @_Z6getintv()
  %7 = tail call noundef i32 @_Z6getintv()
  %8 = tail call noundef i32 @_Z6getintv()
  %9 = tail call noundef i32 @_Z6getintv()
  %10 = tail call noundef i32 @_Z6getintv()
  %11 = tail call noundef i32 @_Z6getintv()
  %12 = tail call noundef i32 @_Z6getintv()
  %13 = tail call noundef i32 @_Z6getintv()
  %14 = tail call noundef i32 @_Z6getintv()
  %15 = icmp eq i32 %1, 0
  %16 = icmp ne i32 %2, 0
  %17 = and i1 %15, %16
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %0
  %21 = srem i32 %18, %3
  br label %22

22:                                               ; preds = %0, %20
  %23 = phi i32 [ %21, %20 ], [ %18, %0 ]
  %24 = xor i32 %23, -1
  %25 = icmp eq i32 %8, 0
  %26 = icmp ne i32 %7, 0
  %27 = and i1 %26, %25
  %28 = zext i1 %27 to i32
  %29 = icmp eq i32 %10, 0
  %30 = select i1 %29, i32 0, i32 %9
  %31 = icmp eq i32 %6, 0
  %32 = select i1 %31, i32 %30, i32 %28
  %33 = add i32 %11, 1
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %12, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %22
  %37 = srem i32 %34, %12
  br label %38

38:                                               ; preds = %22, %36
  %39 = phi i32 [ %37, %36 ], [ %34, %22 ]
  %40 = icmp eq i32 %14, 0
  %41 = zext i1 %40 to i32
  %42 = sub i32 1, %1
  %43 = add i32 %42, %13
  %44 = add i32 %43, %41
  %45 = mul nsw i32 %44, %39
  %46 = icmp eq i32 %4, %24
  %47 = select i1 %46, i32 %45, i32 %5
  %48 = select i1 %19, i32 2, i32 1
  %49 = add i32 %48, %4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %38
  %52 = srem i32 %2, %49
  br label %53

53:                                               ; preds = %38, %51
  %54 = phi i32 [ %52, %51 ], [ %2, %38 ]
  %55 = add i32 %47, 1
  %56 = add i32 %55, %54
  %57 = sub nsw i32 %5, %6
  %58 = mul nsw i32 %56, %57
  %59 = icmp eq i32 %7, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = srem i32 %58, %7
  br label %62

62:                                               ; preds = %53, %60
  %63 = phi i32 [ %61, %60 ], [ %58, %53 ]
  %64 = add i32 %9, 1
  %65 = sub i32 %64, %10
  %66 = icmp eq i32 %11, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = sub nsw i32 0, %11
  %69 = srem i32 %65, %68
  br label %70

70:                                               ; preds = %62, %67
  %71 = phi i32 [ %69, %67 ], [ %65, %62 ]
  %72 = icmp eq i32 %13, 0
  %73 = sext i1 %72 to i32
  %74 = add i32 %12, %73
  %75 = mul nsw i32 %71, %74
  br i1 %40, label %79, label %76

76:                                               ; preds = %70
  %77 = sub nsw i32 0, %14
  %78 = srem i32 %75, %77
  br label %79

79:                                               ; preds = %70, %76
  %80 = phi i32 [ %78, %76 ], [ %75, %70 ]
  %81 = xor i32 %1, -1
  %82 = add i32 %8, %81
  %83 = sub i32 %82, %80
  %84 = mul nsw i32 %83, %63
  ret i32 %84
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
