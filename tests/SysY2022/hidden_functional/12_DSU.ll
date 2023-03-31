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
  br i1 %14, label %7, label %4, !llvm.loop !5

15:                                               ; preds = %4, %15
  %16 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %21, %15 ], [ %5, %4 ]
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add i32 %19, %18
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %15, label %24, !llvm.loop !7

24:                                               ; preds = %15
  %25 = icmp eq i32 %6, 0
  %26 = sub nsw i32 0, %20
  %27 = select i1 %25, i32 %20, i32 %26
  ret i32 %27
}

declare noundef i32 @_Z5getchv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z4initv() local_unnamed_addr #2 {
  %1 = load i32, i32* @n, align 4, !tbaa !8
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %61, label %3

3:                                                ; preds = %0
  %4 = add nuw i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = add nsw i64 %5, -1
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %53, label %8

8:                                                ; preds = %3
  %9 = and i64 %6, -8
  %10 = or i64 %9, 1
  %11 = add nsw i64 %9, -8
  %12 = lshr exact i64 %11, 3
  %13 = add nuw nsw i64 %12, 1
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %11, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %8
  %17 = and i64 %13, 4611686018427387902
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %35, %18 ]
  %20 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %16 ], [ %36, %18 ]
  %21 = phi i64 [ 0, %16 ], [ %37, %18 ]
  %22 = or i64 %19, 1
  %23 = add <4 x i32> %20, <i32 4, i32 4, i32 4, i32 4>
  %24 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %22
  %25 = bitcast i32* %24 to <4 x i32>*
  store <4 x i32> %20, <4 x i32>* %25, align 4, !tbaa !8
  %26 = getelementptr inbounds i32, i32* %24, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  store <4 x i32> %23, <4 x i32>* %27, align 4, !tbaa !8
  %28 = add <4 x i32> %20, <i32 8, i32 8, i32 8, i32 8>
  %29 = or i64 %19, 9
  %30 = add <4 x i32> %20, <i32 12, i32 12, i32 12, i32 12>
  %31 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %29
  %32 = bitcast i32* %31 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %32, align 4, !tbaa !8
  %33 = getelementptr inbounds i32, i32* %31, i64 4
  %34 = bitcast i32* %33 to <4 x i32>*
  store <4 x i32> %30, <4 x i32>* %34, align 4, !tbaa !8
  %35 = add nuw i64 %19, 16
  %36 = add <4 x i32> %20, <i32 16, i32 16, i32 16, i32 16>
  %37 = add i64 %21, 2
  %38 = icmp eq i64 %37, %17
  br i1 %38, label %39, label %18, !llvm.loop !12

39:                                               ; preds = %18
  %40 = or i64 %35, 1
  br label %41

41:                                               ; preds = %39, %8
  %42 = phi i64 [ 1, %8 ], [ %40, %39 ]
  %43 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %8 ], [ %36, %39 ]
  %44 = icmp eq i64 %14, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = add <4 x i32> %43, <i32 4, i32 4, i32 4, i32 4>
  %47 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %42
  %48 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> %43, <4 x i32>* %48, align 4, !tbaa !8
  %49 = getelementptr inbounds i32, i32* %47, i64 4
  %50 = bitcast i32* %49 to <4 x i32>*
  store <4 x i32> %46, <4 x i32>* %50, align 4, !tbaa !8
  br label %51

51:                                               ; preds = %41, %45
  %52 = icmp eq i64 %6, %9
  br i1 %52, label %61, label %53

53:                                               ; preds = %3, %51
  %54 = phi i64 [ 1, %3 ], [ %10, %51 ]
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi i64 [ %59, %55 ], [ %54, %53 ]
  %57 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %56
  %58 = trunc i64 %56 to i32
  store i32 %58, i32* %57, align 4, !tbaa !8
  %59 = add nuw nsw i64 %56, 1
  %60 = icmp eq i64 %59, %5
  br i1 %60, label %61, label %55, !llvm.loop !14

61:                                               ; preds = %55, %51, %0
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4findi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4, !tbaa !8
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1, %8
  %7 = phi i32 [ %9, %8 ], [ %0, %1 ]
  ret i32 %7

8:                                                ; preds = %1
  %9 = tail call noundef i32 @_Z4findi(i32 noundef %4)
  store i32 %9, i32* %3, align 4, !tbaa !8
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
  br i1 %14, label %7, label %4, !llvm.loop !5

15:                                               ; preds = %15, %4
  %16 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %21, %15 ], [ %5, %4 ]
  %18 = mul nsw i32 %16, 10
  %19 = add nsw i32 %17, -48
  %20 = add i32 %19, %18
  %21 = tail call noundef i32 @_Z5getchv()
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %15, label %24, !llvm.loop !7

24:                                               ; preds = %15
  %25 = icmp eq i32 %6, 0
  %26 = sub nsw i32 0, %20
  %27 = select i1 %25, i32 %20, i32 %26
  store i32 %27, i32* @n, align 4, !tbaa !8
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
  br i1 %41, label %34, label %31, !llvm.loop !5

42:                                               ; preds = %42, %31
  %43 = phi i32 [ %47, %42 ], [ 0, %31 ]
  %44 = phi i32 [ %48, %42 ], [ %32, %31 ]
  %45 = mul nsw i32 %43, 10
  %46 = add nsw i32 %44, -48
  %47 = add i32 %46, %45
  %48 = tail call noundef i32 @_Z5getchv()
  %49 = add i32 %48, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %42, label %51, !llvm.loop !7

51:                                               ; preds = %42
  %52 = icmp eq i32 %33, 0
  %53 = sub nsw i32 0, %47
  %54 = select i1 %52, i32 %47, i32 %53
  store i32 %54, i32* @m, align 4, !tbaa !8
  %55 = load i32, i32* @n, align 4, !tbaa !8
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %115, label %57

57:                                               ; preds = %51
  %58 = add nuw i32 %55, 1
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, -1
  %61 = icmp ult i64 %60, 8
  br i1 %61, label %107, label %62

62:                                               ; preds = %57
  %63 = and i64 %60, -8
  %64 = or i64 %63, 1
  %65 = add nsw i64 %63, -8
  %66 = lshr exact i64 %65, 3
  %67 = add nuw nsw i64 %66, 1
  %68 = and i64 %67, 1
  %69 = icmp eq i64 %65, 0
  br i1 %69, label %95, label %70

70:                                               ; preds = %62
  %71 = and i64 %67, 4611686018427387902
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi i64 [ 0, %70 ], [ %89, %72 ]
  %74 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %70 ], [ %90, %72 ]
  %75 = phi i64 [ 0, %70 ], [ %91, %72 ]
  %76 = or i64 %73, 1
  %77 = add <4 x i32> %74, <i32 4, i32 4, i32 4, i32 4>
  %78 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %76
  %79 = bitcast i32* %78 to <4 x i32>*
  store <4 x i32> %74, <4 x i32>* %79, align 4, !tbaa !8
  %80 = getelementptr inbounds i32, i32* %78, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  store <4 x i32> %77, <4 x i32>* %81, align 4, !tbaa !8
  %82 = add <4 x i32> %74, <i32 8, i32 8, i32 8, i32 8>
  %83 = or i64 %73, 9
  %84 = add <4 x i32> %74, <i32 12, i32 12, i32 12, i32 12>
  %85 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %83
  %86 = bitcast i32* %85 to <4 x i32>*
  store <4 x i32> %82, <4 x i32>* %86, align 4, !tbaa !8
  %87 = getelementptr inbounds i32, i32* %85, i64 4
  %88 = bitcast i32* %87 to <4 x i32>*
  store <4 x i32> %84, <4 x i32>* %88, align 4, !tbaa !8
  %89 = add nuw i64 %73, 16
  %90 = add <4 x i32> %74, <i32 16, i32 16, i32 16, i32 16>
  %91 = add i64 %75, 2
  %92 = icmp eq i64 %91, %71
  br i1 %92, label %93, label %72, !llvm.loop !16

93:                                               ; preds = %72
  %94 = or i64 %89, 1
  br label %95

95:                                               ; preds = %93, %62
  %96 = phi i64 [ 1, %62 ], [ %94, %93 ]
  %97 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %62 ], [ %90, %93 ]
  %98 = icmp eq i64 %68, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = add <4 x i32> %97, <i32 4, i32 4, i32 4, i32 4>
  %101 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %96
  %102 = bitcast i32* %101 to <4 x i32>*
  store <4 x i32> %97, <4 x i32>* %102, align 4, !tbaa !8
  %103 = getelementptr inbounds i32, i32* %101, i64 4
  %104 = bitcast i32* %103 to <4 x i32>*
  store <4 x i32> %100, <4 x i32>* %104, align 4, !tbaa !8
  br label %105

105:                                              ; preds = %95, %99
  %106 = icmp eq i64 %60, %63
  br i1 %106, label %115, label %107

107:                                              ; preds = %57, %105
  %108 = phi i64 [ 1, %57 ], [ %64, %105 ]
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi i64 [ %113, %109 ], [ %108, %107 ]
  %111 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %110
  %112 = trunc i64 %110 to i32
  store i32 %112, i32* %111, align 4, !tbaa !8
  %113 = add nuw nsw i64 %110, 1
  %114 = icmp eq i64 %113, %59
  br i1 %114, label %115, label %109, !llvm.loop !17

115:                                              ; preds = %109, %105, %51
  %116 = icmp eq i32 %54, 0
  br i1 %116, label %247, label %117

117:                                              ; preds = %115, %243
  %118 = tail call noundef i32 @_Z5getchv()
  %119 = and i32 %118, -5
  %120 = icmp eq i32 %119, 81
  br i1 %120, label %125, label %121

121:                                              ; preds = %117, %121
  %122 = tail call noundef i32 @_Z5getchv()
  %123 = and i32 %122, -5
  %124 = icmp eq i32 %123, 81
  br i1 %124, label %125, label %121, !llvm.loop !18

125:                                              ; preds = %121, %117
  %126 = phi i32 [ %118, %117 ], [ %122, %121 ]
  %127 = icmp eq i32 %126, 81
  %128 = tail call noundef i32 @_Z5getchv()
  %129 = add i32 %128, -58
  %130 = icmp ult i32 %129, -10
  br i1 %127, label %131, label %187

131:                                              ; preds = %125
  br i1 %130, label %135, label %132

132:                                              ; preds = %135, %131
  %133 = phi i32 [ %128, %131 ], [ %140, %135 ]
  %134 = phi i32 [ 0, %131 ], [ %139, %135 ]
  br label %143

135:                                              ; preds = %131, %135
  %136 = phi i32 [ %139, %135 ], [ 0, %131 ]
  %137 = phi i32 [ %140, %135 ], [ %128, %131 ]
  %138 = icmp eq i32 %137, 45
  %139 = select i1 %138, i32 1, i32 %136
  %140 = tail call noundef i32 @_Z5getchv()
  %141 = add i32 %140, -58
  %142 = icmp ult i32 %141, -10
  br i1 %142, label %135, label %132, !llvm.loop !5

143:                                              ; preds = %143, %132
  %144 = phi i32 [ %148, %143 ], [ 0, %132 ]
  %145 = phi i32 [ %149, %143 ], [ %133, %132 ]
  %146 = mul nsw i32 %144, 10
  %147 = add nsw i32 %145, -48
  %148 = add i32 %147, %146
  %149 = tail call noundef i32 @_Z5getchv()
  %150 = add i32 %149, -48
  %151 = icmp ult i32 %150, 10
  br i1 %151, label %143, label %152, !llvm.loop !7

152:                                              ; preds = %143
  %153 = icmp eq i32 %134, 0
  %154 = sub nsw i32 0, %148
  %155 = select i1 %153, i32 %148, i32 %154
  %156 = tail call noundef i32 @_Z5getchv()
  %157 = add i32 %156, -58
  %158 = icmp ult i32 %157, -10
  br i1 %158, label %162, label %159

159:                                              ; preds = %162, %152
  %160 = phi i32 [ %156, %152 ], [ %167, %162 ]
  %161 = phi i32 [ 0, %152 ], [ %166, %162 ]
  br label %170

162:                                              ; preds = %152, %162
  %163 = phi i32 [ %166, %162 ], [ 0, %152 ]
  %164 = phi i32 [ %167, %162 ], [ %156, %152 ]
  %165 = icmp eq i32 %164, 45
  %166 = select i1 %165, i32 1, i32 %163
  %167 = tail call noundef i32 @_Z5getchv()
  %168 = add i32 %167, -58
  %169 = icmp ult i32 %168, -10
  br i1 %169, label %162, label %159, !llvm.loop !5

170:                                              ; preds = %170, %159
  %171 = phi i32 [ %175, %170 ], [ 0, %159 ]
  %172 = phi i32 [ %176, %170 ], [ %160, %159 ]
  %173 = mul nsw i32 %171, 10
  %174 = add nsw i32 %172, -48
  %175 = add i32 %174, %173
  %176 = tail call noundef i32 @_Z5getchv()
  %177 = add i32 %176, -48
  %178 = icmp ult i32 %177, 10
  br i1 %178, label %170, label %179, !llvm.loop !7

179:                                              ; preds = %170
  %180 = icmp eq i32 %161, 0
  %181 = sub nsw i32 0, %175
  %182 = select i1 %180, i32 %175, i32 %181
  %183 = tail call noundef i32 @_Z4findi(i32 noundef %155) #5
  %184 = tail call noundef i32 @_Z4findi(i32 noundef %182) #5
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  tail call void @_Z6putinti(i32 noundef %186)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %243

187:                                              ; preds = %125
  br i1 %130, label %191, label %188

188:                                              ; preds = %191, %187
  %189 = phi i32 [ %128, %187 ], [ %196, %191 ]
  %190 = phi i32 [ 0, %187 ], [ %195, %191 ]
  br label %199

191:                                              ; preds = %187, %191
  %192 = phi i32 [ %195, %191 ], [ 0, %187 ]
  %193 = phi i32 [ %196, %191 ], [ %128, %187 ]
  %194 = icmp eq i32 %193, 45
  %195 = select i1 %194, i32 1, i32 %192
  %196 = tail call noundef i32 @_Z5getchv()
  %197 = add i32 %196, -58
  %198 = icmp ult i32 %197, -10
  br i1 %198, label %191, label %188, !llvm.loop !5

199:                                              ; preds = %199, %188
  %200 = phi i32 [ %204, %199 ], [ 0, %188 ]
  %201 = phi i32 [ %205, %199 ], [ %189, %188 ]
  %202 = mul nsw i32 %200, 10
  %203 = add nsw i32 %201, -48
  %204 = add i32 %203, %202
  %205 = tail call noundef i32 @_Z5getchv()
  %206 = add i32 %205, -48
  %207 = icmp ult i32 %206, 10
  br i1 %207, label %199, label %208, !llvm.loop !7

208:                                              ; preds = %199
  %209 = icmp eq i32 %190, 0
  %210 = sub nsw i32 0, %204
  %211 = select i1 %209, i32 %204, i32 %210
  %212 = tail call noundef i32 @_Z4findi(i32 noundef %211)
  %213 = tail call noundef i32 @_Z5getchv()
  %214 = add i32 %213, -58
  %215 = icmp ult i32 %214, -10
  br i1 %215, label %219, label %216

216:                                              ; preds = %219, %208
  %217 = phi i32 [ %213, %208 ], [ %224, %219 ]
  %218 = phi i32 [ 0, %208 ], [ %223, %219 ]
  br label %227

219:                                              ; preds = %208, %219
  %220 = phi i32 [ %223, %219 ], [ 0, %208 ]
  %221 = phi i32 [ %224, %219 ], [ %213, %208 ]
  %222 = icmp eq i32 %221, 45
  %223 = select i1 %222, i32 1, i32 %220
  %224 = tail call noundef i32 @_Z5getchv()
  %225 = add i32 %224, -58
  %226 = icmp ult i32 %225, -10
  br i1 %226, label %219, label %216, !llvm.loop !5

227:                                              ; preds = %227, %216
  %228 = phi i32 [ %232, %227 ], [ 0, %216 ]
  %229 = phi i32 [ %233, %227 ], [ %217, %216 ]
  %230 = mul nsw i32 %228, 10
  %231 = add nsw i32 %229, -48
  %232 = add i32 %231, %230
  %233 = tail call noundef i32 @_Z5getchv()
  %234 = add i32 %233, -48
  %235 = icmp ult i32 %234, 10
  br i1 %235, label %227, label %236, !llvm.loop !7

236:                                              ; preds = %227
  %237 = icmp eq i32 %218, 0
  %238 = sub nsw i32 0, %232
  %239 = select i1 %237, i32 %232, i32 %238
  %240 = tail call noundef i32 @_Z4findi(i32 noundef %239)
  %241 = sext i32 %212 to i64
  %242 = getelementptr inbounds [100005 x i32], [100005 x i32]* @fa, i64 0, i64 %241
  store i32 %240, i32* %242, align 4, !tbaa !8
  br label %243

243:                                              ; preds = %236, %179
  %244 = load i32, i32* @m, align 4, !tbaa !8
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* @m, align 4, !tbaa !8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %117, !llvm.loop !19

247:                                              ; preds = %243, %115
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
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !6, !15, !13}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !6, !13}
!17 = distinct !{!17, !6, !15, !13}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
