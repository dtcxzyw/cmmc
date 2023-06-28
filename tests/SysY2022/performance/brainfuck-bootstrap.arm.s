.arch armv7ve
.data
.align 4
program:
	.zero	262144
.align 4
tape:
	.zero	262144
.align 4
input:
	.zero	262144
.align 4
output:
	.zero	262144
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r12, #2068
	sub sp, sp, r12
	add r8, sp, #0
	str r8, [sp, #2048]
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	b label909
label122:
	mov r1, #0
	cmp r1, #0
	beq label126
	cmp r0, #43
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label28
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	b label992
label28:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	str r9, [sp, #2052]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #2056]
	cmp r0, #35
	beq label162
	mov r4, #0
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	beq label332
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	b label1047
label336:
	mov r1, #0
	cmp r1, #0
	beq label339
	cmp r0, #45
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	bl getch
	cmp r0, #62
	beq label332
	b label971
label339:
	mov r1, #0
	cmp r1, #0
	beq label342
	cmp r0, #91
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	bl getch
	cmp r0, #62
	beq label332
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	b label1051
label342:
	mov r1, #0
	cmp r1, #0
	beq label345
	cmp r0, #93
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	bl getch
	cmp r0, #62
	beq label332
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	b label1052
label345:
	mov r1, #0
	cmp r1, #0
	beq label348
	cmp r0, #46
	movwne r1, #1
	cmp r1, #0
	beq label351
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	bl getch
	cmp r0, #62
	beq label332
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	b label1053
label348:
	mov r1, #0
	cmp r1, #0
	beq label351
	cmp r0, #44
	movwne r1, #1
	cmp r1, #0
	beq label355
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	bl getch
	cmp r0, #62
	beq label332
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	b label1054
label351:
	mov r1, #0
	cmp r1, #0
	beq label355
	cmp r0, #35
	movwne r1, #1
	cmp r1, #0
	beq label109
	bl getch
	cmp r0, #62
	beq label332
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	b label979
label355:
	mov r1, #0
	cmp r1, #0
	beq label109
	bl getch
	cmp r0, #62
	beq label332
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	b label968
label979:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	b label1058
label166:
	mov r6, #0
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label37
label31:
	bl getint
	mov r6, r0
	bl getch
	mov r4, #0
	cmp r4, r6
	bge label173
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	b label1007
label109:
	add r4, r4, #1
	cmp r0, #35
	beq label364
	ldr r9, [sp, #2052]
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	beq label332
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	b label1047
label364:
	mov r5, r4
	bl getch
	cmp r0, #105
	beq label31
	b label166
label1047:
	bl getch
	cmp r0, #62
	beq label332
	b label1049
label1056:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
label1058:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	b label1047
label1049:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
label1050:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
label1051:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
label1052:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
label1053:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	b label1054
label162:
	mov r5, #0
	bl getch
	cmp r0, #105
	beq label31
	b label166
label968:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	b label1047
label332:
	mov r1, #0
	cmp r1, #0
	beq label336
	cmp r0, #43
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label355
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label109
	bl getch
	cmp r0, #62
	beq label332
label971:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	b label1050
label1054:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label351
	b label1056
label134:
	mov r1, #0
	cmp r1, #0
	beq label137
	cmp r0, #93
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label28
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	b label916
label137:
	mov r1, #0
	cmp r1, #0
	beq label141
	cmp r0, #46
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label28
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	b label999
label37:
	ldr r8, [sp, #2048]
	add r1, r8, r0, lsl #2
	mov r2, #0
	ldr r8, [sp, #2048]
	str r2, [r8, r0, lsl #2]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	add r0, r0, #16
	cmp r0, #512
	bge label39
	b label37
label39:
	movw r7, #:lower16:tape
	movt r7, #:upper16:tape
	mov r4, #0
	mov r3, r4
	mov r1, r4
	mov r2, r4
	mov r0, r4
	cmp r4, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r4, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r4, #1
	add r0, r4, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	b label1009
label52:
	cmp r8, #60
	bne label54
	sub r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	b label1046
label255:
	mov r8, #1
label59:
	cmp r8, #0
	ble label79
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label64
	sub r8, r8, #1
	cmp r9, #91
	bne label59
	add r8, r8, #1
	cmp r8, #0
	ble label79
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label64
	sub r8, r8, #1
	cmp r9, #91
	bne label59
	add r8, r8, #1
	cmp r8, #0
	ble label79
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label64
	sub r8, r8, #1
	cmp r9, #91
	bne label59
	b label1025
label1046:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	b label967
label1009:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	b label967
label46:
	mov r0, #118
	bl _sysy_stoptime
	movw r5, #:lower16:output
	movt r5, #:upper16:output
	cmp r4, #0
	ble label47
	mov r6, #0
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
label1011:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label47
	b label1011
label988:
	bl getch
	cmp r0, #62
	beq label122
	b label990
label997:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
label999:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
label1001:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
label1003:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label28
	b label988
label909:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label28
	b label988
label149:
	mov r1, #0
	cmp r1, #0
	beq label28
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	b label909
label79:
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	b label967
label990:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
label992:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
label994:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
label995:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	b label997
label126:
	mov r1, #0
	cmp r1, #0
	beq label130
	cmp r0, #45
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label28
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	b label915
label130:
	mov r1, #0
	cmp r1, #0
	beq label134
	cmp r0, #91
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label28
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	b label916
label915:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	b label994
label916:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	b label995
label141:
	mov r1, #0
	cmp r1, #0
	beq label145
	cmp r0, #44
	movwne r1, #1
	cmp r1, #0
	beq label149
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label28
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	b label922
label145:
	mov r1, #0
	cmp r1, #0
	beq label149
	cmp r0, #35
	movwne r1, #1
	cmp r1, #0
	beq label28
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	b label924
label922:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	b label1001
label924:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	b label1003
label1025:
	add r8, r8, #1
	cmp r8, #0
	ble label79
label950:
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label64
	sub r8, r8, #1
	cmp r9, #91
	bne label59
	b label1025
label55:
	cmp r8, #45
	bne label57
	ldr r8, [r7, r2, lsl #2]
	sub r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	b label1046
label57:
	cmp r8, #91
	bne label68
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	beq label255
	ldr r8, [sp, #2048]
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	b label967
label68:
	cmp r8, #93
	bne label72
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	bne label71
	sub r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	b label967
label71:
	sub r0, r1, #1
	ldr r8, [sp, #2048]
	ldr r0, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	b label1009
label72:
	cmp r8, #46
	bne label73
	movw r8, #:lower16:output
	movt r8, #:upper16:output
	ldr r9, [r7, r2, lsl #2]
	str r9, [r8, r4, lsl #2]
	add r4, r4, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	b label1046
label967:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	b label1046
label73:
	cmp r8, #44
	bne label79
	cmp r3, r6
	blt label75
	mov r8, #0
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	b label967
label75:
	ldr r8, [sp, #2056]
	ldr r8, [r8, r3, lsl #2]
	str r8, [r7, r2, lsl #2]
	add r3, r3, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	b label1009
label54:
	cmp r8, #43
	bne label55
	ldr r8, [r7, r2, lsl #2]
	add r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label52
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label46
	b label1046
label1007:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label173
	b label1007
label64:
	cmp r9, #91
	bne label59
	add r8, r8, #1
	cmp r8, #0
	ble label79
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label64
	sub r8, r8, #1
	cmp r9, #91
	bne label59
	add r8, r8, #1
	cmp r8, #0
	ble label79
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label64
	sub r8, r8, #1
	cmp r9, #91
	bne label59
	add r8, r8, #1
	cmp r8, #0
	ble label79
	b label950
label47:
	mov r0, #0
	movw r12, #2068
	add sp, sp, r12
	pop { r4, r5, r6, r7, r8, r9, pc }
label173:
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label37
