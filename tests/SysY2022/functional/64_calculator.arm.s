.arch armv7ve
.data
.bss
.align 4
ints:
	.zero	40000
.align 4
chas:
	.zero	40000
.align 4
get:
	.zero	40000
.align 4
get2:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	movw r4, #:lower16:get2
	cmp r0, #13
	mov r1, #0
	mov r2, #0
	movw r7, #:lower16:get
	movw r6, #:lower16:chas
	movw r5, #:lower16:ints
	movt r4, #:upper16:get2
	movwne r1, #1
	movt r7, #:upper16:get
	movt r6, #:upper16:chas
	movt r5, #:upper16:ints
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	bne label130
	mov r0, #0
	mov r3, #0
	mov r8, #1
	mov r1, r3
	cmp r0, r3
	bgt label8
	cmp r3, #0
	bgt label107
	b label76
label130:
	mov r8, #0
	b label114
.p2align 4
label133:
	cmp r3, #0
	bgt label107
	b label76
.p2align 4
label8:
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	blo label74
	cmp r2, #40
	beq label10
	cmp r2, #94
	beq label13
	mov r10, r3
	cmp r2, #41
	beq label16
	mov r3, r8
	cmp r2, #43
	beq label24
	mov r8, r10
	cmp r2, #45
	beq label34
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r10
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r10
	cmp r0, r1
	bgt label8
	b label133
.p2align 4
label74:
	str r2, [r4, r8, lsl #2]
	add r1, r1, #1
	add r8, r8, #1
	cmp r0, r1
	bgt label8
	cmp r3, #0
	bgt label107
	b label76
.p2align 4
label16:
	ldr r9, [r6, r10, lsl #2]
	sub r10, r10, #1
	cmp r9, #40
	bne label168
	mov r3, r8
	cmp r2, #43
	beq label24
	mov r8, r10
	cmp r2, #45
	beq label34
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r10
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r10
	cmp r0, r1
	bgt label8
	cmp r10, #0
	bgt label107
	b label76
.p2align 4
label24:
	ldr r8, [r6, r10, lsl #2]
	sub r11, r8, #45
	sub r9, r8, #43
	clz r11, r11
	clz r9, r9
	lsr r11, r11, #5
	lsr r9, r9, #5
	orr r9, r9, r11
	sub r11, r8, #42
	clz r11, r11
	lsr r11, r11, #5
	orr r9, r9, r11
	sub r11, r8, #47
	clz r11, r11
	lsr r11, r11, #5
	orr r9, r9, r11
	sub r11, r8, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r9, r9, r11
	sub r11, r8, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r9, r9, r11
	bne label30
	add r8, r10, #1
	mov r9, #43
	str r9, [r6, r8, lsl #2]
	cmp r2, #45
	beq label34
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
	b label76
.p2align 4
label27:
	add r8, r10, #1
	mov r9, #43
	str r9, [r6, r8, lsl #2]
	cmp r2, #45
	beq label34
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
	b label76
.p2align 4
label30:
	add r9, r4, r3, lsl #2
	mov r11, #32
	subs r10, r10, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r8, [r9, #4]
	beq label27
	b label24
.p2align 4
label168:
	mov r3, r10
	add r10, r4, r8, lsl #2
	mov r11, #32
	str r11, [r4, r8, lsl #2]
	add r8, r8, #2
	str r9, [r10, #4]
	sub r10, r3, #1
	ldr r9, [r6, r3, lsl #2]
	cmp r9, #40
	bne label168
	mov r3, r8
	cmp r2, #43
	beq label24
	mov r8, r10
	cmp r2, #45
	beq label34
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r10
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r10
	cmp r0, r1
	bgt label8
	cmp r10, #0
	bgt label107
	b label76
.p2align 4
label48:
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	ble label76
label107:
	subs r0, r3, #4
	bgt label108
	b label111
.p2align 4
label67:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #47
	sub r10, r9, #42
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	bne label73
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	cmp r2, #37
	beq label283
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
	b label76
.p2align 4
label70:
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	cmp r2, #37
	beq label283
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
	b label76
.p2align 4
label73:
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	beq label70
	b label67
.p2align 4
label13:
	add r10, r3, #1
	mov r3, #94
	str r3, [r6, r10, lsl #2]
	cmp r2, #41
	beq label16
	mov r3, r8
	cmp r2, #43
	beq label24
	mov r8, r10
	cmp r2, #45
	beq label34
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r10
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r10
	cmp r0, r1
	bgt label8
	cmp r10, #0
	bgt label107
	b label76
.p2align 4
label10:
	add r3, r3, #1
	mov r9, #40
	str r9, [r6, r3, lsl #2]
	cmp r2, #94
	beq label13
	mov r10, r3
	cmp r2, #41
	beq label16
	mov r3, r8
	cmp r2, #43
	beq label24
	mov r8, r10
	cmp r2, #45
	beq label34
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r10
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r10
	cmp r0, r1
	bgt label8
	cmp r10, #0
	bgt label107
	b label76
.p2align 4
label283:
	mov r2, r3
	mov r3, r8
.p2align 4
label60:
	ldr r8, [r6, r3, lsl #2]
	sub r10, r8, #47
	sub r9, r8, #42
	clz r10, r10
	clz r9, r9
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r9, r9, r10
	sub r10, r8, #94
	clz r10, r10
	lsr r10, r10, #5
	orrs r9, r9, r10
	bne label66
	mov r8, r2
	add r2, r3, #1
	mov r3, #37
	str r3, [r6, r2, lsl #2]
	mov r3, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
	b label76
.p2align 4
label667:
	mov r2, r8
	b label60
.p2align 4
label66:
	add r9, r4, r2, lsl #2
	mov r10, #32
	subs r3, r3, #1
	str r10, [r4, r2, lsl #2]
	str r8, [r9, #4]
	add r8, r2, #2
	beq label63
	b label667
.p2align 4
label44:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #47
	sub r10, r9, #42
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	bne label47
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
	b label76
.p2align 4
label47:
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	beq label48
	b label44
.p2align 4
label34:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #45
	sub r10, r9, #43
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #42
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #47
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	bne label37
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
	b label76
.p2align 4
label37:
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label34
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	beq label44
	cmp r2, #47
	beq label67
	cmp r2, #37
	beq label283
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
	b label76
.p2align 4
label63:
	add r2, r3, #1
	mov r3, #37
	str r3, [r6, r2, lsl #2]
	mov r3, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label107
label76:
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	beq label78
	mov r0, #1
	mov r1, #0
	b label79
label108:
	add r1, r6, r3, lsl #2
	ldr r7, [r6, r3, lsl #2]
	mov r2, #32
	add r0, r4, r8, lsl #2
	sub r3, r3, #4
	str r2, [r4, r8, lsl #2]
	cmp r3, #4
	add r8, r8, #8
	str r7, [r0, #4]
	ldr r7, [r1, #-4]
	str r2, [r0, #8]
	str r7, [r0, #12]
	ldr r7, [r1, #-8]
	str r2, [r0, #16]
	str r7, [r0, #20]
	ldr r1, [r1, #-12]
	str r2, [r0, #24]
	str r1, [r0, #28]
	bgt label108
label111:
	ldr r0, [r6, r3, lsl #2]
	add r1, r4, r8, lsl #2
	mov r2, #32
	subs r3, r3, #1
	str r2, [r4, r8, lsl #2]
	add r8, r8, #2
	str r0, [r1, #4]
	bgt label111
	b label76
.p2align 4
label79:
	ldr r3, [r4, r0, lsl #2]
	sub r6, r3, #42
	sub r2, r3, #43
	clz r6, r6
	clz r2, r2
	lsr r8, r6, #5
	lsr r9, r2, #5
	sub r6, r3, #47
	sub r2, r3, #45
	clz r6, r6
	clz r2, r2
	lsr r6, r6, #5
	lsr r7, r2, #5
	orr r2, r9, r7
	orr r2, r2, r8
	orr r2, r2, r6
	sub r6, r3, #37
	clz r6, r6
	lsr r6, r6, #5
	orr r2, r2, r6
	sub r6, r3, #94
	clz r6, r6
	lsr r6, r6, #5
	orrs r2, r2, r6
	bne label94
	cmp r3, #32
	bne label85
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label79
	b label78
.p2align 4
label94:
	add r2, r5, r1, lsl #2
	ldr r6, [r5, r1, lsl #2]
	cmp r9, #0
	mov r9, #0
	ldr r2, [r2, #-4]
	add r10, r6, r2
	movne r9, r10
	cmp r7, #0
	sub r10, r2, r6
	mov r7, r9
	movne r7, r10
	cmp r8, #0
	mul r9, r6, r2
	movne r7, r9
	cmp r3, #47
	beq label95
	cmp r3, #37
	beq label106
	cmp r3, #94
	beq label100
	mov r2, r7
	sub r1, r1, #1
	str r7, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label79
label78:
	ldr r0, [r5, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label85:
	add r1, r1, #1
	sub r6, r3, #48
	add r3, r0, #1
	str r6, [r5, r1, lsl #2]
	ldr r2, [r4, r3, lsl #2]
	cmp r2, #32
	bne label389
	mov r2, #1
	add r0, r0, r2
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label79
	b label78
label389:
	mov r2, #1
	b label86
.p2align 4
label100:
	cmp r6, #0
	bne label440
	mov r2, #1
	sub r1, r1, #1
	str r2, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label79
	b label78
.p2align 4
label440:
	mov r3, #1
.p2align 4
label101:
	mul r3, r2, r3
	subs r6, r6, #1
	bne label101
	mov r2, r3
	sub r1, r1, #1
	str r3, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label79
	b label78
.p2align 4
label95:
	sdiv r7, r2, r6
	cmp r3, #37
	beq label106
	cmp r3, #94
	beq label100
	mov r2, r7
	sub r1, r1, #1
	str r7, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label79
	b label78
.p2align 4
label106:
	sdiv r7, r2, r6
	mls r7, r7, r6, r2
	cmp r3, #94
	beq label100
	mov r2, r7
	sub r1, r1, #1
	str r7, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label79
	b label78
.p2align 4
label114:
	str r0, [r7, r8, lsl #2]
	bl getch
	add r8, r8, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	bne label114
	mov r0, r8
	mov r3, #0
	mov r8, #1
	mov r1, r3
	cmp r0, r3
	bgt label8
	cmp r3, #0
	bgt label107
	b label76
.p2align 4
label86:
	add r7, r0, r2
	add r6, r6, r6, lsl #2
	ldr r7, [r4, r7, lsl #2]
	lsl r6, r6, #1
	sub r6, r6, #48
	add r6, r7, r6
	add r7, r3, r2
	str r6, [r5, r1, lsl #2]
	add r2, r2, #1
	ldr r7, [r4, r7, lsl #2]
	cmp r7, #32
	bne label86
	add r0, r0, r2
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label79
	b label78
