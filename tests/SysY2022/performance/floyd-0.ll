; ModuleID = 'tests//SysY2022/performance/floyd-0.sy'
source_filename = "tests//SysY2022/performance/floyd-0.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@temp = dso_local local_unnamed_addr global [2097152 x i32] zeroinitializer, align 16
@w = dso_local global [2097152 x i32] zeroinitializer, align 16
@dst = dso_local global [2097152 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [2097152 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z8getvaluePiiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = icmp slt i32 %2, %1
  %8 = icmp sgt i32 %3, -1
  %9 = and i1 %7, %8
  %10 = icmp slt i32 %3, %1
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = mul nsw i32 %2, %1
  %14 = add nsw i32 %13, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !4
  br label %18

18:                                               ; preds = %4, %6, %12
  %19 = phi i32 [ %17, %12 ], [ -1, %6 ], [ -1, %4 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z8mem_movePiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %45

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = add nsw i64 %6, -1
  %8 = and i64 %6, 3
  %9 = icmp ult i64 %7, 3
  br i1 %9, label %33, label %10

10:                                               ; preds = %5
  %11 = and i64 %6, 4294967292
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %30, %12 ]
  %14 = phi i64 [ 0, %10 ], [ %31, %12 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !4
  %17 = getelementptr inbounds i32, i32* %1, i64 %13
  store i32 %16, i32* %17, align 4, !tbaa !4
  %18 = or i64 %13, 1
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !4
  %21 = getelementptr inbounds i32, i32* %1, i64 %18
  store i32 %20, i32* %21, align 4, !tbaa !4
  %22 = or i64 %13, 2
  %23 = getelementptr inbounds i32, i32* %0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !4
  %25 = getelementptr inbounds i32, i32* %1, i64 %22
  store i32 %24, i32* %25, align 4, !tbaa !4
  %26 = or i64 %13, 3
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !4
  %29 = getelementptr inbounds i32, i32* %1, i64 %26
  store i32 %28, i32* %29, align 4, !tbaa !4
  %30 = add nuw nsw i64 %13, 4
  %31 = add i64 %14, 4
  %32 = icmp eq i64 %31, %11
  br i1 %32, label %33, label %12, !llvm.loop !8

33:                                               ; preds = %12, %5
  %34 = phi i64 [ 0, %5 ], [ %30, %12 ]
  %35 = icmp eq i64 %8, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %42, %36 ], [ %34, %33 ]
  %38 = phi i64 [ %43, %36 ], [ 0, %33 ]
  %39 = getelementptr inbounds i32, i32* %0, i64 %37
  %40 = load i32, i32* %39, align 4, !tbaa !4
  %41 = getelementptr inbounds i32, i32* %1, i64 %37
  store i32 %40, i32* %41, align 4, !tbaa !4
  %42 = add nuw nsw i64 %37, 1
  %43 = add i64 %38, 1
  %44 = icmp eq i64 %43, %8
  br i1 %44, label %45, label %36, !llvm.loop !10

45:                                               ; preds = %33, %36, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5floydPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %129

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = zext i32 %2 to i64
  %8 = add nsw i64 %7, -1
  %9 = and i64 %7, 3
  %10 = icmp ult i64 %8, 3
  %11 = and i64 %7, 4294967292
  %12 = icmp eq i64 %9, 0
  %13 = and i64 %7, 1
  %14 = icmp eq i64 %8, 0
  %15 = and i64 %7, 4294967294
  %16 = icmp eq i64 %13, 0
  br label %17

17:                                               ; preds = %5, %62
  %18 = phi i64 [ 0, %5 ], [ %63, %62 ]
  %19 = phi i1 [ true, %5 ], [ %64, %62 ]
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br i1 %10, label %51, label %22

21:                                               ; preds = %17
  br i1 %14, label %43, label %66

22:                                               ; preds = %20, %22
  %23 = phi i64 [ %40, %22 ], [ 0, %20 ]
  %24 = phi i64 [ %41, %22 ], [ 0, %20 ]
  %25 = mul nsw i64 %23, %6
  %26 = add nuw nsw i64 %25, %18
  %27 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %26
  store i32 -1, i32* %27, align 4, !tbaa !4
  %28 = or i64 %23, 1
  %29 = mul nsw i64 %28, %6
  %30 = add nuw nsw i64 %29, %18
  %31 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %30
  store i32 -1, i32* %31, align 4, !tbaa !4
  %32 = or i64 %23, 2
  %33 = mul nsw i64 %32, %6
  %34 = add nuw nsw i64 %33, %18
  %35 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %34
  store i32 -1, i32* %35, align 4, !tbaa !4
  %36 = or i64 %23, 3
  %37 = mul nsw i64 %36, %6
  %38 = add nuw nsw i64 %37, %18
  %39 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %38
  store i32 -1, i32* %39, align 4, !tbaa !4
  %40 = add nuw nsw i64 %23, 4
  %41 = add i64 %24, 4
  %42 = icmp eq i64 %41, %11
  br i1 %42, label %51, label %22, !llvm.loop !12

43:                                               ; preds = %66, %21
  %44 = phi i64 [ 0, %21 ], [ %80, %66 ]
  br i1 %16, label %62, label %45

45:                                               ; preds = %43
  %46 = mul nsw i64 %44, %6
  %47 = add nuw nsw i64 %46, %18
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %47
  store i32 %49, i32* %50, align 4, !tbaa !4
  br label %62

51:                                               ; preds = %22, %20
  %52 = phi i64 [ 0, %20 ], [ %40, %22 ]
  br i1 %12, label %62, label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %59, %53 ], [ %52, %51 ]
  %55 = phi i64 [ %60, %53 ], [ 0, %51 ]
  %56 = mul nsw i64 %54, %6
  %57 = add nuw nsw i64 %56, %18
  %58 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %57
  store i32 -1, i32* %58, align 4, !tbaa !4
  %59 = add nuw nsw i64 %54, 1
  %60 = add i64 %55, 1
  %61 = icmp eq i64 %60, %9
  br i1 %61, label %62, label %53, !llvm.loop !13

62:                                               ; preds = %51, %53, %45, %43
  %63 = add nuw nsw i64 %18, 1
  %64 = icmp ult i64 %63, %6
  %65 = icmp eq i64 %63, %7
  br i1 %65, label %83, label %17, !llvm.loop !14

66:                                               ; preds = %21, %66
  %67 = phi i64 [ %80, %66 ], [ 0, %21 ]
  %68 = phi i64 [ %81, %66 ], [ 0, %21 ]
  %69 = mul nsw i64 %67, %6
  %70 = add nuw nsw i64 %69, %18
  %71 = getelementptr inbounds i32, i32* %0, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !4
  %73 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %70
  store i32 %72, i32* %73, align 4, !tbaa !4
  %74 = or i64 %67, 1
  %75 = mul nsw i64 %74, %6
  %76 = add nuw nsw i64 %75, %18
  %77 = getelementptr inbounds i32, i32* %0, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !4
  %79 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %76
  store i32 %78, i32* %79, align 4, !tbaa !4
  %80 = add nuw nsw i64 %67, 2
  %81 = add i64 %68, 2
  %82 = icmp eq i64 %81, %15
  br i1 %82, label %43, label %66, !llvm.loop !12

83:                                               ; preds = %62
  br i1 %4, label %84, label %129

84:                                               ; preds = %83
  %85 = zext i32 %2 to i64
  %86 = zext i32 %2 to i64
  br label %87

87:                                               ; preds = %84, %125
  %88 = phi i64 [ 0, %84 ], [ %126, %125 ]
  %89 = phi i1 [ true, %84 ], [ %127, %125 ]
  %90 = mul nsw i64 %88, %85
  br i1 %89, label %91, label %125

91:                                               ; preds = %87, %97
  %92 = phi i64 [ %98, %97 ], [ 0, %87 ]
  %93 = phi i1 [ %99, %97 ], [ true, %87 ]
  %94 = mul nsw i64 %92, %85
  %95 = add nuw nsw i64 %94, %88
  %96 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %95
  br i1 %93, label %101, label %97

97:                                               ; preds = %122, %91
  %98 = add nuw nsw i64 %92, 1
  %99 = icmp ult i64 %98, %85
  %100 = icmp eq i64 %98, %86
  br i1 %100, label %125, label %91, !llvm.loop !15

101:                                              ; preds = %91, %122
  %102 = phi i64 [ %123, %122 ], [ 0, %91 ]
  %103 = load i32, i32* %96, align 4, !tbaa !4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %101
  %106 = add nuw nsw i64 %102, %90
  %107 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !4
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = add nuw nsw i64 %102, %94
  %112 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4, !tbaa !4
  %114 = icmp slt i32 %113, 0
  %115 = add nuw nsw i32 %108, %103
  br i1 %114, label %118, label %116

116:                                              ; preds = %110
  %117 = icmp ugt i32 %113, %115
  br i1 %117, label %120, label %122

118:                                              ; preds = %110
  %119 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %111
  br label %120

120:                                              ; preds = %116, %118
  %121 = phi i32* [ %119, %118 ], [ %112, %116 ]
  store i32 %115, i32* %121, align 4, !tbaa !4
  br label %122

122:                                              ; preds = %120, %116, %105, %101
  %123 = add nuw nsw i64 %102, 1
  %124 = icmp eq i64 %123, %86
  br i1 %124, label %97, label %101, !llvm.loop !16

125:                                              ; preds = %97, %87
  %126 = add nuw nsw i64 %88, 1
  %127 = icmp ult i64 %126, %85
  %128 = icmp eq i64 %126, %86
  br i1 %128, label %129, label %87, !llvm.loop !17

129:                                              ; preds = %125, %3, %83
  %130 = mul nsw i32 %2, %2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %172, label %132

132:                                              ; preds = %129
  %133 = zext i32 %130 to i64
  %134 = add nsw i64 %133, -1
  %135 = and i64 %133, 3
  %136 = icmp ult i64 %134, 3
  br i1 %136, label %160, label %137

137:                                              ; preds = %132
  %138 = and i64 %133, 2147483644
  br label %139

139:                                              ; preds = %139, %137
  %140 = phi i64 [ 0, %137 ], [ %157, %139 ]
  %141 = phi i64 [ 0, %137 ], [ %158, %139 ]
  %142 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %140
  %143 = load i32, i32* %142, align 16, !tbaa !4
  %144 = getelementptr inbounds i32, i32* %1, i64 %140
  store i32 %143, i32* %144, align 4, !tbaa !4
  %145 = or i64 %140, 1
  %146 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !4
  %148 = getelementptr inbounds i32, i32* %1, i64 %145
  store i32 %147, i32* %148, align 4, !tbaa !4
  %149 = or i64 %140, 2
  %150 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %149
  %151 = load i32, i32* %150, align 8, !tbaa !4
  %152 = getelementptr inbounds i32, i32* %1, i64 %149
  store i32 %151, i32* %152, align 4, !tbaa !4
  %153 = or i64 %140, 3
  %154 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4, !tbaa !4
  %156 = getelementptr inbounds i32, i32* %1, i64 %153
  store i32 %155, i32* %156, align 4, !tbaa !4
  %157 = add nuw nsw i64 %140, 4
  %158 = add i64 %141, 4
  %159 = icmp eq i64 %158, %138
  br i1 %159, label %160, label %139, !llvm.loop !8

160:                                              ; preds = %139, %132
  %161 = phi i64 [ 0, %132 ], [ %157, %139 ]
  %162 = icmp eq i64 %135, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %160, %163
  %164 = phi i64 [ %169, %163 ], [ %161, %160 ]
  %165 = phi i64 [ %170, %163 ], [ 0, %160 ]
  %166 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @temp, i64 0, i64 %164
  %167 = load i32, i32* %166, align 4, !tbaa !4
  %168 = getelementptr inbounds i32, i32* %1, i64 %164
  store i32 %167, i32* %168, align 4, !tbaa !4
  %169 = add nuw nsw i64 %164, 1
  %170 = add i64 %165, 1
  %171 = icmp eq i64 %170, %135
  br i1 %171, label %172, label %163, !llvm.loop !18

172:                                              ; preds = %160, %163, %129
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @w, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 62)
  tail call void @_Z5floydPiS_i(i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @w, i64 0, i64 0), i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @dst, i64 0, i64 0), i32 noundef %1)
  tail call void @_Z14_sysy_stoptimei(i32 noundef 64)
  %3 = mul nsw i32 %1, %1
  tail call void @_Z8putarrayiPi(i32 noundef %3, i32* noundef getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @dst, i64 0, i64 0))
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #3

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #3

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #3

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #3

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !11}
