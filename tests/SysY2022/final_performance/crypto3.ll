; ModuleID = 'tests//SysY2022/final_performance/crypto3.sy'
source_filename = "tests//SysY2022/final_performance/crypto3.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@state = dso_local local_unnamed_addr global i32 19260817, align 4
@buffer = dso_local global [32768 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z10get_randomv() local_unnamed_addr #0 {
  %1 = load i32, i32* @state, align 4, !tbaa !4
  %2 = mul nsw i32 %1, 8193
  %3 = sdiv i32 %2, 131072
  %4 = add nsw i32 %3, %2
  %5 = mul nsw i32 %4, 33
  store i32 %5, i32* @state, align 4, !tbaa !4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5rotl1i(i32 noundef %0) local_unnamed_addr #1 {
  %2 = shl nsw i32 %0, 1
  %3 = srem i32 %0, 2
  %4 = add nsw i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z5rotl5i(i32 noundef %0) local_unnamed_addr #1 {
  %2 = shl nsw i32 %0, 5
  %3 = srem i32 %0, 32
  %4 = add nsw i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6rotl30i(i32 noundef %0) local_unnamed_addr #1 {
  %2 = shl nsw i32 %0, 30
  %3 = srem i32 %0, 1073741824
  %4 = add nsw i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4_andii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add nsw i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4_noti(i32 noundef %0) local_unnamed_addr #1 {
  %2 = xor i32 %0, -1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z4_xorii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add nsw i32 %0, %1
  %4 = sub i32 0, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z3_orii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z11pseudo_sha1PiiS_(i32* nocapture noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca [80 x i32], align 16
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  store i32 128, i32* %6, align 4, !tbaa !4
  %7 = add i32 %1, 1
  %8 = srem i32 %7, 64
  %9 = icmp eq i32 %8, 60
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = sext i32 %7 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ %11, %10 ], [ %15, %12 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %13
  store i32 0, i32* %14, align 4, !tbaa !4
  %15 = add i64 %13, 1
  %16 = trunc i64 %15 to i32
  %17 = srem i32 %16, 64
  %18 = icmp eq i32 %17, 60
  br i1 %18, label %19, label %12, !llvm.loop !8

19:                                               ; preds = %12
  %20 = trunc i64 %15 to i32
  %21 = trunc i64 %13 to i32
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i32 [ %1, %3 ], [ %21, %19 ]
  %24 = phi i32 [ %7, %3 ], [ %20, %19 ]
  %25 = sdiv i32 %1, 16777216
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  store i32 %25, i32* %27, align 4, !tbaa !4
  %28 = sdiv i32 %1, 65536
  %29 = trunc i32 %28 to i16
  %30 = srem i16 %29, 256
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %23, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  store i32 %31, i32* %34, align 4, !tbaa !4
  %35 = sdiv i32 %1, 256
  %36 = srem i32 %35, 256
  %37 = add nsw i32 %23, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  store i32 %36, i32* %39, align 4, !tbaa !4
  %40 = srem i32 %1, 256
  %41 = add nsw i32 %23, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  store i32 %40, i32* %43, align 4, !tbaa !4
  %44 = bitcast [80 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %44) #7
  %45 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 16
  %46 = bitcast i32* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(320) %46, i8 0, i64 256, i1 false)
  %47 = icmp sgt i32 %23, -5
  br i1 %47, label %48, label %427

48:                                               ; preds = %22
  %49 = sext i32 %23 to i64
  %50 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 0
  %51 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 1
  %52 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 2
  %53 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 3
  %54 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 4
  %55 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 5
  %56 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 6
  %57 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 7
  %58 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 8
  %59 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 9
  %60 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 10
  %61 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 11
  %62 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 12
  %63 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 13
  %64 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 14
  %65 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 15
  br label %66

66:                                               ; preds = %418, %48
  %67 = phi i64 [ 0, %48 ], [ %424, %418 ]
  %68 = phi i32 [ 1732584193, %48 ], [ %419, %418 ]
  %69 = phi i32 [ -1009589776, %48 ], [ %423, %418 ]
  %70 = phi i32 [ 271733878, %48 ], [ %422, %418 ]
  %71 = phi i32 [ -1732584194, %48 ], [ %421, %418 ]
  %72 = phi i32 [ -271733879, %48 ], [ %420, %418 ]
  %73 = getelementptr inbounds i32, i32* %0, i64 %67
  %74 = load i32, i32* %73, align 4, !tbaa !4
  %75 = shl nsw i32 %74, 24
  %76 = or i64 %67, 1
  %77 = getelementptr inbounds i32, i32* %0, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !4
  %79 = shl nsw i32 %78, 16
  %80 = add nsw i32 %79, %75
  %81 = or i64 %67, 2
  %82 = getelementptr inbounds i32, i32* %0, i64 %81
  %83 = load i32, i32* %82, align 4, !tbaa !4
  %84 = shl nsw i32 %83, 8
  %85 = add nsw i32 %80, %84
  %86 = or i64 %67, 3
  %87 = getelementptr inbounds i32, i32* %0, i64 %86
  %88 = load i32, i32* %87, align 4, !tbaa !4
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %50, align 16, !tbaa !4
  %90 = or i64 %67, 4
  %91 = getelementptr inbounds i32, i32* %0, i64 %90
  %92 = load i32, i32* %91, align 4, !tbaa !4
  %93 = shl nsw i32 %92, 24
  %94 = or i64 %67, 5
  %95 = getelementptr inbounds i32, i32* %0, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !4
  %97 = shl nsw i32 %96, 16
  %98 = add nsw i32 %97, %93
  %99 = or i64 %67, 6
  %100 = getelementptr inbounds i32, i32* %0, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !4
  %102 = shl nsw i32 %101, 8
  %103 = add nsw i32 %98, %102
  %104 = or i64 %67, 7
  %105 = getelementptr inbounds i32, i32* %0, i64 %104
  %106 = load i32, i32* %105, align 4, !tbaa !4
  %107 = add nsw i32 %103, %106
  store i32 %107, i32* %51, align 4, !tbaa !4
  %108 = or i64 %67, 8
  %109 = getelementptr inbounds i32, i32* %0, i64 %108
  %110 = load i32, i32* %109, align 4, !tbaa !4
  %111 = shl nsw i32 %110, 24
  %112 = or i64 %67, 9
  %113 = getelementptr inbounds i32, i32* %0, i64 %112
  %114 = load i32, i32* %113, align 4, !tbaa !4
  %115 = shl nsw i32 %114, 16
  %116 = add nsw i32 %115, %111
  %117 = or i64 %67, 10
  %118 = getelementptr inbounds i32, i32* %0, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !4
  %120 = shl nsw i32 %119, 8
  %121 = add nsw i32 %116, %120
  %122 = or i64 %67, 11
  %123 = getelementptr inbounds i32, i32* %0, i64 %122
  %124 = load i32, i32* %123, align 4, !tbaa !4
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %52, align 8, !tbaa !4
  %126 = or i64 %67, 12
  %127 = getelementptr inbounds i32, i32* %0, i64 %126
  %128 = load i32, i32* %127, align 4, !tbaa !4
  %129 = shl nsw i32 %128, 24
  %130 = or i64 %67, 13
  %131 = getelementptr inbounds i32, i32* %0, i64 %130
  %132 = load i32, i32* %131, align 4, !tbaa !4
  %133 = shl nsw i32 %132, 16
  %134 = add nsw i32 %133, %129
  %135 = or i64 %67, 14
  %136 = getelementptr inbounds i32, i32* %0, i64 %135
  %137 = load i32, i32* %136, align 4, !tbaa !4
  %138 = shl nsw i32 %137, 8
  %139 = add nsw i32 %134, %138
  %140 = or i64 %67, 15
  %141 = getelementptr inbounds i32, i32* %0, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !4
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* %53, align 4, !tbaa !4
  %144 = or i64 %67, 16
  %145 = getelementptr inbounds i32, i32* %0, i64 %144
  %146 = load i32, i32* %145, align 4, !tbaa !4
  %147 = shl nsw i32 %146, 24
  %148 = or i64 %67, 17
  %149 = getelementptr inbounds i32, i32* %0, i64 %148
  %150 = load i32, i32* %149, align 4, !tbaa !4
  %151 = shl nsw i32 %150, 16
  %152 = add nsw i32 %151, %147
  %153 = or i64 %67, 18
  %154 = getelementptr inbounds i32, i32* %0, i64 %153
  %155 = load i32, i32* %154, align 4, !tbaa !4
  %156 = shl nsw i32 %155, 8
  %157 = add nsw i32 %152, %156
  %158 = or i64 %67, 19
  %159 = getelementptr inbounds i32, i32* %0, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !4
  %161 = add nsw i32 %157, %160
  store i32 %161, i32* %54, align 16, !tbaa !4
  %162 = or i64 %67, 20
  %163 = getelementptr inbounds i32, i32* %0, i64 %162
  %164 = load i32, i32* %163, align 4, !tbaa !4
  %165 = shl nsw i32 %164, 24
  %166 = or i64 %67, 21
  %167 = getelementptr inbounds i32, i32* %0, i64 %166
  %168 = load i32, i32* %167, align 4, !tbaa !4
  %169 = shl nsw i32 %168, 16
  %170 = add nsw i32 %169, %165
  %171 = or i64 %67, 22
  %172 = getelementptr inbounds i32, i32* %0, i64 %171
  %173 = load i32, i32* %172, align 4, !tbaa !4
  %174 = shl nsw i32 %173, 8
  %175 = add nsw i32 %170, %174
  %176 = or i64 %67, 23
  %177 = getelementptr inbounds i32, i32* %0, i64 %176
  %178 = load i32, i32* %177, align 4, !tbaa !4
  %179 = add nsw i32 %175, %178
  store i32 %179, i32* %55, align 4, !tbaa !4
  %180 = or i64 %67, 24
  %181 = getelementptr inbounds i32, i32* %0, i64 %180
  %182 = load i32, i32* %181, align 4, !tbaa !4
  %183 = shl nsw i32 %182, 24
  %184 = or i64 %67, 25
  %185 = getelementptr inbounds i32, i32* %0, i64 %184
  %186 = load i32, i32* %185, align 4, !tbaa !4
  %187 = shl nsw i32 %186, 16
  %188 = add nsw i32 %187, %183
  %189 = or i64 %67, 26
  %190 = getelementptr inbounds i32, i32* %0, i64 %189
  %191 = load i32, i32* %190, align 4, !tbaa !4
  %192 = shl nsw i32 %191, 8
  %193 = add nsw i32 %188, %192
  %194 = or i64 %67, 27
  %195 = getelementptr inbounds i32, i32* %0, i64 %194
  %196 = load i32, i32* %195, align 4, !tbaa !4
  %197 = add nsw i32 %193, %196
  store i32 %197, i32* %56, align 8, !tbaa !4
  %198 = or i64 %67, 28
  %199 = getelementptr inbounds i32, i32* %0, i64 %198
  %200 = load i32, i32* %199, align 4, !tbaa !4
  %201 = shl nsw i32 %200, 24
  %202 = or i64 %67, 29
  %203 = getelementptr inbounds i32, i32* %0, i64 %202
  %204 = load i32, i32* %203, align 4, !tbaa !4
  %205 = shl nsw i32 %204, 16
  %206 = add nsw i32 %205, %201
  %207 = or i64 %67, 30
  %208 = getelementptr inbounds i32, i32* %0, i64 %207
  %209 = load i32, i32* %208, align 4, !tbaa !4
  %210 = shl nsw i32 %209, 8
  %211 = add nsw i32 %206, %210
  %212 = or i64 %67, 31
  %213 = getelementptr inbounds i32, i32* %0, i64 %212
  %214 = load i32, i32* %213, align 4, !tbaa !4
  %215 = add nsw i32 %211, %214
  store i32 %215, i32* %57, align 4, !tbaa !4
  %216 = or i64 %67, 32
  %217 = getelementptr inbounds i32, i32* %0, i64 %216
  %218 = load i32, i32* %217, align 4, !tbaa !4
  %219 = shl nsw i32 %218, 24
  %220 = or i64 %67, 33
  %221 = getelementptr inbounds i32, i32* %0, i64 %220
  %222 = load i32, i32* %221, align 4, !tbaa !4
  %223 = shl nsw i32 %222, 16
  %224 = add nsw i32 %223, %219
  %225 = or i64 %67, 34
  %226 = getelementptr inbounds i32, i32* %0, i64 %225
  %227 = load i32, i32* %226, align 4, !tbaa !4
  %228 = shl nsw i32 %227, 8
  %229 = add nsw i32 %224, %228
  %230 = or i64 %67, 35
  %231 = getelementptr inbounds i32, i32* %0, i64 %230
  %232 = load i32, i32* %231, align 4, !tbaa !4
  %233 = add nsw i32 %229, %232
  store i32 %233, i32* %58, align 16, !tbaa !4
  %234 = or i64 %67, 36
  %235 = getelementptr inbounds i32, i32* %0, i64 %234
  %236 = load i32, i32* %235, align 4, !tbaa !4
  %237 = shl nsw i32 %236, 24
  %238 = or i64 %67, 37
  %239 = getelementptr inbounds i32, i32* %0, i64 %238
  %240 = load i32, i32* %239, align 4, !tbaa !4
  %241 = shl nsw i32 %240, 16
  %242 = add nsw i32 %241, %237
  %243 = or i64 %67, 38
  %244 = getelementptr inbounds i32, i32* %0, i64 %243
  %245 = load i32, i32* %244, align 4, !tbaa !4
  %246 = shl nsw i32 %245, 8
  %247 = add nsw i32 %242, %246
  %248 = or i64 %67, 39
  %249 = getelementptr inbounds i32, i32* %0, i64 %248
  %250 = load i32, i32* %249, align 4, !tbaa !4
  %251 = add nsw i32 %247, %250
  store i32 %251, i32* %59, align 4, !tbaa !4
  %252 = or i64 %67, 40
  %253 = getelementptr inbounds i32, i32* %0, i64 %252
  %254 = load i32, i32* %253, align 4, !tbaa !4
  %255 = shl nsw i32 %254, 24
  %256 = or i64 %67, 41
  %257 = getelementptr inbounds i32, i32* %0, i64 %256
  %258 = load i32, i32* %257, align 4, !tbaa !4
  %259 = shl nsw i32 %258, 16
  %260 = add nsw i32 %259, %255
  %261 = or i64 %67, 42
  %262 = getelementptr inbounds i32, i32* %0, i64 %261
  %263 = load i32, i32* %262, align 4, !tbaa !4
  %264 = shl nsw i32 %263, 8
  %265 = add nsw i32 %260, %264
  %266 = or i64 %67, 43
  %267 = getelementptr inbounds i32, i32* %0, i64 %266
  %268 = load i32, i32* %267, align 4, !tbaa !4
  %269 = add nsw i32 %265, %268
  store i32 %269, i32* %60, align 8, !tbaa !4
  %270 = or i64 %67, 44
  %271 = getelementptr inbounds i32, i32* %0, i64 %270
  %272 = load i32, i32* %271, align 4, !tbaa !4
  %273 = shl nsw i32 %272, 24
  %274 = or i64 %67, 45
  %275 = getelementptr inbounds i32, i32* %0, i64 %274
  %276 = load i32, i32* %275, align 4, !tbaa !4
  %277 = shl nsw i32 %276, 16
  %278 = add nsw i32 %277, %273
  %279 = or i64 %67, 46
  %280 = getelementptr inbounds i32, i32* %0, i64 %279
  %281 = load i32, i32* %280, align 4, !tbaa !4
  %282 = shl nsw i32 %281, 8
  %283 = add nsw i32 %278, %282
  %284 = or i64 %67, 47
  %285 = getelementptr inbounds i32, i32* %0, i64 %284
  %286 = load i32, i32* %285, align 4, !tbaa !4
  %287 = add nsw i32 %283, %286
  store i32 %287, i32* %61, align 4, !tbaa !4
  %288 = or i64 %67, 48
  %289 = getelementptr inbounds i32, i32* %0, i64 %288
  %290 = load i32, i32* %289, align 4, !tbaa !4
  %291 = shl nsw i32 %290, 24
  %292 = or i64 %67, 49
  %293 = getelementptr inbounds i32, i32* %0, i64 %292
  %294 = load i32, i32* %293, align 4, !tbaa !4
  %295 = shl nsw i32 %294, 16
  %296 = add nsw i32 %295, %291
  %297 = or i64 %67, 50
  %298 = getelementptr inbounds i32, i32* %0, i64 %297
  %299 = load i32, i32* %298, align 4, !tbaa !4
  %300 = shl nsw i32 %299, 8
  %301 = add nsw i32 %296, %300
  %302 = or i64 %67, 51
  %303 = getelementptr inbounds i32, i32* %0, i64 %302
  %304 = load i32, i32* %303, align 4, !tbaa !4
  %305 = add nsw i32 %301, %304
  store i32 %305, i32* %62, align 16, !tbaa !4
  %306 = or i64 %67, 52
  %307 = getelementptr inbounds i32, i32* %0, i64 %306
  %308 = load i32, i32* %307, align 4, !tbaa !4
  %309 = shl nsw i32 %308, 24
  %310 = or i64 %67, 53
  %311 = getelementptr inbounds i32, i32* %0, i64 %310
  %312 = load i32, i32* %311, align 4, !tbaa !4
  %313 = shl nsw i32 %312, 16
  %314 = add nsw i32 %313, %309
  %315 = or i64 %67, 54
  %316 = getelementptr inbounds i32, i32* %0, i64 %315
  %317 = load i32, i32* %316, align 4, !tbaa !4
  %318 = shl nsw i32 %317, 8
  %319 = add nsw i32 %314, %318
  %320 = or i64 %67, 55
  %321 = getelementptr inbounds i32, i32* %0, i64 %320
  %322 = load i32, i32* %321, align 4, !tbaa !4
  %323 = add nsw i32 %319, %322
  store i32 %323, i32* %63, align 4, !tbaa !4
  %324 = or i64 %67, 56
  %325 = getelementptr inbounds i32, i32* %0, i64 %324
  %326 = load i32, i32* %325, align 4, !tbaa !4
  %327 = shl nsw i32 %326, 24
  %328 = or i64 %67, 57
  %329 = getelementptr inbounds i32, i32* %0, i64 %328
  %330 = load i32, i32* %329, align 4, !tbaa !4
  %331 = shl nsw i32 %330, 16
  %332 = add nsw i32 %331, %327
  %333 = or i64 %67, 58
  %334 = getelementptr inbounds i32, i32* %0, i64 %333
  %335 = load i32, i32* %334, align 4, !tbaa !4
  %336 = shl nsw i32 %335, 8
  %337 = add nsw i32 %332, %336
  %338 = or i64 %67, 59
  %339 = getelementptr inbounds i32, i32* %0, i64 %338
  %340 = load i32, i32* %339, align 4, !tbaa !4
  %341 = add nsw i32 %337, %340
  store i32 %341, i32* %64, align 8, !tbaa !4
  %342 = or i64 %67, 60
  %343 = getelementptr inbounds i32, i32* %0, i64 %342
  %344 = load i32, i32* %343, align 4, !tbaa !4
  %345 = shl nsw i32 %344, 24
  %346 = or i64 %67, 61
  %347 = getelementptr inbounds i32, i32* %0, i64 %346
  %348 = load i32, i32* %347, align 4, !tbaa !4
  %349 = shl nsw i32 %348, 16
  %350 = add nsw i32 %349, %345
  %351 = or i64 %67, 62
  %352 = getelementptr inbounds i32, i32* %0, i64 %351
  %353 = load i32, i32* %352, align 4, !tbaa !4
  %354 = shl nsw i32 %353, 8
  %355 = add nsw i32 %350, %354
  %356 = or i64 %67, 63
  %357 = getelementptr inbounds i32, i32* %0, i64 %356
  %358 = load i32, i32* %357, align 4, !tbaa !4
  %359 = add nsw i32 %355, %358
  store i32 %359, i32* %65, align 4, !tbaa !4
  br label %360

360:                                              ; preds = %360, %66
  %361 = phi i64 [ 16, %66 ], [ %381, %360 ]
  %362 = add nsw i64 %361, -3
  %363 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 %362
  %364 = load i32, i32* %363, align 4, !tbaa !4
  %365 = add nsw i64 %361, -8
  %366 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4, !tbaa !4
  %368 = add nsw i64 %361, -14
  %369 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4, !tbaa !4
  %371 = add nsw i64 %361, -16
  %372 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 %371
  %373 = load i32, i32* %372, align 4, !tbaa !4
  %374 = add i32 %367, %364
  %375 = add i32 %374, %373
  %376 = sub i32 %370, %375
  %377 = shl nsw i32 %376, 1
  %378 = srem i32 %376, 2
  %379 = add nsw i32 %377, %378
  %380 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 %361
  store i32 %379, i32* %380, align 4, !tbaa !4
  %381 = add nuw nsw i64 %361, 1
  %382 = icmp eq i64 %381, 80
  br i1 %382, label %383, label %360, !llvm.loop !10

383:                                              ; preds = %360, %401
  %384 = phi i64 [ %416, %401 ], [ 0, %360 ]
  %385 = phi i32 [ %386, %401 ], [ %69, %360 ]
  %386 = phi i32 [ %387, %401 ], [ %70, %360 ]
  %387 = phi i32 [ %415, %401 ], [ %71, %360 ]
  %388 = phi i32 [ %389, %401 ], [ %72, %360 ]
  %389 = phi i32 [ %412, %401 ], [ %68, %360 ]
  %390 = icmp ult i64 %384, 20
  br i1 %390, label %401, label %391

391:                                              ; preds = %383
  %392 = icmp ult i64 %384, 40
  br i1 %392, label %393, label %396

393:                                              ; preds = %391
  %394 = add nsw i32 %387, %388
  %395 = sub i32 %394, %386
  br label %401

396:                                              ; preds = %391
  %397 = icmp ult i64 %384, 60
  br i1 %397, label %401, label %398

398:                                              ; preds = %396
  %399 = add nsw i32 %387, %388
  %400 = sub i32 %399, %386
  br label %401

401:                                              ; preds = %383, %396, %393, %398
  %402 = phi i32 [ %395, %393 ], [ %400, %398 ], [ 0, %396 ], [ 0, %383 ]
  %403 = phi i32 [ 1859775361, %393 ], [ -899497722, %398 ], [ -1894007588, %396 ], [ 1518500249, %383 ]
  %404 = shl nsw i32 %389, 5
  %405 = srem i32 %389, 32
  %406 = add nsw i32 %404, %405
  %407 = getelementptr inbounds [80 x i32], [80 x i32]* %4, i64 0, i64 %384
  %408 = load i32, i32* %407, align 4, !tbaa !4
  %409 = add i32 %406, %385
  %410 = add i32 %409, %402
  %411 = add i32 %410, %403
  %412 = add i32 %411, %408
  %413 = shl nsw i32 %388, 30
  %414 = srem i32 %388, 1073741824
  %415 = add nsw i32 %413, %414
  %416 = add nuw nsw i64 %384, 1
  %417 = icmp eq i64 %416, 80
  br i1 %417, label %418, label %383, !llvm.loop !11

418:                                              ; preds = %401
  %419 = add nsw i32 %412, %68
  %420 = add nsw i32 %389, %72
  %421 = add nsw i32 %415, %71
  %422 = add nsw i32 %387, %70
  %423 = add nsw i32 %386, %69
  %424 = add nuw nsw i64 %67, 64
  %425 = or i64 %67, 59
  %426 = icmp slt i64 %425, %49
  br i1 %426, label %66, label %427, !llvm.loop !12

427:                                              ; preds = %418, %22
  %428 = phi i32 [ -271733879, %22 ], [ %420, %418 ]
  %429 = phi i32 [ -1732584194, %22 ], [ %421, %418 ]
  %430 = phi i32 [ 271733878, %22 ], [ %422, %418 ]
  %431 = phi i32 [ -1009589776, %22 ], [ %423, %418 ]
  %432 = phi i32 [ 1732584193, %22 ], [ %419, %418 ]
  store i32 %432, i32* %2, align 4, !tbaa !4
  %433 = getelementptr inbounds i32, i32* %2, i64 1
  store i32 %428, i32* %433, align 4, !tbaa !4
  %434 = getelementptr inbounds i32, i32* %2, i64 2
  store i32 %429, i32* %434, align 4, !tbaa !4
  %435 = getelementptr inbounds i32, i32* %2, i64 3
  store i32 %430, i32* %435, align 4, !tbaa !4
  %436 = getelementptr inbounds i32, i32* %2, i64 4
  store i32 %431, i32* %436, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %44) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  %1 = alloca [5 x i32], align 16
  %2 = alloca [5 x i32], align 16
  %3 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %4 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #7
  %5 = tail call noundef i32 @_Z6getintv()
  store i32 %5, i32* @state, align 4, !tbaa !4
  %6 = tail call noundef i32 @_Z6getintv()
  tail call void @_Z15_sysy_starttimei(i32 noundef 161)
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 1
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 2
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 3
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 4
  %12 = icmp sgt i32 %6, 0
  %13 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %13, i8 0, i64 20, i1 false)
  br i1 %12, label %14, label %62

14:                                               ; preds = %0
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  br label %20

20:                                               ; preds = %14, %44
  %21 = phi i32 [ 0, %14 ], [ %59, %44 ]
  %22 = phi i32 [ 0, %14 ], [ %58, %44 ]
  %23 = phi i32 [ 0, %14 ], [ %56, %44 ]
  %24 = phi i32 [ 0, %14 ], [ %55, %44 ]
  %25 = phi i32 [ 0, %14 ], [ %53, %44 ]
  %26 = phi i32 [ 0, %14 ], [ %52, %44 ]
  %27 = phi i32 [ 0, %14 ], [ %50, %44 ]
  %28 = phi i32 [ 0, %14 ], [ %49, %44 ]
  %29 = phi i32 [ 0, %14 ], [ %47, %44 ]
  %30 = phi i32 [ 0, %14 ], [ %46, %44 ]
  %31 = phi i32 [ %6, %14 ], [ %60, %44 ]
  %32 = load i32, i32* @state, align 4, !tbaa !4
  br label %33

33:                                               ; preds = %20, %33
  %34 = phi i64 [ 0, %20 ], [ %42, %33 ]
  %35 = phi i32 [ %32, %20 ], [ %39, %33 ]
  %36 = mul nsw i32 %35, 8193
  %37 = sdiv i32 %36, 131072
  %38 = add nsw i32 %37, %36
  %39 = mul nsw i32 %38, 33
  %40 = srem i32 %39, 256
  %41 = getelementptr inbounds [32768 x i32], [32768 x i32]* @buffer, i64 0, i64 %34
  store i32 %40, i32* %41, align 4, !tbaa !4
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, 32000
  br i1 %43, label %44, label %33, !llvm.loop !13

44:                                               ; preds = %33
  store i32 %39, i32* @state, align 4, !tbaa !4
  call void @_Z11pseudo_sha1PiiS_(i32* noundef getelementptr inbounds ([32768 x i32], [32768 x i32]* @buffer, i64 0, i64 0), i32 noundef 32000, i32* noundef nonnull %15)
  %45 = load i32, i32* %15, align 16, !tbaa !4
  %46 = sub i32 %29, %45
  %47 = add nsw i32 %30, %45
  store i32 %46, i32* %7, align 16, !tbaa !4
  %48 = load i32, i32* %16, align 4, !tbaa !4
  %49 = sub i32 %27, %48
  %50 = add nsw i32 %28, %48
  store i32 %49, i32* %8, align 4, !tbaa !4
  %51 = load i32, i32* %17, align 8, !tbaa !4
  %52 = sub i32 %25, %51
  %53 = add nsw i32 %26, %51
  store i32 %52, i32* %9, align 8, !tbaa !4
  %54 = load i32, i32* %18, align 4, !tbaa !4
  %55 = sub i32 %23, %54
  %56 = add nsw i32 %24, %54
  store i32 %55, i32* %10, align 4, !tbaa !4
  %57 = load i32, i32* %19, align 16, !tbaa !4
  %58 = sub i32 %21, %57
  %59 = add nsw i32 %22, %57
  store i32 %58, i32* %11, align 16, !tbaa !4
  %60 = add nsw i32 %31, -1
  %61 = icmp sgt i32 %31, 1
  br i1 %61, label %20, label %62, !llvm.loop !14

62:                                               ; preds = %44, %0
  tail call void @_Z14_sysy_stoptimei(i32 noundef 184)
  call void @_Z8putarrayiPi(i32 noundef 5, i32* noundef nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #7
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #6

declare void @_Z15_sysy_starttimei(i32 noundef) local_unnamed_addr #6

declare void @_Z14_sysy_stoptimei(i32 noundef) local_unnamed_addr #6

declare void @_Z8putarrayiPi(i32 noundef, i32* noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!14 = distinct !{!14, !9}
