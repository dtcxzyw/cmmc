; ModuleID = 'tests//SysY2022/hidden_functional/34_multi_loop.sy'
source_filename = "tests//SysY2022/hidden_functional/34_multi_loop.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %187
  %2 = phi i32 [ 0, %0 ], [ %188, %187 ]
  %3 = phi i32 [ 0, %0 ], [ %157, %187 ]
  br label %4

4:                                                ; preds = %1, %184
  %5 = phi i32 [ 0, %1 ], [ %185, %184 ]
  %6 = phi i32 [ %3, %1 ], [ %157, %184 ]
  br label %7

7:                                                ; preds = %4, %181
  %8 = phi i32 [ 0, %4 ], [ %182, %181 ]
  %9 = phi i32 [ %6, %4 ], [ %157, %181 ]
  br label %10

10:                                               ; preds = %7, %178
  %11 = phi i32 [ 0, %7 ], [ %179, %178 ]
  %12 = phi i32 [ %9, %7 ], [ %157, %178 ]
  br label %13

13:                                               ; preds = %10, %175
  %14 = phi i32 [ 0, %10 ], [ %176, %175 ]
  %15 = phi i32 [ %12, %10 ], [ %157, %175 ]
  br label %16

16:                                               ; preds = %13, %172
  %17 = phi i32 [ 0, %13 ], [ %173, %172 ]
  %18 = phi i32 [ %15, %13 ], [ %157, %172 ]
  br label %19

19:                                               ; preds = %16, %169
  %20 = phi i32 [ 0, %16 ], [ %170, %169 ]
  %21 = phi i32 [ %18, %16 ], [ %157, %169 ]
  br label %22

22:                                               ; preds = %19, %166
  %23 = phi i32 [ 0, %19 ], [ %167, %166 ]
  %24 = phi i32 [ %21, %19 ], [ %157, %166 ]
  br label %25

25:                                               ; preds = %22, %163
  %26 = phi i32 [ 0, %22 ], [ %164, %163 ]
  %27 = phi i32 [ %24, %22 ], [ %157, %163 ]
  br label %28

28:                                               ; preds = %25, %160
  %29 = phi i32 [ 0, %25 ], [ %161, %160 ]
  %30 = phi i32 [ %27, %25 ], [ %157, %160 ]
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i32 [ 0, %28 ], [ %72, %31 ]
  %33 = phi i32 [ %30, %28 ], [ %71, %31 ]
  %34 = add nsw i32 %33, 3
  %35 = srem i32 %34, 999
  %36 = trunc i32 %35 to i16
  %37 = add i16 %36, 3
  %38 = srem i16 %37, 999
  %39 = add nsw i16 %38, 3
  %40 = srem i16 %39, 999
  %41 = add nsw i16 %40, 3
  %42 = srem i16 %41, 999
  %43 = add nsw i16 %42, 3
  %44 = srem i16 %43, 999
  %45 = add nsw i16 %44, 3
  %46 = srem i16 %45, 999
  %47 = add nsw i16 %46, 3
  %48 = srem i16 %47, 999
  %49 = add nsw i16 %48, 3
  %50 = srem i16 %49, 999
  %51 = add nsw i16 %50, 3
  %52 = srem i16 %51, 999
  %53 = add nsw i16 %52, 3
  %54 = srem i16 %53, 999
  %55 = add nsw i16 %54, 3
  %56 = srem i16 %55, 999
  %57 = add nsw i16 %56, 3
  %58 = srem i16 %57, 999
  %59 = add nsw i16 %58, 3
  %60 = srem i16 %59, 999
  %61 = add nsw i16 %60, 3
  %62 = srem i16 %61, 999
  %63 = add nsw i16 %62, 3
  %64 = srem i16 %63, 999
  %65 = add nsw i16 %64, 3
  %66 = srem i16 %65, 999
  %67 = add nsw i16 %66, 3
  %68 = srem i16 %67, 999
  %69 = add nsw i16 %68, 3
  %70 = srem i16 %69, 999
  %71 = sext i16 %70 to i32
  %72 = add nuw nsw i32 %32, 2
  %73 = icmp ult i32 %32, 5
  br i1 %73, label %31, label %74, !llvm.loop !4

74:                                               ; preds = %31, %74
  %75 = phi i32 [ %115, %74 ], [ 0, %31 ]
  %76 = phi i32 [ %114, %74 ], [ %71, %31 ]
  %77 = add nsw i32 %76, 3
  %78 = srem i32 %77, 999
  %79 = trunc i32 %78 to i16
  %80 = add i16 %79, 3
  %81 = srem i16 %80, 999
  %82 = add nsw i16 %81, 3
  %83 = srem i16 %82, 999
  %84 = add nsw i16 %83, 3
  %85 = srem i16 %84, 999
  %86 = add nsw i16 %85, 3
  %87 = srem i16 %86, 999
  %88 = add nsw i16 %87, 3
  %89 = srem i16 %88, 999
  %90 = add nsw i16 %89, 3
  %91 = srem i16 %90, 999
  %92 = add nsw i16 %91, 3
  %93 = srem i16 %92, 999
  %94 = add nsw i16 %93, 3
  %95 = srem i16 %94, 999
  %96 = add nsw i16 %95, 3
  %97 = srem i16 %96, 999
  %98 = add nsw i16 %97, 3
  %99 = srem i16 %98, 999
  %100 = add nsw i16 %99, 3
  %101 = srem i16 %100, 999
  %102 = add nsw i16 %101, 3
  %103 = srem i16 %102, 999
  %104 = add nsw i16 %103, 3
  %105 = srem i16 %104, 999
  %106 = add nsw i16 %105, 3
  %107 = srem i16 %106, 999
  %108 = add nsw i16 %107, 3
  %109 = srem i16 %108, 999
  %110 = add nsw i16 %109, 3
  %111 = srem i16 %110, 999
  %112 = add nsw i16 %111, 3
  %113 = srem i16 %112, 999
  %114 = sext i16 %113 to i32
  %115 = add nuw nsw i32 %75, 2
  %116 = icmp ult i32 %75, 5
  br i1 %116, label %74, label %117, !llvm.loop !4

117:                                              ; preds = %74, %117
  %118 = phi i32 [ %158, %117 ], [ 0, %74 ]
  %119 = phi i32 [ %157, %117 ], [ %114, %74 ]
  %120 = add nsw i32 %119, 3
  %121 = srem i32 %120, 999
  %122 = trunc i32 %121 to i16
  %123 = add i16 %122, 3
  %124 = srem i16 %123, 999
  %125 = add nsw i16 %124, 3
  %126 = srem i16 %125, 999
  %127 = add nsw i16 %126, 3
  %128 = srem i16 %127, 999
  %129 = add nsw i16 %128, 3
  %130 = srem i16 %129, 999
  %131 = add nsw i16 %130, 3
  %132 = srem i16 %131, 999
  %133 = add nsw i16 %132, 3
  %134 = srem i16 %133, 999
  %135 = add nsw i16 %134, 3
  %136 = srem i16 %135, 999
  %137 = add nsw i16 %136, 3
  %138 = srem i16 %137, 999
  %139 = add nsw i16 %138, 3
  %140 = srem i16 %139, 999
  %141 = add nsw i16 %140, 3
  %142 = srem i16 %141, 999
  %143 = add nsw i16 %142, 3
  %144 = srem i16 %143, 999
  %145 = add nsw i16 %144, 3
  %146 = srem i16 %145, 999
  %147 = add nsw i16 %146, 3
  %148 = srem i16 %147, 999
  %149 = add nsw i16 %148, 3
  %150 = srem i16 %149, 999
  %151 = add nsw i16 %150, 3
  %152 = srem i16 %151, 999
  %153 = add nsw i16 %152, 3
  %154 = srem i16 %153, 999
  %155 = add nsw i16 %154, 3
  %156 = srem i16 %155, 999
  %157 = sext i16 %156 to i32
  %158 = add nuw nsw i32 %118, 2
  %159 = icmp ult i32 %118, 5
  br i1 %159, label %117, label %160, !llvm.loop !4

160:                                              ; preds = %117
  %161 = add nuw nsw i32 %29, 1
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %163, label %28, !llvm.loop !6

163:                                              ; preds = %160
  %164 = add nuw nsw i32 %26, 1
  %165 = icmp eq i32 %164, 5
  br i1 %165, label %166, label %25, !llvm.loop !7

166:                                              ; preds = %163
  %167 = add nuw nsw i32 %23, 1
  %168 = icmp eq i32 %167, 5
  br i1 %168, label %169, label %22, !llvm.loop !8

169:                                              ; preds = %166
  %170 = add nuw nsw i32 %20, 1
  %171 = icmp eq i32 %170, 6
  br i1 %171, label %172, label %19, !llvm.loop !9

172:                                              ; preds = %169
  %173 = add nuw nsw i32 %17, 1
  %174 = icmp eq i32 %173, 4
  br i1 %174, label %175, label %16, !llvm.loop !10

175:                                              ; preds = %172
  %176 = add nuw nsw i32 %14, 1
  %177 = icmp eq i32 %176, 5
  br i1 %177, label %178, label %13, !llvm.loop !11

178:                                              ; preds = %175
  %179 = add nuw nsw i32 %11, 1
  %180 = icmp eq i32 %179, 3
  br i1 %180, label %181, label %10, !llvm.loop !12

181:                                              ; preds = %178
  %182 = add nuw nsw i32 %8, 1
  %183 = icmp eq i32 %182, 5
  br i1 %183, label %184, label %7, !llvm.loop !13

184:                                              ; preds = %181
  %185 = add nuw nsw i32 %5, 1
  %186 = icmp eq i32 %185, 4
  br i1 %186, label %187, label %4, !llvm.loop !14

187:                                              ; preds = %184
  %188 = add nuw nsw i32 %2, 1
  %189 = icmp eq i32 %188, 3
  br i1 %189, label %190, label %1, !llvm.loop !15

190:                                              ; preds = %187
  ret i32 %157
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
