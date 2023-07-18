.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #84
	mov r1, #0
	mov r0, sp
	mov r2, r1
	str r1, [sp, #0]
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
label2:
	cmp r1, #20
	bge label203
	b label202
label203:
	mov r1, #0
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	mov r2, r3
	add r1, r1, #1
	b label69
label1280:
	mov r2, r3
	add r1, r1, #1
	b label2
label69:
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
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label114
	b label1075
label82:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label114
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label114
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label86
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label499
label1212:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label94
	add r4, r1, #3
	cmp r3, #0
	beq label537
	b label1213
label430:
	add r3, r2, #2
	cmp r1, #1
	bge label179
	b label967
label1074:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label967:
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label163:
	add r3, r2, #36
	cmp r1, #18
	bge label170
	mov r4, #1
	cmp r4, #0
	beq label166
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label170:
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label166
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label166:
	add r4, r2, #38
	cmp r1, #19
	bge label169
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
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1274
label169:
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
	beq label119
	b label1074
label1274:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label927:
	mov r4, #0
	cmp r4, #0
	beq label212
label1015:
	add r3, r2, #2
	cmp r1, #2
	bge label65
	b label1138
label1141:
	mov r4, #0
	cmp r4, #0
	beq label233
	add r3, r2, #4
	cmp r1, #4
	bge label16
	b label1280
label221:
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
	b label1015
label12:
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label233
	add r3, r2, #4
	cmp r1, #4
	bge label16
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label233:
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
	b label1015
label16:
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label245
	add r3, r2, #5
	cmp r1, #5
	bge label18
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label245:
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
	b label1015
label65:
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label12
	mov r4, #0
	cmp r4, #0
	beq label233
	add r3, r2, #4
	cmp r1, #4
	bge label16
	b label1280
label68:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	beq label212
	add r3, r2, #2
	cmp r1, #2
	bge label65
	mov r4, #0
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label12
	b label1141
label202:
	add r3, r2, #1
	cmp r1, #1
	bge label68
	b label927
label141:
	add r3, r2, #22
	cmp r1, #11
	bge label176
	mov r4, #1
	cmp r4, #0
	beq label144
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label144:
	add r3, r2, #24
	cmp r1, #12
	bge label175
	mov r4, #1
	cmp r4, #0
	beq label147
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label147:
	add r3, r2, #26
	cmp r1, #13
	bge label174
	mov r4, #1
	cmp r4, #0
	beq label150
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label150:
	add r3, r2, #28
	cmp r1, #14
	bge label173
	mov r4, #1
	cmp r4, #0
	beq label153
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label153:
	add r3, r2, #30
	cmp r1, #15
	bge label172
	mov r4, #1
	cmp r4, #0
	beq label156
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label156:
	add r3, r2, #32
	cmp r1, #16
	bge label171
	mov r4, #1
	cmp r4, #0
	beq label159
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label159:
	add r3, r2, #34
	cmp r1, #17
	bge label160
	mov r4, #1
	cmp r4, #0
	beq label163
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label160:
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label163
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label171:
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label159
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label172:
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label156
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label173:
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label153
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label174:
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label150
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label175:
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label147
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label176:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label144
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label128:
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label129
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label129:
	add r3, r2, #10
	cmp r1, #5
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
	beq label119
	b label1074
label130:
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
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
	beq label119
	b label1074
label179:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	beq label119
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label131:
	add r3, r2, #12
	cmp r1, #6
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
	beq label119
	b label1074
label132:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
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
	beq label119
	b label1074
label133:
	add r3, r2, #14
	cmp r1, #7
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
	beq label119
	b label1074
label134:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
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
	beq label119
	b label1074
label135:
	add r3, r2, #16
	cmp r1, #8
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
	beq label119
	b label1074
label136:
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
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
	beq label119
	b label1074
label137:
	add r3, r2, #18
	cmp r1, #9
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
	beq label119
	b label1074
label138:
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
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
	beq label119
	b label1074
label139:
	add r3, r2, #20
	cmp r1, #10
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
	beq label119
	b label1074
label140:
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
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
	beq label119
	b label1074
label119:
	add r3, r2, #4
	cmp r1, #2
	bge label120
	mov r4, #1
	cmp r4, #0
	beq label123
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label120:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label123
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label123:
	add r3, r2, #6
	cmp r1, #3
	bge label124
	mov r4, #1
	cmp r4, #0
	beq label127
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	b label967
label127:
	add r3, r2, #8
	cmp r1, #4
	bge label128
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label124:
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label127
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label179
	mov r4, #1
	cmp r4, #0
	beq label119
	b label1074
label18:
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label257
	add r3, r2, #6
	cmp r1, #6
	bge label20
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label257:
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
	b label1015
label20:
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label269
	add r3, r2, #7
	cmp r1, #7
	bge label22
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label269:
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
	b label1015
label1138:
	mov r4, #0
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label12
	b label1141
label212:
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
	b label1015
label1201:
	add r3, r2, #2
	cmp r1, #2
	bge label65
	b label1138
label395:
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
	b label1015
label56:
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
	b label1015
label965:
	add r3, r2, #1
	cmp r1, #1
	bge label68
	b label1072
label1185:
	mov r4, #0
	cmp r4, #0
	beq label395
	b label1187
label377:
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
	b label1015
label59:
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label395
	add r4, r2, #19
	cmp r1, #19
	bge label56
	mov r3, #0
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
	b label1072
label61:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label377
	add r3, r2, #17
	cmp r1, #17
	bge label60
	mov r4, #0
	cmp r4, #0
	beq label386
	add r3, r2, #18
	cmp r1, #18
	bge label59
	b label1185
label1072:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1201
label22:
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label281
	add r3, r2, #8
	cmp r1, #8
	bge label24
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label281:
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
	b label1015
label24:
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label293
	add r3, r2, #9
	cmp r1, #9
	bge label26
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label293:
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
	b label1015
label26:
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label305
	add r3, r2, #10
	cmp r1, #10
	bge label28
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label305:
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
	b label1015
label28:
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label317
	add r3, r2, #11
	cmp r1, #11
	bge label30
	mov r4, #0
	cmp r4, #0
	beq label329
	add r3, r2, #12
	cmp r1, #12
	bge label64
	cmp r4, #0
	beq label338
	b label1169
label317:
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
	b label1015
label338:
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
	b label1015
label1169:
	add r3, r2, #13
	cmp r1, #13
	bge label63
	b label1170
label30:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label329
	add r3, r2, #12
	cmp r1, #12
	bge label64
	mov r4, #0
	cmp r4, #0
	beq label338
	add r3, r2, #13
	cmp r1, #13
	bge label63
label1170:
	mov r4, #0
	cmp r4, #0
	beq label347
	b label1172
label329:
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
	b label1015
label1176:
	mov r4, #0
	cmp r4, #0
	beq label368
	b label1178
label347:
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
	b label1015
label40:
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label359
	add r3, r2, #15
	cmp r1, #15
	bge label62
	mov r4, #0
	cmp r4, #0
	beq label368
	add r3, r2, #16
	cmp r1, #16
	bge label61
	b label1179
label63:
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label347
	add r3, r2, #14
	cmp r1, #14
	bge label40
	mov r4, #0
	cmp r4, #0
	beq label359
	add r3, r2, #15
	cmp r1, #15
	bge label62
	b label1176
label64:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label338
	add r3, r2, #13
	cmp r1, #13
	bge label63
	mov r4, #0
	cmp r4, #0
	beq label347
	add r3, r2, #14
	cmp r1, #14
	bge label40
	b label1173
label1172:
	add r3, r2, #14
	cmp r1, #14
	bge label40
label1173:
	mov r4, #0
	cmp r4, #0
	beq label359
	add r3, r2, #15
	cmp r1, #15
	bge label62
	b label1176
label359:
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
	b label1015
label1187:
	add r4, r2, #19
	cmp r1, #19
	bge label56
label1324:
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label66
label386:
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
	b label1015
label60:
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label386
	add r3, r2, #18
	cmp r1, #18
	bge label59
	mov r4, #0
	cmp r4, #0
	beq label395
	add r4, r2, #19
	cmp r1, #19
	bge label56
	b label1324
label66:
	add r1, r1, #1
	cmp r1, #20
	bge label203
	b label965
label1181:
	add r3, r2, #17
	cmp r1, #17
	bge label60
label1182:
	mov r4, #0
	cmp r4, #0
	beq label386
	b label1184
label368:
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
	b label1015
label1184:
	add r3, r2, #18
	cmp r1, #18
	bge label59
	b label1185
label62:
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label368
	add r3, r2, #16
	cmp r1, #16
	bge label61
	mov r4, #0
	cmp r4, #0
	beq label377
	add r3, r2, #17
	cmp r1, #17
	bge label60
	b label1182
label1213:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label544
	b label1219
label1359:
	mov r0, r1
	mov r1, #1
	b label110
label544:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label106
	b label987
label106:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label569
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	bne label107
	b label1359
label569:
	mov r1, r2
label107:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label110
label114:
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
	bne label94
	add r4, r1, #3
	cmp r3, #0
	beq label537
	b label1213
label987:
	mov r0, r2
	mov r1, #1
	b label110
label551:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label106
	b label987
label110:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
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
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label94
	b label1216
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
	bne label94
	add r4, r1, #3
	cmp r3, #0
	beq label537
	b label1091
label1216:
	add r4, r1, #3
	cmp r3, #0
	beq label537
	b label1218
label1075:
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label114
	b label1203
label76:
	mov r4, #1
	cmp r1, #0
	str r4, [r0, r1, lsl #2]
	bne label81
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
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label114
	b label1075
label81:
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
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label114
	b label1075
label1203:
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label86
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label499
	b label1212
label94:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label96
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label537
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label544
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label551
	b label1222
label499:
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	bne label96
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label537
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label544
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label551
label1222:
	add r1, r1, #12
	cmp r2, #0
	bne label104
	b label1359
label96:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	bne label97
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label537
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label544
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label551
	add r1, r1, #12
	cmp r2, #0
	bne label104
	b label1359
label104:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label106
	b label987
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
	bne label94
	add r4, r1, #3
	cmp r3, #0
	beq label537
	b label1091
label1218:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label544
label1219:
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label551
	add r1, r1, #12
	cmp r2, #0
	bne label104
	b label1359
label537:
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	beq label106
	b label987
label89:
	add r1, r1, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label499
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label94
	add r4, r1, #3
	cmp r3, #0
	beq label537
label1091:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label544
	b label1219
label97:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	bne label98
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label537
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label544
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label551
	add r1, r1, #12
	cmp r2, #0
	bne label104
	b label1359
label98:
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
	add r4, r1, #3
	cmp r3, #0
	beq label537
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label544
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label551
	add r1, r1, #12
	cmp r2, #0
	bne label104
	b label1359
label1178:
	add r3, r2, #16
	cmp r1, #16
	bge label61
label1179:
	mov r4, #0
	cmp r4, #0
	beq label377
	b label1181
