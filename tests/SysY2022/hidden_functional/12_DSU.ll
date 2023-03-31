; ModuleID = 'tests//SysY2022/hidden_functional/12_DSU.sy'
source_filename = "tests//SysY2022/hidden_functional/12_DSU.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@fa = dso_local local_unnamed_addr global [100005 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z10quick_readv() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z5getchv()
  %2 = add i32 %1, -58
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %7, label %4

4:                                                ; preds = %7, %0
  %5 = phi i32 [ %1, %0 ], [ %12, %7 ]
  %6 = phi i32 [ 0, %0 ], [ %11, %7 ]
  br label %15

7:                                                ; preds = %0, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %0 ]
  %9 = phi i32 [ %12, %7 ], [ %1, %0 ]
  %10 = icmp eq i32 %9, 45
  %11 = select i1 %10, i32 1, i32 %8
  %12 = tail call noundef i32 @_Z5getchv()
  %13 = add i32 %12, -58
  %14 = icmp ult i32 %13, -10
  br i1 %14, label %7, label %4, !llvm.loop !4

15:                                               ; preds = %4, %15
  %16 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %21, %15 ], [ %5, %4 ]
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add i32 %19, %18
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %15, label %24, !llvm.loop !6

24:                                               ; preds = %15
  %25 = icmp eq i32 %6, 0
  %26 = sub nsw i32 0, %20
  %27 = select i1 %25, i32 %20, i32 %26
  ret i32 %27
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z4initv() local_unnamed_addr #2 {
  %1 = load i32, i32* @n, align 4, !tbaa !7
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %40, label %3

3:                                                ; preds = %0
  %4 = add nuw i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = add nsw i64 %5, -1
  %7 = add nsw i64 %5, -2
  %8 = and i64 %6, 3
  %9 = icmp ult i64 %7, 3
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = and i64 %6, -4
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 1, %10 ], [ %26, %12 ]
  %14 = phi i64 [ 0, %10 ], [ %27, %12 ]
  %15 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %13
  %16 = trunc i64 %13 to i32
  store i32 %16, i32* %15, align 4, !tbaa !7
  %17 = add nuw nsw i64 %13, 1
  %18 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %17
  %19 = trunc i64 %17 to i32
  store i32 %19, i32* %18, align 4, !tbaa !7
  %20 = add nuw nsw i64 %13, 2
  %21 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %20
  %22 = trunc i64 %20 to i32
  store i32 %22, i32* %21, align 4, !tbaa !7
  %23 = add nuw nsw i64 %13, 3
  %24 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %23
  %25 = trunc i64 %23 to i32
  store i32 %25, i32* %24, align 4, !tbaa !7
  %26 = add nuw nsw i64 %13, 4
  %27 = add i64 %14, 4
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %12, !llvm.loop !11

29:                                               ; preds = %12, %3
  %30 = phi i64 [ 1, %3 ], [ %26, %12 ]
  %31 = icmp eq i64 %8, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %37, %32 ], [ %30, %29 ]
  %34 = phi i64 [ %38, %32 ], [ 0, %29 ]
  %35 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %33
  %36 = trunc i64 %33 to i32
  store i32 %36, i32* %35, align 4, !tbaa !7
  %37 = add nuw nsw i64 %33, 1
  %38 = add i64 %34, 1
  %39 = icmp eq i64 %38, %8
  br i1 %39, label %40, label %32, !llvm.loop !12

40:                                               ; preds = %29, %32, %0
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4findi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4, !tbaa !7
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1, %8
  %7 = phi i32 [ %9, %8 ], [ %0, %1 ]
  ret i32 %7

8:                                                ; preds = %1
  %9 = tail call noundef i32 @_Z4findi(i32 noundef %4)
  store i32 %9, i32* %3, align 4, !tbaa !7
  br label %6
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4sameii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call noundef i32 @_Z4findi(i32 noundef %0)
  %4 = tail call noundef i32 @_Z4findi(i32 noundef %1)
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = tail call noundef i32 @_Z5getchv()
  %2 = add i32 %1, -58
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %7, label %4

4:                                                ; preds = %7, %0
  %5 = phi i32 [ %1, %0 ], [ %12, %7 ]
  %6 = phi i32 [ 0, %0 ], [ %11, %7 ]
  br label %15

7:                                                ; preds = %0, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %0 ]
  %9 = phi i32 [ %12, %7 ], [ %1, %0 ]
  %10 = icmp eq i32 %9, 45
  %11 = select i1 %10, i32 1, i32 %8
  %12 = tail call noundef i32 @_Z5getchv()
  %13 = add i32 %12, -58
  %14 = icmp ult i32 %13, -10
  br i1 %14, label %7, label %4, !llvm.loop !4

15:                                               ; preds = %15, %4
  %16 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %21, %15 ], [ %5, %4 ]
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add i32 %19, %18
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %15, label %24, !llvm.loop !6

24:                                               ; preds = %15
  %25 = icmp eq i32 %6, 0
  %26 = sub nsw i32 0, %20
  %27 = select i1 %25, i32 %20, i32 %26
  store i32 %27, i32* @n, align 4, !tbaa !7
  %28 = tail call noundef i32 @_Z5getchv()
  %29 = add i32 %28, -58
  %30 = icmp ult i32 %29, -10
  br i1 %30, label %34, label %31

31:                                               ; preds = %34, %24
  %32 = phi i32 [ %28, %24 ], [ %39, %34 ]
  %33 = phi i32 [ 0, %24 ], [ %38, %34 ]
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i32 [ %38, %34 ], [ 0, %24 ]
  %36 = phi i32 [ %39, %34 ], [ %28, %24 ]
  %37 = icmp eq i32 %36, 45
  %38 = select i1 %37, i32 1, i32 %35
  %39 = tail call noundef i32 @_Z5getchv()
  %40 = add i32 %39, -58
  %41 = icmp ult i32 %40, -10
  br i1 %41, label %34, label %31, !llvm.loop !4

42:                                               ; preds = %42, %31
  %43 = phi i32 [ %47, %42 ], [ 0, %31 ]
  %44 = phi i32 [ %48, %42 ], [ %32, %31 ]
  %45 = mul nsw i32 %43, 10
  %46 = add nsw i32 %44, -48
  %47 = add i32 %46, %45
  %48 = tail call noundef i32 @_Z5getchv()
  %49 = add i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %42, label %51, !llvm.loop !6

51:                                               ; preds = %42
  %52 = icmp eq i32 %33, 0
  %53 = sub nsw i32 0, %47
  %54 = select i1 %52, i32 %47, i32 %53
  store i32 %54, i32* @m, align 4, !tbaa !7
  %55 = load i32, i32* @n, align 4, !tbaa !7
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %94, label %57

57:                                               ; preds = %51
  %58 = add nuw i32 %55, 1
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, -1
  %61 = add nsw i64 %59, -2
  %62 = and i64 %60, 3
  %63 = icmp ult i64 %61, 3
  br i1 %63, label %83, label %64

64:                                               ; preds = %57
  %65 = and i64 %60, -4
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i64 [ 1, %64 ], [ %80, %66 ]
  %68 = phi i64 [ 0, %64 ], [ %81, %66 ]
  %69 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %67
  %70 = trunc i64 %67 to i32
  store i32 %70, i32* %69, align 4, !tbaa !7
  %71 = add nuw nsw i64 %67, 1
  %72 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %71
  %73 = trunc i64 %71 to i32
  store i32 %73, i32* %72, align 4, !tbaa !7
  %74 = add nuw nsw i64 %67, 2
  %75 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %74
  %76 = trunc i64 %74 to i32
  store i32 %76, i32* %75, align 4, !tbaa !7
  %77 = add nuw nsw i64 %67, 3
  %78 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %77
  %79 = trunc i64 %77 to i32
  store i32 %79, i32* %78, align 4, !tbaa !7
  %80 = add nuw nsw i64 %67, 4
  %81 = add i64 %68, 4
  %82 = icmp eq i64 %81, %65
  br i1 %82, label %83, label %66, !llvm.loop !11

83:                                               ; preds = %66, %57
  %84 = phi i64 [ 1, %57 ], [ %80, %66 ]
  %85 = icmp eq i64 %62, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83, %86
  %87 = phi i64 [ %91, %86 ], [ %84, %83 ]
  %88 = phi i64 [ %92, %86 ], [ 0, %83 ]
  %89 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %87
  %90 = trunc i64 %87 to i32
  store i32 %90, i32* %89, align 4, !tbaa !7
  %91 = add nuw nsw i64 %87, 1
  %92 = add i64 %88, 1
  %93 = icmp eq i64 %92, %62
  br i1 %93, label %94, label %86, !llvm.loop !14

94:                                               ; preds = %83, %86, %51
  %95 = icmp eq i32 %54, 0
  br i1 %95, label %226, label %96

96:                                               ; preds = %94, %222
  %97 = tail call noundef i32 @_Z5getchv()
  %98 = and i32 %97, -5
  %99 = icmp eq i32 %98, 81
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = tail call noundef i32 @_Z5getchv()
  %102 = and i32 %101, -5
  %103 = icmp eq i32 %102, 81
  br i1 %103, label %104, label %100, !llvm.loop !15

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %97, %96 ], [ %101, %100 ]
  %106 = icmp eq i32 %105, 81
  %107 = tail call noundef i32 @_Z5getchv()
  %108 = add i32 %107, -58
  %109 = icmp ult i32 %108, -10
  br i1 %106, label %110, label %166

110:                                              ; preds = %104
  br i1 %109, label %114, label %111

111:                                              ; preds = %114, %110
  %112 = phi i32 [ %107, %110 ], [ %119, %114 ]
  %113 = phi i32 [ 0, %110 ], [ %118, %114 ]
  br label %122

114:                                              ; preds = %110, %114
  %115 = phi i32 [ %118, %114 ], [ 0, %110 ]
  %116 = phi i32 [ %119, %114 ], [ %107, %110 ]
  %117 = icmp eq i32 %116, 45
  %118 = select i1 %117, i32 1, i32 %115
  %119 = tail call noundef i32 @_Z5getchv()
  %120 = add i32 %119, -58
  %121 = icmp ult i32 %120, -10
  br i1 %121, label %114, label %111, !llvm.loop !4

122:                                              ; preds = %122, %111
  %123 = phi i32 [ %127, %122 ], [ 0, %111 ]
  %124 = phi i32 [ %128, %122 ], [ %112, %111 ]
  %125 = mul nsw i32 %123, 10
  %126 = add nsw i32 %124, -48
  %127 = add i32 %126, %125
  %128 = tail call noundef i32 @_Z5getchv()
  %129 = add i32 %128, -48
  %130 = icmp ult i32 %129, 10
  br i1 %130, label %122, label %131, !llvm.loop !6

131:                                              ; preds = %122
  %132 = icmp eq i32 %113, 0
  %133 = sub nsw i32 0, %127
  %134 = select i1 %132, i32 %127, i32 %133
  %135 = tail call noundef i32 @_Z5getchv()
  %136 = add i32 %135, -58
  %137 = icmp ult i32 %136, -10
  br i1 %137, label %141, label %138

138:                                              ; preds = %141, %131
  %139 = phi i32 [ %135, %131 ], [ %146, %141 ]
  %140 = phi i32 [ 0, %131 ], [ %145, %141 ]
  br label %149

141:                                              ; preds = %131, %141
  %142 = phi i32 [ %145, %141 ], [ 0, %131 ]
  %143 = phi i32 [ %146, %141 ], [ %135, %131 ]
  %144 = icmp eq i32 %143, 45
  %145 = select i1 %144, i32 1, i32 %142
  %146 = tail call noundef i32 @_Z5getchv()
  %147 = add i32 %146, -58
  %148 = icmp ult i32 %147, -10
  br i1 %148, label %141, label %138, !llvm.loop !4

149:                                              ; preds = %149, %138
  %150 = phi i32 [ %154, %149 ], [ 0, %138 ]
  %151 = phi i32 [ %155, %149 ], [ %139, %138 ]
  %152 = mul nsw i32 %150, 10
  %153 = add nsw i32 %151, -48
  %154 = add i32 %153, %152
  %155 = tail call noundef i32 @_Z5getchv()
  %156 = add i32 %155, -48
  %157 = icmp ult i32 %156, 10
  br i1 %157, label %149, label %158, !llvm.loop !6

158:                                              ; preds = %149
  %159 = icmp eq i32 %140, 0
  %160 = sub nsw i32 0, %154
  %161 = select i1 %159, i32 %154, i32 %160
  %162 = tail call noundef i32 @_Z4findi(i32 noundef %134) #5
  %163 = tail call noundef i32 @_Z4findi(i32 noundef %161) #5
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  tail call void @_Z6putinti(i32 noundef %165)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %222

166:                                              ; preds = %104
  br i1 %109, label %170, label %167

167:                                              ; preds = %170, %166
  %168 = phi i32 [ %107, %166 ], [ %175, %170 ]
  %169 = phi i32 [ 0, %166 ], [ %174, %170 ]
  br label %178

170:                                              ; preds = %166, %170
  %171 = phi i32 [ %174, %170 ], [ 0, %166 ]
  %172 = phi i32 [ %175, %170 ], [ %107, %166 ]
  %173 = icmp eq i32 %172, 45
  %174 = select i1 %173, i32 1, i32 %171
  %175 = tail call noundef i32 @_Z5getchv()
  %176 = add i32 %175, -58
  %177 = icmp ult i32 %176, -10
  br i1 %177, label %170, label %167, !llvm.loop !4

178:                                              ; preds = %178, %167
  %179 = phi i32 [ %183, %178 ], [ 0, %167 ]
  %180 = phi i32 [ %184, %178 ], [ %168, %167 ]
  %181 = mul nsw i32 %179, 10
  %182 = add nsw i32 %180, -48
  %183 = add i32 %182, %181
  %184 = tail call noundef i32 @_Z5getchv()
  %185 = add i32 %184, -48
  %186 = icmp ult i32 %185, 10
  br i1 %186, label %178, label %187, !llvm.loop !6

187:                                              ; preds = %178
  %188 = icmp eq i32 %169, 0
  %189 = sub nsw i32 0, %183
  %190 = select i1 %188, i32 %183, i32 %189
  %191 = tail call noundef i32 @_Z4findi(i32 noundef %190)
  %192 = tail call noundef i32 @_Z5getchv()
  %193 = add i32 %192, -58
  %194 = icmp ult i32 %193, -10
  br i1 %194, label %198, label %195

195:                                              ; preds = %198, %187
  %196 = phi i32 [ %192, %187 ], [ %203, %198 ]
  %197 = phi i32 [ 0, %187 ], [ %202, %198 ]
  br label %206

198:                                              ; preds = %187, %198
  %199 = phi i32 [ %202, %198 ], [ 0, %187 ]
  %200 = phi i32 [ %203, %198 ], [ %192, %187 ]
  %201 = icmp eq i32 %200, 45
  %202 = select i1 %201, i32 1, i32 %199
  %203 = tail call noundef i32 @_Z5getchv()
  %204 = add i32 %203, -58
  %205 = icmp ult i32 %204, -10
  br i1 %205, label %198, label %195, !llvm.loop !4

206:                                              ; preds = %206, %195
  %207 = phi i32 [ %211, %206 ], [ 0, %195 ]
  %208 = phi i32 [ %212, %206 ], [ %196, %195 ]
  %209 = mul nsw i32 %207, 10
  %210 = add nsw i32 %208, -48
  %211 = add i32 %210, %209
  %212 = tail call noundef i32 @_Z5getchv()
  %213 = add i32 %212, -48
  %214 = icmp ult i32 %213, 10
  br i1 %214, label %206, label %215, !llvm.loop !6

215:                                              ; preds = %206
  %216 = icmp eq i32 %197, 0
  %217 = sub nsw i32 0, %211
  %218 = select i1 %216, i32 %211, i32 %217
  %219 = tail call noundef i32 @_Z4findi(i32 noundef %218)
  %220 = sext i32 %191 to i64
  %221 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %220
  store i32 %219, i32* %221, align 4, !tbaa !7
  br label %222

222:                                              ; preds = %215, %158
  %223 = load i32, i32* @m, align 4, !tbaa !7
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* @m, align 4, !tbaa !7
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %96, !llvm.loop !16

226:                                              ; preds = %222, %94
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
