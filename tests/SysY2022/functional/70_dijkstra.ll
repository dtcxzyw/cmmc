; ModuleID = 'tests//SysY2022/functional/70_dijkstra.sy'
source_filename = "tests//SysY2022/functional/70_dijkstra.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@e = dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 16
@book = dso_local local_unnamed_addr global [16 x i32] zeroinitializer, align 16
@dis = dso_local local_unnamed_addr global [16 x i32] zeroinitializer, align 16
@n = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@v1 = dso_local local_unnamed_addr global i32 0, align 4
@v2 = dso_local local_unnamed_addr global i32 0, align 4
@w = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z8Dijkstrav() local_unnamed_addr #0 {
  %1 = load i32, i32* @n, align 4, !tbaa !5
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @book, i64 0, i64 1), align 4, !tbaa !5
  br label %91

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([16 x i32], [16 x i32]* @book, i64 0, i64 1) to i8*), i8 0, i64 %6, i1 false), !tbaa !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([16 x i32], [16 x i32]* @dis, i64 0, i64 1) to i8*), i8* align 4 bitcast (i32* getelementptr inbounds ([16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 1, i64 1) to i8*), i64 %6, i1 false), !tbaa !5
  store i32 1, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @book, i64 0, i64 1), align 4, !tbaa !5
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %91, label %8

8:                                                ; preds = %4
  %9 = add nuw i32 %1, 1
  %10 = zext i32 %9 to i64
  %11 = add nsw i64 %10, -1
  %12 = and i64 %11, 1
  %13 = icmp eq i32 %9, 2
  %14 = and i64 %11, -2
  %15 = icmp eq i64 %12, 0
  br label %16

16:                                               ; preds = %8, %88
  %17 = phi i32 [ %89, %88 ], [ 1, %8 ]
  br i1 %13, label %53, label %18

18:                                               ; preds = %16, %47
  %19 = phi i64 [ %50, %47 ], [ 1, %16 ]
  %20 = phi i32 [ %49, %47 ], [ 0, %16 ]
  %21 = phi i32 [ %48, %47 ], [ 65535, %16 ]
  %22 = phi i64 [ %51, %47 ], [ 0, %16 ]
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %19
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %19
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %24, i32 %21
  %31 = trunc i64 %19 to i32
  %32 = select i1 %29, i32 %31, i32 %20
  br label %33

33:                                               ; preds = %26, %18
  %34 = phi i32 [ %21, %18 ], [ %30, %26 ]
  %35 = phi i32 [ %20, %18 ], [ %32, %26 ]
  %36 = add nuw nsw i64 %19, 1
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %36
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %38, i32 %34
  %45 = trunc i64 %36 to i32
  %46 = select i1 %43, i32 %45, i32 %35
  br label %47

47:                                               ; preds = %40, %33
  %48 = phi i32 [ %34, %33 ], [ %44, %40 ]
  %49 = phi i32 [ %35, %33 ], [ %46, %40 ]
  %50 = add nuw nsw i64 %19, 2
  %51 = add i64 %22, 2
  %52 = icmp eq i64 %51, %14
  br i1 %52, label %53, label %18, !llvm.loop !9

53:                                               ; preds = %47, %16
  %54 = phi i32 [ undef, %16 ], [ %49, %47 ]
  %55 = phi i64 [ 1, %16 ], [ %50, %47 ]
  %56 = phi i32 [ 0, %16 ], [ %49, %47 ]
  %57 = phi i32 [ 65535, %16 ], [ %48, %47 ]
  br i1 %15, label %68, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %55
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %55
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = icmp eq i32 %64, 0
  %66 = trunc i64 %55 to i32
  %67 = select i1 %65, i32 %66, i32 %56
  br label %68

68:                                               ; preds = %58, %62, %53
  %69 = phi i32 [ %54, %53 ], [ %56, %58 ], [ %67, %62 ]
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %70
  store i32 1, i32* %71, align 4, !tbaa !5
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %70
  br label %73

73:                                               ; preds = %68, %85
  %74 = phi i64 [ 1, %68 ], [ %86, %85 ]
  %75 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %70, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = icmp slt i32 %76, 65535
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %74
  %80 = load i32, i32* %79, align 4, !tbaa !5
  %81 = load i32, i32* %72, align 4, !tbaa !5
  %82 = add nsw i32 %81, %76
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 %82, i32* %79, align 4, !tbaa !5
  br label %85

85:                                               ; preds = %78, %84, %73
  %86 = add nuw nsw i64 %74, 1
  %87 = icmp eq i64 %86, %10
  br i1 %87, label %88, label %73, !llvm.loop !11

88:                                               ; preds = %85
  %89 = add nuw nsw i32 %17, 1
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %91, label %16, !llvm.loop !12

91:                                               ; preds = %88, %3, %4
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call noundef i32 @_Z6getintv()
  store i32 %1, i32* @n, align 4, !tbaa !5
  %2 = tail call noundef i32 @_Z6getintv()
  store i32 %2, i32* @m, align 4, !tbaa !5
  %3 = load i32, i32* @n, align 4, !tbaa !5
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %16, label %5

5:                                                ; preds = %0
  %6 = add nuw i32 %3, 1
  %7 = zext i32 %6 to i64
  %8 = add nsw i64 %7, -1
  %9 = add nsw i64 %7, -2
  %10 = and i64 %8, 3
  %11 = icmp ult i64 %9, 3
  %12 = and i64 %8, -4
  %13 = icmp eq i64 %10, 0
  br label %14

14:                                               ; preds = %5, %50
  %15 = phi i64 [ 1, %5 ], [ %51, %50 ]
  br i1 %11, label %39, label %18

16:                                               ; preds = %50, %0
  %17 = icmp slt i32 %2, 1
  br i1 %17, label %66, label %53

18:                                               ; preds = %14, %18
  %19 = phi i64 [ %36, %18 ], [ 1, %14 ]
  %20 = phi i64 [ %37, %18 ], [ 0, %14 ]
  %21 = icmp eq i64 %15, %19
  %22 = select i1 %21, i32 0, i32 65535
  %23 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %15, i64 %19
  store i32 %22, i32* %23, align 4
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %15, %24
  %26 = select i1 %25, i32 0, i32 65535
  %27 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %15, i64 %24
  store i32 %26, i32* %27, align 4
  %28 = add nuw nsw i64 %19, 2
  %29 = icmp eq i64 %15, %28
  %30 = select i1 %29, i32 0, i32 65535
  %31 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %15, i64 %28
  store i32 %30, i32* %31, align 4
  %32 = add nuw nsw i64 %19, 3
  %33 = icmp eq i64 %15, %32
  %34 = select i1 %33, i32 0, i32 65535
  %35 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %15, i64 %32
  store i32 %34, i32* %35, align 4
  %36 = add nuw nsw i64 %19, 4
  %37 = add i64 %20, 4
  %38 = icmp eq i64 %37, %12
  br i1 %38, label %39, label %18, !llvm.loop !13

39:                                               ; preds = %18, %14
  %40 = phi i64 [ 1, %14 ], [ %36, %18 ]
  br i1 %13, label %50, label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %47, %41 ], [ %40, %39 ]
  %43 = phi i64 [ %48, %41 ], [ 0, %39 ]
  %44 = icmp eq i64 %15, %42
  %45 = select i1 %44, i32 0, i32 65535
  %46 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %15, i64 %42
  store i32 %45, i32* %46, align 4
  %47 = add nuw nsw i64 %42, 1
  %48 = add i64 %43, 1
  %49 = icmp eq i64 %48, %10
  br i1 %49, label %50, label %41, !llvm.loop !14

50:                                               ; preds = %41, %39
  %51 = add nuw nsw i64 %15, 1
  %52 = icmp eq i64 %51, %7
  br i1 %52, label %16, label %14, !llvm.loop !16

53:                                               ; preds = %16, %53
  %54 = phi i32 [ %61, %53 ], [ 1, %16 ]
  %55 = tail call noundef i32 @_Z6getintv()
  %56 = tail call noundef i32 @_Z6getintv()
  %57 = tail call noundef i32 @_Z6getintv()
  %58 = sext i32 %55 to i64
  %59 = sext i32 %56 to i64
  %60 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %58, i64 %59
  store i32 %57, i32* %60, align 4, !tbaa !5
  %61 = add nuw nsw i32 %54, 1
  %62 = load i32, i32* @m, align 4, !tbaa !5
  %63 = icmp slt i32 %54, %62
  br i1 %63, label %53, label %64, !llvm.loop !17

64:                                               ; preds = %53
  %65 = load i32, i32* @n, align 4, !tbaa !5
  br label %66

66:                                               ; preds = %64, %16
  %67 = phi i32 [ %65, %64 ], [ %3, %16 ]
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @book, i64 0, i64 1), align 4, !tbaa !5
  br label %167

70:                                               ; preds = %66
  %71 = zext i32 %67 to i64
  %72 = shl nuw nsw i64 %71, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([16 x i32], [16 x i32]* @book, i64 0, i64 1) to i8*), i8 0, i64 %72, i1 false) #5, !tbaa !5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([16 x i32], [16 x i32]* @dis, i64 0, i64 1) to i8*), i8* align 4 bitcast (i32* getelementptr inbounds ([16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 1, i64 1) to i8*), i64 %72, i1 false) #5, !tbaa !5
  store i32 1, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @book, i64 0, i64 1), align 4, !tbaa !5
  %73 = icmp eq i32 %67, 1
  br i1 %73, label %158, label %74

74:                                               ; preds = %70
  %75 = add nuw i32 %67, 1
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %76, -1
  %78 = and i64 %77, 1
  %79 = icmp eq i32 %75, 2
  %80 = and i64 %77, -2
  %81 = icmp eq i64 %78, 0
  br label %82

82:                                               ; preds = %154, %74
  %83 = phi i32 [ %155, %154 ], [ 1, %74 ]
  br i1 %79, label %119, label %84

84:                                               ; preds = %82, %113
  %85 = phi i64 [ %116, %113 ], [ 1, %82 ]
  %86 = phi i32 [ %115, %113 ], [ 0, %82 ]
  %87 = phi i32 [ %114, %113 ], [ 65535, %82 ]
  %88 = phi i64 [ %117, %113 ], [ 0, %82 ]
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %85
  %90 = load i32, i32* %89, align 4, !tbaa !5
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %85
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 %90, i32 %87
  %97 = trunc i64 %85 to i32
  %98 = select i1 %95, i32 %97, i32 %86
  br label %99

99:                                               ; preds = %92, %84
  %100 = phi i32 [ %87, %84 ], [ %96, %92 ]
  %101 = phi i32 [ %86, %84 ], [ %98, %92 ]
  %102 = add nuw nsw i64 %85, 1
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !5
  %105 = icmp sgt i32 %100, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %102
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 %104, i32 %100
  %111 = trunc i64 %102 to i32
  %112 = select i1 %109, i32 %111, i32 %101
  br label %113

113:                                              ; preds = %106, %99
  %114 = phi i32 [ %100, %99 ], [ %110, %106 ]
  %115 = phi i32 [ %101, %99 ], [ %112, %106 ]
  %116 = add nuw nsw i64 %85, 2
  %117 = add i64 %88, 2
  %118 = icmp eq i64 %117, %80
  br i1 %118, label %119, label %84, !llvm.loop !9

119:                                              ; preds = %113, %82
  %120 = phi i32 [ undef, %82 ], [ %115, %113 ]
  %121 = phi i64 [ 1, %82 ], [ %116, %113 ]
  %122 = phi i32 [ 0, %82 ], [ %115, %113 ]
  %123 = phi i32 [ 65535, %82 ], [ %114, %113 ]
  br i1 %81, label %134, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %121
  %126 = load i32, i32* %125, align 4, !tbaa !5
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %121
  %130 = load i32, i32* %129, align 4, !tbaa !5
  %131 = icmp eq i32 %130, 0
  %132 = trunc i64 %121 to i32
  %133 = select i1 %131, i32 %132, i32 %122
  br label %134

134:                                              ; preds = %124, %128, %119
  %135 = phi i32 [ %120, %119 ], [ %122, %124 ], [ %133, %128 ]
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* @book, i64 0, i64 %136
  store i32 1, i32* %137, align 4, !tbaa !5
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %136
  br label %139

139:                                              ; preds = %151, %134
  %140 = phi i64 [ 1, %134 ], [ %152, %151 ]
  %141 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %136, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !5
  %143 = icmp slt i32 %142, 65535
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %140
  %146 = load i32, i32* %145, align 4, !tbaa !5
  %147 = load i32, i32* %138, align 4, !tbaa !5
  %148 = add nsw i32 %147, %142
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 %148, i32* %145, align 4, !tbaa !5
  br label %151

151:                                              ; preds = %150, %144, %139
  %152 = add nuw nsw i64 %140, 1
  %153 = icmp eq i64 %152, %76
  br i1 %153, label %154, label %139, !llvm.loop !11

154:                                              ; preds = %151
  %155 = add nuw nsw i32 %83, 1
  %156 = icmp eq i32 %155, %67
  br i1 %156, label %157, label %82, !llvm.loop !12

157:                                              ; preds = %154
  br i1 %68, label %167, label %158

158:                                              ; preds = %70, %157
  br label %159

159:                                              ; preds = %158, %159
  %160 = phi i64 [ %163, %159 ], [ 1, %158 ]
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* @dis, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4, !tbaa !5
  tail call void @_Z6putinti(i32 noundef %162)
  tail call void @_Z5putchi(i32 noundef 32)
  %163 = add nuw nsw i64 %160, 1
  %164 = load i32, i32* @n, align 4, !tbaa !5
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %160, %165
  br i1 %166, label %159, label %167, !llvm.loop !18

167:                                              ; preds = %159, %69, %157
  tail call void @_Z5putchi(i32 noundef 10)
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #2

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
