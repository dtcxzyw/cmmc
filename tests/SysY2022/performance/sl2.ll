; ModuleID = 'tests//SysY2022/performance/sl2.sy'
source_filename = "tests//SysY2022/performance/sl2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x = dso_local global [600 x [600 x [600 x i32]]] zeroinitializer, align 16
@y = dso_local local_unnamed_addr global [600 x [600 x [600 x i32]]] zeroinitializer, align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z6getintv()
  tail call void @_Z15_sysy_starttimei(i32 noundef 13)
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %90

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = add nsw i64 %5, -1
  %8 = and i64 %5, 3
  %9 = icmp ult i64 %7, 3
  %10 = and i64 %5, 4294967292
  %11 = icmp eq i64 %8, 0
  br label %12

12:                                               ; preds = %4, %43
  %13 = phi i64 [ 0, %4 ], [ %44, %43 ]
  br label %14

14:                                               ; preds = %40, %12
  %15 = phi i64 [ %41, %40 ], [ 0, %12 ]
  %16 = getelementptr [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @y, i64 0, i64 %13, i64 %15, i64 0
  %17 = bitcast i32* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 %6, i1 false), !tbaa !4
  br i1 %9, label %31, label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ %28, %18 ], [ 0, %14 ]
  %20 = phi i64 [ %29, %18 ], [ 0, %14 ]
  %21 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %13, i64 %15, i64 %19
  store i32 1, i32* %21, align 16, !tbaa !4
  %22 = or i64 %19, 1
  %23 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %13, i64 %15, i64 %22
  store i32 1, i32* %23, align 4, !tbaa !4
  %24 = or i64 %19, 2
  %25 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %13, i64 %15, i64 %24
  store i32 1, i32* %25, align 8, !tbaa !4
  %26 = or i64 %19, 3
  %27 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %13, i64 %15, i64 %26
  store i32 1, i32* %27, align 4, !tbaa !4
  %28 = add nuw nsw i64 %19, 4
  %29 = add nuw i64 %20, 4
  %30 = icmp eq i64 %29, %10
  br i1 %30, label %31, label %18, !llvm.loop !8

31:                                               ; preds = %18, %14
  %32 = phi i64 [ 0, %14 ], [ %28, %18 ]
  br i1 %11, label %40, label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ %37, %33 ], [ %32, %31 ]
  %35 = phi i64 [ %38, %33 ], [ 0, %31 ]
  %36 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %13, i64 %15, i64 %34
  store i32 1, i32* %36, align 4, !tbaa !4
  %37 = add nuw nsw i64 %34, 1
  %38 = add i64 %35, 1
  %39 = icmp eq i64 %38, %8
  br i1 %39, label %40, label %33, !llvm.loop !10

40:                                               ; preds = %33, %31
  %41 = add nuw nsw i64 %15, 1
  %42 = icmp eq i64 %41, %5
  br i1 %42, label %43, label %14, !llvm.loop !12

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %13, 1
  %45 = icmp eq i64 %44, %5
  br i1 %45, label %46, label %12, !llvm.loop !13

46:                                               ; preds = %43
  %47 = icmp sgt i32 %1, 2
  br i1 %47, label %48, label %90

48:                                               ; preds = %46
  %49 = add nsw i32 %1, -1
  %50 = zext i32 %49 to i64
  br label %51

51:                                               ; preds = %48, %85
  %52 = phi i64 [ 1, %48 ], [ %54, %85 ]
  %53 = add nsw i64 %52, -1
  %54 = add nuw nsw i64 %52, 1
  br label %55

55:                                               ; preds = %83, %51
  %56 = phi i64 [ %58, %83 ], [ 1, %51 ]
  %57 = add nsw i64 %56, -1
  %58 = add nuw nsw i64 %56, 1
  %59 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %52, i64 %56, i64 0
  %60 = load i32, i32* %59, align 16, !tbaa !4
  br label %61

61:                                               ; preds = %61, %55
  %62 = phi i32 [ %80, %61 ], [ %60, %55 ]
  %63 = phi i64 [ %76, %61 ], [ 1, %55 ]
  %64 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %53, i64 %56, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !4
  %66 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %54, i64 %56, i64 %63
  %67 = load i32, i32* %66, align 4, !tbaa !4
  %68 = add nsw i32 %67, %65
  %69 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %52, i64 %57, i64 %63
  %70 = load i32, i32* %69, align 4, !tbaa !4
  %71 = add nsw i32 %68, %70
  %72 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %52, i64 %58, i64 %63
  %73 = load i32, i32* %72, align 4, !tbaa !4
  %74 = add nsw i32 %71, %73
  %75 = add nsw i32 %74, %62
  %76 = add nuw nsw i64 %63, 1
  %77 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %52, i64 %56, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !4
  %79 = add nsw i32 %75, %78
  %80 = sdiv i32 %79, %2
  %81 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %52, i64 %56, i64 %63
  store i32 %80, i32* %81, align 4, !tbaa !4
  %82 = icmp eq i64 %76, %50
  br i1 %82, label %83, label %61, !llvm.loop !14

83:                                               ; preds = %61
  %84 = icmp eq i64 %58, %50
  br i1 %84, label %85, label %55, !llvm.loop !15

85:                                               ; preds = %83
  %86 = icmp eq i64 %54, %50
  br i1 %86, label %87, label %51, !llvm.loop !16

87:                                               ; preds = %85
  %88 = add i32 %1, -2
  %89 = sext i32 %88 to i64
  br label %90

90:                                               ; preds = %0, %87, %46
  %91 = phi i64 [ 0, %46 ], [ %89, %87 ], [ 0, %0 ]
  tail call void @_Z14_sysy_stoptimei(i32 noundef 53)
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef getelementptr inbounds ([600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 0, i64 0, i64 0))
  %92 = sdiv i32 %1, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %93, i64 %93, i64 0
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef nonnull %94)
  %95 = getelementptr inbounds [600 x [600 x [600 x i32]]], [600 x [600 x [600 x i32]]]* @x, i64 0, i64 %91, i64 %91, i64 0
  tail call void @_Z8putarrayiPi(i32 noundef %1, i32* noundef nonnull %95)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #1

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #1

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
