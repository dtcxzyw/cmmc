; ModuleID = 'tests//SysY2022/final_performance/matmul3.sy'
source_filename = "tests//SysY2022/final_performance/matmul3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [1000 x [1000 x i32]] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [1000 x [1000 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %4

1:                                                ; preds = %4
  %2 = add nuw nsw i64 %5, 1
  %3 = icmp eq i64 %2, 1000
  br i1 %3, label %9, label %4, !llvm.loop !5

4:                                                ; preds = %0, %1
  %5 = phi i64 [ 0, %0 ], [ %2, %1 ]
  %6 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %5, i64 0
  %7 = tail call noundef i32 @_Z8getarrayPi(i32* noundef nonnull %6)
  %8 = icmp eq i32 %7, 1000
  br i1 %8, label %1, label %253

9:                                                ; preds = %1
  tail call void @_Z15_sysy_starttimei(i32 noundef 23)
  br label %10

10:                                               ; preds = %51, %9
  %11 = phi i64 [ 0, %9 ], [ %52, %51 ]
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %49, %12 ]
  %14 = or i64 %13, 1
  %15 = or i64 %13, 2
  %16 = or i64 %13, 3
  %17 = or i64 %13, 4
  %18 = or i64 %13, 5
  %19 = or i64 %13, 6
  %20 = or i64 %13, 7
  %21 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %13, i64 %11
  %22 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %14, i64 %11
  %23 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %15, i64 %11
  %24 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %16, i64 %11
  %25 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %17, i64 %11
  %26 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %18, i64 %11
  %27 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %19, i64 %11
  %28 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %20, i64 %11
  %29 = load i32, i32* %21, align 4, !tbaa !7
  %30 = load i32, i32* %22, align 4, !tbaa !7
  %31 = load i32, i32* %23, align 4, !tbaa !7
  %32 = load i32, i32* %24, align 4, !tbaa !7
  %33 = insertelement <4 x i32> poison, i32 %29, i64 0
  %34 = insertelement <4 x i32> %33, i32 %30, i64 1
  %35 = insertelement <4 x i32> %34, i32 %31, i64 2
  %36 = insertelement <4 x i32> %35, i32 %32, i64 3
  %37 = load i32, i32* %25, align 4, !tbaa !7
  %38 = load i32, i32* %26, align 4, !tbaa !7
  %39 = load i32, i32* %27, align 4, !tbaa !7
  %40 = load i32, i32* %28, align 4, !tbaa !7
  %41 = insertelement <4 x i32> poison, i32 %37, i64 0
  %42 = insertelement <4 x i32> %41, i32 %38, i64 1
  %43 = insertelement <4 x i32> %42, i32 %39, i64 2
  %44 = insertelement <4 x i32> %43, i32 %40, i64 3
  %45 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %11, i64 %13
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> %36, <4 x i32>* %46, align 16, !tbaa !7
  %47 = getelementptr inbounds i32, i32* %45, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> %44, <4 x i32>* %48, align 16, !tbaa !7
  %49 = add nuw i64 %13, 8
  %50 = icmp eq i64 %49, 1000
  br i1 %50, label %51, label %12, !llvm.loop !11

51:                                               ; preds = %12
  %52 = add nuw nsw i64 %11, 1
  %53 = icmp eq i64 %52, 1000
  br i1 %53, label %54, label %10, !llvm.loop !13

54:                                               ; preds = %51, %111
  %55 = phi i64 [ %112, %111 ], [ 0, %51 ]
  br label %56

56:                                               ; preds = %105, %54
  %57 = phi i64 [ 0, %54 ], [ %109, %105 ]
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i64 [ 0, %56 ], [ %103, %58 ]
  %60 = phi <4 x i32> [ zeroinitializer, %56 ], [ %101, %58 ]
  %61 = phi <4 x i32> [ zeroinitializer, %56 ], [ %102, %58 ]
  %62 = or i64 %59, 1
  %63 = or i64 %59, 2
  %64 = or i64 %59, 3
  %65 = or i64 %59, 4
  %66 = or i64 %59, 5
  %67 = or i64 %59, 6
  %68 = or i64 %59, 7
  %69 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @a, i64 0, i64 %55, i64 %59
  %70 = bitcast i32* %69 to <4 x i32>*
  %71 = load <4 x i32>, <4 x i32>* %70, align 16, !tbaa !7
  %72 = getelementptr inbounds i32, i32* %69, i64 4
  %73 = bitcast i32* %72 to <4 x i32>*
  %74 = load <4 x i32>, <4 x i32>* %73, align 16, !tbaa !7
  %75 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %59, i64 %57
  %76 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %62, i64 %57
  %77 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %63, i64 %57
  %78 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %64, i64 %57
  %79 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %65, i64 %57
  %80 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %66, i64 %57
  %81 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %67, i64 %57
  %82 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @b, i64 0, i64 %68, i64 %57
  %83 = load i32, i32* %75, align 4, !tbaa !7
  %84 = load i32, i32* %76, align 4, !tbaa !7
  %85 = load i32, i32* %77, align 4, !tbaa !7
  %86 = load i32, i32* %78, align 4, !tbaa !7
  %87 = insertelement <4 x i32> poison, i32 %83, i64 0
  %88 = insertelement <4 x i32> %87, i32 %84, i64 1
  %89 = insertelement <4 x i32> %88, i32 %85, i64 2
  %90 = insertelement <4 x i32> %89, i32 %86, i64 3
  %91 = load i32, i32* %79, align 4, !tbaa !7
  %92 = load i32, i32* %80, align 4, !tbaa !7
  %93 = load i32, i32* %81, align 4, !tbaa !7
  %94 = load i32, i32* %82, align 4, !tbaa !7
  %95 = insertelement <4 x i32> poison, i32 %91, i64 0
  %96 = insertelement <4 x i32> %95, i32 %92, i64 1
  %97 = insertelement <4 x i32> %96, i32 %93, i64 2
  %98 = insertelement <4 x i32> %97, i32 %94, i64 3
  %99 = mul nsw <4 x i32> %90, %71
  %100 = mul nsw <4 x i32> %98, %74
  %101 = add <4 x i32> %99, %60
  %102 = add <4 x i32> %100, %61
  %103 = add nuw i64 %59, 8
  %104 = icmp eq i64 %103, 1000
  br i1 %104, label %105, label %58, !llvm.loop !14

105:                                              ; preds = %58
  %106 = add <4 x i32> %102, %101
  %107 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %106)
  %108 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %55, i64 %57
  store i32 %107, i32* %108, align 4, !tbaa !7
  %109 = add nuw nsw i64 %57, 1
  %110 = icmp eq i64 %109, 1000
  br i1 %110, label %111, label %56, !llvm.loop !15

111:                                              ; preds = %105
  %112 = add nuw nsw i64 %55, 1
  %113 = icmp eq i64 %112, 1000
  br i1 %113, label %114, label %54, !llvm.loop !16

114:                                              ; preds = %111, %180
  %115 = phi i64 [ %181, %180 ], [ 0, %111 ]
  br label %116

116:                                              ; preds = %132, %114
  %117 = phi i64 [ 0, %114 ], [ %143, %132 ]
  %118 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %114 ], [ %141, %132 ]
  %119 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %114 ], [ %142, %132 ]
  %120 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %115, i64 %117
  %121 = bitcast i32* %120 to <4 x i32>*
  %122 = load <4 x i32>, <4 x i32>* %121, align 16, !tbaa !7
  %123 = getelementptr inbounds i32, i32* %120, i64 4
  %124 = bitcast i32* %123 to <4 x i32>*
  %125 = load <4 x i32>, <4 x i32>* %124, align 16, !tbaa !7
  %126 = icmp slt <4 x i32> %122, %118
  %127 = icmp slt <4 x i32> %125, %119
  %128 = select <4 x i1> %126, <4 x i32> %122, <4 x i32> %118
  %129 = select <4 x i1> %127, <4 x i32> %125, <4 x i32> %119
  %130 = or i64 %117, 8
  %131 = icmp eq i64 %130, 1000
  br i1 %131, label %144, label %132, !llvm.loop !17

132:                                              ; preds = %116
  %133 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %115, i64 %130
  %134 = bitcast i32* %133 to <4 x i32>*
  %135 = load <4 x i32>, <4 x i32>* %134, align 16, !tbaa !7
  %136 = getelementptr inbounds i32, i32* %133, i64 4
  %137 = bitcast i32* %136 to <4 x i32>*
  %138 = load <4 x i32>, <4 x i32>* %137, align 16, !tbaa !7
  %139 = icmp slt <4 x i32> %135, %128
  %140 = icmp slt <4 x i32> %138, %129
  %141 = select <4 x i1> %139, <4 x i32> %135, <4 x i32> %128
  %142 = select <4 x i1> %140, <4 x i32> %138, <4 x i32> %129
  %143 = add nuw nsw i64 %117, 16
  br label %116

144:                                              ; preds = %116
  %145 = icmp slt <4 x i32> %128, %129
  %146 = select <4 x i1> %145, <4 x i32> %128, <4 x i32> %129
  %147 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %146)
  %148 = insertelement <4 x i32> poison, i32 %147, i64 0
  %149 = shufflevector <4 x i32> %148, <4 x i32> poison, <4 x i32> zeroinitializer
  %150 = insertelement <4 x i32> poison, i32 %147, i64 0
  %151 = shufflevector <4 x i32> %150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %152

152:                                              ; preds = %152, %144
  %153 = phi i64 [ 0, %144 ], [ %178, %152 ]
  %154 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %115, i64 %153
  %155 = bitcast i32* %154 to <4 x i32>*
  store <4 x i32> %149, <4 x i32>* %155, align 16, !tbaa !7
  %156 = getelementptr inbounds i32, i32* %154, i64 4
  %157 = bitcast i32* %156 to <4 x i32>*
  store <4 x i32> %151, <4 x i32>* %157, align 16, !tbaa !7
  %158 = add nuw nsw i64 %153, 8
  %159 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %115, i64 %158
  %160 = bitcast i32* %159 to <4 x i32>*
  store <4 x i32> %149, <4 x i32>* %160, align 16, !tbaa !7
  %161 = getelementptr inbounds i32, i32* %159, i64 4
  %162 = bitcast i32* %161 to <4 x i32>*
  store <4 x i32> %151, <4 x i32>* %162, align 16, !tbaa !7
  %163 = add nuw nsw i64 %153, 16
  %164 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %115, i64 %163
  %165 = bitcast i32* %164 to <4 x i32>*
  store <4 x i32> %149, <4 x i32>* %165, align 16, !tbaa !7
  %166 = getelementptr inbounds i32, i32* %164, i64 4
  %167 = bitcast i32* %166 to <4 x i32>*
  store <4 x i32> %151, <4 x i32>* %167, align 16, !tbaa !7
  %168 = add nuw nsw i64 %153, 24
  %169 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %115, i64 %168
  %170 = bitcast i32* %169 to <4 x i32>*
  store <4 x i32> %149, <4 x i32>* %170, align 16, !tbaa !7
  %171 = getelementptr inbounds i32, i32* %169, i64 4
  %172 = bitcast i32* %171 to <4 x i32>*
  store <4 x i32> %151, <4 x i32>* %172, align 16, !tbaa !7
  %173 = add nuw nsw i64 %153, 32
  %174 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %115, i64 %173
  %175 = bitcast i32* %174 to <4 x i32>*
  store <4 x i32> %149, <4 x i32>* %175, align 16, !tbaa !7
  %176 = getelementptr inbounds i32, i32* %174, i64 4
  %177 = bitcast i32* %176 to <4 x i32>*
  store <4 x i32> %151, <4 x i32>* %177, align 16, !tbaa !7
  %178 = add nuw nsw i64 %153, 40
  %179 = icmp eq i64 %178, 1000
  br i1 %179, label %180, label %152, !llvm.loop !18

180:                                              ; preds = %152
  %181 = add nuw nsw i64 %115, 1
  %182 = icmp eq i64 %181, 1000
  br i1 %182, label %183, label %114, !llvm.loop !19

183:                                              ; preds = %180, %198
  %184 = phi i64 [ %199, %198 ], [ 0, %180 ]
  br label %185

185:                                              ; preds = %185, %183
  %186 = phi i64 [ 0, %183 ], [ %196, %185 ]
  %187 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %186, i64 %184
  %188 = load i32, i32* %187, align 4, !tbaa !7
  %189 = sub nsw i32 0, %188
  %190 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %184, i64 %186
  store i32 %189, i32* %190, align 8, !tbaa !7
  %191 = or i64 %186, 1
  %192 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %191, i64 %184
  %193 = load i32, i32* %192, align 4, !tbaa !7
  %194 = sub nsw i32 0, %193
  %195 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %184, i64 %191
  store i32 %194, i32* %195, align 4, !tbaa !7
  %196 = add nuw nsw i64 %186, 2
  %197 = icmp eq i64 %196, 1000
  br i1 %197, label %198, label %185, !llvm.loop !20

198:                                              ; preds = %185
  %199 = add nuw nsw i64 %184, 1
  %200 = icmp eq i64 %199, 1000
  br i1 %200, label %201, label %183, !llvm.loop !21

201:                                              ; preds = %198, %247
  %202 = phi i64 [ %250, %247 ], [ 0, %198 ]
  %203 = phi i32 [ %249, %247 ], [ 0, %198 ]
  %204 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %203, i64 0
  br label %205

205:                                              ; preds = %219, %201
  %206 = phi i64 [ 0, %201 ], [ %246, %219 ]
  %207 = phi <4 x i32> [ %204, %201 ], [ %244, %219 ]
  %208 = phi <4 x i32> [ zeroinitializer, %201 ], [ %245, %219 ]
  %209 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %202, i64 %206
  %210 = bitcast i32* %209 to <4 x i32>*
  %211 = load <4 x i32>, <4 x i32>* %210, align 16, !tbaa !7
  %212 = getelementptr inbounds i32, i32* %209, i64 4
  %213 = bitcast i32* %212 to <4 x i32>*
  %214 = load <4 x i32>, <4 x i32>* %213, align 16, !tbaa !7
  %215 = add <4 x i32> %211, %207
  %216 = add <4 x i32> %214, %208
  %217 = or i64 %206, 8
  %218 = icmp eq i64 %217, 1000
  br i1 %218, label %247, label %219, !llvm.loop !22

219:                                              ; preds = %205
  %220 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %202, i64 %217
  %221 = bitcast i32* %220 to <4 x i32>*
  %222 = load <4 x i32>, <4 x i32>* %221, align 16, !tbaa !7
  %223 = getelementptr inbounds i32, i32* %220, i64 4
  %224 = bitcast i32* %223 to <4 x i32>*
  %225 = load <4 x i32>, <4 x i32>* %224, align 16, !tbaa !7
  %226 = add <4 x i32> %222, %215
  %227 = add <4 x i32> %225, %216
  %228 = or i64 %206, 16
  %229 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %202, i64 %228
  %230 = bitcast i32* %229 to <4 x i32>*
  %231 = load <4 x i32>, <4 x i32>* %230, align 16, !tbaa !7
  %232 = getelementptr inbounds i32, i32* %229, i64 4
  %233 = bitcast i32* %232 to <4 x i32>*
  %234 = load <4 x i32>, <4 x i32>* %233, align 16, !tbaa !7
  %235 = add <4 x i32> %231, %226
  %236 = add <4 x i32> %234, %227
  %237 = or i64 %206, 24
  %238 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @c, i64 0, i64 %202, i64 %237
  %239 = bitcast i32* %238 to <4 x i32>*
  %240 = load <4 x i32>, <4 x i32>* %239, align 16, !tbaa !7
  %241 = getelementptr inbounds i32, i32* %238, i64 4
  %242 = bitcast i32* %241 to <4 x i32>*
  %243 = load <4 x i32>, <4 x i32>* %242, align 16, !tbaa !7
  %244 = add <4 x i32> %240, %235
  %245 = add <4 x i32> %243, %236
  %246 = add nuw nsw i64 %206, 32
  br label %205

247:                                              ; preds = %205
  %248 = add <4 x i32> %216, %215
  %249 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %248)
  %250 = add nuw nsw i64 %202, 1
  %251 = icmp eq i64 %250, 1000
  br i1 %251, label %252, label %201, !llvm.loop !23

252:                                              ; preds = %247
  tail call void @_Z14_sysy_stoptimei(i32 noundef 92)
  tail call void @_Z6putinti(i32 noundef %249)
  br label %253

253:                                              ; preds = %4, %252
  %254 = phi i32 [ 0, %252 ], [ %7, %4 ]
  ret i32 %254
}

declare noundef i32 @_Z8getarrayPi(i32* noundef) local_unnamed_addr #1

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #1

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #2

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !6, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6, !12}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6, !12}
!18 = distinct !{!18, !6, !12}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6, !12}
!23 = distinct !{!23, !6}
