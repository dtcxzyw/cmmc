; ModuleID = 'tests//SysY2022/hidden_functional/19_search.sy'
source_filename = "tests//SysY2022/hidden_functional/19_search.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global [30 x [30 x i32]] zeroinitializer, align 16
@step = dso_local local_unnamed_addr global [4 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 -1]], align 16
@w = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@x_0 = dso_local local_unnamed_addr global i32 0, align 4
@y_0 = dso_local local_unnamed_addr global i32 0, align 4
@x_1 = dso_local local_unnamed_addr global i32 0, align 4
@y_1 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6searchiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 10
  br i1 %4, label %251, label %5

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %6, i64 %7
  %9 = add nsw i32 %2, 1
  %10 = load i32, i32* %8, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 1
  %12 = load i32, i32* @x_1, align 4, !tbaa !5
  %13 = load i32, i32* @y_1, align 4
  br i1 %11, label %36, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 0, i64 0), align 16
  %16 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 0, i64 1), align 4
  %17 = icmp eq i32 %12, %0
  %18 = icmp eq i32 %13, %1
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %36, label %24

20:                                               ; preds = %24
  %21 = icmp eq i32 %28, %12
  %22 = icmp eq i32 %29, %13
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %36, label %24, !llvm.loop !9

24:                                               ; preds = %14, %20
  %25 = phi i32 [ %30, %20 ], [ 0, %14 ]
  %26 = phi i32 [ %28, %20 ], [ %0, %14 ]
  %27 = phi i32 [ %29, %20 ], [ %1, %14 ]
  %28 = add nsw i32 %15, %26
  %29 = add nsw i32 %16, %27
  %30 = add nuw nsw i32 %25, 1
  %31 = sext i32 %28 to i64
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %31, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %20, !llvm.loop !9

36:                                               ; preds = %20, %24, %14, %5
  %37 = phi i32 [ 0, %5 ], [ 0, %14 ], [ %30, %24 ], [ %30, %20 ]
  %38 = phi i32 [ %0, %5 ], [ %12, %14 ], [ %28, %24 ], [ %12, %20 ]
  %39 = phi i32 [ %1, %5 ], [ %13, %14 ], [ %29, %24 ], [ %13, %20 ]
  %40 = phi i32* [ %8, %5 ], [ %8, %14 ], [ %33, %24 ], [ %33, %20 ]
  %41 = icmp eq i32 %38, %12
  %42 = icmp eq i32 %39, %13
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %251, label %44

44:                                               ; preds = %36
  %45 = icmp ult i32 %37, 2
  %46 = icmp eq i32 %38, 0
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %68, label %48, !llvm.loop !11

48:                                               ; preds = %44
  %49 = load i32, i32* @h, align 4, !tbaa !5
  %50 = add nsw i32 %49, 1
  %51 = icmp eq i32 %38, %50
  %52 = icmp eq i32 %39, 0
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %68, label %54, !llvm.loop !11

54:                                               ; preds = %48
  %55 = load i32, i32* @w, align 4, !tbaa !5
  %56 = add nsw i32 %55, 1
  %57 = icmp eq i32 %39, %56
  br i1 %57, label %68, label %58, !llvm.loop !11

58:                                               ; preds = %54
  store i32 0, i32* %40, align 4, !tbaa !5
  %59 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 0, i64 0), align 16, !tbaa !5
  %60 = sub nsw i32 %38, %59
  %61 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 0, i64 1), align 4, !tbaa !5
  %62 = sub nsw i32 %39, %61
  %63 = tail call noundef i32 @_Z6searchiii(i32 noundef %60, i32 noundef %62, i32 noundef %9)
  %64 = icmp slt i32 %63, 1073741823
  %65 = select i1 %64, i32 %63, i32 1073741823
  %66 = add nsw i32 %65, 1
  store i32 1, i32* %40, align 4, !tbaa !5
  %67 = load i32, i32* %8, align 4, !tbaa !5
  br label %68

68:                                               ; preds = %48, %54, %44, %58
  %69 = phi i32 [ %67, %58 ], [ %10, %44 ], [ %10, %54 ], [ %10, %48 ]
  %70 = phi i32 [ %66, %58 ], [ 1073741824, %44 ], [ 1073741824, %54 ], [ 1073741824, %48 ]
  %71 = icmp eq i32 %69, 1
  %72 = load i32, i32* @x_1, align 4, !tbaa !5
  %73 = load i32, i32* @y_1, align 4
  br i1 %71, label %96, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 1, i64 0), align 8
  %76 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 1, i64 1), align 4
  %77 = icmp eq i32 %72, %0
  %78 = icmp eq i32 %73, %1
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %96, label %84

80:                                               ; preds = %84
  %81 = icmp eq i32 %88, %72
  %82 = icmp eq i32 %89, %73
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %96, label %84, !llvm.loop !9

84:                                               ; preds = %74, %80
  %85 = phi i32 [ %90, %80 ], [ 0, %74 ]
  %86 = phi i32 [ %88, %80 ], [ %0, %74 ]
  %87 = phi i32 [ %89, %80 ], [ %1, %74 ]
  %88 = add nsw i32 %75, %86
  %89 = add nsw i32 %76, %87
  %90 = add nuw nsw i32 %85, 1
  %91 = sext i32 %88 to i64
  %92 = sext i32 %89 to i64
  %93 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %91, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %80, !llvm.loop !9

96:                                               ; preds = %84, %80, %74, %68
  %97 = phi i32 [ 0, %68 ], [ 0, %74 ], [ %90, %80 ], [ %90, %84 ]
  %98 = phi i32 [ %0, %68 ], [ %72, %74 ], [ %72, %80 ], [ %88, %84 ]
  %99 = phi i32 [ %1, %68 ], [ %73, %74 ], [ %73, %80 ], [ %89, %84 ]
  %100 = phi i32* [ %8, %68 ], [ %8, %74 ], [ %93, %80 ], [ %93, %84 ]
  %101 = icmp eq i32 %98, %72
  %102 = icmp eq i32 %99, %73
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %251, label %104

104:                                              ; preds = %96
  %105 = icmp ult i32 %97, 2
  %106 = icmp eq i32 %98, 0
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %128, label %108, !llvm.loop !11

108:                                              ; preds = %104
  %109 = load i32, i32* @h, align 4, !tbaa !5
  %110 = add nsw i32 %109, 1
  %111 = icmp eq i32 %98, %110
  %112 = icmp eq i32 %99, 0
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %128, label %114, !llvm.loop !11

114:                                              ; preds = %108
  %115 = load i32, i32* @w, align 4, !tbaa !5
  %116 = add nsw i32 %115, 1
  %117 = icmp eq i32 %99, %116
  br i1 %117, label %128, label %118, !llvm.loop !11

118:                                              ; preds = %114
  store i32 0, i32* %100, align 4, !tbaa !5
  %119 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 1, i64 0), align 8, !tbaa !5
  %120 = sub nsw i32 %98, %119
  %121 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 1, i64 1), align 4, !tbaa !5
  %122 = sub nsw i32 %99, %121
  %123 = tail call noundef i32 @_Z6searchiii(i32 noundef %120, i32 noundef %122, i32 noundef %9)
  %124 = add nsw i32 %123, 1
  %125 = icmp slt i32 %124, %70
  %126 = select i1 %125, i32 %124, i32 %70
  store i32 1, i32* %100, align 4, !tbaa !5
  %127 = load i32, i32* %8, align 4, !tbaa !5
  br label %128

128:                                              ; preds = %118, %114, %108, %104
  %129 = phi i32 [ %127, %118 ], [ %69, %104 ], [ %69, %114 ], [ %69, %108 ]
  %130 = phi i32 [ %126, %118 ], [ %70, %104 ], [ %70, %114 ], [ %70, %108 ]
  %131 = icmp eq i32 %129, 1
  %132 = load i32, i32* @x_1, align 4, !tbaa !5
  %133 = load i32, i32* @y_1, align 4
  br i1 %131, label %156, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 2, i64 0), align 16
  %136 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 2, i64 1), align 4
  %137 = icmp eq i32 %132, %0
  %138 = icmp eq i32 %133, %1
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %156, label %144

140:                                              ; preds = %144
  %141 = icmp eq i32 %148, %132
  %142 = icmp eq i32 %149, %133
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %156, label %144, !llvm.loop !9

144:                                              ; preds = %134, %140
  %145 = phi i32 [ %150, %140 ], [ 0, %134 ]
  %146 = phi i32 [ %148, %140 ], [ %0, %134 ]
  %147 = phi i32 [ %149, %140 ], [ %1, %134 ]
  %148 = add nsw i32 %135, %146
  %149 = add nsw i32 %136, %147
  %150 = add nuw nsw i32 %145, 1
  %151 = sext i32 %148 to i64
  %152 = sext i32 %149 to i64
  %153 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %151, i64 %152
  %154 = load i32, i32* %153, align 4, !tbaa !5
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %140, !llvm.loop !9

156:                                              ; preds = %144, %140, %134, %128
  %157 = phi i32 [ 0, %128 ], [ 0, %134 ], [ %150, %140 ], [ %150, %144 ]
  %158 = phi i32 [ %0, %128 ], [ %132, %134 ], [ %132, %140 ], [ %148, %144 ]
  %159 = phi i32 [ %1, %128 ], [ %133, %134 ], [ %133, %140 ], [ %149, %144 ]
  %160 = phi i32* [ %8, %128 ], [ %8, %134 ], [ %153, %140 ], [ %153, %144 ]
  %161 = icmp eq i32 %158, %132
  %162 = icmp eq i32 %159, %133
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %251, label %164

164:                                              ; preds = %156
  %165 = icmp ult i32 %157, 2
  %166 = icmp eq i32 %158, 0
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %188, label %168, !llvm.loop !11

168:                                              ; preds = %164
  %169 = load i32, i32* @h, align 4, !tbaa !5
  %170 = add nsw i32 %169, 1
  %171 = icmp eq i32 %158, %170
  %172 = icmp eq i32 %159, 0
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %188, label %174, !llvm.loop !11

174:                                              ; preds = %168
  %175 = load i32, i32* @w, align 4, !tbaa !5
  %176 = add nsw i32 %175, 1
  %177 = icmp eq i32 %159, %176
  br i1 %177, label %188, label %178, !llvm.loop !11

178:                                              ; preds = %174
  store i32 0, i32* %160, align 4, !tbaa !5
  %179 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 2, i64 0), align 16, !tbaa !5
  %180 = sub nsw i32 %158, %179
  %181 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 2, i64 1), align 4, !tbaa !5
  %182 = sub nsw i32 %159, %181
  %183 = tail call noundef i32 @_Z6searchiii(i32 noundef %180, i32 noundef %182, i32 noundef %9)
  %184 = add nsw i32 %183, 1
  %185 = icmp slt i32 %184, %130
  %186 = select i1 %185, i32 %184, i32 %130
  store i32 1, i32* %160, align 4, !tbaa !5
  %187 = load i32, i32* %8, align 4, !tbaa !5
  br label %188

188:                                              ; preds = %178, %174, %168, %164
  %189 = phi i32 [ %187, %178 ], [ %129, %164 ], [ %129, %174 ], [ %129, %168 ]
  %190 = phi i32 [ %186, %178 ], [ %130, %164 ], [ %130, %174 ], [ %130, %168 ]
  %191 = icmp eq i32 %189, 1
  %192 = load i32, i32* @x_1, align 4, !tbaa !5
  %193 = load i32, i32* @y_1, align 4
  br i1 %191, label %216, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 3, i64 0), align 8
  %196 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 3, i64 1), align 4
  %197 = icmp eq i32 %192, %0
  %198 = icmp eq i32 %193, %1
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %216, label %204

200:                                              ; preds = %204
  %201 = icmp eq i32 %208, %192
  %202 = icmp eq i32 %209, %193
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %216, label %204, !llvm.loop !9

204:                                              ; preds = %194, %200
  %205 = phi i32 [ %210, %200 ], [ 0, %194 ]
  %206 = phi i32 [ %208, %200 ], [ %0, %194 ]
  %207 = phi i32 [ %209, %200 ], [ %1, %194 ]
  %208 = add nsw i32 %195, %206
  %209 = add nsw i32 %196, %207
  %210 = add nuw nsw i32 %205, 1
  %211 = sext i32 %208 to i64
  %212 = sext i32 %209 to i64
  %213 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %211, i64 %212
  %214 = load i32, i32* %213, align 4, !tbaa !5
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %200, !llvm.loop !9

216:                                              ; preds = %204, %200, %194, %188
  %217 = phi i32 [ 0, %188 ], [ 0, %194 ], [ %210, %200 ], [ %210, %204 ]
  %218 = phi i32 [ %0, %188 ], [ %192, %194 ], [ %192, %200 ], [ %208, %204 ]
  %219 = phi i32 [ %1, %188 ], [ %193, %194 ], [ %193, %200 ], [ %209, %204 ]
  %220 = phi i32* [ %8, %188 ], [ %8, %194 ], [ %213, %200 ], [ %213, %204 ]
  %221 = icmp eq i32 %218, %192
  %222 = icmp eq i32 %219, %193
  %223 = select i1 %221, i1 %222, i1 false
  br i1 %223, label %251, label %224

224:                                              ; preds = %216
  %225 = icmp ult i32 %217, 2
  %226 = icmp eq i32 %218, 0
  %227 = select i1 %225, i1 true, i1 %226
  br i1 %227, label %247, label %228, !llvm.loop !11

228:                                              ; preds = %224
  %229 = load i32, i32* @h, align 4, !tbaa !5
  %230 = add nsw i32 %229, 1
  %231 = icmp eq i32 %218, %230
  %232 = icmp eq i32 %219, 0
  %233 = select i1 %231, i1 true, i1 %232
  br i1 %233, label %247, label %234, !llvm.loop !11

234:                                              ; preds = %228
  %235 = load i32, i32* @w, align 4, !tbaa !5
  %236 = add nsw i32 %235, 1
  %237 = icmp eq i32 %219, %236
  br i1 %237, label %247, label %238, !llvm.loop !11

238:                                              ; preds = %234
  store i32 0, i32* %220, align 4, !tbaa !5
  %239 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 3, i64 0), align 8, !tbaa !5
  %240 = sub nsw i32 %218, %239
  %241 = load i32, i32* getelementptr inbounds ([4 x [2 x i32]], [4 x [2 x i32]]* @step, i64 0, i64 3, i64 1), align 4, !tbaa !5
  %242 = sub nsw i32 %219, %241
  %243 = tail call noundef i32 @_Z6searchiii(i32 noundef %240, i32 noundef %242, i32 noundef %9)
  %244 = add nsw i32 %243, 1
  %245 = icmp slt i32 %244, %190
  %246 = select i1 %245, i32 %244, i32 %190
  store i32 1, i32* %220, align 4, !tbaa !5
  br label %247

247:                                              ; preds = %238, %234, %228, %224
  %248 = phi i32 [ %246, %238 ], [ %190, %224 ], [ %190, %234 ], [ %190, %228 ]
  %249 = icmp sgt i32 %248, 10
  %250 = select i1 %249, i32 1073741824, i32 %248
  br label %251

251:                                              ; preds = %36, %96, %156, %216, %247, %3
  %252 = phi i32 [ 1073741824, %3 ], [ %250, %247 ], [ 1, %216 ], [ 1, %156 ], [ 1, %96 ], [ 1, %36 ]
  ret i32 %252
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @w, align 4, !tbaa !5
  %2 = tail call noundef i32 @_Z6getintv()
  store i32 %2, i32* @h, align 4, !tbaa !5
  %3 = load i32, i32* @w, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %72, label %5

5:                                                ; preds = %0, %62
  %6 = phi i32 [ %70, %62 ], [ %3, %0 ]
  %7 = phi i32 [ %69, %62 ], [ %2, %0 ]
  br label %12

8:                                                ; preds = %12
  %9 = icmp slt i32 %7, 1
  %10 = icmp slt i32 %6, 1
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %62, label %32

12:                                               ; preds = %5, %12
  %13 = phi i64 [ 0, %5 ], [ %30, %12 ]
  %14 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 0
  %15 = bitcast i32* %14 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %15, align 8, !tbaa !5
  %16 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 4
  %17 = bitcast i32* %16 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %17, align 8, !tbaa !5
  %18 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 8
  %19 = bitcast i32* %18 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %19, align 8, !tbaa !5
  %20 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 12
  %21 = bitcast i32* %20 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %21, align 8, !tbaa !5
  %22 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 16
  %23 = bitcast i32* %22 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %23, align 8, !tbaa !5
  %24 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 20
  %25 = bitcast i32* %24 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %25, align 8, !tbaa !5
  %26 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 24
  %27 = bitcast i32* %26 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %27, align 8, !tbaa !5
  %28 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 28
  store i32 1, i32* %28, align 8, !tbaa !5
  %29 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %13, i64 29
  store i32 1, i32* %29, align 4, !tbaa !5
  %30 = add nuw nsw i64 %13, 1
  %31 = icmp eq i64 %30, 30
  br i1 %31, label %8, label %12, !llvm.loop !12

32:                                               ; preds = %8, %56
  %33 = phi i32 [ %57, %56 ], [ %7, %8 ]
  %34 = phi i32 [ %58, %56 ], [ %6, %8 ]
  %35 = phi i64 [ %59, %56 ], [ 1, %8 ]
  %36 = icmp slt i32 %34, 1
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = trunc i64 %35 to i32
  %39 = trunc i64 %35 to i32
  br label %40

40:                                               ; preds = %37, %49
  %41 = phi i64 [ 1, %37 ], [ %50, %49 ]
  %42 = tail call noundef i32 @_Z6getintv()
  %43 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* @a, i64 0, i64 %35, i64 %41
  store i32 %42, i32* %43, align 4, !tbaa !5
  switch i32 %42, label %49 [
    i32 2, label %44
    i32 3, label %45
  ]

44:                                               ; preds = %40
  store i32 %39, i32* @x_0, align 4, !tbaa !5
  br label %46

45:                                               ; preds = %40
  store i32 %38, i32* @x_1, align 4, !tbaa !5
  br label %46

46:                                               ; preds = %44, %45
  %47 = phi i32* [ @y_1, %45 ], [ @y_0, %44 ]
  %48 = trunc i64 %41 to i32
  store i32 %48, i32* %47, align 4, !tbaa !5
  br label %49

49:                                               ; preds = %46, %40
  %50 = add nuw nsw i64 %41, 1
  %51 = load i32, i32* @w, align 4, !tbaa !5
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %41, %52
  br i1 %53, label %40, label %54, !llvm.loop !13

54:                                               ; preds = %49
  %55 = load i32, i32* @h, align 4, !tbaa !5
  br label %56

56:                                               ; preds = %54, %32
  %57 = phi i32 [ %55, %54 ], [ %33, %32 ]
  %58 = phi i32 [ %51, %54 ], [ %34, %32 ]
  %59 = add nuw nsw i64 %35, 1
  %60 = sext i32 %57 to i64
  %61 = icmp slt i64 %35, %60
  br i1 %61, label %32, label %62, !llvm.loop !14

62:                                               ; preds = %56, %8
  %63 = load i32, i32* @x_0, align 4, !tbaa !5
  %64 = load i32, i32* @y_0, align 4, !tbaa !5
  %65 = tail call noundef i32 @_Z6searchiii(i32 noundef %63, i32 noundef %64, i32 noundef 1)
  %66 = icmp slt i32 %65, 11
  %67 = select i1 %66, i32 %65, i32 -1
  tail call void @_Z6putinti(i32 noundef %67)
  tail call void @_Z5putchi(i32 noundef 10)
  %68 = tail call noundef i32 @_Z6getintv()
  store i32 %68, i32* @w, align 4, !tbaa !5
  %69 = tail call noundef i32 @_Z6getintv()
  store i32 %69, i32* @h, align 4, !tbaa !5
  %70 = load i32, i32* @w, align 4, !tbaa !5
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %5, !llvm.loop !16

72:                                               ; preds = %62, %0
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !10}
