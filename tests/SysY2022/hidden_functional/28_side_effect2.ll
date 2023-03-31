; ModuleID = 'tests//SysY2022/hidden_functional/28_side_effect2.sy'
source_filename = "tests//SysY2022/hidden_functional/28_side_effect2.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@sum = dso_local local_unnamed_addr global i32 0, align 4
@array = dso_local local_unnamed_addr global [20 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z1fii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @sum, align 4, !tbaa !5
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @sum, align 4, !tbaa !5
  %5 = icmp sge i32 %0, %1
  %6 = icmp sgt i32 %0, 19
  %7 = or i1 %6, %5
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* @array, i64 0, i64 %9
  store i32 1, i32* %10, align 4, !tbaa !5
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 0), align 16, !tbaa !5
  br label %19

14:                                               ; preds = %8
  %15 = add nsw i32 %0, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [20 x i32], [20 x i32]* @array, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %2, %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z1gii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* @sum, align 4, !tbaa !5
  %4 = add nsw i32 %3, 2
  store i32 %4, i32* @sum, align 4, !tbaa !5
  %5 = icmp sge i32 %0, %1
  %6 = icmp sgt i32 %0, 19
  %7 = or i1 %6, %5
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* @array, i64 0, i64 %9
  store i32 0, i32* %10, align 4, !tbaa !5
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 0), align 16, !tbaa !5
  br label %19

14:                                               ; preds = %8
  %15 = add nsw i32 %0, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [20 x i32], [20 x i32]* @array, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %2, %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ], [ 1, %2 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local noundef i32 @_Z1hi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @sum, align 4, !tbaa !5
  %3 = add nsw i32 %2, 3
  store i32 %3, i32* @sum, align 4, !tbaa !5
  %4 = icmp ugt i32 %0, 19
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [20 x i32], [20 x i32]* @array, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !5
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = load i32, i32* @sum, align 4, !tbaa !5
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 0), align 16, !tbaa !5
  %2 = add nsw i32 %1, 3
  br label %5

3:                                                ; preds = %58
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* bitcast (i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 4) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* bitcast (i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 8) to <4 x i32>*), align 16, !tbaa !5
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 12), align 16, !tbaa !5
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 13), align 4, !tbaa !5
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 14), align 8, !tbaa !5
  store i32 %59, i32* @sum, align 4, !tbaa !5
  %4 = add nsw i32 %7, 26
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, <4 x i32>* bitcast ([20 x i32]* @array to <4 x i32>*), align 16, !tbaa !5
  br label %65

5:                                                ; preds = %62, %0
  %6 = phi i32 [ 2, %0 ], [ %64, %62 ]
  %7 = phi i32 [ %2, %0 ], [ %63, %62 ]
  %8 = add nsw i32 %7, 3
  %9 = icmp ult i32 %6, 3
  br i1 %9, label %62, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %7, 4
  %12 = icmp eq i32 %6, 3
  br i1 %12, label %62, label %13

13:                                               ; preds = %10
  %14 = add nsw i32 %7, 5
  %15 = icmp ult i32 %6, 5
  br i1 %15, label %62, label %16

16:                                               ; preds = %13
  %17 = add nsw i32 %7, 6
  %18 = icmp eq i32 %6, 5
  br i1 %18, label %62, label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %7, 7
  %21 = icmp ult i32 %6, 7
  br i1 %21, label %62, label %22

22:                                               ; preds = %19
  %23 = add nsw i32 %7, 8
  %24 = icmp eq i32 %6, 7
  br i1 %24, label %62, label %25

25:                                               ; preds = %22
  %26 = add nsw i32 %7, 9
  %27 = icmp ult i32 %6, 9
  br i1 %27, label %62, label %28

28:                                               ; preds = %25
  %29 = add nsw i32 %7, 10
  %30 = icmp eq i32 %6, 9
  br i1 %30, label %62, label %31

31:                                               ; preds = %28
  %32 = add nsw i32 %7, 11
  %33 = icmp ult i32 %6, 11
  br i1 %33, label %62, label %34

34:                                               ; preds = %31
  %35 = add nsw i32 %7, 12
  %36 = icmp eq i32 %6, 11
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = add nsw i32 %7, 13
  %39 = icmp ult i32 %6, 13
  br i1 %39, label %62, label %40

40:                                               ; preds = %37
  %41 = add nsw i32 %7, 14
  %42 = icmp eq i32 %6, 13
  br i1 %42, label %62, label %43

43:                                               ; preds = %40
  %44 = add nsw i32 %7, 15
  %45 = icmp ult i32 %6, 15
  br i1 %45, label %62, label %46

46:                                               ; preds = %43
  %47 = add nsw i32 %7, 16
  %48 = icmp eq i32 %6, 15
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = add nsw i32 %7, 17
  %51 = icmp ult i32 %6, 17
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = add nsw i32 %7, 18
  %54 = icmp eq i32 %6, 17
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = add nsw i32 %7, 19
  %57 = icmp ult i32 %6, 19
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = add nsw i32 %7, 20
  %60 = icmp eq i32 %6, 19
  br i1 %60, label %3, label %61

61:                                               ; preds = %58
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 19), align 4, !tbaa !5
  br label %62

62:                                               ; preds = %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %5, %61
  %63 = phi i32 [ %56, %55 ], [ %53, %52 ], [ %50, %49 ], [ %47, %46 ], [ %44, %43 ], [ %41, %40 ], [ %38, %37 ], [ %35, %34 ], [ %32, %31 ], [ %29, %28 ], [ %26, %25 ], [ %23, %22 ], [ %20, %19 ], [ %17, %16 ], [ %14, %13 ], [ %11, %10 ], [ %8, %5 ], [ %59, %61 ]
  %64 = add nuw nsw i32 %6, 1
  br label %5

65:                                               ; preds = %122, %3
  %66 = phi i32 [ 2, %3 ], [ %124, %122 ]
  %67 = phi i32 [ %4, %3 ], [ %123, %122 ]
  %68 = add nsw i32 %67, 6
  %69 = icmp ult i32 %66, 3
  br i1 %69, label %122, label %70

70:                                               ; preds = %65
  %71 = add nsw i32 %67, 8
  %72 = icmp eq i32 %66, 3
  br i1 %72, label %122, label %73

73:                                               ; preds = %70
  %74 = add nsw i32 %67, 10
  %75 = icmp ult i32 %66, 5
  br i1 %75, label %122, label %76

76:                                               ; preds = %73
  %77 = add nsw i32 %67, 12
  %78 = icmp eq i32 %66, 5
  br i1 %78, label %122, label %79

79:                                               ; preds = %76
  %80 = add nsw i32 %67, 14
  %81 = icmp ult i32 %66, 7
  br i1 %81, label %122, label %82

82:                                               ; preds = %79
  %83 = add nsw i32 %67, 16
  %84 = icmp eq i32 %66, 7
  br i1 %84, label %122, label %85

85:                                               ; preds = %82
  %86 = add nsw i32 %67, 18
  %87 = icmp ult i32 %66, 9
  br i1 %87, label %122, label %88

88:                                               ; preds = %85
  %89 = add nsw i32 %67, 20
  %90 = icmp eq i32 %66, 9
  br i1 %90, label %122, label %91

91:                                               ; preds = %88
  %92 = add nsw i32 %67, 22
  %93 = icmp ult i32 %66, 11
  br i1 %93, label %122, label %94

94:                                               ; preds = %91
  %95 = add nsw i32 %67, 24
  %96 = icmp eq i32 %66, 11
  br i1 %96, label %122, label %97

97:                                               ; preds = %94
  %98 = add nsw i32 %67, 26
  %99 = icmp ult i32 %66, 13
  br i1 %99, label %122, label %100

100:                                              ; preds = %97
  %101 = add nsw i32 %67, 28
  %102 = icmp eq i32 %66, 13
  br i1 %102, label %122, label %103

103:                                              ; preds = %100
  %104 = add nsw i32 %67, 30
  %105 = icmp ult i32 %66, 15
  br i1 %105, label %122, label %106

106:                                              ; preds = %103
  %107 = add nsw i32 %67, 32
  %108 = icmp eq i32 %66, 15
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  %110 = add nsw i32 %67, 34
  %111 = icmp ult i32 %66, 17
  br i1 %111, label %122, label %112

112:                                              ; preds = %109
  %113 = add nsw i32 %67, 36
  %114 = icmp eq i32 %66, 17
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = add nsw i32 %67, 38
  %117 = icmp ult i32 %66, 19
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = add nsw i32 %67, 40
  %120 = icmp eq i32 %66, 19
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  store i32 0, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 19), align 4, !tbaa !5
  br label %122

122:                                              ; preds = %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %65, %121
  %123 = phi i32 [ %116, %115 ], [ %113, %112 ], [ %110, %109 ], [ %107, %106 ], [ %104, %103 ], [ %101, %100 ], [ %98, %97 ], [ %95, %94 ], [ %92, %91 ], [ %89, %88 ], [ %86, %85 ], [ %83, %82 ], [ %80, %79 ], [ %77, %76 ], [ %74, %73 ], [ %71, %70 ], [ %68, %65 ], [ %119, %121 ]
  %124 = add nuw nsw i32 %66, 1
  br label %65

125:                                              ; preds = %118
  store i32 %119, i32* @sum, align 4, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* bitcast ([20 x i32]* @array to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* bitcast (i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 4) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* bitcast (i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 8) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* bitcast (i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 12) to <4 x i32>*), align 16, !tbaa !5
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 16), align 16, !tbaa !5
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 17), align 4, !tbaa !5
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 18), align 8, !tbaa !5
  %126 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 1), align 4, !tbaa !5
  %127 = icmp eq i32 %126, 0
  %128 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 2), align 8
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 68, i32 71
  %131 = select i1 %127, i32 %130, i32 65
  %132 = add i32 %67, %131
  %133 = add nsw i32 %132, 3
  %134 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 4), align 16, !tbaa !5
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %125
  %137 = add nsw i32 %132, 6
  %138 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 5), align 4, !tbaa !5
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = add nsw i32 %132, 9
  %142 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 6), align 8, !tbaa !5
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = add nsw i32 %132, 12
  %146 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 7), align 4, !tbaa !5
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144, %140, %136
  %149 = phi i32 [ %145, %144 ], [ %141, %140 ], [ %137, %136 ]
  %150 = add nsw i32 %149, 3
  br label %151

151:                                              ; preds = %148, %125, %144
  %152 = phi i32 [ %150, %148 ], [ %133, %125 ], [ %145, %144 ]
  %153 = add nsw i32 %152, 3
  %154 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 9), align 4, !tbaa !5
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = add nsw i32 %152, 6
  %158 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 10), align 8, !tbaa !5
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %156, %151
  %161 = phi i32 [ %157, %156 ], [ %153, %151 ]
  %162 = add nsw i32 %161, 3
  %163 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 11), align 4, !tbaa !5
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %160
  %166 = add nsw i32 %161, 6
  %167 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 12), align 16, !tbaa !5
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %165
  %170 = add nsw i32 %161, 9
  %171 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 13), align 4, !tbaa !5
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 14), align 8, !tbaa !5
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 12, i32 15
  %177 = add nsw i32 %161, %176
  br label %178

178:                                              ; preds = %173, %169, %165, %160, %156
  %179 = phi i32 [ %157, %156 ], [ %162, %160 ], [ %166, %165 ], [ %170, %169 ], [ %177, %173 ]
  %180 = add nsw i32 %179, 6
  %181 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 2), align 8, !tbaa !5
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %178
  %184 = add nsw i32 %179, 9
  %185 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 3), align 4, !tbaa !5
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = add nsw i32 %179, 12
  store i32 %188, i32* @sum, align 4, !tbaa !5
  br i1 %135, label %207, label %189

189:                                              ; preds = %187, %183, %178
  %190 = phi i32 [ %188, %187 ], [ %184, %183 ], [ %180, %178 ]
  %191 = add nsw i32 %190, 3
  store i32 %191, i32* @sum, align 4, !tbaa !5
  %192 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 5), align 4, !tbaa !5
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = add nsw i32 %190, 6
  store i32 %195, i32* @sum, align 4, !tbaa !5
  %196 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 6), align 8, !tbaa !5
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = add nsw i32 %190, 9
  store i32 %199, i32* @sum, align 4, !tbaa !5
  %200 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 7), align 4, !tbaa !5
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %198, %194
  %203 = phi i32 [ %199, %198 ], [ %195, %194 ]
  %204 = add nsw i32 %203, 3
  store i32 %204, i32* @sum, align 4, !tbaa !5
  %205 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @array, i64 0, i64 8), align 16, !tbaa !5
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %202, %198, %189, %187
  %208 = phi i32 [ %204, %202 ], [ %199, %198 ], [ %191, %189 ], [ %188, %187 ]
  br label %209

209:                                              ; preds = %207, %202
  %210 = phi i32 [ %208, %207 ], [ %204, %202 ]
  %211 = phi i32 [ 1, %207 ], [ 0, %202 ]
  %212 = add nsw i32 %210, %211
  tail call void @_Z6putinti(i32 noundef %212)
  ret i32 0
}

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
