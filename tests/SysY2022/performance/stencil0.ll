; ModuleID = 'tests//SysY2022/performance/stencil0.sy'
source_filename = "tests//SysY2022/performance/stencil0.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@image_in = dso_local global [524288 x i32] zeroinitializer, align 16
@image_out = dso_local global [524288 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6cutouti(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 255
  %3 = select i1 %2, i32 %0, i32 255
  %4 = icmp sgt i32 %3, 0
  %5 = select i1 %4, i32 %3, i32 0
  ret i32 %5
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([524288 x i32], [524288 x i32]* @image_in, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 23)
  br label %2

2:                                                ; preds = %0, %51
  %3 = phi i64 [ 1, %0 ], [ %52, %51 ]
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 1, %2 ], [ %13, %4 ]
  %6 = shl nuw nsw i64 %5, 9
  %7 = add nuw nsw i64 %6, %3
  %8 = add nsw i64 %7, -512
  %9 = add nsw i64 %7, -513
  %10 = add nsw i64 %7, -511
  %11 = add nsw i64 %7, -1
  %12 = add nuw nsw i64 %7, 1
  %13 = add nuw nsw i64 %5, 1
  %14 = shl nuw nsw i64 %13, 9
  %15 = add nuw nsw i64 %14, %3
  %16 = add nsw i64 %15, -1
  %17 = add nuw nsw i64 %15, 1
  %18 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %7
  %19 = load i32, i32* %18, align 4, !tbaa !4
  %20 = shl nsw i32 %19, 3
  %21 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %9
  %22 = load i32, i32* %21, align 4, !tbaa !4
  %23 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %8
  %24 = load i32, i32* %23, align 4, !tbaa !4
  %25 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %10
  %26 = load i32, i32* %25, align 4, !tbaa !4
  %27 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %11
  %28 = load i32, i32* %27, align 4, !tbaa !4
  %29 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %12
  %30 = load i32, i32* %29, align 4, !tbaa !4
  %31 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %16
  %32 = load i32, i32* %31, align 4, !tbaa !4
  %33 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %15
  %34 = load i32, i32* %33, align 4, !tbaa !4
  %35 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %17
  %36 = load i32, i32* %35, align 4, !tbaa !4
  %37 = add i32 %22, %24
  %38 = add i32 %37, %26
  %39 = add i32 %38, %28
  %40 = add i32 %39, %30
  %41 = add i32 %40, %32
  %42 = add i32 %41, %34
  %43 = add i32 %42, %36
  %44 = sub i32 %20, %43
  %45 = icmp slt i32 %44, 255
  %46 = select i1 %45, i32 %44, i32 255
  %47 = icmp sgt i32 %46, 0
  %48 = select i1 %47, i32 %46, i32 0
  %49 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_out, i64 0, i64 %7
  store i32 %48, i32* %49, align 4, !tbaa !4
  %50 = icmp eq i64 %13, 1023
  br i1 %50, label %51, label %4, !llvm.loop !8

51:                                               ; preds = %4
  %52 = add nuw nsw i64 %3, 1
  %53 = icmp eq i64 %52, 511
  br i1 %53, label %54, label %2, !llvm.loop !10

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %73, %54 ], [ 0, %51 ]
  %56 = shl nuw nsw i64 %55, 9
  %57 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %56
  %58 = load i32, i32* %57, align 16, !tbaa !4
  %59 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_out, i64 0, i64 %56
  store i32 %58, i32* %59, align 16, !tbaa !4
  %60 = or i64 %56, 511
  %61 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !4
  %63 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_out, i64 0, i64 %60
  store i32 %62, i32* %63, align 4, !tbaa !4
  %64 = shl i64 %55, 9
  %65 = or i64 %64, 512
  %66 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %65
  %67 = load i32, i32* %66, align 16, !tbaa !4
  %68 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_out, i64 0, i64 %65
  store i32 %67, i32* %68, align 16, !tbaa !4
  %69 = or i64 %64, 1023
  %70 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_in, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !4
  %72 = getelementptr inbounds [524288 x i32], [524288 x i32]* @image_out, i64 0, i64 %69
  store i32 %71, i32* %72, align 4, !tbaa !4
  %73 = add nuw nsw i64 %55, 2
  %74 = icmp eq i64 %73, 1024
  br i1 %74, label %75, label %54, !llvm.loop !11

75:                                               ; preds = %54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) bitcast ([524288 x i32]* @image_out to i8*), i8* noundef nonnull align 16 dereferenceable(2048) bitcast ([524288 x i32]* @image_in to i8*), i64 2048, i1 false), !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) bitcast (i32* getelementptr inbounds ([524288 x i32], [524288 x i32]* @image_out, i64 0, i64 523776) to i8*), i8* noundef nonnull align 16 dereferenceable(2048) bitcast (i32* getelementptr inbounds ([524288 x i32], [524288 x i32]* @image_in, i64 0, i64 523776) to i8*), i64 2048, i1 false), !tbaa !4
  tail call void @_Z14_sysy_stoptimei(i32 noundef 59)
  tail call void @_Z8putarrayiPi(i32 noundef 524288, i32* noundef getelementptr inbounds ([524288 x i32], [524288 x i32]* @image_out, i64 0, i64 0))
  ret i32 %1
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #2

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }

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
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
