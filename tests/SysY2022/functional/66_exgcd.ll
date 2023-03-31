; ModuleID = 'tests//SysY2022/functional/66_exgcd.sy'
source_filename = "tests//SysY2022/functional/66_exgcd.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z5exgcdiiPiS_(i32 noundef %0, i32 noundef %1, i32* nocapture noundef %2, i32* nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store i32 1, i32* %2, align 4, !tbaa !5
  br label %16

7:                                                ; preds = %4
  %8 = srem i32 %0, %1
  %9 = tail call noundef i32 @_Z5exgcdiiPiS_(i32 noundef %1, i32 noundef %8, i32* noundef %2, i32* noundef %3)
  %10 = load i32, i32* %2, align 4, !tbaa !5
  %11 = load i32, i32* %3, align 4, !tbaa !5
  store i32 %11, i32* %2, align 4, !tbaa !5
  %12 = sdiv i32 %0, %1
  %13 = load i32, i32* %3, align 4, !tbaa !5
  %14 = mul nsw i32 %13, %12
  %15 = sub nsw i32 %10, %14
  br label %16

16:                                               ; preds = %7, %6
  %17 = phi i32 [ %15, %7 ], [ 0, %6 ]
  %18 = phi i32 [ %9, %7 ], [ %0, %6 ]
  store i32 %17, i32* %3, align 4, !tbaa !5
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [1 x i32], align 4
  %2 = alloca [1 x i32], align 4
  %3 = bitcast [1 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %4 = getelementptr inbounds [1 x i32], [1 x i32]* %1, i64 0, i64 0
  store i32 1, i32* %4, align 4
  %5 = bitcast [1 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  %6 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  store i32 1, i32* %6, align 4
  %7 = call noundef i32 @_Z5exgcdiiPiS_(i32 noundef 7, i32 noundef 15, i32* noundef nonnull %4, i32* noundef nonnull %6)
  %8 = load i32, i32* %4, align 4, !tbaa !5
  %9 = srem i32 %8, 15
  %10 = trunc i32 %9 to i8
  %11 = add nsw i8 %10, 15
  %12 = urem i8 %11, 15
  %13 = zext i8 %12 to i32
  tail call void @_Z6putinti(i32 noundef %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
