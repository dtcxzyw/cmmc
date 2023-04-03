; ModuleID = 'tests//SysY2022/performance/if-combine1.sy'
source_filename = "tests//SysY2022/performance/if-combine1.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4funci(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [100 x i32], align 16
  %3 = bitcast [100 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %3) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(400) %3, i8 0, i64 400, i1 false), !tbaa !4
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %136

5:                                                ; preds = %1
  %6 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 1
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 2
  %8 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 3
  %9 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 4
  %10 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 5
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 6
  %12 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 7
  %13 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 8
  %14 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 9
  %15 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 10
  %16 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 11
  %17 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 12
  %18 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 13
  %19 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 14
  %20 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 15
  %21 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 16
  %22 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 17
  %23 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 18
  %24 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 19
  %25 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 20
  %26 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 21
  %27 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 22
  %28 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 23
  %29 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 24
  %30 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 25
  %31 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 26
  %32 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 27
  %33 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 28
  %34 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 29
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 30
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 31
  %37 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 32
  %38 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 33
  %39 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 34
  %40 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 35
  %41 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 36
  %42 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 37
  %43 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 38
  %44 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 39
  %45 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 40
  %46 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 41
  %47 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 42
  %48 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 43
  %49 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 44
  %50 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 45
  %51 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 46
  %52 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 47
  %53 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 48
  %54 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 49
  %55 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 50
  %56 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 51
  %57 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 52
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 53
  %59 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 54
  %60 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 55
  %61 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 56
  %62 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 57
  %63 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 58
  %64 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 59
  %65 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 60
  %66 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 61
  %67 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 62
  %68 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 63
  %69 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 64
  %70 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 65
  %71 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 66
  %72 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 67
  %73 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 68
  %74 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 69
  %75 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 70
  %76 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 71
  %77 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 72
  %78 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 73
  %79 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 74
  %80 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 75
  %81 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 76
  %82 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 77
  %83 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 78
  %84 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 79
  %85 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 80
  %86 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 81
  %87 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 82
  %88 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 83
  %89 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 84
  %90 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 85
  %91 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 86
  %92 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 87
  %93 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 88
  %94 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 89
  %95 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 90
  %96 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 91
  %97 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 92
  %98 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 93
  %99 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 94
  %100 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 95
  %101 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 96
  %102 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 97
  %103 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 98
  %104 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 99
  br label %105

105:                                              ; preds = %5, %132
  %106 = phi i32 [ 0, %5 ], [ %133, %132 ]
  %107 = phi i32 [ 0, %5 ], [ %134, %132 ]
  store i32 1, i32* %6, align 4, !tbaa !4
  store i32 2, i32* %7, align 8, !tbaa !4
  store i32 3, i32* %8, align 4, !tbaa !4
  store i32 4, i32* %9, align 16, !tbaa !4
  store i32 5, i32* %10, align 4, !tbaa !4
  store i32 6, i32* %11, align 8, !tbaa !4
  store i32 7, i32* %12, align 4, !tbaa !4
  store i32 8, i32* %13, align 16, !tbaa !4
  store i32 9, i32* %14, align 4, !tbaa !4
  store i32 10, i32* %15, align 8, !tbaa !4
  store i32 11, i32* %16, align 4, !tbaa !4
  store i32 12, i32* %17, align 16, !tbaa !4
  store i32 13, i32* %18, align 4, !tbaa !4
  store i32 14, i32* %19, align 8, !tbaa !4
  store i32 15, i32* %20, align 4, !tbaa !4
  store i32 16, i32* %21, align 16, !tbaa !4
  store i32 17, i32* %22, align 4, !tbaa !4
  store i32 18, i32* %23, align 8, !tbaa !4
  store i32 19, i32* %24, align 4, !tbaa !4
  store i32 20, i32* %25, align 16, !tbaa !4
  store i32 21, i32* %26, align 4, !tbaa !4
  store i32 22, i32* %27, align 8, !tbaa !4
  store i32 23, i32* %28, align 4, !tbaa !4
  store i32 24, i32* %29, align 16, !tbaa !4
  store i32 25, i32* %30, align 4, !tbaa !4
  store i32 26, i32* %31, align 8, !tbaa !4
  store i32 27, i32* %32, align 4, !tbaa !4
  store i32 28, i32* %33, align 16, !tbaa !4
  store i32 29, i32* %34, align 4, !tbaa !4
  store i32 30, i32* %35, align 8, !tbaa !4
  store i32 31, i32* %36, align 4, !tbaa !4
  store i32 32, i32* %37, align 16, !tbaa !4
  store i32 33, i32* %38, align 4, !tbaa !4
  store i32 34, i32* %39, align 8, !tbaa !4
  store i32 35, i32* %40, align 4, !tbaa !4
  store i32 36, i32* %41, align 16, !tbaa !4
  store i32 37, i32* %42, align 4, !tbaa !4
  store i32 38, i32* %43, align 8, !tbaa !4
  store i32 39, i32* %44, align 4, !tbaa !4
  store i32 40, i32* %45, align 16, !tbaa !4
  store i32 41, i32* %46, align 4, !tbaa !4
  store i32 42, i32* %47, align 8, !tbaa !4
  store i32 43, i32* %48, align 4, !tbaa !4
  store i32 44, i32* %49, align 16, !tbaa !4
  store i32 45, i32* %50, align 4, !tbaa !4
  store i32 46, i32* %51, align 8, !tbaa !4
  store i32 47, i32* %52, align 4, !tbaa !4
  store i32 48, i32* %53, align 16, !tbaa !4
  store i32 49, i32* %54, align 4, !tbaa !4
  store i32 50, i32* %55, align 8, !tbaa !4
  store i32 51, i32* %56, align 4, !tbaa !4
  store i32 52, i32* %57, align 16, !tbaa !4
  store i32 53, i32* %58, align 4, !tbaa !4
  store i32 54, i32* %59, align 8, !tbaa !4
  store i32 55, i32* %60, align 4, !tbaa !4
  store i32 56, i32* %61, align 16, !tbaa !4
  store i32 57, i32* %62, align 4, !tbaa !4
  store i32 58, i32* %63, align 8, !tbaa !4
  store i32 59, i32* %64, align 4, !tbaa !4
  store i32 60, i32* %65, align 16, !tbaa !4
  store i32 61, i32* %66, align 4, !tbaa !4
  store i32 62, i32* %67, align 8, !tbaa !4
  store i32 63, i32* %68, align 4, !tbaa !4
  store i32 64, i32* %69, align 16, !tbaa !4
  store i32 65, i32* %70, align 4, !tbaa !4
  store i32 66, i32* %71, align 8, !tbaa !4
  store i32 67, i32* %72, align 4, !tbaa !4
  store i32 68, i32* %73, align 16, !tbaa !4
  store i32 69, i32* %74, align 4, !tbaa !4
  store i32 70, i32* %75, align 8, !tbaa !4
  store i32 71, i32* %76, align 4, !tbaa !4
  store i32 72, i32* %77, align 16, !tbaa !4
  store i32 73, i32* %78, align 4, !tbaa !4
  store i32 74, i32* %79, align 8, !tbaa !4
  store i32 75, i32* %80, align 4, !tbaa !4
  store i32 76, i32* %81, align 16, !tbaa !4
  store i32 77, i32* %82, align 4, !tbaa !4
  store i32 78, i32* %83, align 8, !tbaa !4
  store i32 79, i32* %84, align 4, !tbaa !4
  store i32 80, i32* %85, align 16, !tbaa !4
  store i32 81, i32* %86, align 4, !tbaa !4
  store i32 82, i32* %87, align 8, !tbaa !4
  store i32 83, i32* %88, align 4, !tbaa !4
  store i32 84, i32* %89, align 16, !tbaa !4
  store i32 85, i32* %90, align 4, !tbaa !4
  store i32 86, i32* %91, align 8, !tbaa !4
  store i32 87, i32* %92, align 4, !tbaa !4
  store i32 88, i32* %93, align 16, !tbaa !4
  store i32 89, i32* %94, align 4, !tbaa !4
  store i32 90, i32* %95, align 8, !tbaa !4
  store i32 91, i32* %96, align 4, !tbaa !4
  store i32 92, i32* %97, align 16, !tbaa !4
  store i32 93, i32* %98, align 4, !tbaa !4
  store i32 94, i32* %99, align 8, !tbaa !4
  store i32 95, i32* %100, align 4, !tbaa !4
  store i32 96, i32* %101, align 16, !tbaa !4
  store i32 97, i32* %102, align 4, !tbaa !4
  store i32 98, i32* %103, align 8, !tbaa !4
  store i32 99, i32* %104, align 4, !tbaa !4
  br label %108

108:                                              ; preds = %108, %105
  %109 = phi i64 [ 0, %105 ], [ %130, %108 ]
  %110 = phi i32 [ %107, %105 ], [ %129, %108 ]
  %111 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %109
  %112 = load i32, i32* %111, align 4, !tbaa !4
  %113 = add nsw i32 %112, %110
  %114 = add nuw nsw i64 %109, 1
  %115 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4, !tbaa !4
  %117 = add nsw i32 %116, %113
  %118 = add nuw nsw i64 %109, 2
  %119 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4, !tbaa !4
  %121 = add nsw i32 %120, %117
  %122 = add nuw nsw i64 %109, 3
  %123 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4, !tbaa !4
  %125 = add nsw i32 %124, %121
  %126 = add nuw nsw i64 %109, 4
  %127 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4, !tbaa !4
  %129 = add nsw i32 %128, %125
  %130 = add nuw nsw i64 %109, 5
  %131 = icmp eq i64 %130, 100
  br i1 %131, label %132, label %108, !llvm.loop !8

132:                                              ; preds = %108
  %133 = add nuw nsw i32 %106, 1
  %134 = srem i32 %129, 65535
  %135 = icmp eq i32 %133, %0
  br i1 %135, label %136, label %105, !llvm.loop !10

136:                                              ; preds = %132, %1
  %137 = phi i32 [ 0, %1 ], [ %134, %132 ]
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %3) #5
  ret i32 %137
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

attributes #0 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!11 = !{i32 -65534, i32 65535}
