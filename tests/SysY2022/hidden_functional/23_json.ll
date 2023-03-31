; ModuleID = 'tests//SysY2022/hidden_functional/23_json.sy'
source_filename = "tests//SysY2022/hidden_functional/23_json.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pos = dso_local local_unnamed_addr global i32 0, align 4
@buffer = dso_local global [50000000 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z9is_numberi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -48
  %3 = icmp ult i32 %2, 10
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z10skip_spacePii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, i32* @pos, align 4, !tbaa !4
  %4 = icmp slt i32 %3, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %2, %10
  %6 = phi i32 [ %11, %10 ], [ %3, %2 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !4
  switch i32 %9, label %13 [
    i32 32, label %10
    i32 9, label %10
    i32 10, label %10
    i32 13, label %10
  ]

10:                                               ; preds = %5, %5, %5, %5
  %11 = add nsw i32 %6, 1
  store i32 %11, i32* @pos, align 4, !tbaa !4
  %12 = icmp slt i32 %11, %1
  br i1 %12, label %5, label %13, !llvm.loop !8

13:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z11detect_itemiPii(i32 noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load i32, i32* @pos, align 4, !tbaa !4
  %5 = icmp slt i32 %4, %2
  br i1 %5, label %6, label %578

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %30
  %9 = phi i32 [ %24, %30 ], [ %4, %6 ]
  %10 = phi i32 [ %31, %30 ], [ %0, %6 ]
  %11 = sext i32 %9 to i64
  br label %12

12:                                               ; preds = %8, %17
  %13 = phi i32 [ %9, %8 ], [ %19, %17 ]
  %14 = phi i64 [ %11, %8 ], [ %18, %17 ]
  %15 = getelementptr inbounds i32, i32* %1, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !4
  switch i32 %16, label %23 [
    i32 32, label %17
    i32 9, label %17
    i32 10, label %17
    i32 13, label %17
  ]

17:                                               ; preds = %12, %12, %12, %12
  %18 = add nsw i64 %14, 1
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @pos, align 4, !tbaa !4
  %20 = icmp slt i64 %18, %7
  br i1 %20, label %12, label %21, !llvm.loop !8

21:                                               ; preds = %17
  %22 = trunc i64 %18 to i32
  br label %23

23:                                               ; preds = %12, %21
  %24 = phi i32 [ %22, %21 ], [ %13, %12 ]
  switch i32 %10, label %578 [
    i32 0, label %25
    i32 1, label %41
    i32 2, label %134
    i32 3, label %149
    i32 4, label %257
    i32 5, label %489
    i32 6, label %516
    i32 7, label %549
  ]

25:                                               ; preds = %23
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %1, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !4
  switch i32 %28, label %34 [
    i32 123, label %30
    i32 91, label %29
    i32 34, label %33
  ]

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %33, %38, %39, %40, %25, %34, %37, %37
  %31 = phi i32 [ 3, %29 ], [ 2, %33 ], [ 5, %38 ], [ 6, %39 ], [ 7, %40 ], [ 4, %25 ], [ 1, %34 ], [ 1, %37 ], [ 1, %37 ]
  %32 = icmp slt i32 %24, %2
  br i1 %32, label %8, label %578

33:                                               ; preds = %25
  br label %30

34:                                               ; preds = %25
  %35 = add i32 %28, -48
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %30, label %37

37:                                               ; preds = %34
  switch i32 %28, label %578 [
    i32 43, label %30
    i32 45, label %30
    i32 116, label %38
    i32 102, label %39
    i32 110, label %40
  ]

38:                                               ; preds = %37
  br label %30

39:                                               ; preds = %37
  br label %30

40:                                               ; preds = %37
  br label %30

41:                                               ; preds = %23
  %42 = sext i32 %24 to i64
  %43 = getelementptr inbounds i32, i32* %1, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !4
  switch i32 %44, label %47 [
    i32 43, label %45
    i32 45, label %45
  ]

45:                                               ; preds = %41, %41
  %46 = add nsw i32 %24, 1
  store i32 %46, i32* @pos, align 4, !tbaa !4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %24, %41 ], [ %46, %45 ]
  %49 = icmp slt i32 %48, %2
  br i1 %49, label %50, label %578

50:                                               ; preds = %47
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i32, i32* %1, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !4
  %54 = add i32 %53, -58
  %55 = icmp ult i32 %54, -10
  br i1 %55, label %578, label %56

56:                                               ; preds = %50
  %57 = add i32 %53, -48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %71

59:                                               ; preds = %56, %64
  %60 = phi i64 [ %61, %64 ], [ %51, %56 ]
  %61 = add nsw i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @pos, align 4, !tbaa !4
  %63 = icmp eq i32 %62, %2
  br i1 %63, label %578, label %64, !llvm.loop !10

64:                                               ; preds = %59
  %65 = getelementptr inbounds i32, i32* %1, i64 %61
  %66 = load i32, i32* %65, align 4, !tbaa !4
  %67 = add i32 %66, -48
  %68 = icmp ult i32 %67, 10
  br i1 %68, label %59, label %69

69:                                               ; preds = %64
  %70 = trunc i64 %61 to i32
  br label %71

71:                                               ; preds = %69, %56
  %72 = phi i32 [ %48, %56 ], [ %70, %69 ]
  %73 = phi i64 [ %51, %56 ], [ %61, %69 ]
  %74 = shl i64 %73, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds i32, i32* %1, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !4
  %78 = icmp eq i32 %77, 46
  br i1 %78, label %79, label %91

79:                                               ; preds = %71, %84
  %80 = phi i64 [ %81, %84 ], [ %75, %71 ]
  %81 = add nsw i64 %80, 1
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* @pos, align 4, !tbaa !4
  %83 = icmp slt i64 %81, %7
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = getelementptr inbounds i32, i32* %1, i64 %81
  %86 = load i32, i32* %85, align 4, !tbaa !4
  %87 = add i32 %86, -48
  %88 = icmp ult i32 %87, 10
  br i1 %88, label %79, label %89, !llvm.loop !11

89:                                               ; preds = %79, %84
  %90 = trunc i64 %81 to i32
  br label %91

91:                                               ; preds = %89, %71
  %92 = phi i32 [ %72, %71 ], [ %90, %89 ]
  %93 = icmp slt i32 %92, %2
  br i1 %93, label %94, label %578

94:                                               ; preds = %91
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds i32, i32* %1, i64 %95
  %97 = load i32, i32* %96, align 4, !tbaa !4
  %98 = icmp eq i32 %97, 101
  br i1 %98, label %99, label %578

99:                                               ; preds = %94
  %100 = add nsw i32 %92, 1
  store i32 %100, i32* @pos, align 4, !tbaa !4
  %101 = icmp slt i32 %100, %2
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = sext i32 %100 to i64
  %104 = getelementptr inbounds i32, i32* %1, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !4
  %106 = icmp eq i32 %105, 43
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = add nsw i32 %92, 2
  store i32 %108, i32* @pos, align 4, !tbaa !4
  br label %109

109:                                              ; preds = %102, %107, %99
  %110 = phi i32 [ %100, %102 ], [ %108, %107 ], [ %100, %99 ]
  %111 = icmp slt i32 %110, %2
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = sext i32 %110 to i64
  %114 = getelementptr inbounds i32, i32* %1, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !4
  %116 = icmp eq i32 %115, 45
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = add nsw i32 %110, 1
  store i32 %118, i32* @pos, align 4, !tbaa !4
  br label %119

119:                                              ; preds = %112, %117, %109
  %120 = phi i32 [ %110, %112 ], [ %118, %117 ], [ %110, %109 ]
  %121 = icmp slt i32 %120, %2
  br i1 %121, label %122, label %578

122:                                              ; preds = %119
  %123 = sext i32 %120 to i64
  br label %124

124:                                              ; preds = %122, %130
  %125 = phi i64 [ %123, %122 ], [ %131, %130 ]
  %126 = getelementptr inbounds i32, i32* %1, i64 %125
  %127 = load i32, i32* %126, align 4, !tbaa !4
  %128 = add i32 %127, -48
  %129 = icmp ult i32 %128, 10
  br i1 %129, label %130, label %578

130:                                              ; preds = %124
  %131 = add nsw i64 %125, 1
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* @pos, align 4, !tbaa !4
  %133 = icmp eq i32 %132, %2
  br i1 %133, label %578, label %124, !llvm.loop !12

134:                                              ; preds = %23
  %135 = add nsw i32 %24, 1
  store i32 %135, i32* @pos, align 4, !tbaa !4
  %136 = icmp slt i32 %135, %2
  br i1 %136, label %137, label %578

137:                                              ; preds = %134, %143
  %138 = phi i32 [ %145, %143 ], [ %135, %134 ]
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %1, i64 %139
  %141 = load i32, i32* %140, align 4, !tbaa !4
  switch i32 %141, label %142 [
    i32 34, label %147
    i32 92, label %143
  ]

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %137, %142
  %144 = phi i32 [ 1, %142 ], [ 2, %137 ]
  %145 = add nsw i32 %138, %144
  store i32 %145, i32* @pos, align 4, !tbaa !4
  %146 = icmp slt i32 %145, %2
  br i1 %146, label %137, label %578, !llvm.loop !13

147:                                              ; preds = %137
  %148 = add nsw i32 %138, 1
  br label %576

149:                                              ; preds = %23
  %150 = add i32 %24, 1
  store i32 %150, i32* @pos, align 4, !tbaa !4
  %151 = icmp slt i32 %150, %2
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = sext i32 %150 to i64
  br label %154

154:                                              ; preds = %152, %159
  %155 = phi i32 [ %150, %152 ], [ %161, %159 ]
  %156 = phi i64 [ %153, %152 ], [ %160, %159 ]
  %157 = getelementptr inbounds i32, i32* %1, i64 %156
  %158 = load i32, i32* %157, align 4, !tbaa !4
  switch i32 %158, label %163 [
    i32 32, label %159
    i32 9, label %159
    i32 10, label %159
    i32 13, label %159
  ]

159:                                              ; preds = %154, %154, %154, %154
  %160 = add nsw i64 %156, 1
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* @pos, align 4, !tbaa !4
  %162 = icmp eq i32 %161, %2
  br i1 %162, label %173, label %154, !llvm.loop !8

163:                                              ; preds = %154, %149
  %164 = phi i32 [ %150, %149 ], [ %155, %154 ]
  %165 = icmp slt i32 %164, %2
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = sext i32 %164 to i64
  %168 = getelementptr inbounds i32, i32* %1, i64 %167
  %169 = load i32, i32* %168, align 4, !tbaa !4
  %170 = icmp eq i32 %169, 93
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = add nsw i32 %164, 1
  br label %576

173:                                              ; preds = %159, %166, %163
  %174 = tail call noundef i32 @_Z11detect_itemiPii(i32 noundef 0, i32* noundef nonnull %1, i32 noundef %2), !range !14
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %578, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* @pos, align 4, !tbaa !4
  %178 = icmp slt i32 %177, %2
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = sext i32 %177 to i64
  br label %181

181:                                              ; preds = %179, %186
  %182 = phi i32 [ %177, %179 ], [ %188, %186 ]
  %183 = phi i64 [ %180, %179 ], [ %187, %186 ]
  %184 = getelementptr inbounds i32, i32* %1, i64 %183
  %185 = load i32, i32* %184, align 4, !tbaa !4
  switch i32 %185, label %190 [
    i32 32, label %186
    i32 9, label %186
    i32 10, label %186
    i32 13, label %186
  ]

186:                                              ; preds = %181, %181, %181, %181
  %187 = add nsw i64 %183, 1
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* @pos, align 4, !tbaa !4
  %189 = icmp eq i32 %188, %2
  br i1 %189, label %190, label %181, !llvm.loop !8

190:                                              ; preds = %181, %186, %176
  %191 = phi i32 [ %177, %176 ], [ %182, %181 ], [ %2, %186 ]
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %1, i64 %192
  %194 = load i32, i32* %193, align 4, !tbaa !4
  %195 = icmp eq i32 %194, 44
  br i1 %195, label %196, label %233

196:                                              ; preds = %190, %227
  %197 = phi i32 [ %228, %227 ], [ %191, %190 ]
  %198 = add i32 %197, 1
  store i32 %198, i32* @pos, align 4, !tbaa !4
  %199 = icmp slt i32 %198, %2
  br i1 %199, label %200, label %210

200:                                              ; preds = %196
  %201 = sext i32 %198 to i64
  br label %202

202:                                              ; preds = %200, %206
  %203 = phi i64 [ %201, %200 ], [ %207, %206 ]
  %204 = getelementptr inbounds i32, i32* %1, i64 %203
  %205 = load i32, i32* %204, align 4, !tbaa !4
  switch i32 %205, label %210 [
    i32 32, label %206
    i32 9, label %206
    i32 10, label %206
    i32 13, label %206
  ]

206:                                              ; preds = %202, %202, %202, %202
  %207 = add nsw i64 %203, 1
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* @pos, align 4, !tbaa !4
  %209 = icmp eq i32 %208, %2
  br i1 %209, label %210, label %202, !llvm.loop !8

210:                                              ; preds = %202, %206, %196
  %211 = tail call noundef i32 @_Z11detect_itemiPii(i32 noundef 0, i32* noundef %1, i32 noundef %2), !range !14
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %578, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* @pos, align 4, !tbaa !4
  %215 = icmp slt i32 %214, %2
  br i1 %215, label %216, label %227

216:                                              ; preds = %213
  %217 = sext i32 %214 to i64
  br label %218

218:                                              ; preds = %216, %223
  %219 = phi i32 [ %214, %216 ], [ %225, %223 ]
  %220 = phi i64 [ %217, %216 ], [ %224, %223 ]
  %221 = getelementptr inbounds i32, i32* %1, i64 %220
  %222 = load i32, i32* %221, align 4, !tbaa !4
  switch i32 %222, label %227 [
    i32 32, label %223
    i32 9, label %223
    i32 10, label %223
    i32 13, label %223
  ]

223:                                              ; preds = %218, %218, %218, %218
  %224 = add nsw i64 %220, 1
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* @pos, align 4, !tbaa !4
  %226 = icmp eq i32 %225, %2
  br i1 %226, label %227, label %218, !llvm.loop !8

227:                                              ; preds = %218, %223, %213
  %228 = phi i32 [ %214, %213 ], [ %219, %218 ], [ %2, %223 ]
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %1, i64 %229
  %231 = load i32, i32* %230, align 4, !tbaa !4
  %232 = icmp eq i32 %231, 44
  br i1 %232, label %196, label %233, !llvm.loop !15

233:                                              ; preds = %227, %190
  %234 = phi i32 [ %191, %190 ], [ %228, %227 ]
  %235 = icmp slt i32 %234, %2
  br i1 %235, label %236, label %247

236:                                              ; preds = %233
  %237 = sext i32 %234 to i64
  br label %238

238:                                              ; preds = %236, %243
  %239 = phi i32 [ %234, %236 ], [ %245, %243 ]
  %240 = phi i64 [ %237, %236 ], [ %244, %243 ]
  %241 = getelementptr inbounds i32, i32* %1, i64 %240
  %242 = load i32, i32* %241, align 4, !tbaa !4
  switch i32 %242, label %247 [
    i32 32, label %243
    i32 9, label %243
    i32 10, label %243
    i32 13, label %243
  ]

243:                                              ; preds = %238, %238, %238, %238
  %244 = add nsw i64 %240, 1
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* @pos, align 4, !tbaa !4
  %246 = icmp eq i32 %245, %2
  br i1 %246, label %578, label %238, !llvm.loop !8

247:                                              ; preds = %238, %233
  %248 = phi i32 [ %234, %233 ], [ %239, %238 ]
  %249 = icmp slt i32 %248, %2
  br i1 %249, label %250, label %578

250:                                              ; preds = %247
  %251 = sext i32 %248 to i64
  %252 = getelementptr inbounds i32, i32* %1, i64 %251
  %253 = load i32, i32* %252, align 4, !tbaa !4
  %254 = icmp eq i32 %253, 93
  br i1 %254, label %255, label %578

255:                                              ; preds = %250
  %256 = add nsw i32 %248, 1
  br label %576

257:                                              ; preds = %23
  %258 = add i32 %24, 1
  store i32 %258, i32* @pos, align 4, !tbaa !4
  %259 = icmp slt i32 %258, %2
  br i1 %259, label %260, label %271

260:                                              ; preds = %257
  %261 = sext i32 %258 to i64
  br label %262

262:                                              ; preds = %260, %267
  %263 = phi i32 [ %258, %260 ], [ %269, %267 ]
  %264 = phi i64 [ %261, %260 ], [ %268, %267 ]
  %265 = getelementptr inbounds i32, i32* %1, i64 %264
  %266 = load i32, i32* %265, align 4, !tbaa !4
  switch i32 %266, label %271 [
    i32 32, label %267
    i32 9, label %267
    i32 10, label %267
    i32 13, label %267
  ]

267:                                              ; preds = %262, %262, %262, %262
  %268 = add nsw i64 %264, 1
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* @pos, align 4, !tbaa !4
  %270 = icmp eq i32 %269, %2
  br i1 %270, label %578, label %262, !llvm.loop !8

271:                                              ; preds = %262, %257
  %272 = phi i32 [ %258, %257 ], [ %263, %262 ]
  %273 = icmp slt i32 %272, %2
  br i1 %273, label %274, label %578

274:                                              ; preds = %271
  %275 = sext i32 %272 to i64
  %276 = getelementptr inbounds i32, i32* %1, i64 %275
  %277 = load i32, i32* %276, align 4, !tbaa !4
  %278 = icmp eq i32 %277, 125
  br i1 %278, label %279, label %281

279:                                              ; preds = %274
  %280 = add nsw i32 %272, 1
  br label %576

281:                                              ; preds = %274, %289
  %282 = phi i32 [ %287, %289 ], [ %272, %274 ]
  %283 = phi i32 [ %291, %289 ], [ %277, %274 ]
  %284 = phi i64 [ %286, %289 ], [ %275, %274 ]
  switch i32 %283, label %292 [
    i32 32, label %285
    i32 9, label %285
    i32 10, label %285
    i32 13, label %285
  ]

285:                                              ; preds = %281, %281, %281, %281
  %286 = add nsw i64 %284, 1
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* @pos, align 4, !tbaa !4
  %288 = icmp eq i32 %287, %2
  br i1 %288, label %292, label %289, !llvm.loop !8

289:                                              ; preds = %285
  %290 = getelementptr inbounds i32, i32* %1, i64 %286
  %291 = load i32, i32* %290, align 4, !tbaa !4
  br label %281

292:                                              ; preds = %285, %281
  %293 = phi i32 [ %2, %285 ], [ %282, %281 ]
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* @pos, align 4, !tbaa !4
  %295 = icmp slt i32 %294, %2
  br i1 %295, label %296, label %578

296:                                              ; preds = %292, %302
  %297 = phi i32 [ %304, %302 ], [ %294, %292 ]
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %1, i64 %298
  %300 = load i32, i32* %299, align 4, !tbaa !4
  switch i32 %300, label %301 [
    i32 34, label %306
    i32 92, label %302
  ]

301:                                              ; preds = %296
  br label %302

302:                                              ; preds = %296, %301
  %303 = phi i32 [ 1, %301 ], [ 2, %296 ]
  %304 = add nsw i32 %297, %303
  store i32 %304, i32* @pos, align 4, !tbaa !4
  %305 = icmp slt i32 %304, %2
  br i1 %305, label %296, label %578, !llvm.loop !13

306:                                              ; preds = %296
  %307 = add nsw i32 %297, 1
  store i32 %307, i32* @pos, align 4, !tbaa !4
  %308 = icmp slt i32 %307, %2
  br i1 %308, label %309, label %320

309:                                              ; preds = %306
  %310 = sext i32 %307 to i64
  br label %311

311:                                              ; preds = %309, %316
  %312 = phi i32 [ %307, %309 ], [ %318, %316 ]
  %313 = phi i64 [ %310, %309 ], [ %317, %316 ]
  %314 = getelementptr inbounds i32, i32* %1, i64 %313
  %315 = load i32, i32* %314, align 4, !tbaa !4
  switch i32 %315, label %320 [
    i32 32, label %316
    i32 9, label %316
    i32 10, label %316
    i32 13, label %316
  ]

316:                                              ; preds = %311, %311, %311, %311
  %317 = add nsw i64 %313, 1
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* @pos, align 4, !tbaa !4
  %319 = icmp eq i32 %318, %2
  br i1 %319, label %578, label %311, !llvm.loop !8

320:                                              ; preds = %311, %306
  %321 = phi i32 [ %307, %306 ], [ %312, %311 ]
  %322 = icmp slt i32 %321, %2
  br i1 %322, label %323, label %578

323:                                              ; preds = %320
  %324 = sext i32 %321 to i64
  %325 = getelementptr inbounds i32, i32* %1, i64 %324
  %326 = load i32, i32* %325, align 4, !tbaa !4
  %327 = icmp eq i32 %326, 58
  br i1 %327, label %328, label %578

328:                                              ; preds = %323
  %329 = add nsw i32 %321, 1
  store i32 %329, i32* @pos, align 4, !tbaa !4
  %330 = icmp slt i32 %329, %2
  br i1 %330, label %331, label %341

331:                                              ; preds = %328
  %332 = add nsw i64 %324, 1
  br label %333

333:                                              ; preds = %331, %337
  %334 = phi i64 [ %332, %331 ], [ %338, %337 ]
  %335 = getelementptr inbounds i32, i32* %1, i64 %334
  %336 = load i32, i32* %335, align 4, !tbaa !4
  switch i32 %336, label %341 [
    i32 32, label %337
    i32 9, label %337
    i32 10, label %337
    i32 13, label %337
  ]

337:                                              ; preds = %333, %333, %333, %333
  %338 = add nsw i64 %334, 1
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* @pos, align 4, !tbaa !4
  %340 = icmp eq i32 %339, %2
  br i1 %340, label %341, label %333, !llvm.loop !8

341:                                              ; preds = %333, %337, %328
  %342 = tail call noundef i32 @_Z11detect_itemiPii(i32 noundef 0, i32* noundef %1, i32 noundef %2), !range !14
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %578, label %344

344:                                              ; preds = %341
  %345 = load i32, i32* @pos, align 4, !tbaa !4
  %346 = icmp slt i32 %345, %2
  br i1 %346, label %347, label %358

347:                                              ; preds = %344
  %348 = sext i32 %345 to i64
  br label %349

349:                                              ; preds = %347, %354
  %350 = phi i32 [ %345, %347 ], [ %356, %354 ]
  %351 = phi i64 [ %348, %347 ], [ %355, %354 ]
  %352 = getelementptr inbounds i32, i32* %1, i64 %351
  %353 = load i32, i32* %352, align 4, !tbaa !4
  switch i32 %353, label %358 [
    i32 32, label %354
    i32 9, label %354
    i32 10, label %354
    i32 13, label %354
  ]

354:                                              ; preds = %349, %349, %349, %349
  %355 = add nsw i64 %351, 1
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* @pos, align 4, !tbaa !4
  %357 = icmp eq i32 %356, %2
  br i1 %357, label %358, label %349, !llvm.loop !8

358:                                              ; preds = %349, %354, %344
  %359 = phi i32 [ %345, %344 ], [ %350, %349 ], [ %2, %354 ]
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %1, i64 %360
  %362 = load i32, i32* %361, align 4, !tbaa !4
  %363 = icmp eq i32 %362, 44
  br i1 %363, label %364, label %465

364:                                              ; preds = %358, %459
  %365 = phi i32 [ %460, %459 ], [ %359, %358 ]
  %366 = add i32 %365, 1
  store i32 %366, i32* @pos, align 4, !tbaa !4
  %367 = icmp slt i32 %366, %2
  br i1 %367, label %368, label %379

368:                                              ; preds = %364
  %369 = sext i32 %366 to i64
  br label %370

370:                                              ; preds = %368, %375
  %371 = phi i32 [ %366, %368 ], [ %377, %375 ]
  %372 = phi i64 [ %369, %368 ], [ %376, %375 ]
  %373 = getelementptr inbounds i32, i32* %1, i64 %372
  %374 = load i32, i32* %373, align 4, !tbaa !4
  switch i32 %374, label %379 [
    i32 32, label %375
    i32 9, label %375
    i32 10, label %375
    i32 13, label %375
  ]

375:                                              ; preds = %370, %370, %370, %370
  %376 = add nsw i64 %372, 1
  %377 = trunc i64 %376 to i32
  store i32 %377, i32* @pos, align 4, !tbaa !4
  %378 = icmp eq i32 %377, %2
  br i1 %378, label %578, label %370, !llvm.loop !8

379:                                              ; preds = %370, %364
  %380 = phi i32 [ %366, %364 ], [ %371, %370 ]
  %381 = icmp slt i32 %380, %2
  br i1 %381, label %382, label %578

382:                                              ; preds = %379
  %383 = sext i32 %380 to i64
  br label %384

384:                                              ; preds = %382, %389
  %385 = phi i32 [ %380, %382 ], [ %391, %389 ]
  %386 = phi i64 [ %383, %382 ], [ %390, %389 ]
  %387 = getelementptr inbounds i32, i32* %1, i64 %386
  %388 = load i32, i32* %387, align 4, !tbaa !4
  switch i32 %388, label %393 [
    i32 32, label %389
    i32 9, label %389
    i32 10, label %389
    i32 13, label %389
  ]

389:                                              ; preds = %384, %384, %384, %384
  %390 = add nsw i64 %386, 1
  %391 = trunc i64 %390 to i32
  store i32 %391, i32* @pos, align 4, !tbaa !4
  %392 = icmp eq i32 %391, %2
  br i1 %392, label %393, label %384, !llvm.loop !8

393:                                              ; preds = %389, %384
  %394 = phi i32 [ %2, %389 ], [ %385, %384 ]
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* @pos, align 4, !tbaa !4
  %396 = icmp slt i32 %395, %2
  br i1 %396, label %397, label %578

397:                                              ; preds = %393, %403
  %398 = phi i32 [ %405, %403 ], [ %395, %393 ]
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %1, i64 %399
  %401 = load i32, i32* %400, align 4, !tbaa !4
  switch i32 %401, label %402 [
    i32 34, label %407
    i32 92, label %403
  ]

402:                                              ; preds = %397
  br label %403

403:                                              ; preds = %397, %402
  %404 = phi i32 [ 1, %402 ], [ 2, %397 ]
  %405 = add nsw i32 %398, %404
  store i32 %405, i32* @pos, align 4, !tbaa !4
  %406 = icmp slt i32 %405, %2
  br i1 %406, label %397, label %578, !llvm.loop !13

407:                                              ; preds = %397
  %408 = add nsw i32 %398, 1
  store i32 %408, i32* @pos, align 4, !tbaa !4
  %409 = icmp slt i32 %408, %2
  br i1 %409, label %410, label %421

410:                                              ; preds = %407
  %411 = sext i32 %408 to i64
  br label %412

412:                                              ; preds = %410, %417
  %413 = phi i32 [ %408, %410 ], [ %419, %417 ]
  %414 = phi i64 [ %411, %410 ], [ %418, %417 ]
  %415 = getelementptr inbounds i32, i32* %1, i64 %414
  %416 = load i32, i32* %415, align 4, !tbaa !4
  switch i32 %416, label %421 [
    i32 32, label %417
    i32 9, label %417
    i32 10, label %417
    i32 13, label %417
  ]

417:                                              ; preds = %412, %412, %412, %412
  %418 = add nsw i64 %414, 1
  %419 = trunc i64 %418 to i32
  store i32 %419, i32* @pos, align 4, !tbaa !4
  %420 = icmp eq i32 %419, %2
  br i1 %420, label %578, label %412, !llvm.loop !8

421:                                              ; preds = %412, %407
  %422 = phi i32 [ %408, %407 ], [ %413, %412 ]
  %423 = icmp slt i32 %422, %2
  br i1 %423, label %424, label %578

424:                                              ; preds = %421
  %425 = sext i32 %422 to i64
  %426 = getelementptr inbounds i32, i32* %1, i64 %425
  %427 = load i32, i32* %426, align 4, !tbaa !4
  %428 = icmp eq i32 %427, 58
  br i1 %428, label %429, label %578

429:                                              ; preds = %424
  %430 = add nsw i32 %422, 1
  store i32 %430, i32* @pos, align 4, !tbaa !4
  %431 = icmp slt i32 %430, %2
  br i1 %431, label %432, label %442

432:                                              ; preds = %429
  %433 = add nsw i64 %425, 1
  br label %434

434:                                              ; preds = %432, %438
  %435 = phi i64 [ %433, %432 ], [ %439, %438 ]
  %436 = getelementptr inbounds i32, i32* %1, i64 %435
  %437 = load i32, i32* %436, align 4, !tbaa !4
  switch i32 %437, label %442 [
    i32 32, label %438
    i32 9, label %438
    i32 10, label %438
    i32 13, label %438
  ]

438:                                              ; preds = %434, %434, %434, %434
  %439 = add nsw i64 %435, 1
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* @pos, align 4, !tbaa !4
  %441 = icmp eq i32 %440, %2
  br i1 %441, label %442, label %434, !llvm.loop !8

442:                                              ; preds = %434, %438, %429
  %443 = tail call noundef i32 @_Z11detect_itemiPii(i32 noundef 0, i32* noundef %1, i32 noundef %2), !range !14
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %578, label %445

445:                                              ; preds = %442
  %446 = load i32, i32* @pos, align 4, !tbaa !4
  %447 = icmp slt i32 %446, %2
  br i1 %447, label %448, label %459

448:                                              ; preds = %445
  %449 = sext i32 %446 to i64
  br label %450

450:                                              ; preds = %448, %455
  %451 = phi i32 [ %446, %448 ], [ %457, %455 ]
  %452 = phi i64 [ %449, %448 ], [ %456, %455 ]
  %453 = getelementptr inbounds i32, i32* %1, i64 %452
  %454 = load i32, i32* %453, align 4, !tbaa !4
  switch i32 %454, label %459 [
    i32 32, label %455
    i32 9, label %455
    i32 10, label %455
    i32 13, label %455
  ]

455:                                              ; preds = %450, %450, %450, %450
  %456 = add nsw i64 %452, 1
  %457 = trunc i64 %456 to i32
  store i32 %457, i32* @pos, align 4, !tbaa !4
  %458 = icmp eq i32 %457, %2
  br i1 %458, label %459, label %450, !llvm.loop !8

459:                                              ; preds = %450, %455, %445
  %460 = phi i32 [ %446, %445 ], [ %451, %450 ], [ %2, %455 ]
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %1, i64 %461
  %463 = load i32, i32* %462, align 4, !tbaa !4
  %464 = icmp eq i32 %463, 44
  br i1 %464, label %364, label %465, !llvm.loop !16

465:                                              ; preds = %459, %358
  %466 = phi i32 [ %359, %358 ], [ %460, %459 ]
  %467 = icmp slt i32 %466, %2
  br i1 %467, label %468, label %479

468:                                              ; preds = %465
  %469 = sext i32 %466 to i64
  br label %470

470:                                              ; preds = %468, %475
  %471 = phi i32 [ %466, %468 ], [ %477, %475 ]
  %472 = phi i64 [ %469, %468 ], [ %476, %475 ]
  %473 = getelementptr inbounds i32, i32* %1, i64 %472
  %474 = load i32, i32* %473, align 4, !tbaa !4
  switch i32 %474, label %479 [
    i32 32, label %475
    i32 9, label %475
    i32 10, label %475
    i32 13, label %475
  ]

475:                                              ; preds = %470, %470, %470, %470
  %476 = add nsw i64 %472, 1
  %477 = trunc i64 %476 to i32
  store i32 %477, i32* @pos, align 4, !tbaa !4
  %478 = icmp eq i32 %477, %2
  br i1 %478, label %578, label %470, !llvm.loop !8

479:                                              ; preds = %470, %465
  %480 = phi i32 [ %466, %465 ], [ %471, %470 ]
  %481 = icmp slt i32 %480, %2
  br i1 %481, label %482, label %578

482:                                              ; preds = %479
  %483 = sext i32 %480 to i64
  %484 = getelementptr inbounds i32, i32* %1, i64 %483
  %485 = load i32, i32* %484, align 4, !tbaa !4
  %486 = icmp eq i32 %485, 125
  br i1 %486, label %487, label %578

487:                                              ; preds = %482
  %488 = add nsw i32 %480, 1
  br label %576

489:                                              ; preds = %23
  %490 = add nsw i32 %24, 3
  %491 = icmp slt i32 %490, %2
  br i1 %491, label %492, label %578

492:                                              ; preds = %489
  %493 = sext i32 %24 to i64
  %494 = getelementptr inbounds i32, i32* %1, i64 %493
  %495 = load i32, i32* %494, align 4, !tbaa !4
  %496 = icmp eq i32 %495, 116
  br i1 %496, label %497, label %578

497:                                              ; preds = %492
  %498 = add nsw i32 %24, 1
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %1, i64 %499
  %501 = load i32, i32* %500, align 4, !tbaa !4
  %502 = icmp eq i32 %501, 114
  br i1 %502, label %503, label %578

503:                                              ; preds = %497
  %504 = add nsw i32 %24, 2
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %1, i64 %505
  %507 = load i32, i32* %506, align 4, !tbaa !4
  %508 = icmp eq i32 %507, 117
  br i1 %508, label %509, label %578

509:                                              ; preds = %503
  %510 = sext i32 %490 to i64
  %511 = getelementptr inbounds i32, i32* %1, i64 %510
  %512 = load i32, i32* %511, align 4, !tbaa !4
  %513 = icmp eq i32 %512, 101
  br i1 %513, label %514, label %578

514:                                              ; preds = %509
  %515 = add nsw i32 %24, 4
  br label %576

516:                                              ; preds = %23
  %517 = add nsw i32 %24, 4
  %518 = icmp slt i32 %517, %2
  br i1 %518, label %519, label %578

519:                                              ; preds = %516
  %520 = sext i32 %24 to i64
  %521 = getelementptr inbounds i32, i32* %1, i64 %520
  %522 = load i32, i32* %521, align 4, !tbaa !4
  %523 = icmp eq i32 %522, 102
  br i1 %523, label %524, label %578

524:                                              ; preds = %519
  %525 = add nsw i32 %24, 1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %1, i64 %526
  %528 = load i32, i32* %527, align 4, !tbaa !4
  %529 = icmp eq i32 %528, 97
  br i1 %529, label %530, label %578

530:                                              ; preds = %524
  %531 = add nsw i32 %24, 2
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %1, i64 %532
  %534 = load i32, i32* %533, align 4, !tbaa !4
  %535 = icmp eq i32 %534, 108
  br i1 %535, label %536, label %578

536:                                              ; preds = %530
  %537 = add nsw i32 %24, 3
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %1, i64 %538
  %540 = load i32, i32* %539, align 4, !tbaa !4
  %541 = icmp eq i32 %540, 115
  br i1 %541, label %542, label %578

542:                                              ; preds = %536
  %543 = sext i32 %517 to i64
  %544 = getelementptr inbounds i32, i32* %1, i64 %543
  %545 = load i32, i32* %544, align 4, !tbaa !4
  %546 = icmp eq i32 %545, 101
  br i1 %546, label %547, label %578

547:                                              ; preds = %542
  %548 = add nsw i32 %24, 5
  br label %576

549:                                              ; preds = %23
  %550 = add nsw i32 %24, 3
  %551 = icmp slt i32 %550, %2
  br i1 %551, label %552, label %578

552:                                              ; preds = %549
  %553 = sext i32 %24 to i64
  %554 = getelementptr inbounds i32, i32* %1, i64 %553
  %555 = load i32, i32* %554, align 4, !tbaa !4
  %556 = icmp eq i32 %555, 110
  br i1 %556, label %557, label %578

557:                                              ; preds = %552
  %558 = add nsw i32 %24, 1
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i32, i32* %1, i64 %559
  %561 = load i32, i32* %560, align 4, !tbaa !4
  %562 = icmp eq i32 %561, 117
  br i1 %562, label %563, label %578

563:                                              ; preds = %557
  %564 = add nsw i32 %24, 2
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32, i32* %1, i64 %565
  %567 = load i32, i32* %566, align 4, !tbaa !4
  %568 = icmp eq i32 %567, 108
  br i1 %568, label %569, label %578

569:                                              ; preds = %563
  %570 = sext i32 %550 to i64
  %571 = getelementptr inbounds i32, i32* %1, i64 %570
  %572 = load i32, i32* %571, align 4, !tbaa !4
  %573 = icmp eq i32 %572, 108
  br i1 %573, label %574, label %578

574:                                              ; preds = %569
  %575 = add nsw i32 %24, 4
  br label %576

576:                                              ; preds = %171, %279, %574, %547, %514, %255, %487, %147
  %577 = phi i32 [ %148, %147 ], [ %488, %487 ], [ %256, %255 ], [ %515, %514 ], [ %548, %547 ], [ %575, %574 ], [ %280, %279 ], [ %172, %171 ]
  store i32 %577, i32* @pos, align 4, !tbaa !4
  br label %578

578:                                              ; preds = %30, %37, %23, %267, %302, %316, %379, %442, %424, %421, %393, %375, %403, %417, %475, %210, %243, %143, %59, %124, %130, %576, %3, %292, %134, %119, %569, %563, %557, %552, %549, %542, %536, %530, %524, %519, %516, %509, %503, %497, %492, %489, %271, %91, %94, %482, %479, %341, %323, %320, %250, %247, %173, %50, %47
  %579 = phi i32 [ 0, %47 ], [ 0, %50 ], [ 0, %173 ], [ 0, %247 ], [ 0, %250 ], [ 0, %320 ], [ 0, %323 ], [ 0, %341 ], [ 0, %479 ], [ 0, %482 ], [ 1, %94 ], [ 1, %91 ], [ 0, %271 ], [ 0, %489 ], [ 0, %492 ], [ 0, %497 ], [ 0, %503 ], [ 0, %509 ], [ 0, %516 ], [ 0, %519 ], [ 0, %524 ], [ 0, %530 ], [ 0, %536 ], [ 0, %542 ], [ 0, %549 ], [ 0, %552 ], [ 0, %557 ], [ 0, %563 ], [ 0, %569 ], [ 1, %119 ], [ 0, %134 ], [ 0, %292 ], [ 0, %3 ], [ 1, %576 ], [ 1, %130 ], [ 1, %124 ], [ 1, %59 ], [ 0, %143 ], [ 0, %243 ], [ 0, %210 ], [ 0, %475 ], [ 0, %417 ], [ 0, %403 ], [ 0, %375 ], [ 0, %393 ], [ 0, %421 ], [ 0, %424 ], [ 0, %442 ], [ 0, %379 ], [ 0, %316 ], [ 0, %302 ], [ 0, %267 ], [ 0, %23 ], [ 0, %37 ], [ 0, %30 ]
  ret i32 %579
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_Z5getchv()
  %2 = icmp eq i32 %1, 35
  br i1 %2, label %12, label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %7, %3 ], [ 0, %0 ]
  %5 = phi i32 [ %8, %3 ], [ %1, %0 ]
  %6 = getelementptr inbounds [50000000 x i32], [50000000 x i32]* @buffer, i64 0, i64 %4
  store i32 %5, i32* %6, align 4, !tbaa !4
  %7 = add nuw i64 %4, 1
  %8 = tail call noundef i32 @_Z5getchv()
  %9 = icmp eq i32 %8, 35
  br i1 %9, label %10, label %3, !llvm.loop !17

10:                                               ; preds = %3
  %11 = trunc i64 %7 to i32
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %14 = load i32, i32* @pos, align 4, !tbaa !4
  %15 = icmp slt i32 %14, %13
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %22
  %19 = phi i64 [ %17, %16 ], [ %23, %22 ]
  %20 = getelementptr inbounds [50000000 x i32], [50000000 x i32]* @buffer, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !4
  switch i32 %21, label %26 [
    i32 32, label %22
    i32 9, label %22
    i32 10, label %22
    i32 13, label %22
  ]

22:                                               ; preds = %18, %18, %18, %18
  %23 = add nsw i64 %19, 1
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* @pos, align 4, !tbaa !4
  %25 = icmp eq i32 %13, %24
  br i1 %25, label %26, label %18, !llvm.loop !8

26:                                               ; preds = %18, %22, %12
  %27 = tail call noundef i32 @_Z11detect_itemiPii(i32 noundef 0, i32* noundef getelementptr inbounds ([50000000 x i32], [50000000 x i32]* @buffer, i64 0, i64 0), i32 noundef %13), !range !14
  %28 = load i32, i32* @pos, align 4, !tbaa !4
  %29 = icmp slt i32 %28, %13
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = sext i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %36
  %33 = phi i64 [ %31, %30 ], [ %37, %36 ]
  %34 = getelementptr inbounds [50000000 x i32], [50000000 x i32]* @buffer, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !4
  switch i32 %35, label %40 [
    i32 32, label %36
    i32 9, label %36
    i32 10, label %36
    i32 13, label %36
  ]

36:                                               ; preds = %32, %32, %32, %32
  %37 = add nsw i64 %33, 1
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @pos, align 4, !tbaa !4
  %39 = icmp eq i32 %13, %38
  br i1 %39, label %40, label %32, !llvm.loop !8

40:                                               ; preds = %32, %36, %26
  %41 = icmp eq i32 %27, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  tail call void @_Z5putchi(i32 noundef 110)
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 116)
  tail call void @_Z5putchi(i32 noundef 32)
  br label %43

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  tail call void @_Z5putchi(i32 noundef 111)
  tail call void @_Z5putchi(i32 noundef 107)
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 %44
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #4

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = !{i32 0, i32 2}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
