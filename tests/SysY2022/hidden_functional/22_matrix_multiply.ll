; ModuleID = 'tests//SysY2022/hidden_functional/22_matrix_multiply.sy'
source_filename = "tests//SysY2022/hidden_functional/22_matrix_multiply.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@res = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@n1 = dso_local local_unnamed_addr global i32 0, align 4
@m1 = dso_local local_unnamed_addr global i32 0, align 4
@n2 = dso_local local_unnamed_addr global i32 0, align 4
@m2 = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z15matrix_multiplyv() local_unnamed_addr #0 {
  %1 = load i32, i32* @m1, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %95

3:                                                ; preds = %0
  %4 = load i32, i32* @n2, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 0
  %6 = load i32, i32* @n1, align 4
  %7 = icmp sgt i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %95

9:                                                ; preds = %3
  %10 = zext i32 %1 to i64
  %11 = zext i32 %4 to i64
  %12 = zext i32 %6 to i64
  %13 = icmp ult i32 %6, 8
  %14 = and i64 %12, 4294967288
  %15 = icmp eq i64 %14, %12
  br label %16

16:                                               ; preds = %9, %92
  %17 = phi i64 [ 0, %9 ], [ %93, %92 ]
  br label %18

18:                                               ; preds = %88, %16
  %19 = phi i64 [ %90, %88 ], [ 0, %16 ]
  %20 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @res, i64 0, i64 %17, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  br i1 %13, label %74, label %22

22:                                               ; preds = %18
  %23 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %21, i64 0
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ 0, %22 ], [ %69, %24 ]
  %26 = phi <4 x i32> [ %23, %22 ], [ %67, %24 ]
  %27 = phi <4 x i32> [ zeroinitializer, %22 ], [ %68, %24 ]
  %28 = or i64 %25, 1
  %29 = or i64 %25, 2
  %30 = or i64 %25, 3
  %31 = or i64 %25, 4
  %32 = or i64 %25, 5
  %33 = or i64 %25, 6
  %34 = or i64 %25, 7
  %35 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %17, i64 %25
  %36 = bitcast i32* %35 to <4 x i32>*
  %37 = load <4 x i32>, <4 x i32>* %36, align 16, !tbaa !5
  %38 = getelementptr inbounds i32, i32* %35, i64 4
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 16, !tbaa !5
  %41 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %25, i64 %19
  %42 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %28, i64 %19
  %43 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %29, i64 %19
  %44 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %30, i64 %19
  %45 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %31, i64 %19
  %46 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %32, i64 %19
  %47 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %33, i64 %19
  %48 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %34, i64 %19
  %49 = load i32, i32* %41, align 4, !tbaa !5
  %50 = load i32, i32* %42, align 4, !tbaa !5
  %51 = load i32, i32* %43, align 4, !tbaa !5
  %52 = load i32, i32* %44, align 4, !tbaa !5
  %53 = insertelement <4 x i32> poison, i32 %49, i64 0
  %54 = insertelement <4 x i32> %53, i32 %50, i64 1
  %55 = insertelement <4 x i32> %54, i32 %51, i64 2
  %56 = insertelement <4 x i32> %55, i32 %52, i64 3
  %57 = load i32, i32* %45, align 4, !tbaa !5
  %58 = load i32, i32* %46, align 4, !tbaa !5
  %59 = load i32, i32* %47, align 4, !tbaa !5
  %60 = load i32, i32* %48, align 4, !tbaa !5
  %61 = insertelement <4 x i32> poison, i32 %57, i64 0
  %62 = insertelement <4 x i32> %61, i32 %58, i64 1
  %63 = insertelement <4 x i32> %62, i32 %59, i64 2
  %64 = insertelement <4 x i32> %63, i32 %60, i64 3
  %65 = mul nsw <4 x i32> %56, %37
  %66 = mul nsw <4 x i32> %64, %40
  %67 = add <4 x i32> %65, %26
  %68 = add <4 x i32> %66, %27
  %69 = add nuw i64 %25, 8
  %70 = icmp eq i64 %69, %14
  br i1 %70, label %71, label %24, !llvm.loop !9

71:                                               ; preds = %24
  %72 = add <4 x i32> %68, %67
  %73 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %72)
  br i1 %15, label %88, label %74

74:                                               ; preds = %18, %71
  %75 = phi i64 [ 0, %18 ], [ %14, %71 ]
  %76 = phi i32 [ %21, %18 ], [ %73, %71 ]
  br label %77

77:                                               ; preds = %74, %77
  %78 = phi i64 [ %86, %77 ], [ %75, %74 ]
  %79 = phi i32 [ %85, %77 ], [ %76, %74 ]
  %80 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %17, i64 %78
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %78, i64 %19
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = mul nsw i32 %83, %81
  %85 = add nsw i32 %84, %79
  %86 = add nuw nsw i64 %78, 1
  %87 = icmp eq i64 %86, %12
  br i1 %87, label %88, label %77, !llvm.loop !12

88:                                               ; preds = %77, %71
  %89 = phi i32 [ %73, %71 ], [ %85, %77 ]
  store i32 %89, i32* %20, align 4, !tbaa !5
  %90 = add nuw nsw i64 %19, 1
  %91 = icmp eq i64 %90, %11
  br i1 %91, label %92, label %18, !llvm.loop !14

92:                                               ; preds = %88
  %93 = add nuw nsw i64 %17, 1
  %94 = icmp eq i64 %93, %10
  br i1 %94, label %95, label %16, !llvm.loop !15

95:                                               ; preds = %92, %3, %0
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @m1, align 4, !tbaa !5
  %2 = tail call noundef i32 @_Z6getintv()
  store i32 %2, i32* @n1, align 4, !tbaa !5
  %3 = load i32, i32* @m1, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  %5 = icmp sgt i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %0, %22
  %8 = phi i32 [ %23, %22 ], [ %3, %0 ]
  %9 = phi i32 [ %24, %22 ], [ %2, %0 ]
  %10 = phi i64 [ %25, %22 ], [ 0, %0 ]
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %16, %12 ], [ 0, %7 ]
  %14 = tail call noundef i32 @_Z6getintv()
  %15 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %10, i64 %13
  store i32 %14, i32* %15, align 4, !tbaa !5
  %16 = add nuw nsw i64 %13, 1
  %17 = load i32, i32* @n1, align 4, !tbaa !5
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %12, label %20, !llvm.loop !16

20:                                               ; preds = %12
  %21 = load i32, i32* @m1, align 4, !tbaa !5
  br label %22

22:                                               ; preds = %20, %7
  %23 = phi i32 [ %21, %20 ], [ %8, %7 ]
  %24 = phi i32 [ %17, %20 ], [ %9, %7 ]
  %25 = add nuw nsw i64 %10, 1
  %26 = sext i32 %23 to i64
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %7, label %28, !llvm.loop !17

28:                                               ; preds = %22, %0
  %29 = tail call noundef i32 @_Z6getintv()
  store i32 %29, i32* @m2, align 4, !tbaa !5
  %30 = tail call noundef i32 @_Z6getintv()
  store i32 %30, i32* @n2, align 4, !tbaa !5
  %31 = load i32, i32* @m2, align 4, !tbaa !5
  %32 = icmp sgt i32 %31, 0
  %33 = icmp sgt i32 %30, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %28, %50
  %36 = phi i32 [ %51, %50 ], [ %31, %28 ]
  %37 = phi i32 [ %52, %50 ], [ %30, %28 ]
  %38 = phi i64 [ %53, %50 ], [ 0, %28 ]
  %39 = icmp sgt i32 %37, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35, %40
  %41 = phi i64 [ %44, %40 ], [ 0, %35 ]
  %42 = tail call noundef i32 @_Z6getintv()
  %43 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %38, i64 %41
  store i32 %42, i32* %43, align 4, !tbaa !5
  %44 = add nuw nsw i64 %41, 1
  %45 = load i32, i32* @n2, align 4, !tbaa !5
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %40, label %48, !llvm.loop !19

48:                                               ; preds = %40
  %49 = load i32, i32* @m2, align 4, !tbaa !5
  br label %50

50:                                               ; preds = %48, %35
  %51 = phi i32 [ %49, %48 ], [ %36, %35 ]
  %52 = phi i32 [ %45, %48 ], [ %37, %35 ]
  %53 = add nuw nsw i64 %38, 1
  %54 = sext i32 %51 to i64
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %35, label %56, !llvm.loop !20

56:                                               ; preds = %50, %28
  %57 = phi i32 [ %30, %28 ], [ %52, %50 ]
  %58 = load i32, i32* @m1, align 4, !tbaa !5
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %172

60:                                               ; preds = %56
  %61 = icmp sgt i32 %57, 0
  %62 = load i32, i32* @n1, align 4
  %63 = icmp sgt i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %152

65:                                               ; preds = %60
  %66 = zext i32 %58 to i64
  %67 = zext i32 %57 to i64
  %68 = zext i32 %62 to i64
  %69 = icmp ult i32 %62, 8
  %70 = and i64 %68, 4294967288
  %71 = icmp eq i64 %70, %68
  br label %72

72:                                               ; preds = %148, %65
  %73 = phi i64 [ 0, %65 ], [ %149, %148 ]
  br label %74

74:                                               ; preds = %144, %72
  %75 = phi i64 [ %146, %144 ], [ 0, %72 ]
  %76 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @res, i64 0, i64 %73, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !5
  br i1 %69, label %130, label %78

78:                                               ; preds = %74
  %79 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %77, i64 0
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi i64 [ 0, %78 ], [ %125, %80 ]
  %82 = phi <4 x i32> [ %79, %78 ], [ %123, %80 ]
  %83 = phi <4 x i32> [ zeroinitializer, %78 ], [ %124, %80 ]
  %84 = or i64 %81, 1
  %85 = or i64 %81, 2
  %86 = or i64 %81, 3
  %87 = or i64 %81, 4
  %88 = or i64 %81, 5
  %89 = or i64 %81, 6
  %90 = or i64 %81, 7
  %91 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %73, i64 %81
  %92 = bitcast i32* %91 to <4 x i32>*
  %93 = load <4 x i32>, <4 x i32>* %92, align 16, !tbaa !5
  %94 = getelementptr inbounds i32, i32* %91, i64 4
  %95 = bitcast i32* %94 to <4 x i32>*
  %96 = load <4 x i32>, <4 x i32>* %95, align 16, !tbaa !5
  %97 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %81, i64 %75
  %98 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %84, i64 %75
  %99 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %85, i64 %75
  %100 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %86, i64 %75
  %101 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %87, i64 %75
  %102 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %88, i64 %75
  %103 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %89, i64 %75
  %104 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %90, i64 %75
  %105 = load i32, i32* %97, align 4, !tbaa !5
  %106 = load i32, i32* %98, align 4, !tbaa !5
  %107 = load i32, i32* %99, align 4, !tbaa !5
  %108 = load i32, i32* %100, align 4, !tbaa !5
  %109 = insertelement <4 x i32> poison, i32 %105, i64 0
  %110 = insertelement <4 x i32> %109, i32 %106, i64 1
  %111 = insertelement <4 x i32> %110, i32 %107, i64 2
  %112 = insertelement <4 x i32> %111, i32 %108, i64 3
  %113 = load i32, i32* %101, align 4, !tbaa !5
  %114 = load i32, i32* %102, align 4, !tbaa !5
  %115 = load i32, i32* %103, align 4, !tbaa !5
  %116 = load i32, i32* %104, align 4, !tbaa !5
  %117 = insertelement <4 x i32> poison, i32 %113, i64 0
  %118 = insertelement <4 x i32> %117, i32 %114, i64 1
  %119 = insertelement <4 x i32> %118, i32 %115, i64 2
  %120 = insertelement <4 x i32> %119, i32 %116, i64 3
  %121 = mul nsw <4 x i32> %112, %93
  %122 = mul nsw <4 x i32> %120, %96
  %123 = add <4 x i32> %121, %82
  %124 = add <4 x i32> %122, %83
  %125 = add nuw i64 %81, 8
  %126 = icmp eq i64 %125, %70
  br i1 %126, label %127, label %80, !llvm.loop !21

127:                                              ; preds = %80
  %128 = add <4 x i32> %124, %123
  %129 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %128)
  br i1 %71, label %144, label %130

130:                                              ; preds = %74, %127
  %131 = phi i64 [ 0, %74 ], [ %70, %127 ]
  %132 = phi i32 [ %77, %74 ], [ %129, %127 ]
  br label %133

133:                                              ; preds = %130, %133
  %134 = phi i64 [ %142, %133 ], [ %131, %130 ]
  %135 = phi i32 [ %141, %133 ], [ %132, %130 ]
  %136 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %73, i64 %134
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %138 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %134, i64 %75
  %139 = load i32, i32* %138, align 4, !tbaa !5
  %140 = mul nsw i32 %139, %137
  %141 = add nsw i32 %140, %135
  %142 = add nuw nsw i64 %134, 1
  %143 = icmp eq i64 %142, %68
  br i1 %143, label %144, label %133, !llvm.loop !22

144:                                              ; preds = %133, %127
  %145 = phi i32 [ %129, %127 ], [ %141, %133 ]
  store i32 %145, i32* %76, align 4, !tbaa !5
  %146 = add nuw nsw i64 %75, 1
  %147 = icmp eq i64 %146, %67
  br i1 %147, label %148, label %74, !llvm.loop !14

148:                                              ; preds = %144
  %149 = add nuw nsw i64 %73, 1
  %150 = icmp eq i64 %149, %66
  br i1 %150, label %151, label %72, !llvm.loop !15

151:                                              ; preds = %148
  br i1 %59, label %152, label %172

152:                                              ; preds = %60, %151
  br label %153

153:                                              ; preds = %152, %170
  %154 = phi i32 [ %171, %170 ], [ %57, %152 ]
  %155 = phi i64 [ %166, %170 ], [ 0, %152 ]
  %156 = icmp sgt i32 %154, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153, %157
  %158 = phi i64 [ %161, %157 ], [ 0, %153 ]
  %159 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @res, i64 0, i64 %155, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %160)
  tail call void @_Z5putchi(i32 noundef 32)
  %161 = add nuw nsw i64 %158, 1
  %162 = load i32, i32* @n2, align 4, !tbaa !5
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %157, label %165, !llvm.loop !23

165:                                              ; preds = %157, %153
  tail call void @_Z5putchi(i32 noundef 10)
  %166 = add nuw nsw i64 %155, 1
  %167 = load i32, i32* @m1, align 4, !tbaa !5
  %168 = sext i32 %167 to i64
  %169 = icmp slt i64 %166, %168
  br i1 %169, label %170, label %172, !llvm.loop !24

170:                                              ; preds = %165
  %171 = load i32, i32* @n2, align 4, !tbaa !5
  br label %153

172:                                              ; preds = %165, %56, %151
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone willreturn }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !18}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !13, !11}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
