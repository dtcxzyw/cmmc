; ModuleID = 'tests//SysY2022/hidden_functional/10_DFS.sy'
source_filename = "tests//SysY2022/hidden_functional/10_DFS.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@n = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@to = dso_local local_unnamed_addr global [5005 x i32] zeroinitializer, align 16
@next = dso_local local_unnamed_addr global [5005 x i32] zeroinitializer, align 16
@head = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16
@cnt = dso_local local_unnamed_addr global i32 0, align 4
@vis = dso_local local_unnamed_addr global [1005 x i32] zeroinitializer, align 16

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_Z8add_edgeii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, i32* @cnt, align 4, !tbaa !7
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %4
  store i32 %1, i32* %5, align 4, !tbaa !7
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !7
  %9 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %4
  store i32 %8, i32* %9, align 4, !tbaa !7
  store i32 %3, i32* %7, align 4, !tbaa !7
  %10 = add nsw i32 %3, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %11
  store i32 %0, i32* %12, align 4, !tbaa !7
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %11
  store i32 %15, i32* %16, align 4, !tbaa !7
  store i32 %10, i32* %14, align 4, !tbaa !7
  %17 = add nsw i32 %3, 2
  store i32 %17, i32* @cnt, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z4initv() local_unnamed_addr #3 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4020) bitcast ([1005 x i32]* @head to i8*), i8 -1, i64 4020, i1 false), !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z5clearv() local_unnamed_addr #4 {
  %1 = load i32, i32* @n, align 4, !tbaa !7
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  %5 = shl nuw nsw i64 %4, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([1005 x i32], [1005 x i32]* @vis, i64 0, i64 1) to i8*), i8 0, i64 %5, i1 false), !tbaa !7
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z4sameii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [1005 x i32], [1005 x i32]* @vis, i64 0, i64 %3
  store i32 1, i32* %4, align 4, !tbaa !7
  %5 = icmp eq i32 %0, %1
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %3
  %8 = load i32, i32* %7, align 4, !tbaa !7
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %26, label %10

10:                                               ; preds = %6, %22
  %11 = phi i32 [ %24, %22 ], [ %8, %6 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1005 x i32], [1005 x i32]* @vis, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = tail call noundef i32 @_Z4sameii(i32 noundef %14, i32 noundef %1)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %10, %19
  %23 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %12
  %24 = load i32, i32* %23, align 4, !tbaa !7
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %10, !llvm.loop !11

26:                                               ; preds = %22, %19, %6, %2
  %27 = phi i32 [ 1, %2 ], [ 0, %6 ], [ 0, %22 ], [ 1, %19 ]
  ret i32 %27
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
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
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4020) bitcast ([1005 x i32]* @head to i8*), i8 -1, i64 4020, i1 false) #8, !tbaa !7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %200, label %56

56:                                               ; preds = %51, %196
  %57 = tail call noundef i32 @_Z5getchv()
  %58 = and i32 %57, -5
  %59 = icmp eq i32 %58, 81
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %60
  %61 = tail call noundef i32 @_Z5getchv()
  %62 = and i32 %61, -5
  %63 = icmp eq i32 %62, 81
  br i1 %63, label %64, label %60, !llvm.loop !12

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %57, %56 ], [ %61, %60 ]
  %66 = icmp eq i32 %65, 81
  %67 = tail call noundef i32 @_Z5getchv()
  %68 = add i32 %67, -58
  %69 = icmp ult i32 %68, -10
  br i1 %66, label %70, label %129

70:                                               ; preds = %64
  br i1 %69, label %74, label %71

71:                                               ; preds = %74, %70
  %72 = phi i32 [ %67, %70 ], [ %79, %74 ]
  %73 = phi i32 [ 0, %70 ], [ %78, %74 ]
  br label %82

74:                                               ; preds = %70, %74
  %75 = phi i32 [ %78, %74 ], [ 0, %70 ]
  %76 = phi i32 [ %79, %74 ], [ %67, %70 ]
  %77 = icmp eq i32 %76, 45
  %78 = select i1 %77, i32 1, i32 %75
  %79 = tail call noundef i32 @_Z5getchv()
  %80 = add i32 %79, -58
  %81 = icmp ult i32 %80, -10
  br i1 %81, label %74, label %71, !llvm.loop !4

82:                                               ; preds = %82, %71
  %83 = phi i32 [ %87, %82 ], [ 0, %71 ]
  %84 = phi i32 [ %88, %82 ], [ %72, %71 ]
  %85 = mul nsw i32 %83, 10
  %86 = add nsw i32 %84, -48
  %87 = add i32 %86, %85
  %88 = tail call noundef i32 @_Z5getchv()
  %89 = add i32 %88, -48
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %82, label %91, !llvm.loop !6

91:                                               ; preds = %82
  %92 = icmp eq i32 %73, 0
  %93 = sub nsw i32 0, %87
  %94 = select i1 %92, i32 %87, i32 %93
  %95 = tail call noundef i32 @_Z5getchv()
  %96 = add i32 %95, -58
  %97 = icmp ult i32 %96, -10
  br i1 %97, label %101, label %98

98:                                               ; preds = %101, %91
  %99 = phi i32 [ %95, %91 ], [ %106, %101 ]
  %100 = phi i32 [ 0, %91 ], [ %105, %101 ]
  br label %109

101:                                              ; preds = %91, %101
  %102 = phi i32 [ %105, %101 ], [ 0, %91 ]
  %103 = phi i32 [ %106, %101 ], [ %95, %91 ]
  %104 = icmp eq i32 %103, 45
  %105 = select i1 %104, i32 1, i32 %102
  %106 = tail call noundef i32 @_Z5getchv()
  %107 = add i32 %106, -58
  %108 = icmp ult i32 %107, -10
  br i1 %108, label %101, label %98, !llvm.loop !4

109:                                              ; preds = %109, %98
  %110 = phi i32 [ %114, %109 ], [ 0, %98 ]
  %111 = phi i32 [ %115, %109 ], [ %99, %98 ]
  %112 = mul nsw i32 %110, 10
  %113 = add nsw i32 %111, -48
  %114 = add i32 %113, %112
  %115 = tail call noundef i32 @_Z5getchv()
  %116 = add i32 %115, -48
  %117 = icmp ult i32 %116, 10
  br i1 %117, label %109, label %118, !llvm.loop !6

118:                                              ; preds = %109
  %119 = icmp eq i32 %100, 0
  %120 = sub nsw i32 0, %114
  %121 = select i1 %119, i32 %114, i32 %120
  %122 = load i32, i32* @n, align 4, !tbaa !7
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = zext i32 %122 to i64
  %126 = shl nuw nsw i64 %125, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([1005 x i32], [1005 x i32]* @vis, i64 0, i64 1) to i8*), i8 0, i64 %126, i1 false) #8, !tbaa !7
  br label %127

127:                                              ; preds = %118, %124
  %128 = tail call noundef i32 @_Z4sameii(i32 noundef %94, i32 noundef %121)
  tail call void @_Z6putinti(i32 noundef %128)
  tail call void @_Z5putchi(i32 noundef 10)
  br label %196

129:                                              ; preds = %64
  br i1 %69, label %133, label %130

130:                                              ; preds = %133, %129
  %131 = phi i32 [ %67, %129 ], [ %138, %133 ]
  %132 = phi i32 [ 0, %129 ], [ %137, %133 ]
  br label %141

133:                                              ; preds = %129, %133
  %134 = phi i32 [ %137, %133 ], [ 0, %129 ]
  %135 = phi i32 [ %138, %133 ], [ %67, %129 ]
  %136 = icmp eq i32 %135, 45
  %137 = select i1 %136, i32 1, i32 %134
  %138 = tail call noundef i32 @_Z5getchv()
  %139 = add i32 %138, -58
  %140 = icmp ult i32 %139, -10
  br i1 %140, label %133, label %130, !llvm.loop !4

141:                                              ; preds = %141, %130
  %142 = phi i32 [ %146, %141 ], [ 0, %130 ]
  %143 = phi i32 [ %147, %141 ], [ %131, %130 ]
  %144 = mul nsw i32 %142, 10
  %145 = add nsw i32 %143, -48
  %146 = add i32 %145, %144
  %147 = tail call noundef i32 @_Z5getchv()
  %148 = add i32 %147, -48
  %149 = icmp ult i32 %148, 10
  br i1 %149, label %141, label %150, !llvm.loop !6

150:                                              ; preds = %141
  %151 = icmp eq i32 %132, 0
  %152 = sub nsw i32 0, %146
  %153 = select i1 %151, i32 %146, i32 %152
  %154 = tail call noundef i32 @_Z5getchv()
  %155 = add i32 %154, -58
  %156 = icmp ult i32 %155, -10
  br i1 %156, label %160, label %157

157:                                              ; preds = %160, %150
  %158 = phi i32 [ %154, %150 ], [ %165, %160 ]
  %159 = phi i32 [ 0, %150 ], [ %164, %160 ]
  br label %168

160:                                              ; preds = %150, %160
  %161 = phi i32 [ %164, %160 ], [ 0, %150 ]
  %162 = phi i32 [ %165, %160 ], [ %154, %150 ]
  %163 = icmp eq i32 %162, 45
  %164 = select i1 %163, i32 1, i32 %161
  %165 = tail call noundef i32 @_Z5getchv()
  %166 = add i32 %165, -58
  %167 = icmp ult i32 %166, -10
  br i1 %167, label %160, label %157, !llvm.loop !4

168:                                              ; preds = %168, %157
  %169 = phi i32 [ %173, %168 ], [ 0, %157 ]
  %170 = phi i32 [ %174, %168 ], [ %158, %157 ]
  %171 = mul nsw i32 %169, 10
  %172 = add nsw i32 %170, -48
  %173 = add i32 %172, %171
  %174 = tail call noundef i32 @_Z5getchv()
  %175 = add i32 %174, -48
  %176 = icmp ult i32 %175, 10
  br i1 %176, label %168, label %177, !llvm.loop !6

177:                                              ; preds = %168
  %178 = icmp eq i32 %159, 0
  %179 = sub nsw i32 0, %173
  %180 = select i1 %178, i32 %173, i32 %179
  %181 = load i32, i32* @cnt, align 4, !tbaa !7
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %182
  store i32 %180, i32* %183, align 4, !tbaa !7
  %184 = sext i32 %153 to i64
  %185 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4, !tbaa !7
  %187 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %182
  store i32 %186, i32* %187, align 4, !tbaa !7
  store i32 %181, i32* %185, align 4, !tbaa !7
  %188 = add nsw i32 %181, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [5005 x i32], [5005 x i32]* @to, i64 0, i64 %189
  store i32 %153, i32* %190, align 4, !tbaa !7
  %191 = sext i32 %180 to i64
  %192 = getelementptr inbounds [1005 x i32], [1005 x i32]* @head, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4, !tbaa !7
  %194 = getelementptr inbounds [5005 x i32], [5005 x i32]* @next, i64 0, i64 %189
  store i32 %193, i32* %194, align 4, !tbaa !7
  store i32 %188, i32* %192, align 4, !tbaa !7
  %195 = add nsw i32 %181, 2
  store i32 %195, i32* @cnt, align 4, !tbaa !7
  br label %196

196:                                              ; preds = %177, %127
  %197 = load i32, i32* @m, align 4, !tbaa !7
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* @m, align 4, !tbaa !7
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %56, !llvm.loop !13

200:                                              ; preds = %196, %51
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
