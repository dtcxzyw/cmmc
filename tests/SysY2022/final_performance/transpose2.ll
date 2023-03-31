; ModuleID = 'tests//SysY2022/final_performance/transpose2.sy'
source_filename = "tests//SysY2022/final_performance/transpose2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@matrix = dso_local local_unnamed_addr global [20000000 x i32] zeroinitializer, align 16
@a = dso_local global [100000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z9transposeiPii(i32 noundef %0, i32* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sdiv i32 %0, %2
  %5 = icmp sgt i32 %4, 0
  %6 = icmp sgt i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %59

8:                                                ; preds = %3
  %9 = zext i32 %4 to i64
  %10 = zext i32 %2 to i64
  %11 = zext i32 %4 to i64
  %12 = zext i32 %2 to i64
  %13 = and i64 %12, 1
  %14 = icmp eq i32 %2, 1
  %15 = and i64 %12, 4294967294
  %16 = icmp eq i64 %13, 0
  br label %17

17:                                               ; preds = %8, %56
  %18 = phi i64 [ 0, %8 ], [ %57, %56 ]
  %19 = mul nsw i64 %18, %10
  br i1 %14, label %45, label %20

20:                                               ; preds = %17, %41
  %21 = phi i64 [ %42, %41 ], [ 0, %17 ]
  %22 = phi i64 [ %43, %41 ], [ 0, %17 ]
  %23 = icmp ult i64 %18, %21
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = add nuw nsw i64 %21, %19
  %26 = getelementptr inbounds i32, i32* %1, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = mul nsw i64 %21, %9
  %29 = add nuw nsw i64 %28, %18
  %30 = getelementptr inbounds i32, i32* %1, i64 %29
  store i32 %27, i32* %30, align 4, !tbaa !5
  store i32 %27, i32* %26, align 4, !tbaa !5
  br label %31

31:                                               ; preds = %20, %24
  %32 = or i64 %21, 1
  %33 = icmp ugt i64 %18, %21
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = add nuw nsw i64 %32, %19
  %36 = getelementptr inbounds i32, i32* %1, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = mul nsw i64 %32, %9
  %39 = add nuw nsw i64 %38, %18
  %40 = getelementptr inbounds i32, i32* %1, i64 %39
  store i32 %37, i32* %40, align 4, !tbaa !5
  store i32 %37, i32* %36, align 4, !tbaa !5
  br label %41

41:                                               ; preds = %34, %31
  %42 = add nuw nsw i64 %21, 2
  %43 = add i64 %22, 2
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %45, label %20, !llvm.loop !9

45:                                               ; preds = %41, %17
  %46 = phi i64 [ 0, %17 ], [ %42, %41 ]
  %47 = icmp ult i64 %18, %46
  %48 = select i1 %16, i1 true, i1 %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %46, %19
  %51 = getelementptr inbounds i32, i32* %1, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = mul nsw i64 %46, %9
  %54 = add nuw nsw i64 %53, %18
  %55 = getelementptr inbounds i32, i32* %1, i64 %54
  store i32 %52, i32* %55, align 4, !tbaa !5
  store i32 %52, i32* %51, align 4, !tbaa !5
  br label %56

56:                                               ; preds = %49, %45
  %57 = add nuw nsw i64 %18, 1
  %58 = icmp eq i64 %57, %11
  br i1 %58, label %59, label %17, !llvm.loop !11

59:                                               ; preds = %56, %3
  ret i32 -1
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = tail call noundef i32 @_Z8getarrayPi(i32* noundef getelementptr inbounds ([100000 x i32], [100000 x i32]* @a, i64 0, i64 0))
  tail call void @_Z15_sysy_starttimei(i32 noundef 28)
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %71

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %69, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  %9 = add nsw i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %9, 24
  br i1 %13, label %50, label %14

14:                                               ; preds = %7
  %15 = and i64 %11, 4611686018427387900
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %46, %16 ]
  %18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %14 ], [ %47, %16 ]
  %19 = phi i64 [ 0, %14 ], [ %48, %16 ]
  %20 = add <4 x i32> %18, <i32 4, i32 4, i32 4, i32 4>
  %21 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %17
  %22 = bitcast i32* %21 to <4 x i32>*
  store <4 x i32> %18, <4 x i32>* %22, align 16, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %21, i64 4
  %24 = bitcast i32* %23 to <4 x i32>*
  store <4 x i32> %20, <4 x i32>* %24, align 16, !tbaa !5
  %25 = or i64 %17, 8
  %26 = add <4 x i32> %18, <i32 8, i32 8, i32 8, i32 8>
  %27 = add <4 x i32> %18, <i32 12, i32 12, i32 12, i32 12>
  %28 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %25
  %29 = bitcast i32* %28 to <4 x i32>*
  store <4 x i32> %26, <4 x i32>* %29, align 16, !tbaa !5
  %30 = getelementptr inbounds i32, i32* %28, i64 4
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %31, align 16, !tbaa !5
  %32 = or i64 %17, 16
  %33 = add <4 x i32> %18, <i32 16, i32 16, i32 16, i32 16>
  %34 = add <4 x i32> %18, <i32 20, i32 20, i32 20, i32 20>
  %35 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %32
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %36, align 16, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %35, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %38, align 16, !tbaa !5
  %39 = or i64 %17, 24
  %40 = add <4 x i32> %18, <i32 24, i32 24, i32 24, i32 24>
  %41 = add <4 x i32> %18, <i32 28, i32 28, i32 28, i32 28>
  %42 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %39
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %43, align 16, !tbaa !5
  %44 = getelementptr inbounds i32, i32* %42, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> %41, <4 x i32>* %45, align 16, !tbaa !5
  %46 = add nuw i64 %17, 32
  %47 = add <4 x i32> %18, <i32 32, i32 32, i32 32, i32 32>
  %48 = add i64 %19, 4
  %49 = icmp eq i64 %48, %15
  br i1 %49, label %50, label %16, !llvm.loop !12

50:                                               ; preds = %16, %7
  %51 = phi i64 [ 0, %7 ], [ %46, %16 ]
  %52 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %7 ], [ %47, %16 ]
  %53 = icmp eq i64 %12, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50, %54
  %55 = phi i64 [ %63, %54 ], [ %51, %50 ]
  %56 = phi <4 x i32> [ %64, %54 ], [ %52, %50 ]
  %57 = phi i64 [ %65, %54 ], [ 0, %50 ]
  %58 = add <4 x i32> %56, <i32 4, i32 4, i32 4, i32 4>
  %59 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %55
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> %56, <4 x i32>* %60, align 16, !tbaa !5
  %61 = getelementptr inbounds i32, i32* %59, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %58, <4 x i32>* %62, align 16, !tbaa !5
  %63 = add nuw i64 %55, 8
  %64 = add <4 x i32> %56, <i32 8, i32 8, i32 8, i32 8>
  %65 = add i64 %57, 1
  %66 = icmp eq i64 %65, %12
  br i1 %66, label %67, label %54, !llvm.loop !14

67:                                               ; preds = %54, %50
  %68 = icmp eq i64 %8, %5
  br i1 %68, label %71, label %69

69:                                               ; preds = %4, %67
  %70 = phi i64 [ 0, %4 ], [ %8, %67 ]
  br label %75

71:                                               ; preds = %75, %67, %0
  %72 = icmp sgt i32 %2, 0
  br i1 %72, label %73, label %207

73:                                               ; preds = %71
  %74 = zext i32 %2 to i64
  br label %163

75:                                               ; preds = %69, %75
  %76 = phi i64 [ %79, %75 ], [ %70, %69 ]
  %77 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %76
  %78 = trunc i64 %76 to i32
  store i32 %78, i32* %77, align 4, !tbaa !5
  %79 = add nuw nsw i64 %76, 1
  %80 = icmp eq i64 %79, %5
  br i1 %80, label %71, label %75, !llvm.loop !16

81:                                               ; preds = %193
  br i1 %72, label %82, label %207

82:                                               ; preds = %81
  %83 = zext i32 %2 to i64
  %84 = icmp ult i32 %2, 8
  br i1 %84, label %160, label %85

85:                                               ; preds = %82
  %86 = and i64 %74, 4294967288
  %87 = add nsw i64 %86, -8
  %88 = lshr exact i64 %87, 3
  %89 = add nuw nsw i64 %88, 1
  %90 = and i64 %89, 1
  %91 = icmp eq i64 %87, 0
  br i1 %91, label %132, label %92

92:                                               ; preds = %85
  %93 = and i64 %89, 4611686018427387902
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i64 [ 0, %92 ], [ %128, %94 ]
  %96 = phi <4 x i32> [ zeroinitializer, %92 ], [ %126, %94 ]
  %97 = phi <4 x i32> [ zeroinitializer, %92 ], [ %127, %94 ]
  %98 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %92 ], [ %129, %94 ]
  %99 = phi i64 [ 0, %92 ], [ %130, %94 ]
  %100 = add <4 x i32> %98, <i32 4, i32 4, i32 4, i32 4>
  %101 = mul nsw <4 x i32> %98, %98
  %102 = mul nsw <4 x i32> %100, %100
  %103 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %95
  %104 = bitcast i32* %103 to <4 x i32>*
  %105 = load <4 x i32>, <4 x i32>* %104, align 16, !tbaa !5
  %106 = getelementptr inbounds i32, i32* %103, i64 4
  %107 = bitcast i32* %106 to <4 x i32>*
  %108 = load <4 x i32>, <4 x i32>* %107, align 16, !tbaa !5
  %109 = mul nsw <4 x i32> %101, %105
  %110 = mul nsw <4 x i32> %102, %108
  %111 = add <4 x i32> %109, %96
  %112 = add <4 x i32> %110, %97
  %113 = or i64 %95, 8
  %114 = add <4 x i32> %98, <i32 8, i32 8, i32 8, i32 8>
  %115 = add <4 x i32> %98, <i32 12, i32 12, i32 12, i32 12>
  %116 = mul nsw <4 x i32> %114, %114
  %117 = mul nsw <4 x i32> %115, %115
  %118 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %113
  %119 = bitcast i32* %118 to <4 x i32>*
  %120 = load <4 x i32>, <4 x i32>* %119, align 16, !tbaa !5
  %121 = getelementptr inbounds i32, i32* %118, i64 4
  %122 = bitcast i32* %121 to <4 x i32>*
  %123 = load <4 x i32>, <4 x i32>* %122, align 16, !tbaa !5
  %124 = mul nsw <4 x i32> %116, %120
  %125 = mul nsw <4 x i32> %117, %123
  %126 = add <4 x i32> %124, %111
  %127 = add <4 x i32> %125, %112
  %128 = add nuw i64 %95, 16
  %129 = add <4 x i32> %98, <i32 16, i32 16, i32 16, i32 16>
  %130 = add i64 %99, 2
  %131 = icmp eq i64 %130, %93
  br i1 %131, label %132, label %94, !llvm.loop !18

132:                                              ; preds = %94, %85
  %133 = phi <4 x i32> [ undef, %85 ], [ %126, %94 ]
  %134 = phi <4 x i32> [ undef, %85 ], [ %127, %94 ]
  %135 = phi i64 [ 0, %85 ], [ %128, %94 ]
  %136 = phi <4 x i32> [ zeroinitializer, %85 ], [ %126, %94 ]
  %137 = phi <4 x i32> [ zeroinitializer, %85 ], [ %127, %94 ]
  %138 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %85 ], [ %129, %94 ]
  %139 = icmp eq i64 %90, 0
  br i1 %139, label %154, label %140

140:                                              ; preds = %132
  %141 = add <4 x i32> %138, <i32 4, i32 4, i32 4, i32 4>
  %142 = mul nsw <4 x i32> %138, %138
  %143 = mul nsw <4 x i32> %141, %141
  %144 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %135
  %145 = bitcast i32* %144 to <4 x i32>*
  %146 = load <4 x i32>, <4 x i32>* %145, align 16, !tbaa !5
  %147 = getelementptr inbounds i32, i32* %144, i64 4
  %148 = bitcast i32* %147 to <4 x i32>*
  %149 = load <4 x i32>, <4 x i32>* %148, align 16, !tbaa !5
  %150 = mul nsw <4 x i32> %142, %146
  %151 = mul nsw <4 x i32> %143, %149
  %152 = add <4 x i32> %150, %136
  %153 = add <4 x i32> %151, %137
  br label %154

154:                                              ; preds = %132, %140
  %155 = phi <4 x i32> [ %133, %132 ], [ %152, %140 ]
  %156 = phi <4 x i32> [ %134, %132 ], [ %153, %140 ]
  %157 = add <4 x i32> %156, %155
  %158 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %157)
  %159 = icmp eq i64 %86, %74
  br i1 %159, label %207, label %160

160:                                              ; preds = %82, %154
  %161 = phi i64 [ 0, %82 ], [ %86, %154 ]
  %162 = phi i32 [ 0, %82 ], [ %158, %154 ]
  br label %196

163:                                              ; preds = %73, %193
  %164 = phi i64 [ 0, %73 ], [ %194, %193 ]
  %165 = getelementptr inbounds [100000 x i32], [100000 x i32]* @a, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4, !tbaa !5
  %167 = sdiv i32 %1, %166
  %168 = icmp sgt i32 %167, 0
  %169 = icmp sgt i32 %166, 0
  %170 = and i1 %169, %168
  br i1 %170, label %171, label %193

171:                                              ; preds = %163
  %172 = zext i32 %167 to i64
  %173 = zext i32 %166 to i64
  br label %174

174:                                              ; preds = %190, %171
  %175 = phi i64 [ 0, %171 ], [ %191, %190 ]
  %176 = mul nuw nsw i64 %175, %173
  br label %177

177:                                              ; preds = %187, %174
  %178 = phi i64 [ 0, %174 ], [ %188, %187 ]
  %179 = icmp ult i64 %175, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = add nuw nsw i64 %178, %176
  %182 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4, !tbaa !5
  %184 = mul nuw nsw i64 %178, %172
  %185 = add nuw nsw i64 %184, %175
  %186 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %185
  store i32 %183, i32* %186, align 4, !tbaa !5
  store i32 %183, i32* %182, align 4, !tbaa !5
  br label %187

187:                                              ; preds = %180, %177
  %188 = add nuw nsw i64 %178, 1
  %189 = icmp eq i64 %188, %173
  br i1 %189, label %190, label %177, !llvm.loop !9

190:                                              ; preds = %187
  %191 = add nuw nsw i64 %175, 1
  %192 = icmp eq i64 %191, %172
  br i1 %192, label %193, label %174, !llvm.loop !11

193:                                              ; preds = %190, %163
  %194 = add nuw nsw i64 %164, 1
  %195 = icmp eq i64 %194, %74
  br i1 %195, label %81, label %163, !llvm.loop !19

196:                                              ; preds = %160, %196
  %197 = phi i64 [ %205, %196 ], [ %161, %160 ]
  %198 = phi i32 [ %204, %196 ], [ %162, %160 ]
  %199 = trunc i64 %197 to i32
  %200 = mul nsw i32 %199, %199
  %201 = getelementptr inbounds [20000000 x i32], [20000000 x i32]* @matrix, i64 0, i64 %197
  %202 = load i32, i32* %201, align 4, !tbaa !5
  %203 = mul nsw i32 %200, %202
  %204 = add nsw i32 %203, %198
  %205 = add nuw nsw i64 %197, 1
  %206 = icmp eq i64 %205, %83
  br i1 %206, label %207, label %196, !llvm.loop !20

207:                                              ; preds = %196, %154, %71, %81
  %208 = phi i32 [ 0, %81 ], [ 0, %71 ], [ %158, %154 ], [ %204, %196 ]
  %209 = tail call i32 @llvm.abs.i32(i32 %208, i1 true)
  tail call void @_Z14_sysy_stoptimei(i32 noundef 47)
  tail call void @_Z6putinti(i32 noundef %209)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #2

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #2

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }

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
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !10, !17, !13}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !13}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !17, !13}
