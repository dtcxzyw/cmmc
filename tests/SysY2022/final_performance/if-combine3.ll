; ModuleID = 'tests//SysY2022/final_performance/if-combine3.sy'
source_filename = "tests//SysY2022/final_performance/if-combine3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4funci(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [100 x i32], align 16
  %3 = bitcast [100 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %3) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(400) %3, i8 0, i64 400, i1 false), !tbaa !5
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %164

5:                                                ; preds = %1
  %6 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 1
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 5
  %8 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 9
  %9 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 13
  %10 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 17
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 21
  %12 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 25
  %13 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 29
  %14 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 33
  %15 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 37
  %16 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 41
  %17 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 45
  %18 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 49
  %19 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 53
  %20 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 57
  %21 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 61
  %22 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 65
  %23 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 69
  %24 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 73
  %25 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 77
  %26 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 81
  %27 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 85
  %28 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 89
  %29 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 93
  %30 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 97
  %31 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 98
  %32 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 99
  %33 = bitcast [100 x i32]* %2 to <4 x i32>*
  %34 = bitcast i32* %6 to <4 x i32>*
  %35 = bitcast i32* %7 to <4 x i32>*
  %36 = bitcast i32* %8 to <4 x i32>*
  %37 = bitcast i32* %9 to <4 x i32>*
  %38 = bitcast i32* %10 to <4 x i32>*
  %39 = bitcast i32* %11 to <4 x i32>*
  %40 = bitcast i32* %12 to <4 x i32>*
  %41 = bitcast i32* %13 to <4 x i32>*
  %42 = bitcast i32* %14 to <4 x i32>*
  %43 = bitcast i32* %15 to <4 x i32>*
  %44 = bitcast i32* %16 to <4 x i32>*
  %45 = bitcast i32* %17 to <4 x i32>*
  %46 = bitcast i32* %18 to <4 x i32>*
  %47 = bitcast i32* %19 to <4 x i32>*
  %48 = bitcast i32* %20 to <4 x i32>*
  %49 = bitcast i32* %21 to <4 x i32>*
  %50 = bitcast i32* %22 to <4 x i32>*
  %51 = bitcast i32* %23 to <4 x i32>*
  %52 = bitcast i32* %24 to <4 x i32>*
  %53 = bitcast i32* %25 to <4 x i32>*
  %54 = bitcast i32* %26 to <4 x i32>*
  %55 = bitcast i32* %27 to <4 x i32>*
  %56 = bitcast i32* %28 to <4 x i32>*
  %57 = bitcast i32* %29 to <4 x i32>*
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 4
  %59 = bitcast i32* %58 to <4 x i32>*
  %60 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 8
  %61 = bitcast i32* %60 to <4 x i32>*
  %62 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 12
  %63 = bitcast i32* %62 to <4 x i32>*
  %64 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 16
  %65 = bitcast i32* %64 to <4 x i32>*
  %66 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 20
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 24
  %69 = bitcast i32* %68 to <4 x i32>*
  %70 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 28
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 32
  %73 = bitcast i32* %72 to <4 x i32>*
  %74 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 36
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 40
  %77 = bitcast i32* %76 to <4 x i32>*
  %78 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 44
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 48
  %81 = bitcast i32* %80 to <4 x i32>*
  %82 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 52
  %83 = bitcast i32* %82 to <4 x i32>*
  %84 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 56
  %85 = bitcast i32* %84 to <4 x i32>*
  %86 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 60
  %87 = bitcast i32* %86 to <4 x i32>*
  %88 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 64
  %89 = bitcast i32* %88 to <4 x i32>*
  %90 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 68
  %91 = bitcast i32* %90 to <4 x i32>*
  %92 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 72
  %93 = bitcast i32* %92 to <4 x i32>*
  %94 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 76
  %95 = bitcast i32* %94 to <4 x i32>*
  %96 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 80
  %97 = bitcast i32* %96 to <4 x i32>*
  %98 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 84
  %99 = bitcast i32* %98 to <4 x i32>*
  %100 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 88
  %101 = bitcast i32* %100 to <4 x i32>*
  %102 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 92
  %103 = bitcast i32* %102 to <4 x i32>*
  %104 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 96
  %105 = bitcast i32* %104 to <4 x i32>*
  br label %106

106:                                              ; preds = %5, %106
  %107 = phi i32 [ 0, %5 ], [ %161, %106 ]
  %108 = phi i32 [ 0, %5 ], [ %162, %106 ]
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %34, align 4, !tbaa !5
  store <4 x i32> <i32 5, i32 6, i32 7, i32 8>, <4 x i32>* %35, align 4, !tbaa !5
  store <4 x i32> <i32 9, i32 10, i32 11, i32 12>, <4 x i32>* %36, align 4, !tbaa !5
  store <4 x i32> <i32 13, i32 14, i32 15, i32 16>, <4 x i32>* %37, align 4, !tbaa !5
  store <4 x i32> <i32 17, i32 18, i32 19, i32 20>, <4 x i32>* %38, align 4, !tbaa !5
  store <4 x i32> <i32 21, i32 22, i32 23, i32 24>, <4 x i32>* %39, align 4, !tbaa !5
  store <4 x i32> <i32 25, i32 26, i32 27, i32 28>, <4 x i32>* %40, align 4, !tbaa !5
  store <4 x i32> <i32 29, i32 30, i32 31, i32 32>, <4 x i32>* %41, align 4, !tbaa !5
  store <4 x i32> <i32 33, i32 34, i32 35, i32 36>, <4 x i32>* %42, align 4, !tbaa !5
  store <4 x i32> <i32 37, i32 38, i32 39, i32 40>, <4 x i32>* %43, align 4, !tbaa !5
  store <4 x i32> <i32 41, i32 42, i32 43, i32 44>, <4 x i32>* %44, align 4, !tbaa !5
  store <4 x i32> <i32 45, i32 46, i32 47, i32 48>, <4 x i32>* %45, align 4, !tbaa !5
  store <4 x i32> <i32 49, i32 50, i32 51, i32 52>, <4 x i32>* %46, align 4, !tbaa !5
  store <4 x i32> <i32 53, i32 54, i32 55, i32 56>, <4 x i32>* %47, align 4, !tbaa !5
  store <4 x i32> <i32 57, i32 58, i32 59, i32 60>, <4 x i32>* %48, align 4, !tbaa !5
  store <4 x i32> <i32 61, i32 62, i32 63, i32 64>, <4 x i32>* %49, align 4, !tbaa !5
  store <4 x i32> <i32 65, i32 66, i32 67, i32 68>, <4 x i32>* %50, align 4, !tbaa !5
  store <4 x i32> <i32 69, i32 70, i32 71, i32 72>, <4 x i32>* %51, align 4, !tbaa !5
  store <4 x i32> <i32 73, i32 74, i32 75, i32 76>, <4 x i32>* %52, align 4, !tbaa !5
  store <4 x i32> <i32 77, i32 78, i32 79, i32 80>, <4 x i32>* %53, align 4, !tbaa !5
  store <4 x i32> <i32 81, i32 82, i32 83, i32 84>, <4 x i32>* %54, align 4, !tbaa !5
  store <4 x i32> <i32 85, i32 86, i32 87, i32 88>, <4 x i32>* %55, align 4, !tbaa !5
  store <4 x i32> <i32 89, i32 90, i32 91, i32 92>, <4 x i32>* %56, align 4, !tbaa !5
  store <4 x i32> <i32 93, i32 94, i32 95, i32 96>, <4 x i32>* %57, align 4, !tbaa !5
  store i32 97, i32* %30, align 4, !tbaa !5
  store i32 98, i32* %31, align 8, !tbaa !5
  store i32 99, i32* %32, align 4, !tbaa !5
  %109 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %108, i64 0
  %110 = load <4 x i32>, <4 x i32>* %33, align 16, !tbaa !5
  %111 = add <4 x i32> %110, %109
  %112 = load <4 x i32>, <4 x i32>* %59, align 16, !tbaa !5
  %113 = add <4 x i32> %112, %111
  %114 = load <4 x i32>, <4 x i32>* %61, align 16, !tbaa !5
  %115 = add <4 x i32> %114, %113
  %116 = load <4 x i32>, <4 x i32>* %63, align 16, !tbaa !5
  %117 = add <4 x i32> %116, %115
  %118 = load <4 x i32>, <4 x i32>* %65, align 16, !tbaa !5
  %119 = add <4 x i32> %118, %117
  %120 = load <4 x i32>, <4 x i32>* %67, align 16, !tbaa !5
  %121 = add <4 x i32> %120, %119
  %122 = load <4 x i32>, <4 x i32>* %69, align 16, !tbaa !5
  %123 = add <4 x i32> %122, %121
  %124 = load <4 x i32>, <4 x i32>* %71, align 16, !tbaa !5
  %125 = add <4 x i32> %124, %123
  %126 = load <4 x i32>, <4 x i32>* %73, align 16, !tbaa !5
  %127 = add <4 x i32> %126, %125
  %128 = load <4 x i32>, <4 x i32>* %75, align 16, !tbaa !5
  %129 = add <4 x i32> %128, %127
  %130 = load <4 x i32>, <4 x i32>* %77, align 16, !tbaa !5
  %131 = add <4 x i32> %130, %129
  %132 = load <4 x i32>, <4 x i32>* %79, align 16, !tbaa !5
  %133 = add <4 x i32> %132, %131
  %134 = load <4 x i32>, <4 x i32>* %81, align 16, !tbaa !5
  %135 = add <4 x i32> %134, %133
  %136 = load <4 x i32>, <4 x i32>* %83, align 16, !tbaa !5
  %137 = add <4 x i32> %136, %135
  %138 = load <4 x i32>, <4 x i32>* %85, align 16, !tbaa !5
  %139 = add <4 x i32> %138, %137
  %140 = load <4 x i32>, <4 x i32>* %87, align 16, !tbaa !5
  %141 = add <4 x i32> %140, %139
  %142 = load <4 x i32>, <4 x i32>* %89, align 16, !tbaa !5
  %143 = add <4 x i32> %142, %141
  %144 = load <4 x i32>, <4 x i32>* %91, align 16, !tbaa !5
  %145 = add <4 x i32> %144, %143
  %146 = load <4 x i32>, <4 x i32>* %93, align 16, !tbaa !5
  %147 = add <4 x i32> %146, %145
  %148 = load <4 x i32>, <4 x i32>* %95, align 16, !tbaa !5
  %149 = add <4 x i32> %148, %147
  %150 = load <4 x i32>, <4 x i32>* %97, align 16, !tbaa !5
  %151 = add <4 x i32> %150, %149
  %152 = load <4 x i32>, <4 x i32>* %99, align 16, !tbaa !5
  %153 = add <4 x i32> %152, %151
  %154 = load <4 x i32>, <4 x i32>* %101, align 16, !tbaa !5
  %155 = add <4 x i32> %154, %153
  %156 = load <4 x i32>, <4 x i32>* %103, align 16, !tbaa !5
  %157 = add <4 x i32> %156, %155
  %158 = load <4 x i32>, <4 x i32>* %105, align 16, !tbaa !5
  %159 = add <4 x i32> %158, %157
  %160 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %159)
  %161 = add nuw nsw i32 %107, 1
  %162 = srem i32 %160, 65535
  %163 = icmp eq i32 %161, %0
  br i1 %163, label %164, label %106, !llvm.loop !9

164:                                              ; preds = %106, %1
  %165 = phi i32 [ 0, %1 ], [ %162, %106 ]
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %3) #6
  ret i32 %165
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  tail call void @_Z15_sysy_starttimei(i32 noundef 324)
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z4funci(i32 noundef %1), !range !11
  tail call void @_Z6putinti(i32 noundef %2)
  tail call void @_Z5putchi(i32 noundef 10)
  tail call void @_Z14_sysy_stoptimei(i32 noundef 328)
  ret i32 0
}

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i32 -65534, i32 65535}
