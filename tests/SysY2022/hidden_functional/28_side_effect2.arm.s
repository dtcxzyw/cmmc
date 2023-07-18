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
label2:
	cmp r1, #20
	bge label203
	add r3, r2, #1
	cmp r1, #1
	bge label6
	b label927
label203:
	mov r1, #0
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	b label69
label1309:
	mov r2, r3
	add r1, r1, #1
	b label2
label221:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label66:
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label13
	mov r4, #0
	cmp r4, #0
	beq label233
	add r3, r2, #4
	cmp r1, #4
	bge label17
	b label1309
label69:
	cmp r1, #20
	bge label431
	b label430
label431:
	mov r3, #1
	cmp r3, #20
	bge label139
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label174
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label141
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label141
	b label1282
label1097:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label73:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1097
label430:
	add r3, r2, #2
	cmp r1, #1
	bge label73
	b label967
label95:
	add r3, r2, #18
	cmp r1, #9
	bge label96
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label96:
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label97
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label967:
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1097
label927:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label1169:
	mov r4, #0
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label13
label1172:
	mov r4, #0
	cmp r4, #0
	beq label233
	b label1174
label212:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label1174:
	add r3, r2, #4
	cmp r1, #4
	bge label17
	b label1309
label17:
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label245
	add r3, r2, #5
	cmp r1, #5
	bge label19
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	b label927
label245:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label19:
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label257
	add r3, r2, #6
	cmp r1, #6
	bge label21
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	b label927
label257:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label59:
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label392
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
	bge label6
label1096:
	mov r4, #0
	cmp r4, #0
	beq label212
	add r3, r2, #2
	cmp r1, #2
	bge label66
	b label1169
label97:
	add r3, r2, #20
	cmp r1, #10
	bge label98
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label98:
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label99
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label99:
	add r3, r2, #22
	cmp r1, #11
	bge label134
	mov r4, #1
	cmp r4, #0
	beq label102
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
label1258:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label134:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label102
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1258
label102:
	add r3, r2, #24
	cmp r1, #12
	bge label133
	mov r4, #1
	cmp r4, #0
	beq label105
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
label1260:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label133:
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label105
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1260
label105:
	add r3, r2, #26
	cmp r1, #13
	bge label106
	mov r4, #1
	cmp r4, #0
	beq label109
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
label1262:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label109:
	add r3, r2, #28
	cmp r1, #14
	bge label132
	mov r4, #1
	cmp r4, #0
	beq label112
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
label1264:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label112:
	add r3, r2, #30
	cmp r1, #15
	bge label113
	mov r4, #1
	cmp r4, #0
	beq label116
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
label1266:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label116:
	add r3, r2, #32
	cmp r1, #16
	bge label131
	mov r4, #1
	cmp r4, #0
	beq label119
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
label1268:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label119:
	add r3, r2, #34
	cmp r1, #17
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
	bge label73
	cmp r4, #0
	beq label78
	b label1270
label120:
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label123
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
label1270:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label131:
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label119
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1268
label132:
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label112
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1264
label123:
	add r3, r2, #36
	cmp r1, #18
	bge label130
	mov r4, #1
	cmp r4, #0
	beq label126
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
label1272:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label130:
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label126
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1272
label1238:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label126:
	add r4, r2, #38
	cmp r1, #19
	bge label129
	mov r3, #1
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1238
label129:
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
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label113:
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label116
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1266
label106:
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label109
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1262
label78:
	add r3, r2, #4
	cmp r1, #2
	bge label79
	mov r4, #1
	cmp r4, #0
	beq label82
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
	b label1240
label79:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label82
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
label1240:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label82:
	add r3, r2, #6
	cmp r1, #3
	bge label135
	mov r4, #1
	cmp r4, #0
	beq label85
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	cmp r4, #0
	beq label78
label1242:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label135:
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label85
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	b label1242
label85:
	add r3, r2, #8
	cmp r1, #4
	bge label86
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label86:
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label87
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label87:
	add r3, r2, #10
	cmp r1, #5
	bge label88
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label88:
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label89
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label89:
	add r3, r2, #12
	cmp r1, #6
	bge label90
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label90:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label91
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label91:
	add r3, r2, #14
	cmp r1, #7
	bge label92
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label92:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label93
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label93:
	add r3, r2, #16
	cmp r1, #8
	bge label94
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label94:
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label95
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label21:
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label269
	add r3, r2, #7
	cmp r1, #7
	bge label23
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	b label927
label269:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label23:
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label281
	add r3, r2, #8
	cmp r1, #8
	bge label25
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	b label927
label281:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label25:
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label293
	add r3, r2, #9
	cmp r1, #9
	bge label27
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	b label927
label293:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label27:
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label305
	add r3, r2, #10
	cmp r1, #10
	bge label29
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	b label927
label305:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label29:
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label317
	add r3, r2, #11
	cmp r1, #11
	bge label65
	mov r4, #0
	cmp r4, #0
	beq label326
	add r3, r2, #12
	cmp r1, #12
	bge label64
	cmp r4, #0
	beq label335
	b label1200
label317:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label1201:
	mov r4, #0
	cmp r4, #0
	beq label344
	b label1203
label1207:
	mov r4, #0
	cmp r4, #0
	beq label365
	add r3, r2, #16
	cmp r1, #16
	bge label61
label1210:
	mov r4, #0
	cmp r4, #0
	beq label374
	b label1212
label374:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label63:
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label344
	add r3, r2, #14
	cmp r1, #14
	bge label40
	mov r4, #0
	cmp r4, #0
	beq label356
	add r3, r2, #15
	cmp r1, #15
	bge label62
	b label1207
label65:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label326
	add r3, r2, #12
	cmp r1, #12
	bge label64
	mov r4, #0
	cmp r4, #0
	beq label335
	add r3, r2, #13
	cmp r1, #13
	bge label63
	b label1201
label1200:
	add r3, r2, #13
	cmp r1, #13
	bge label63
	b label1201
label326:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label1203:
	add r3, r2, #14
	cmp r1, #14
	bge label40
label1204:
	mov r4, #0
	cmp r4, #0
	beq label356
	b label1206
label335:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label1206:
	add r3, r2, #15
	cmp r1, #15
	bge label62
	b label1207
label64:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label335
	add r3, r2, #13
	cmp r1, #13
	bge label63
	mov r4, #0
	cmp r4, #0
	beq label344
	add r3, r2, #14
	cmp r1, #14
	bge label40
	b label1204
label356:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label13:
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label233
	add r3, r2, #4
	cmp r1, #4
	bge label17
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	b label927
label233:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label1215:
	add r3, r2, #18
	cmp r1, #18
	bge label59
label1216:
	mov r4, #0
	cmp r4, #0
	beq label392
	add r4, r2, #19
	cmp r1, #19
	bge label56
	b label1353
label383:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label344:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label392:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label6:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	beq label212
	add r3, r2, #2
	cmp r1, #2
	bge label66
	mov r4, #0
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label13
	b label1172
label40:
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label356
	add r3, r2, #15
	cmp r1, #15
	bge label62
	mov r4, #0
	cmp r4, #0
	beq label365
	add r3, r2, #16
	cmp r1, #16
	bge label61
	b label1210
label1213:
	mov r4, #0
	cmp r4, #0
	beq label383
	b label1215
label365:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label61:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label374
	add r3, r2, #17
	cmp r1, #17
	bge label60
	mov r4, #0
	cmp r4, #0
	beq label383
	add r3, r2, #18
	cmp r1, #18
	bge label59
	b label1216
label62:
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label365
	add r3, r2, #16
	cmp r1, #16
	bge label61
	mov r4, #0
	cmp r4, #0
	beq label374
	add r3, r2, #17
	cmp r1, #17
	bge label60
	b label1213
label1038:
	add r3, r2, #2
	cmp r1, #2
	bge label66
	b label1169
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
	bge label6
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1038
label1282:
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label145
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label707
	b label1283
label139:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label141
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label141
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label145
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label707
label1283:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label153
	b label1297
label707:
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	bne label155
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label745
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label754
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label761
	b label1293
label1297:
	add r4, r1, #3
	cmp r3, #0
	beq label745
	b label1284
label1147:
	add r4, r1, #3
	cmp r3, #0
	beq label745
label1284:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label754
label1290:
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label761
	b label1292
label145:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	beq label685
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	bne label692
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	beq label148
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label707
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label153
	b label1287
label685:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label707
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label153
	add r4, r1, #3
	cmp r3, #0
	beq label745
	b label1153
label1287:
	add r4, r1, #3
	cmp r3, #0
	beq label745
	b label1289
label1428:
	mov r0, r1
	mov r1, #1
	b label160
label153:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label155
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label745
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label754
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label761
label1293:
	add r1, r1, #12
	cmp r2, #0
	bne label166
	b label1428
label155:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	bne label156
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label745
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label754
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label761
	add r1, r1, #12
	cmp r2, #0
	bne label166
	b label1428
label160:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label761:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label168
	b label1027
label1289:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label754
	b label1290
label1027:
	mov r0, r2
	mov r1, #1
	b label160
label754:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label168
	b label1027
label174:
	mov r4, #1
	cmp r1, #0
	str r4, [r0, r1, lsl #2]
	bne label175
	ldr r1, [sp, #0]
	cmp r1, #0
	beq label139
	add r3, r3, #1
	cmp r3, #20
	bge label139
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label174
	b label1301
label175:
	sub r1, r3, #2
	ldr r1, [r0, r1, lsl #2]
	cmp r1, #0
	beq label139
	add r3, r3, #1
	cmp r3, #20
	bge label139
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label174
label1301:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label141
	b label1145
label166:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label168
	b label1027
label141:
	ldr r4, [r0, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r2
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label145
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label707
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label153
	b label1147
label1145:
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label141
	b label1282
label692:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label707
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label153
	add r4, r1, #3
	cmp r3, #0
	beq label745
	b label1153
label148:
	add r1, r1, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label707
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label153
	add r4, r1, #3
	cmp r3, #0
	beq label745
label1153:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label754
	b label1290
label156:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	bne label157
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label745
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label754
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label761
	add r1, r1, #12
	cmp r2, #0
	bne label166
	b label1428
label157:
	ldr r4, [r0, #56]
	add r5, r1, #12
	cmp r4, #0
	add r4, r1, #15
	mov r1, r5
	movne r1, r4
	add r4, r1, #3
	cmp r3, #0
	beq label745
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label754
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label761
	add r1, r1, #12
	cmp r2, #0
	bne label166
	b label1428
label745:
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	beq label168
	b label1027
label168:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label779
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	bne label169
	b label1428
label779:
	mov r1, r2
label169:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label160
label1292:
	add r1, r1, #12
	cmp r2, #0
	bne label166
	b label1428
label1212:
	add r3, r2, #17
	cmp r1, #17
	bge label60
	b label1213
label1353:
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label67
label60:
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label383
	add r3, r2, #18
	cmp r1, #18
	bge label59
	mov r4, #0
	cmp r4, #0
	beq label392
	add r4, r2, #19
	cmp r1, #19
	bge label56
	b label1353
label67:
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r2, #1
	cmp r1, #1
	bge label6
	b label1096
