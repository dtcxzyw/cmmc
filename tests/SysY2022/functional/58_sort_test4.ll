; ModuleID = 'tests//SysY2022/functional/58_sort_test4.sy'
source_filename = "tests//SysY2022/functional/58_sort_test4.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local noundef i32 @_Z11select_sortPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %41

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = zext i32 %1 to i64
  %7 = zext i32 %5 to i64
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %4, %38
  %10 = phi i64 [ 0, %4 ], [ %12, %38 ]
  %11 = phi i64 [ 1, %4 ], [ %39, %38 ]
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp ult i64 %12, %6
  %14 = trunc i64 %10 to i32
  br i1 %13, label %15, label %28

15:                                               ; preds = %9, %15
  %16 = phi i64 [ %26, %15 ], [ %11, %9 ]
  %17 = phi i32 [ %25, %15 ], [ %14, %9 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !4
  %21 = getelementptr inbounds i32, i32* %0, i64 %16
  %22 = load i32, i32* %21, align 4, !tbaa !4
  %23 = icmp sgt i32 %20, %22
  %24 = trunc i64 %16 to i32
  %25 = select i1 %23, i32 %24, i32 %17
  %26 = add nuw nsw i64 %16, 1
  %27 = icmp eq i64 %26, %8
  br i1 %27, label %28, label %15, !llvm.loop !8

28:                                               ; preds = %15, %9
  %29 = phi i32 [ %14, %9 ], [ %25, %15 ]
  %30 = zext i32 %29 to i64
  %31 = icmp eq i64 %10, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !4
  %36 = getelementptr inbounds i32, i32* %0, i64 %10
  %37 = load i32, i32* %36, align 4, !tbaa !4
  store i32 %37, i32* %34, align 4, !tbaa !4
  store i32 %35, i32* %36, align 4, !tbaa !4
  br label %38

38:                                               ; preds = %32, %28
  %39 = add nuw nsw i64 %11, 1
  %40 = icmp eq i64 %12, %7
  br i1 %40, label %41, label %9, !llvm.loop !10

41:                                               ; preds = %38, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = alloca [10 x i32], align 16
  store i32 10, i32* @n, align 4, !tbaa !4
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  store i32 3, i32* %4, align 4, !tbaa !4
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  store i32 9, i32* %5, align 8, !tbaa !4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  store i32 2, i32* %6, align 4, !tbaa !4
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 5
  store i32 1, i32* %8, align 4, !tbaa !4
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 6
  store i32 6, i32* %9, align 8, !tbaa !4
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 7
  store i32 5, i32* %10, align 4, !tbaa !4
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 8
  store i32 7, i32* %11, align 16, !tbaa !4
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  store i32 8, i32* %12, align 4, !tbaa !4
  store i32 4, i32* %7, align 16, !tbaa !4
  store i32 0, i32* %3, align 16, !tbaa !4
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  %14 = load i32, i32* %13, align 4, !tbaa !4
  %15 = icmp sgt i32 %14, 1
  %16 = select i1 %15, i32 5, i32 3
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !4
  %20 = icmp sgt i32 %19, 6
  %21 = select i1 %20, i32 6, i32 %16
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !4
  %25 = icmp sgt i32 %24, 5
  %26 = select i1 %25, i32 7, i32 %21
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !4
  %30 = icmp slt i32 %29, 8
  %31 = select i1 %30, i32 %26, i32 8
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !4
  %35 = icmp slt i32 %34, 9
  %36 = select i1 %35, i32 %31, i32 9
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !4
  store i32 3, i32* %38, align 4, !tbaa !4
  store i32 %39, i32* %4, align 4, !tbaa !4
  %40 = load i32, i32* %5, align 8, !tbaa !4
  %41 = load i32, i32* %6, align 4, !tbaa !4
  %42 = icmp sgt i32 %40, %41
  %43 = select i1 %42, i32 3, i32 2
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !4
  %47 = load i32, i32* %7, align 16, !tbaa !4
  %48 = icmp sgt i32 %46, %47
  %49 = select i1 %48, i32 4, i32 %43
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !4
  %53 = load i32, i32* %8, align 4, !tbaa !4
  %54 = icmp sgt i32 %52, %53
  %55 = select i1 %54, i32 5, i32 %49
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !4
  %59 = load i32, i32* %9, align 8, !tbaa !4
  %60 = icmp sgt i32 %58, %59
  %61 = select i1 %60, i32 6, i32 %55
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !4
  %65 = load i32, i32* %10, align 4, !tbaa !4
  %66 = icmp sgt i32 %64, %65
  %67 = select i1 %66, i32 7, i32 %61
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !4
  %71 = load i32, i32* %11, align 16, !tbaa !4
  %72 = icmp sgt i32 %70, %71
  %73 = select i1 %72, i32 8, i32 %67
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !4
  %77 = load i32, i32* %12, align 4, !tbaa !4
  %78 = icmp sgt i32 %76, %77
  %79 = select i1 %78, i32 9, i32 %73
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %86, label %81

81:                                               ; preds = %0
  %82 = zext i32 %79 to i64
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !4
  %85 = load i32, i32* %5, align 8, !tbaa !4
  store i32 %85, i32* %83, align 4, !tbaa !4
  store i32 %84, i32* %5, align 8, !tbaa !4
  br label %86

86:                                               ; preds = %81, %0
  %87 = load i32, i32* %6, align 4, !tbaa !4
  %88 = load i32, i32* %7, align 16, !tbaa !4
  %89 = icmp sgt i32 %87, %88
  %90 = select i1 %89, i32 4, i32 3
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !4
  %94 = load i32, i32* %8, align 4, !tbaa !4
  %95 = icmp sgt i32 %93, %94
  %96 = select i1 %95, i32 5, i32 %90
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !4
  %100 = load i32, i32* %9, align 8, !tbaa !4
  %101 = icmp sgt i32 %99, %100
  %102 = select i1 %101, i32 6, i32 %96
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !4
  %106 = load i32, i32* %10, align 4, !tbaa !4
  %107 = icmp sgt i32 %105, %106
  %108 = select i1 %107, i32 7, i32 %102
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !4
  %112 = load i32, i32* %11, align 16, !tbaa !4
  %113 = icmp sgt i32 %111, %112
  %114 = select i1 %113, i32 8, i32 %108
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4, !tbaa !4
  %118 = load i32, i32* %12, align 4, !tbaa !4
  %119 = icmp sgt i32 %117, %118
  %120 = select i1 %119, i32 9, i32 %114
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %127, label %122

122:                                              ; preds = %86
  %123 = zext i32 %120 to i64
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !4
  %126 = load i32, i32* %6, align 4, !tbaa !4
  store i32 %126, i32* %124, align 4, !tbaa !4
  store i32 %125, i32* %6, align 4, !tbaa !4
  br label %127

127:                                              ; preds = %122, %86
  %128 = load i32, i32* %7, align 16, !tbaa !4
  %129 = load i32, i32* %8, align 4, !tbaa !4
  %130 = icmp sgt i32 %128, %129
  %131 = select i1 %130, i32 5, i32 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4, !tbaa !4
  %135 = load i32, i32* %9, align 8, !tbaa !4
  %136 = icmp sgt i32 %134, %135
  %137 = select i1 %136, i32 6, i32 %131
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4, !tbaa !4
  %141 = load i32, i32* %10, align 4, !tbaa !4
  %142 = icmp sgt i32 %140, %141
  %143 = select i1 %142, i32 7, i32 %137
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4, !tbaa !4
  %147 = load i32, i32* %11, align 16, !tbaa !4
  %148 = icmp sgt i32 %146, %147
  %149 = select i1 %148, i32 8, i32 %143
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4, !tbaa !4
  %153 = load i32, i32* %12, align 4, !tbaa !4
  %154 = icmp sgt i32 %152, %153
  %155 = select i1 %154, i32 9, i32 %149
  %156 = icmp eq i32 %155, 4
  br i1 %156, label %162, label %157

157:                                              ; preds = %127
  %158 = zext i32 %155 to i64
  %159 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !4
  %161 = load i32, i32* %7, align 16, !tbaa !4
  store i32 %161, i32* %159, align 4, !tbaa !4
  store i32 %160, i32* %7, align 16, !tbaa !4
  br label %162

162:                                              ; preds = %157, %127
  %163 = load i32, i32* %8, align 4, !tbaa !4
  %164 = load i32, i32* %9, align 8, !tbaa !4
  %165 = icmp sgt i32 %163, %164
  %166 = select i1 %165, i32 6, i32 5
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4, !tbaa !4
  %170 = load i32, i32* %10, align 4, !tbaa !4
  %171 = icmp sgt i32 %169, %170
  %172 = select i1 %171, i32 7, i32 %166
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4, !tbaa !4
  %176 = load i32, i32* %11, align 16, !tbaa !4
  %177 = icmp sgt i32 %175, %176
  %178 = select i1 %177, i32 8, i32 %172
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4, !tbaa !4
  %182 = load i32, i32* %12, align 4, !tbaa !4
  %183 = icmp sgt i32 %181, %182
  %184 = select i1 %183, i32 9, i32 %178
  %185 = icmp eq i32 %184, 5
  br i1 %185, label %191, label %186

186:                                              ; preds = %162
  %187 = zext i32 %184 to i64
  %188 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4, !tbaa !4
  %190 = load i32, i32* %8, align 4, !tbaa !4
  store i32 %190, i32* %188, align 4, !tbaa !4
  store i32 %189, i32* %8, align 4, !tbaa !4
  br label %191

191:                                              ; preds = %186, %162
  %192 = load i32, i32* %9, align 8, !tbaa !4
  %193 = load i32, i32* %10, align 4, !tbaa !4
  %194 = icmp sgt i32 %192, %193
  %195 = select i1 %194, i32 7, i32 6
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4, !tbaa !4
  %199 = load i32, i32* %11, align 16, !tbaa !4
  %200 = icmp sgt i32 %198, %199
  %201 = select i1 %200, i32 8, i32 %195
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4, !tbaa !4
  %205 = load i32, i32* %12, align 4, !tbaa !4
  %206 = icmp sgt i32 %204, %205
  %207 = select i1 %206, i32 9, i32 %201
  %208 = icmp eq i32 %207, 6
  br i1 %208, label %214, label %209

209:                                              ; preds = %191
  %210 = zext i32 %207 to i64
  %211 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4, !tbaa !4
  %213 = load i32, i32* %9, align 8, !tbaa !4
  store i32 %213, i32* %211, align 4, !tbaa !4
  store i32 %212, i32* %9, align 8, !tbaa !4
  br label %214

214:                                              ; preds = %209, %191
  %215 = load i32, i32* %10, align 4, !tbaa !4
  %216 = load i32, i32* %11, align 16, !tbaa !4
  %217 = icmp sgt i32 %215, %216
  %218 = select i1 %217, i32 8, i32 7
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4, !tbaa !4
  %222 = load i32, i32* %12, align 4, !tbaa !4
  %223 = icmp sgt i32 %221, %222
  %224 = select i1 %223, i32 9, i32 %218
  %225 = icmp eq i32 %224, 7
  br i1 %225, label %231, label %226

226:                                              ; preds = %214
  %227 = zext i32 %224 to i64
  %228 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4, !tbaa !4
  %230 = load i32, i32* %10, align 4, !tbaa !4
  store i32 %230, i32* %228, align 4, !tbaa !4
  store i32 %229, i32* %10, align 4, !tbaa !4
  br label %231

231:                                              ; preds = %226, %214
  %232 = load i32, i32* %11, align 16, !tbaa !4
  %233 = load i32, i32* %12, align 4, !tbaa !4
  %234 = icmp sgt i32 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  %237 = load i32, i32* %236, align 4, !tbaa !4
  %238 = load i32, i32* %11, align 16, !tbaa !4
  store i32 %238, i32* %236, align 4, !tbaa !4
  store i32 %237, i32* %11, align 16, !tbaa !4
  br label %239

239:                                              ; preds = %231, %235
  br label %240

240:                                              ; preds = %239, %240
  %241 = phi i64 [ %244, %240 ], [ 0, %239 ]
  %242 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4, !tbaa !4
  tail call void @_Z6putinti(i32 noundef %243)
  tail call void @_Z5putchi(i32 noundef 10)
  %244 = add nuw nsw i64 %241, 1
  %245 = load i32, i32* @n, align 4, !tbaa !4
  %246 = sext i32 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %240, label %248, !llvm.loop !11

248:                                              ; preds = %240
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #3

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
