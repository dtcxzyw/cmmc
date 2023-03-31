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
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, i32* %0, i64 %16
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = icmp sgt i32 %20, %22
  %24 = trunc i64 %16 to i32
  %25 = select i1 %23, i32 %24, i32 %17
  %26 = add nuw nsw i64 %16, 1
  %27 = icmp eq i64 %26, %8
  br i1 %27, label %28, label %15, !llvm.loop !9

28:                                               ; preds = %15, %9
  %29 = phi i32 [ %14, %9 ], [ %25, %15 ]
  %30 = zext i32 %29 to i64
  %31 = icmp eq i64 %10, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %0, i64 %10
  %37 = load i32, i32* %36, align 4, !tbaa !5
  store i32 %37, i32* %34, align 4, !tbaa !5
  store i32 %35, i32* %36, align 4, !tbaa !5
  br label %38

38:                                               ; preds = %32, %28
  %39 = add nuw nsw i64 %11, 1
  %40 = icmp eq i64 %12, %7
  br i1 %40, label %41, label %9, !llvm.loop !11

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
  store i32 10, i32* @n, align 4, !tbaa !5
  %2 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 1
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 5
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 6
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 7
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 8
  store i32 7, i32* %10, align 16, !tbaa !5
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  store i32 8, i32* %11, align 4, !tbaa !5
  %12 = bitcast i32* %6 to <4 x i32>*
  store <4 x i32> <i32 4, i32 1, i32 6, i32 5>, <4 x i32>* %12, align 16, !tbaa !5
  %13 = bitcast [10 x i32]* %1 to <4 x i32>*
  store <4 x i32> <i32 0, i32 3, i32 9, i32 2>, <4 x i32>* %13, align 16, !tbaa !5
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = icmp sgt i32 %15, 1
  %17 = select i1 %16, i32 5, i32 3
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = icmp sgt i32 %20, 6
  %22 = select i1 %21, i32 6, i32 %17
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp sgt i32 %25, 5
  %27 = select i1 %26, i32 7, i32 %22
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp slt i32 %30, 8
  %32 = select i1 %31, i32 %27, i32 8
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = icmp slt i32 %35, 9
  %37 = select i1 %36, i32 %32, i32 9
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  store i32 3, i32* %39, align 4, !tbaa !5
  store i32 %40, i32* %3, align 4, !tbaa !5
  %41 = load i32, i32* %4, align 8, !tbaa !5
  %42 = load i32, i32* %5, align 4, !tbaa !5
  %43 = icmp sgt i32 %41, %42
  %44 = select i1 %43, i32 3, i32 2
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = load i32, i32* %6, align 16, !tbaa !5
  %49 = icmp sgt i32 %47, %48
  %50 = select i1 %49, i32 4, i32 %44
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = load i32, i32* %7, align 4, !tbaa !5
  %55 = icmp sgt i32 %53, %54
  %56 = select i1 %55, i32 5, i32 %50
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = load i32, i32* %8, align 8, !tbaa !5
  %61 = icmp sgt i32 %59, %60
  %62 = select i1 %61, i32 6, i32 %56
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = load i32, i32* %9, align 4, !tbaa !5
  %67 = icmp sgt i32 %65, %66
  %68 = select i1 %67, i32 7, i32 %62
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = load i32, i32* %10, align 16, !tbaa !5
  %73 = icmp sgt i32 %71, %72
  %74 = select i1 %73, i32 8, i32 %68
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !5
  %78 = load i32, i32* %11, align 4, !tbaa !5
  %79 = icmp sgt i32 %77, %78
  %80 = select i1 %79, i32 9, i32 %74
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %87, label %82

82:                                               ; preds = %0
  %83 = zext i32 %80 to i64
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !5
  %86 = load i32, i32* %4, align 8, !tbaa !5
  store i32 %86, i32* %84, align 4, !tbaa !5
  store i32 %85, i32* %4, align 8, !tbaa !5
  br label %87

87:                                               ; preds = %82, %0
  %88 = load i32, i32* %5, align 4, !tbaa !5
  %89 = load i32, i32* %6, align 16, !tbaa !5
  %90 = icmp sgt i32 %88, %89
  %91 = select i1 %90, i32 4, i32 3
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = load i32, i32* %7, align 4, !tbaa !5
  %96 = icmp sgt i32 %94, %95
  %97 = select i1 %96, i32 5, i32 %91
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %101 = load i32, i32* %8, align 8, !tbaa !5
  %102 = icmp sgt i32 %100, %101
  %103 = select i1 %102, i32 6, i32 %97
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = load i32, i32* %9, align 4, !tbaa !5
  %108 = icmp sgt i32 %106, %107
  %109 = select i1 %108, i32 7, i32 %103
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !5
  %113 = load i32, i32* %10, align 16, !tbaa !5
  %114 = icmp sgt i32 %112, %113
  %115 = select i1 %114, i32 8, i32 %109
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !5
  %119 = load i32, i32* %11, align 4, !tbaa !5
  %120 = icmp sgt i32 %118, %119
  %121 = select i1 %120, i32 9, i32 %115
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %128, label %123

123:                                              ; preds = %87
  %124 = zext i32 %121 to i64
  %125 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4, !tbaa !5
  %127 = load i32, i32* %5, align 4, !tbaa !5
  store i32 %127, i32* %125, align 4, !tbaa !5
  store i32 %126, i32* %5, align 4, !tbaa !5
  br label %128

128:                                              ; preds = %123, %87
  %129 = load i32, i32* %6, align 16, !tbaa !5
  %130 = load i32, i32* %7, align 4, !tbaa !5
  %131 = icmp sgt i32 %129, %130
  %132 = select i1 %131, i32 5, i32 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4, !tbaa !5
  %136 = load i32, i32* %8, align 8, !tbaa !5
  %137 = icmp sgt i32 %135, %136
  %138 = select i1 %137, i32 6, i32 %132
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4, !tbaa !5
  %142 = load i32, i32* %9, align 4, !tbaa !5
  %143 = icmp sgt i32 %141, %142
  %144 = select i1 %143, i32 7, i32 %138
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !5
  %148 = load i32, i32* %10, align 16, !tbaa !5
  %149 = icmp sgt i32 %147, %148
  %150 = select i1 %149, i32 8, i32 %144
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = load i32, i32* %11, align 4, !tbaa !5
  %155 = icmp sgt i32 %153, %154
  %156 = select i1 %155, i32 9, i32 %150
  %157 = icmp eq i32 %156, 4
  br i1 %157, label %163, label %158

158:                                              ; preds = %128
  %159 = zext i32 %156 to i64
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4, !tbaa !5
  %162 = load i32, i32* %6, align 16, !tbaa !5
  store i32 %162, i32* %160, align 4, !tbaa !5
  store i32 %161, i32* %6, align 16, !tbaa !5
  br label %163

163:                                              ; preds = %158, %128
  %164 = load i32, i32* %7, align 4, !tbaa !5
  %165 = load i32, i32* %8, align 8, !tbaa !5
  %166 = icmp sgt i32 %164, %165
  %167 = select i1 %166, i32 6, i32 5
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4, !tbaa !5
  %171 = load i32, i32* %9, align 4, !tbaa !5
  %172 = icmp sgt i32 %170, %171
  %173 = select i1 %172, i32 7, i32 %167
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4, !tbaa !5
  %177 = load i32, i32* %10, align 16, !tbaa !5
  %178 = icmp sgt i32 %176, %177
  %179 = select i1 %178, i32 8, i32 %173
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4, !tbaa !5
  %183 = load i32, i32* %11, align 4, !tbaa !5
  %184 = icmp sgt i32 %182, %183
  %185 = select i1 %184, i32 9, i32 %179
  %186 = icmp eq i32 %185, 5
  br i1 %186, label %192, label %187

187:                                              ; preds = %163
  %188 = zext i32 %185 to i64
  %189 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4, !tbaa !5
  %191 = load i32, i32* %7, align 4, !tbaa !5
  store i32 %191, i32* %189, align 4, !tbaa !5
  store i32 %190, i32* %7, align 4, !tbaa !5
  br label %192

192:                                              ; preds = %187, %163
  %193 = load i32, i32* %8, align 8, !tbaa !5
  %194 = load i32, i32* %9, align 4, !tbaa !5
  %195 = icmp sgt i32 %193, %194
  %196 = select i1 %195, i32 7, i32 6
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4, !tbaa !5
  %200 = load i32, i32* %10, align 16, !tbaa !5
  %201 = icmp sgt i32 %199, %200
  %202 = select i1 %201, i32 8, i32 %196
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4, !tbaa !5
  %206 = load i32, i32* %11, align 4, !tbaa !5
  %207 = icmp sgt i32 %205, %206
  %208 = select i1 %207, i32 9, i32 %202
  %209 = icmp eq i32 %208, 6
  br i1 %209, label %215, label %210

210:                                              ; preds = %192
  %211 = zext i32 %208 to i64
  %212 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4, !tbaa !5
  %214 = load i32, i32* %8, align 8, !tbaa !5
  store i32 %214, i32* %212, align 4, !tbaa !5
  store i32 %213, i32* %8, align 8, !tbaa !5
  br label %215

215:                                              ; preds = %210, %192
  %216 = load i32, i32* %9, align 4, !tbaa !5
  %217 = load i32, i32* %10, align 16, !tbaa !5
  %218 = icmp sgt i32 %216, %217
  %219 = select i1 %218, i32 8, i32 7
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4, !tbaa !5
  %223 = load i32, i32* %11, align 4, !tbaa !5
  %224 = icmp sgt i32 %222, %223
  %225 = select i1 %224, i32 9, i32 %219
  %226 = icmp eq i32 %225, 7
  br i1 %226, label %232, label %227

227:                                              ; preds = %215
  %228 = zext i32 %225 to i64
  %229 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4, !tbaa !5
  %231 = load i32, i32* %9, align 4, !tbaa !5
  store i32 %231, i32* %229, align 4, !tbaa !5
  store i32 %230, i32* %9, align 4, !tbaa !5
  br label %232

232:                                              ; preds = %227, %215
  %233 = load i32, i32* %10, align 16, !tbaa !5
  %234 = load i32, i32* %11, align 4, !tbaa !5
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %232
  %237 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 9
  %238 = load i32, i32* %237, align 4, !tbaa !5
  %239 = load i32, i32* %10, align 16, !tbaa !5
  store i32 %239, i32* %237, align 4, !tbaa !5
  store i32 %238, i32* %10, align 16, !tbaa !5
  br label %240

240:                                              ; preds = %232, %236
  br label %241

241:                                              ; preds = %240, %241
  %242 = phi i64 [ %245, %241 ], [ 0, %240 ]
  %243 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %244)
  tail call void @_Z5putchi(i32 noundef 10)
  %245 = add nuw nsw i64 %242, 1
  %246 = load i32, i32* @n, align 4, !tbaa !5
  %247 = sext i32 %246 to i64
  %248 = icmp slt i64 %245, %247
  br i1 %248, label %241, label %249, !llvm.loop !12

249:                                              ; preds = %241
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
!12 = distinct !{!12, !10}
