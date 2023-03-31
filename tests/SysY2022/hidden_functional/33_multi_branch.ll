; ModuleID = 'tests//SysY2022/hidden_functional/33_multi_branch.sy'
source_filename = "tests//SysY2022/hidden_functional/33_multi_branch.sy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_Z6getintv()
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %209

3:                                                ; preds = %0, %205
  %4 = phi i32 [ %207, %205 ], [ 0, %0 ]
  %5 = tail call noundef i32 @_Z6getintv()
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 99
  br i1 %7, label %8, label %205

8:                                                ; preds = %3
  %9 = icmp ult i32 %5, 99
  br i1 %9, label %10, label %205

10:                                               ; preds = %8
  %11 = icmp eq i32 %5, 98
  br i1 %11, label %205, label %12

12:                                               ; preds = %10
  %13 = icmp ult i32 %5, 97
  br i1 %13, label %14, label %205

14:                                               ; preds = %12
  %15 = icmp eq i32 %5, 96
  br i1 %15, label %205, label %16

16:                                               ; preds = %14
  %17 = icmp ult i32 %5, 95
  br i1 %17, label %18, label %205

18:                                               ; preds = %16
  %19 = icmp eq i32 %5, 94
  br i1 %19, label %205, label %20

20:                                               ; preds = %18
  %21 = icmp ult i32 %5, 93
  br i1 %21, label %22, label %205

22:                                               ; preds = %20
  %23 = icmp eq i32 %5, 92
  br i1 %23, label %205, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %5, 91
  br i1 %25, label %26, label %205

26:                                               ; preds = %24
  %27 = icmp eq i32 %5, 90
  br i1 %27, label %205, label %28

28:                                               ; preds = %26
  %29 = icmp ult i32 %5, 89
  br i1 %29, label %30, label %205

30:                                               ; preds = %28
  %31 = icmp eq i32 %5, 88
  br i1 %31, label %205, label %32

32:                                               ; preds = %30
  %33 = icmp ult i32 %5, 87
  br i1 %33, label %34, label %205

34:                                               ; preds = %32
  %35 = icmp eq i32 %5, 86
  br i1 %35, label %205, label %36

36:                                               ; preds = %34
  %37 = icmp ult i32 %5, 85
  br i1 %37, label %38, label %205

38:                                               ; preds = %36
  %39 = icmp eq i32 %5, 84
  br i1 %39, label %205, label %40

40:                                               ; preds = %38
  %41 = icmp ult i32 %5, 83
  br i1 %41, label %42, label %205

42:                                               ; preds = %40
  %43 = icmp eq i32 %5, 82
  br i1 %43, label %205, label %44

44:                                               ; preds = %42
  %45 = icmp ult i32 %5, 81
  br i1 %45, label %46, label %205

46:                                               ; preds = %44
  %47 = icmp eq i32 %5, 80
  br i1 %47, label %205, label %48

48:                                               ; preds = %46
  %49 = icmp ult i32 %5, 79
  br i1 %49, label %50, label %205

50:                                               ; preds = %48
  %51 = icmp eq i32 %5, 78
  br i1 %51, label %205, label %52

52:                                               ; preds = %50
  %53 = icmp ult i32 %5, 77
  br i1 %53, label %54, label %205

54:                                               ; preds = %52
  %55 = icmp eq i32 %5, 76
  br i1 %55, label %205, label %56

56:                                               ; preds = %54
  %57 = icmp ult i32 %5, 75
  br i1 %57, label %58, label %205

58:                                               ; preds = %56
  %59 = icmp eq i32 %5, 74
  br i1 %59, label %205, label %60

60:                                               ; preds = %58
  %61 = icmp ult i32 %5, 73
  br i1 %61, label %62, label %205

62:                                               ; preds = %60
  %63 = icmp eq i32 %5, 72
  br i1 %63, label %205, label %64

64:                                               ; preds = %62
  %65 = icmp ult i32 %5, 71
  br i1 %65, label %66, label %205

66:                                               ; preds = %64
  %67 = icmp eq i32 %5, 70
  br i1 %67, label %205, label %68

68:                                               ; preds = %66
  %69 = icmp ult i32 %5, 69
  br i1 %69, label %70, label %205

70:                                               ; preds = %68
  %71 = icmp eq i32 %5, 68
  br i1 %71, label %205, label %72

72:                                               ; preds = %70
  %73 = icmp ult i32 %5, 67
  br i1 %73, label %74, label %205

74:                                               ; preds = %72
  %75 = icmp eq i32 %5, 66
  br i1 %75, label %205, label %76

76:                                               ; preds = %74
  %77 = icmp ult i32 %5, 65
  br i1 %77, label %78, label %205

78:                                               ; preds = %76
  %79 = icmp eq i32 %5, 64
  br i1 %79, label %205, label %80

80:                                               ; preds = %78
  %81 = icmp ult i32 %5, 63
  br i1 %81, label %82, label %205

82:                                               ; preds = %80
  %83 = icmp eq i32 %5, 62
  br i1 %83, label %205, label %84

84:                                               ; preds = %82
  %85 = icmp ult i32 %5, 61
  br i1 %85, label %86, label %205

86:                                               ; preds = %84
  %87 = icmp eq i32 %5, 60
  br i1 %87, label %205, label %88

88:                                               ; preds = %86
  %89 = icmp ult i32 %5, 59
  br i1 %89, label %90, label %205

90:                                               ; preds = %88
  %91 = icmp eq i32 %5, 58
  br i1 %91, label %205, label %92

92:                                               ; preds = %90
  %93 = icmp ult i32 %5, 57
  br i1 %93, label %94, label %205

94:                                               ; preds = %92
  %95 = icmp eq i32 %5, 56
  br i1 %95, label %205, label %96

96:                                               ; preds = %94
  %97 = icmp ult i32 %5, 55
  br i1 %97, label %98, label %205

98:                                               ; preds = %96
  %99 = icmp eq i32 %5, 54
  br i1 %99, label %205, label %100

100:                                              ; preds = %98
  %101 = icmp ult i32 %5, 53
  br i1 %101, label %102, label %205

102:                                              ; preds = %100
  %103 = icmp eq i32 %5, 52
  br i1 %103, label %205, label %104

104:                                              ; preds = %102
  %105 = icmp ult i32 %5, 51
  br i1 %105, label %106, label %205

106:                                              ; preds = %104
  %107 = icmp eq i32 %5, 50
  br i1 %107, label %205, label %108

108:                                              ; preds = %106
  %109 = icmp ult i32 %5, 49
  br i1 %109, label %110, label %205

110:                                              ; preds = %108
  %111 = icmp eq i32 %5, 48
  br i1 %111, label %205, label %112

112:                                              ; preds = %110
  %113 = icmp ult i32 %5, 47
  br i1 %113, label %114, label %205

114:                                              ; preds = %112
  %115 = icmp eq i32 %5, 46
  br i1 %115, label %205, label %116

116:                                              ; preds = %114
  %117 = icmp ult i32 %5, 45
  br i1 %117, label %118, label %205

118:                                              ; preds = %116
  %119 = icmp eq i32 %5, 44
  br i1 %119, label %205, label %120

120:                                              ; preds = %118
  %121 = icmp ult i32 %5, 43
  br i1 %121, label %122, label %205

122:                                              ; preds = %120
  %123 = icmp eq i32 %5, 42
  br i1 %123, label %205, label %124

124:                                              ; preds = %122
  %125 = icmp ult i32 %5, 41
  br i1 %125, label %126, label %205

126:                                              ; preds = %124
  %127 = icmp eq i32 %5, 40
  br i1 %127, label %205, label %128

128:                                              ; preds = %126
  %129 = icmp ult i32 %5, 39
  br i1 %129, label %130, label %205

130:                                              ; preds = %128
  %131 = icmp eq i32 %5, 38
  br i1 %131, label %205, label %132

132:                                              ; preds = %130
  %133 = icmp ult i32 %5, 37
  br i1 %133, label %134, label %205

134:                                              ; preds = %132
  %135 = icmp eq i32 %5, 36
  br i1 %135, label %205, label %136

136:                                              ; preds = %134
  %137 = icmp ult i32 %5, 35
  br i1 %137, label %138, label %205

138:                                              ; preds = %136
  %139 = icmp eq i32 %5, 34
  br i1 %139, label %205, label %140

140:                                              ; preds = %138
  %141 = icmp ult i32 %5, 33
  br i1 %141, label %142, label %205

142:                                              ; preds = %140
  %143 = icmp eq i32 %5, 32
  br i1 %143, label %205, label %144

144:                                              ; preds = %142
  %145 = icmp ult i32 %5, 31
  br i1 %145, label %146, label %205

146:                                              ; preds = %144
  %147 = icmp eq i32 %5, 30
  br i1 %147, label %205, label %148

148:                                              ; preds = %146
  %149 = icmp ult i32 %5, 29
  br i1 %149, label %150, label %205

150:                                              ; preds = %148
  %151 = icmp eq i32 %5, 28
  br i1 %151, label %205, label %152

152:                                              ; preds = %150
  %153 = icmp ult i32 %5, 27
  br i1 %153, label %154, label %205

154:                                              ; preds = %152
  %155 = icmp eq i32 %5, 26
  br i1 %155, label %205, label %156

156:                                              ; preds = %154
  %157 = icmp ult i32 %5, 25
  br i1 %157, label %158, label %205

158:                                              ; preds = %156
  %159 = icmp eq i32 %5, 24
  br i1 %159, label %205, label %160

160:                                              ; preds = %158
  %161 = icmp ult i32 %5, 23
  br i1 %161, label %162, label %205

162:                                              ; preds = %160
  %163 = icmp eq i32 %5, 22
  br i1 %163, label %205, label %164

164:                                              ; preds = %162
  %165 = icmp ult i32 %5, 21
  br i1 %165, label %166, label %205

166:                                              ; preds = %164
  %167 = icmp eq i32 %5, 20
  br i1 %167, label %205, label %168

168:                                              ; preds = %166
  %169 = icmp ult i32 %5, 19
  br i1 %169, label %170, label %205

170:                                              ; preds = %168
  %171 = icmp eq i32 %5, 18
  br i1 %171, label %205, label %172

172:                                              ; preds = %170
  %173 = icmp ult i32 %5, 17
  br i1 %173, label %174, label %205

174:                                              ; preds = %172
  %175 = icmp eq i32 %5, 16
  br i1 %175, label %205, label %176

176:                                              ; preds = %174
  %177 = icmp ult i32 %5, 15
  br i1 %177, label %178, label %205

178:                                              ; preds = %176
  %179 = icmp eq i32 %5, 14
  br i1 %179, label %205, label %180

180:                                              ; preds = %178
  %181 = icmp ult i32 %5, 13
  br i1 %181, label %182, label %205

182:                                              ; preds = %180
  %183 = icmp eq i32 %5, 12
  br i1 %183, label %205, label %184

184:                                              ; preds = %182
  %185 = icmp ult i32 %5, 11
  br i1 %185, label %186, label %205

186:                                              ; preds = %184
  %187 = icmp eq i32 %5, 10
  br i1 %187, label %205, label %188

188:                                              ; preds = %186
  %189 = icmp ult i32 %5, 9
  br i1 %189, label %190, label %205

190:                                              ; preds = %188
  %191 = icmp eq i32 %5, 8
  br i1 %191, label %205, label %192

192:                                              ; preds = %190
  %193 = icmp ult i32 %5, 7
  br i1 %193, label %194, label %205

194:                                              ; preds = %192
  %195 = icmp eq i32 %5, 6
  br i1 %195, label %205, label %196

196:                                              ; preds = %194
  %197 = icmp ult i32 %5, 5
  br i1 %197, label %198, label %205

198:                                              ; preds = %196
  %199 = icmp eq i32 %5, 4
  br i1 %199, label %205, label %200

200:                                              ; preds = %198
  %201 = icmp ult i32 %5, 3
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = icmp eq i32 %5, 2
  %204 = select i1 %203, i32 2, i32 1
  br label %205

205:                                              ; preds = %3, %8, %10, %12, %14, %16, %18, %20, %22, %24, %26, %28, %30, %32, %34, %36, %38, %40, %42, %44, %46, %48, %50, %52, %54, %56, %58, %60, %62, %64, %66, %68, %70, %72, %74, %76, %78, %80, %82, %84, %86, %88, %90, %92, %94, %96, %98, %100, %102, %104, %106, %108, %110, %112, %114, %116, %118, %120, %122, %124, %126, %128, %130, %132, %134, %136, %138, %140, %142, %144, %146, %148, %150, %152, %154, %156, %158, %160, %162, %164, %166, %168, %170, %172, %174, %176, %178, %180, %182, %184, %186, %188, %190, %192, %194, %196, %198, %200, %202
  %206 = phi i32 [ %204, %202 ], [ 3, %200 ], [ 4, %198 ], [ 5, %196 ], [ 6, %194 ], [ 7, %192 ], [ 8, %190 ], [ 9, %188 ], [ 10, %186 ], [ 11, %184 ], [ 12, %182 ], [ 13, %180 ], [ 14, %178 ], [ 15, %176 ], [ 16, %174 ], [ 17, %172 ], [ 18, %170 ], [ 19, %168 ], [ 20, %166 ], [ 21, %164 ], [ 22, %162 ], [ 23, %160 ], [ 24, %158 ], [ 25, %156 ], [ 26, %154 ], [ 27, %152 ], [ 28, %150 ], [ 29, %148 ], [ 30, %146 ], [ 31, %144 ], [ 32, %142 ], [ 33, %140 ], [ 34, %138 ], [ 35, %136 ], [ 36, %134 ], [ 37, %132 ], [ 38, %130 ], [ 39, %128 ], [ 40, %126 ], [ 41, %124 ], [ 42, %122 ], [ 43, %120 ], [ 44, %118 ], [ 45, %116 ], [ 46, %114 ], [ 47, %112 ], [ 48, %110 ], [ 49, %108 ], [ 50, %106 ], [ 51, %104 ], [ 52, %102 ], [ 53, %100 ], [ 54, %98 ], [ 55, %96 ], [ 56, %94 ], [ 57, %92 ], [ 58, %90 ], [ 59, %88 ], [ 60, %86 ], [ 61, %84 ], [ 62, %82 ], [ 63, %80 ], [ 64, %78 ], [ 65, %76 ], [ 66, %74 ], [ 67, %72 ], [ 68, %70 ], [ 69, %68 ], [ 70, %66 ], [ 71, %64 ], [ 72, %62 ], [ 73, %60 ], [ 74, %58 ], [ 75, %56 ], [ 76, %54 ], [ 77, %52 ], [ 78, %50 ], [ 79, %48 ], [ 80, %46 ], [ 81, %44 ], [ 82, %42 ], [ 83, %40 ], [ 84, %38 ], [ 85, %36 ], [ 86, %34 ], [ 87, %32 ], [ 88, %30 ], [ 89, %28 ], [ 90, %26 ], [ 91, %24 ], [ 92, %22 ], [ 93, %20 ], [ 94, %18 ], [ 95, %16 ], [ 96, %14 ], [ 97, %12 ], [ 98, %10 ], [ 99, %8 ], [ 100, %3 ]
  tail call void @_Z6putinti(i32 noundef %206)
  tail call void @_Z5putchi(i32 noundef 10)
  %207 = add nuw nsw i32 %4, 1
  %208 = icmp eq i32 %207, %1
  br i1 %208, label %209, label %3, !llvm.loop !4

209:                                              ; preds = %205, %0
  ret i32 0
}

declare noundef i32 @_Z6getintv() local_unnamed_addr #1

declare void @_Z6putinti(i32 noundef) local_unnamed_addr #1

declare void @_Z5putchi(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
