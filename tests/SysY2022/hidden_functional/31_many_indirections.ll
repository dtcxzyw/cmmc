; ModuleID = 'tests//SysY2022/hidden_functional/31_many_indirections.sy'
source_filename = "tests//SysY2022/hidden_functional/31_many_indirections.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@array = dso_local local_unnamed_addr global [20 x [100 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %17, %1 ]
  %3 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 0, i64 %2
  %4 = trunc i64 %2 to i32
  store i32 %4, i32* %3, align 4, !tbaa !4
  %5 = add nuw nsw i64 %2, 1
  %6 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 0, i64 %5
  %7 = trunc i64 %5 to i32
  store i32 %7, i32* %6, align 4, !tbaa !4
  %8 = add nuw nsw i64 %2, 2
  %9 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 0, i64 %8
  %10 = trunc i64 %8 to i32
  store i32 %10, i32* %9, align 4, !tbaa !4
  %11 = add nuw nsw i64 %2, 3
  %12 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 0, i64 %11
  %13 = trunc i64 %11 to i32
  store i32 %13, i32* %12, align 4, !tbaa !4
  %14 = add nuw nsw i64 %2, 4
  %15 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 0, i64 %14
  %16 = trunc i64 %14 to i32
  store i32 %16, i32* %15, align 4, !tbaa !4
  %17 = add nuw nsw i64 %2, 5
  %18 = icmp eq i64 %17, 100
  br i1 %18, label %19, label %1, !llvm.loop !8

19:                                               ; preds = %1, %19
  %20 = phi i64 [ %35, %19 ], [ 0, %1 ]
  %21 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 1, i64 %20
  %22 = trunc i64 %20 to i32
  store i32 %22, i32* %21, align 4, !tbaa !4
  %23 = add nuw nsw i64 %20, 1
  %24 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 1, i64 %23
  %25 = trunc i64 %23 to i32
  store i32 %25, i32* %24, align 4, !tbaa !4
  %26 = add nuw nsw i64 %20, 2
  %27 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 1, i64 %26
  %28 = trunc i64 %26 to i32
  store i32 %28, i32* %27, align 4, !tbaa !4
  %29 = add nuw nsw i64 %20, 3
  %30 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 1, i64 %29
  %31 = trunc i64 %29 to i32
  store i32 %31, i32* %30, align 4, !tbaa !4
  %32 = add nuw nsw i64 %20, 4
  %33 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 1, i64 %32
  %34 = trunc i64 %32 to i32
  store i32 %34, i32* %33, align 4, !tbaa !4
  %35 = add nuw nsw i64 %20, 5
  %36 = icmp eq i64 %35, 100
  br i1 %36, label %37, label %19, !llvm.loop !8

37:                                               ; preds = %19, %37
  %38 = phi i64 [ %53, %37 ], [ 0, %19 ]
  %39 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 2, i64 %38
  %40 = trunc i64 %38 to i32
  store i32 %40, i32* %39, align 4, !tbaa !4
  %41 = add nuw nsw i64 %38, 1
  %42 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 2, i64 %41
  %43 = trunc i64 %41 to i32
  store i32 %43, i32* %42, align 4, !tbaa !4
  %44 = add nuw nsw i64 %38, 2
  %45 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 2, i64 %44
  %46 = trunc i64 %44 to i32
  store i32 %46, i32* %45, align 4, !tbaa !4
  %47 = add nuw nsw i64 %38, 3
  %48 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 2, i64 %47
  %49 = trunc i64 %47 to i32
  store i32 %49, i32* %48, align 4, !tbaa !4
  %50 = add nuw nsw i64 %38, 4
  %51 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 2, i64 %50
  %52 = trunc i64 %50 to i32
  store i32 %52, i32* %51, align 4, !tbaa !4
  %53 = add nuw nsw i64 %38, 5
  %54 = icmp eq i64 %53, 100
  br i1 %54, label %55, label %37, !llvm.loop !8

55:                                               ; preds = %37, %55
  %56 = phi i64 [ %71, %55 ], [ 0, %37 ]
  %57 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 3, i64 %56
  %58 = trunc i64 %56 to i32
  store i32 %58, i32* %57, align 4, !tbaa !4
  %59 = add nuw nsw i64 %56, 1
  %60 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 3, i64 %59
  %61 = trunc i64 %59 to i32
  store i32 %61, i32* %60, align 4, !tbaa !4
  %62 = add nuw nsw i64 %56, 2
  %63 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 3, i64 %62
  %64 = trunc i64 %62 to i32
  store i32 %64, i32* %63, align 4, !tbaa !4
  %65 = add nuw nsw i64 %56, 3
  %66 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 3, i64 %65
  %67 = trunc i64 %65 to i32
  store i32 %67, i32* %66, align 4, !tbaa !4
  %68 = add nuw nsw i64 %56, 4
  %69 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 3, i64 %68
  %70 = trunc i64 %68 to i32
  store i32 %70, i32* %69, align 4, !tbaa !4
  %71 = add nuw nsw i64 %56, 5
  %72 = icmp eq i64 %71, 100
  br i1 %72, label %73, label %55, !llvm.loop !8

73:                                               ; preds = %55, %73
  %74 = phi i64 [ %89, %73 ], [ 0, %55 ]
  %75 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 4, i64 %74
  %76 = trunc i64 %74 to i32
  store i32 %76, i32* %75, align 4, !tbaa !4
  %77 = add nuw nsw i64 %74, 1
  %78 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 4, i64 %77
  %79 = trunc i64 %77 to i32
  store i32 %79, i32* %78, align 4, !tbaa !4
  %80 = add nuw nsw i64 %74, 2
  %81 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 4, i64 %80
  %82 = trunc i64 %80 to i32
  store i32 %82, i32* %81, align 4, !tbaa !4
  %83 = add nuw nsw i64 %74, 3
  %84 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 4, i64 %83
  %85 = trunc i64 %83 to i32
  store i32 %85, i32* %84, align 4, !tbaa !4
  %86 = add nuw nsw i64 %74, 4
  %87 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 4, i64 %86
  %88 = trunc i64 %86 to i32
  store i32 %88, i32* %87, align 4, !tbaa !4
  %89 = add nuw nsw i64 %74, 5
  %90 = icmp eq i64 %89, 100
  br i1 %90, label %91, label %73, !llvm.loop !8

91:                                               ; preds = %73, %91
  %92 = phi i64 [ %107, %91 ], [ 0, %73 ]
  %93 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 5, i64 %92
  %94 = trunc i64 %92 to i32
  store i32 %94, i32* %93, align 4, !tbaa !4
  %95 = add nuw nsw i64 %92, 1
  %96 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 5, i64 %95
  %97 = trunc i64 %95 to i32
  store i32 %97, i32* %96, align 4, !tbaa !4
  %98 = add nuw nsw i64 %92, 2
  %99 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 5, i64 %98
  %100 = trunc i64 %98 to i32
  store i32 %100, i32* %99, align 4, !tbaa !4
  %101 = add nuw nsw i64 %92, 3
  %102 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 5, i64 %101
  %103 = trunc i64 %101 to i32
  store i32 %103, i32* %102, align 4, !tbaa !4
  %104 = add nuw nsw i64 %92, 4
  %105 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 5, i64 %104
  %106 = trunc i64 %104 to i32
  store i32 %106, i32* %105, align 4, !tbaa !4
  %107 = add nuw nsw i64 %92, 5
  %108 = icmp eq i64 %107, 100
  br i1 %108, label %109, label %91, !llvm.loop !8

109:                                              ; preds = %91, %109
  %110 = phi i64 [ %125, %109 ], [ 0, %91 ]
  %111 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 6, i64 %110
  %112 = trunc i64 %110 to i32
  store i32 %112, i32* %111, align 4, !tbaa !4
  %113 = add nuw nsw i64 %110, 1
  %114 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 6, i64 %113
  %115 = trunc i64 %113 to i32
  store i32 %115, i32* %114, align 4, !tbaa !4
  %116 = add nuw nsw i64 %110, 2
  %117 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 6, i64 %116
  %118 = trunc i64 %116 to i32
  store i32 %118, i32* %117, align 4, !tbaa !4
  %119 = add nuw nsw i64 %110, 3
  %120 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 6, i64 %119
  %121 = trunc i64 %119 to i32
  store i32 %121, i32* %120, align 4, !tbaa !4
  %122 = add nuw nsw i64 %110, 4
  %123 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 6, i64 %122
  %124 = trunc i64 %122 to i32
  store i32 %124, i32* %123, align 4, !tbaa !4
  %125 = add nuw nsw i64 %110, 5
  %126 = icmp eq i64 %125, 100
  br i1 %126, label %127, label %109, !llvm.loop !8

127:                                              ; preds = %109, %127
  %128 = phi i64 [ %143, %127 ], [ 0, %109 ]
  %129 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 7, i64 %128
  %130 = trunc i64 %128 to i32
  store i32 %130, i32* %129, align 4, !tbaa !4
  %131 = add nuw nsw i64 %128, 1
  %132 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 7, i64 %131
  %133 = trunc i64 %131 to i32
  store i32 %133, i32* %132, align 4, !tbaa !4
  %134 = add nuw nsw i64 %128, 2
  %135 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 7, i64 %134
  %136 = trunc i64 %134 to i32
  store i32 %136, i32* %135, align 4, !tbaa !4
  %137 = add nuw nsw i64 %128, 3
  %138 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 7, i64 %137
  %139 = trunc i64 %137 to i32
  store i32 %139, i32* %138, align 4, !tbaa !4
  %140 = add nuw nsw i64 %128, 4
  %141 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 7, i64 %140
  %142 = trunc i64 %140 to i32
  store i32 %142, i32* %141, align 4, !tbaa !4
  %143 = add nuw nsw i64 %128, 5
  %144 = icmp eq i64 %143, 100
  br i1 %144, label %145, label %127, !llvm.loop !8

145:                                              ; preds = %127, %145
  %146 = phi i64 [ %161, %145 ], [ 0, %127 ]
  %147 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 8, i64 %146
  %148 = trunc i64 %146 to i32
  store i32 %148, i32* %147, align 4, !tbaa !4
  %149 = add nuw nsw i64 %146, 1
  %150 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 8, i64 %149
  %151 = trunc i64 %149 to i32
  store i32 %151, i32* %150, align 4, !tbaa !4
  %152 = add nuw nsw i64 %146, 2
  %153 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 8, i64 %152
  %154 = trunc i64 %152 to i32
  store i32 %154, i32* %153, align 4, !tbaa !4
  %155 = add nuw nsw i64 %146, 3
  %156 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 8, i64 %155
  %157 = trunc i64 %155 to i32
  store i32 %157, i32* %156, align 4, !tbaa !4
  %158 = add nuw nsw i64 %146, 4
  %159 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 8, i64 %158
  %160 = trunc i64 %158 to i32
  store i32 %160, i32* %159, align 4, !tbaa !4
  %161 = add nuw nsw i64 %146, 5
  %162 = icmp eq i64 %161, 100
  br i1 %162, label %163, label %145, !llvm.loop !8

163:                                              ; preds = %145, %163
  %164 = phi i64 [ %179, %163 ], [ 0, %145 ]
  %165 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 9, i64 %164
  %166 = trunc i64 %164 to i32
  store i32 %166, i32* %165, align 4, !tbaa !4
  %167 = add nuw nsw i64 %164, 1
  %168 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 9, i64 %167
  %169 = trunc i64 %167 to i32
  store i32 %169, i32* %168, align 4, !tbaa !4
  %170 = add nuw nsw i64 %164, 2
  %171 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 9, i64 %170
  %172 = trunc i64 %170 to i32
  store i32 %172, i32* %171, align 4, !tbaa !4
  %173 = add nuw nsw i64 %164, 3
  %174 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 9, i64 %173
  %175 = trunc i64 %173 to i32
  store i32 %175, i32* %174, align 4, !tbaa !4
  %176 = add nuw nsw i64 %164, 4
  %177 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 9, i64 %176
  %178 = trunc i64 %176 to i32
  store i32 %178, i32* %177, align 4, !tbaa !4
  %179 = add nuw nsw i64 %164, 5
  %180 = icmp eq i64 %179, 100
  br i1 %180, label %181, label %163, !llvm.loop !8

181:                                              ; preds = %163, %181
  %182 = phi i64 [ %197, %181 ], [ 0, %163 ]
  %183 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 10, i64 %182
  %184 = trunc i64 %182 to i32
  store i32 %184, i32* %183, align 4, !tbaa !4
  %185 = add nuw nsw i64 %182, 1
  %186 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 10, i64 %185
  %187 = trunc i64 %185 to i32
  store i32 %187, i32* %186, align 4, !tbaa !4
  %188 = add nuw nsw i64 %182, 2
  %189 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 10, i64 %188
  %190 = trunc i64 %188 to i32
  store i32 %190, i32* %189, align 4, !tbaa !4
  %191 = add nuw nsw i64 %182, 3
  %192 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 10, i64 %191
  %193 = trunc i64 %191 to i32
  store i32 %193, i32* %192, align 4, !tbaa !4
  %194 = add nuw nsw i64 %182, 4
  %195 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 10, i64 %194
  %196 = trunc i64 %194 to i32
  store i32 %196, i32* %195, align 4, !tbaa !4
  %197 = add nuw nsw i64 %182, 5
  %198 = icmp eq i64 %197, 100
  br i1 %198, label %199, label %181, !llvm.loop !8

199:                                              ; preds = %181, %199
  %200 = phi i64 [ %215, %199 ], [ 0, %181 ]
  %201 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 11, i64 %200
  %202 = trunc i64 %200 to i32
  store i32 %202, i32* %201, align 4, !tbaa !4
  %203 = add nuw nsw i64 %200, 1
  %204 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 11, i64 %203
  %205 = trunc i64 %203 to i32
  store i32 %205, i32* %204, align 4, !tbaa !4
  %206 = add nuw nsw i64 %200, 2
  %207 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 11, i64 %206
  %208 = trunc i64 %206 to i32
  store i32 %208, i32* %207, align 4, !tbaa !4
  %209 = add nuw nsw i64 %200, 3
  %210 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 11, i64 %209
  %211 = trunc i64 %209 to i32
  store i32 %211, i32* %210, align 4, !tbaa !4
  %212 = add nuw nsw i64 %200, 4
  %213 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 11, i64 %212
  %214 = trunc i64 %212 to i32
  store i32 %214, i32* %213, align 4, !tbaa !4
  %215 = add nuw nsw i64 %200, 5
  %216 = icmp eq i64 %215, 100
  br i1 %216, label %217, label %199, !llvm.loop !8

217:                                              ; preds = %199, %217
  %218 = phi i64 [ %233, %217 ], [ 0, %199 ]
  %219 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 12, i64 %218
  %220 = trunc i64 %218 to i32
  store i32 %220, i32* %219, align 4, !tbaa !4
  %221 = add nuw nsw i64 %218, 1
  %222 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 12, i64 %221
  %223 = trunc i64 %221 to i32
  store i32 %223, i32* %222, align 4, !tbaa !4
  %224 = add nuw nsw i64 %218, 2
  %225 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 12, i64 %224
  %226 = trunc i64 %224 to i32
  store i32 %226, i32* %225, align 4, !tbaa !4
  %227 = add nuw nsw i64 %218, 3
  %228 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 12, i64 %227
  %229 = trunc i64 %227 to i32
  store i32 %229, i32* %228, align 4, !tbaa !4
  %230 = add nuw nsw i64 %218, 4
  %231 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 12, i64 %230
  %232 = trunc i64 %230 to i32
  store i32 %232, i32* %231, align 4, !tbaa !4
  %233 = add nuw nsw i64 %218, 5
  %234 = icmp eq i64 %233, 100
  br i1 %234, label %235, label %217, !llvm.loop !8

235:                                              ; preds = %217, %235
  %236 = phi i64 [ %251, %235 ], [ 0, %217 ]
  %237 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 13, i64 %236
  %238 = trunc i64 %236 to i32
  store i32 %238, i32* %237, align 4, !tbaa !4
  %239 = add nuw nsw i64 %236, 1
  %240 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 13, i64 %239
  %241 = trunc i64 %239 to i32
  store i32 %241, i32* %240, align 4, !tbaa !4
  %242 = add nuw nsw i64 %236, 2
  %243 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 13, i64 %242
  %244 = trunc i64 %242 to i32
  store i32 %244, i32* %243, align 4, !tbaa !4
  %245 = add nuw nsw i64 %236, 3
  %246 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 13, i64 %245
  %247 = trunc i64 %245 to i32
  store i32 %247, i32* %246, align 4, !tbaa !4
  %248 = add nuw nsw i64 %236, 4
  %249 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 13, i64 %248
  %250 = trunc i64 %248 to i32
  store i32 %250, i32* %249, align 4, !tbaa !4
  %251 = add nuw nsw i64 %236, 5
  %252 = icmp eq i64 %251, 100
  br i1 %252, label %253, label %235, !llvm.loop !8

253:                                              ; preds = %235, %253
  %254 = phi i64 [ %269, %253 ], [ 0, %235 ]
  %255 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 14, i64 %254
  %256 = trunc i64 %254 to i32
  store i32 %256, i32* %255, align 4, !tbaa !4
  %257 = add nuw nsw i64 %254, 1
  %258 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 14, i64 %257
  %259 = trunc i64 %257 to i32
  store i32 %259, i32* %258, align 4, !tbaa !4
  %260 = add nuw nsw i64 %254, 2
  %261 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 14, i64 %260
  %262 = trunc i64 %260 to i32
  store i32 %262, i32* %261, align 4, !tbaa !4
  %263 = add nuw nsw i64 %254, 3
  %264 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 14, i64 %263
  %265 = trunc i64 %263 to i32
  store i32 %265, i32* %264, align 4, !tbaa !4
  %266 = add nuw nsw i64 %254, 4
  %267 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 14, i64 %266
  %268 = trunc i64 %266 to i32
  store i32 %268, i32* %267, align 4, !tbaa !4
  %269 = add nuw nsw i64 %254, 5
  %270 = icmp eq i64 %269, 100
  br i1 %270, label %271, label %253, !llvm.loop !8

271:                                              ; preds = %253, %271
  %272 = phi i64 [ %287, %271 ], [ 0, %253 ]
  %273 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 15, i64 %272
  %274 = trunc i64 %272 to i32
  store i32 %274, i32* %273, align 4, !tbaa !4
  %275 = add nuw nsw i64 %272, 1
  %276 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 15, i64 %275
  %277 = trunc i64 %275 to i32
  store i32 %277, i32* %276, align 4, !tbaa !4
  %278 = add nuw nsw i64 %272, 2
  %279 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 15, i64 %278
  %280 = trunc i64 %278 to i32
  store i32 %280, i32* %279, align 4, !tbaa !4
  %281 = add nuw nsw i64 %272, 3
  %282 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 15, i64 %281
  %283 = trunc i64 %281 to i32
  store i32 %283, i32* %282, align 4, !tbaa !4
  %284 = add nuw nsw i64 %272, 4
  %285 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 15, i64 %284
  %286 = trunc i64 %284 to i32
  store i32 %286, i32* %285, align 4, !tbaa !4
  %287 = add nuw nsw i64 %272, 5
  %288 = icmp eq i64 %287, 100
  br i1 %288, label %289, label %271, !llvm.loop !8

289:                                              ; preds = %271, %289
  %290 = phi i64 [ %305, %289 ], [ 0, %271 ]
  %291 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 16, i64 %290
  %292 = trunc i64 %290 to i32
  store i32 %292, i32* %291, align 4, !tbaa !4
  %293 = add nuw nsw i64 %290, 1
  %294 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 16, i64 %293
  %295 = trunc i64 %293 to i32
  store i32 %295, i32* %294, align 4, !tbaa !4
  %296 = add nuw nsw i64 %290, 2
  %297 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 16, i64 %296
  %298 = trunc i64 %296 to i32
  store i32 %298, i32* %297, align 4, !tbaa !4
  %299 = add nuw nsw i64 %290, 3
  %300 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 16, i64 %299
  %301 = trunc i64 %299 to i32
  store i32 %301, i32* %300, align 4, !tbaa !4
  %302 = add nuw nsw i64 %290, 4
  %303 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 16, i64 %302
  %304 = trunc i64 %302 to i32
  store i32 %304, i32* %303, align 4, !tbaa !4
  %305 = add nuw nsw i64 %290, 5
  %306 = icmp eq i64 %305, 100
  br i1 %306, label %307, label %289, !llvm.loop !8

307:                                              ; preds = %289, %307
  %308 = phi i64 [ %323, %307 ], [ 0, %289 ]
  %309 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 17, i64 %308
  %310 = trunc i64 %308 to i32
  store i32 %310, i32* %309, align 4, !tbaa !4
  %311 = add nuw nsw i64 %308, 1
  %312 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 17, i64 %311
  %313 = trunc i64 %311 to i32
  store i32 %313, i32* %312, align 4, !tbaa !4
  %314 = add nuw nsw i64 %308, 2
  %315 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 17, i64 %314
  %316 = trunc i64 %314 to i32
  store i32 %316, i32* %315, align 4, !tbaa !4
  %317 = add nuw nsw i64 %308, 3
  %318 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 17, i64 %317
  %319 = trunc i64 %317 to i32
  store i32 %319, i32* %318, align 4, !tbaa !4
  %320 = add nuw nsw i64 %308, 4
  %321 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 17, i64 %320
  %322 = trunc i64 %320 to i32
  store i32 %322, i32* %321, align 4, !tbaa !4
  %323 = add nuw nsw i64 %308, 5
  %324 = icmp eq i64 %323, 100
  br i1 %324, label %325, label %307, !llvm.loop !8

325:                                              ; preds = %307, %325
  %326 = phi i64 [ %341, %325 ], [ 0, %307 ]
  %327 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 18, i64 %326
  %328 = trunc i64 %326 to i32
  store i32 %328, i32* %327, align 4, !tbaa !4
  %329 = add nuw nsw i64 %326, 1
  %330 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 18, i64 %329
  %331 = trunc i64 %329 to i32
  store i32 %331, i32* %330, align 4, !tbaa !4
  %332 = add nuw nsw i64 %326, 2
  %333 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 18, i64 %332
  %334 = trunc i64 %332 to i32
  store i32 %334, i32* %333, align 4, !tbaa !4
  %335 = add nuw nsw i64 %326, 3
  %336 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 18, i64 %335
  %337 = trunc i64 %335 to i32
  store i32 %337, i32* %336, align 4, !tbaa !4
  %338 = add nuw nsw i64 %326, 4
  %339 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 18, i64 %338
  %340 = trunc i64 %338 to i32
  store i32 %340, i32* %339, align 4, !tbaa !4
  %341 = add nuw nsw i64 %326, 5
  %342 = icmp eq i64 %341, 100
  br i1 %342, label %343, label %325, !llvm.loop !8

343:                                              ; preds = %325, %343
  %344 = phi i64 [ %359, %343 ], [ 0, %325 ]
  %345 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 19, i64 %344
  %346 = trunc i64 %344 to i32
  store i32 %346, i32* %345, align 4, !tbaa !4
  %347 = add nuw nsw i64 %344, 1
  %348 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 19, i64 %347
  %349 = trunc i64 %347 to i32
  store i32 %349, i32* %348, align 4, !tbaa !4
  %350 = add nuw nsw i64 %344, 2
  %351 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 19, i64 %350
  %352 = trunc i64 %350 to i32
  store i32 %352, i32* %351, align 4, !tbaa !4
  %353 = add nuw nsw i64 %344, 3
  %354 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 19, i64 %353
  %355 = trunc i64 %353 to i32
  store i32 %355, i32* %354, align 4, !tbaa !4
  %356 = add nuw nsw i64 %344, 4
  %357 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 19, i64 %356
  %358 = trunc i64 %356 to i32
  store i32 %358, i32* %357, align 4, !tbaa !4
  %359 = add nuw nsw i64 %344, 5
  %360 = icmp eq i64 %359, 100
  br i1 %360, label %361, label %343, !llvm.loop !8

361:                                              ; preds = %343
  %362 = load i32, i32* getelementptr inbounds ([20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 19, i64 23), align 4, !tbaa !4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 18, i64 %363
  %365 = load i32, i32* %364, align 4, !tbaa !4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 17, i64 %366
  %368 = load i32, i32* %367, align 4, !tbaa !4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 16, i64 %369
  %371 = load i32, i32* %370, align 4, !tbaa !4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 15, i64 %372
  %374 = load i32, i32* %373, align 4, !tbaa !4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 14, i64 %375
  %377 = load i32, i32* %376, align 4, !tbaa !4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 13, i64 %378
  %380 = load i32, i32* %379, align 4, !tbaa !4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 12, i64 %381
  %383 = load i32, i32* %382, align 4, !tbaa !4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 11, i64 %384
  %386 = load i32, i32* %385, align 4, !tbaa !4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 10, i64 %387
  %389 = load i32, i32* %388, align 4, !tbaa !4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 9, i64 %390
  %392 = load i32, i32* %391, align 4, !tbaa !4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 8, i64 %393
  %395 = load i32, i32* %394, align 4, !tbaa !4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 7, i64 %396
  %398 = load i32, i32* %397, align 4, !tbaa !4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 6, i64 %399
  %401 = load i32, i32* %400, align 4, !tbaa !4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 5, i64 %402
  %404 = load i32, i32* %403, align 4, !tbaa !4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 4, i64 %405
  %407 = load i32, i32* %406, align 4, !tbaa !4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 3, i64 %408
  %410 = load i32, i32* %409, align 4, !tbaa !4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 2, i64 %411
  %413 = load i32, i32* %412, align 4, !tbaa !4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 1, i64 %414
  %416 = load i32, i32* %415, align 4, !tbaa !4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 0, i64 %417
  %419 = load i32, i32* %418, align 4, !tbaa !4
  %420 = load i32, i32* getelementptr inbounds ([20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 19, i64 18), align 8, !tbaa !4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %421, i64 17
  %423 = load i32, i32* %422, align 4, !tbaa !4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %424, i64 16
  %426 = load i32, i32* %425, align 16, !tbaa !4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %427, i64 15
  %429 = load i32, i32* %428, align 4, !tbaa !4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %430, i64 14
  %432 = load i32, i32* %431, align 8, !tbaa !4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %433, i64 13
  %435 = load i32, i32* %434, align 4, !tbaa !4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %436, i64 12
  %438 = load i32, i32* %437, align 16, !tbaa !4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %439, i64 11
  %441 = load i32, i32* %440, align 4, !tbaa !4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %442, i64 10
  %444 = load i32, i32* %443, align 8, !tbaa !4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %445, i64 9
  %447 = load i32, i32* %446, align 4, !tbaa !4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %448, i64 8
  %450 = load i32, i32* %449, align 16, !tbaa !4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %451, i64 7
  %453 = load i32, i32* %452, align 4, !tbaa !4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %454, i64 6
  %456 = load i32, i32* %455, align 8, !tbaa !4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %457, i64 5
  %459 = load i32, i32* %458, align 4, !tbaa !4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %460, i64 4
  %462 = load i32, i32* %461, align 16, !tbaa !4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %463, i64 3
  %465 = load i32, i32* %464, align 4, !tbaa !4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %466, i64 2
  %468 = load i32, i32* %467, align 8, !tbaa !4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %469, i64 1
  %471 = load i32, i32* %470, align 4, !tbaa !4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %472, i64 0
  %474 = load i32, i32* %473, align 16, !tbaa !4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [20 x [100 x i32]], [20 x [100 x i32]]* @array, i64 0, i64 %475, i64 56
  %477 = load i32, i32* %476, align 16, !tbaa !4
  %478 = add nsw i32 %477, %419
  tail call void @_Z6putinti(i32 noundef %478)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
