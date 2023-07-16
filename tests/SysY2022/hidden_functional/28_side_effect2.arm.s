.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	mov r1, #0
	sub sp, sp, #84
	mov r2, r1
	str r1, [sp, #0]
	mov r0, sp
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	cmp r1, #20
	bge label203
	add r3, r1, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label203:
	mov r1, #0
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
label1212:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label431:
	mov r3, #1
	cmp r3, #20
	bge label82
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label76
	b label994
label82:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label113
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label113
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label86
	b label1145
label146:
	add r3, r2, #24
	cmp r1, #12
	bge label177
	mov r4, #1
	cmp r4, #0
	beq label149
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1187:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label177:
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label149
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1187
label149:
	add r3, r2, #26
	cmp r1, #13
	bge label176
	mov r4, #1
	cmp r4, #0
	beq label152
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1189:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label176:
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label152
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1189
label121:
	add r3, r2, #4
	cmp r1, #2
	bge label122
	mov r4, #1
	cmp r4, #0
	beq label125
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label1166
label122:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label125
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1167
label152:
	add r3, r2, #28
	cmp r1, #14
	bge label175
	mov r4, #1
	cmp r4, #0
	beq label155
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1191:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label155:
	add r3, r2, #30
	cmp r1, #15
	bge label174
	mov r4, #1
	cmp r4, #0
	beq label158
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1193:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label158:
	add r3, r2, #32
	cmp r1, #16
	bge label173
	mov r4, #1
	cmp r4, #0
	beq label161
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1195:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label161:
	add r3, r2, #34
	cmp r1, #17
	bge label162
	mov r4, #1
	cmp r4, #0
	beq label165
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1197:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label173:
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label161
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1195
label174:
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label158
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1193
label175:
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label155
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1191
label1165:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label165:
	add r3, r2, #36
	cmp r1, #18
	bge label172
	mov r4, #1
	cmp r4, #0
	beq label168
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1199:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label168:
	add r4, r2, #38
	cmp r1, #19
	bge label171
	mov r3, #1
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label179
	b label1165
label171:
	mov r3, #0
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label172:
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label168
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1199
label143:
	add r3, r2, #22
	cmp r1, #11
	bge label178
	mov r4, #1
	cmp r4, #0
	beq label146
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1185:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label178:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label146
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1185
label1166:
	add r3, r2, #2
	cmp r1, #1
	bge label179
label1167:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label125:
	add r3, r2, #6
	cmp r1, #3
	bge label126
	mov r4, #1
	cmp r4, #0
	beq label129
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
label1169:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label129:
	add r3, r2, #8
	cmp r1, #4
	bge label130
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label430:
	add r3, r2, #2
	cmp r1, #1
	bge label179
label993:
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label1069:
	add r3, r2, #2
	cmp r1, #2
	bge label67
	mov r4, #0
	cmp r4, #0
	beq label222
	b label1072
label212:
	mov r2, r3
label8:
	add r1, r1, #1
	cmp r1, #20
	bge label203
	b label931
label1262:
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label8
label393:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label57:
	mov r3, #1
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r2, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label60:
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label393
	add r4, r2, #19
	cmp r1, #19
	bge label57
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	b label931
label1078:
	add r3, r2, #1
	cmp r1, #1
	bge label68
	b label1080
label231:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1080:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label66:
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label231
	add r3, r2, #4
	cmp r1, #4
	bge label17
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	b label1078
label67:
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label222
	add r3, r2, #3
	cmp r1, #3
	bge label66
	mov r4, #0
	cmp r4, #0
	beq label231
	b label1075
label17:
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label243
	add r3, r2, #5
	cmp r1, #5
	bge label19
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label1083
label243:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1083:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label931:
	add r3, r2, #1
	cmp r1, #1
	bge label68
	b label1073
label1072:
	add r3, r2, #3
	cmp r1, #3
	bge label66
	b label1074
label1073:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1074:
	mov r4, #0
	cmp r4, #0
	beq label231
label1075:
	add r3, r2, #4
	cmp r1, #4
	bge label17
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	b label1078
label68:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	beq label212
	add r3, r2, #2
	cmp r1, #2
	bge label67
	mov r4, #0
	cmp r4, #0
	beq label222
	b label1072
label19:
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label255
	add r3, r2, #6
	cmp r1, #6
	bge label21
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label1086
label255:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1086:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label21:
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label267
	add r3, r2, #7
	cmp r1, #7
	bge label23
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label1089
label267:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1089:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label23:
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label279
	add r3, r2, #8
	cmp r1, #8
	bge label25
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label1092
label279:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1092:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label25:
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label291
	add r3, r2, #9
	cmp r1, #9
	bge label27
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label1095
label291:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1095:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label27:
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label303
	add r3, r2, #10
	cmp r1, #10
	bge label29
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label1098
label303:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1098:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label133:
	add r3, r2, #12
	cmp r1, #6
	bge label134
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label134:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label135
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label135:
	add r3, r2, #14
	cmp r1, #7
	bge label136
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label179:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	beq label121
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label993
label136:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label137
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label137:
	add r3, r2, #16
	cmp r1, #8
	bge label138
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label138:
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label139
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label139:
	add r3, r2, #18
	cmp r1, #9
	bge label140
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label140:
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label141
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label141:
	add r3, r2, #20
	cmp r1, #10
	bge label142
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label142:
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label143
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label126:
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label129
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1169
label162:
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label165
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label1197
label130:
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label131
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label131:
	add r3, r2, #10
	cmp r1, #5
	bge label132
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label132:
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label133
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label121
	b label1212
label29:
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label315
	add r3, r2, #11
	cmp r1, #11
	bge label65
	mov r4, #0
	cmp r4, #0
	beq label324
	add r3, r2, #12
	cmp r1, #12
	bge label64
	b label1101
label315:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1101:
	mov r4, #0
	cmp r4, #0
	beq label333
label1102:
	add r3, r2, #13
	cmp r1, #13
	bge label37
	mov r4, #0
	cmp r4, #0
	beq label345
	b label1105
label345:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1105:
	add r3, r2, #14
	cmp r1, #14
	bge label41
	b label1107
label333:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1107:
	mov r4, #0
	cmp r4, #0
	beq label357
	b label1108
label357:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label324:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label37:
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label345
	add r3, r2, #14
	cmp r1, #14
	bge label41
	mov r4, #0
	cmp r4, #0
	beq label357
label1108:
	add r3, r2, #15
	cmp r1, #15
	bge label63
	mov r4, #0
	cmp r4, #0
	beq label366
label1111:
	add r3, r2, #16
	cmp r1, #16
	bge label62
	mov r4, #0
	cmp r4, #0
	beq label375
	b label1114
label375:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label62:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label375
	add r3, r2, #17
	cmp r1, #17
	bge label61
	mov r4, #0
	cmp r4, #0
	beq label384
	b label1117
label63:
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label366
	add r3, r2, #16
	cmp r1, #16
	bge label62
	mov r4, #0
	cmp r4, #0
	beq label375
	b label1114
label64:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label333
	add r3, r2, #13
	cmp r1, #13
	bge label37
	mov r4, #0
	cmp r4, #0
	beq label345
	b label1105
label65:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label324
	add r3, r2, #12
	cmp r1, #12
	bge label64
	mov r4, #0
	cmp r4, #0
	beq label333
	b label1102
label1114:
	add r3, r2, #17
	cmp r1, #17
	bge label61
	b label1116
label366:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1116:
	mov r4, #0
	cmp r4, #0
	beq label384
label1117:
	add r3, r2, #18
	cmp r1, #18
	bge label60
	mov r4, #0
	cmp r4, #0
	beq label393
	b label1120
label384:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label222:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1069
label1145:
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label499
	b label1161
label1146:
	add r4, r1, #3
	cmp r3, #0
	beq label530
label1152:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label537
	b label1158
label537:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label105
	b label1011
label544:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label105
	b label1011
label105:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label562
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	bne label106
	b label1297
label562:
	mov r1, r2
	b label106
label1158:
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label544
	b label1156
label113:
	ldr r4, [r0, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r2
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label86
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label499
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label93
	b label1146
label1136:
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label113
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label86
	b label1145
label86:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	beq label477
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	bne label484
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	beq label89
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label499
	b label1149
label477:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label499
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label93
label1006:
	add r4, r1, #3
	cmp r3, #0
	beq label530
	b label1152
label1297:
	mov r0, r1
	mov r1, #1
label109:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label994:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label113
	b label1136
label76:
	mov r4, #1
	cmp r1, #0
	str r4, [r0, r1, lsl #2]
	bne label80
	ldr r1, [sp, #0]
	cmp r1, #0
	beq label82
	add r3, r3, #1
	cmp r3, #20
	bge label82
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label76
	b label994
label80:
	sub r1, r3, #2
	ldr r1, [r0, r1, lsl #2]
	cmp r1, #0
	beq label82
	add r3, r3, #1
	cmp r3, #20
	bge label82
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label76
	b label994
label1149:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label93
	b label1151
label484:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label499
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label93
	b label1006
label1151:
	add r4, r1, #3
	cmp r3, #0
	beq label530
	b label1152
label1011:
	mov r0, r2
	mov r1, #1
	b label109
label103:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label105
	b label1011
label89:
	add r1, r1, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label499
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label93
	b label1006
label499:
	mov r1, r4
label93:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label95
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label530
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label537
	b label1153
label95:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	bne label96
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label530
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label537
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label544
	b label1156
label96:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	bne label97
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label530
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label537
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label544
	b label1156
label97:
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
	add r4, r1, #3
	cmp r3, #0
	beq label530
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label537
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label544
label1156:
	add r1, r1, #12
	cmp r2, #0
	bne label103
	b label1297
label530:
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	beq label105
	b label1011
label1161:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label93
	b label1146
label1153:
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label544
	b label1156
label106:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label109
label41:
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label357
	add r3, r2, #15
	cmp r1, #15
	bge label63
	mov r4, #0
	cmp r4, #0
	beq label366
	b label1111
label61:
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label384
	add r3, r2, #18
	cmp r1, #18
	bge label60
	mov r4, #0
	cmp r4, #0
	beq label393
label1120:
	add r4, r2, #19
	cmp r1, #19
	bge label57
	b label1262
