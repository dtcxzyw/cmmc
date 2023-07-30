.arch armv7ve
.data
.bss
.align 8
ints:
	.zero	40000
.align 8
chas:
	.zero	40000
.align 8
get:
	.zero	40000
.align 8
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
	sub sp, sp, #12
	bl getch
	movw r4, #:lower16:get2
	cmp r0, #13
	mov r2, #0
	mov r1, #0
	movw r6, #:lower16:get
	movw r5, #:lower16:chas
	movw r8, #:lower16:ints
	movt r4, #:upper16:get2
	movwne r1, #1
	movt r6, #:upper16:get
	movt r5, #:upper16:chas
	movt r8, #:upper16:ints
	cmp r0, #10
	str r8, [sp, #0]
	movwne r2, #1
	ands r1, r1, r2
	bne label128
	mov r0, #0
	mov r3, #0
	mov r7, #1
	mov r1, r3
	cmp r0, r3
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
label128:
	mov r7, #0
	b label2
.p2align 4
label141:
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label11:
	ldr r2, [r6, r1, lsl #2]
	add r1, r1, #1
	sub r8, r2, #48
	cmp r8, #10
	blo label77
	cmp r2, #40
	beq label13
	cmp r2, #94
	beq label16
	mov r9, r3
	cmp r2, #41
	beq label19
	mov r3, r7
	cmp r2, #43
	beq label27
	mov r7, r9
	cmp r2, #45
	beq label37
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r9
	mov r7, r2
	cmp r0, r1
	bgt label11
	b label141
.p2align 4
label77:
	str r2, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label177:
	mov r3, r9
	add r9, r4, r7, lsl #2
	mov r10, #32
	add r7, r7, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	sub r9, r3, #1
	ldr r8, [r5, r3, lsl #2]
	cmp r8, #40
	bne label177
	mov r3, r7
	cmp r2, #43
	beq label27
	mov r7, r9
	cmp r2, #45
	beq label37
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r9
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r9, #0
	bgt label108
	b label79
.p2align 4
label27:
	ldr r7, [r5, r9, lsl #2]
	sub r11, r7, #47
	sub r10, r7, #45
	sub r8, r7, #43
	clz r11, r11
	clz r10, r10
	clz r8, r8
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r8, r8, #5
	orr r8, r8, r10
	sub r10, r7, #42
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r7, #94
	orr r8, r8, r10
	clz r11, r11
	sub r10, r7, #37
	lsr r11, r11, #5
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r8, r8, r10
	bne label30
	add r7, r9, #1
	mov r8, #43
	str r8, [r5, r7, lsl #2]
	cmp r2, #45
	beq label37
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label30:
	add r8, r4, r3, lsl #2
	mov r10, #32
	subs r9, r9, #1
	add r3, r3, #2
	str r10, [r8, #0]
	str r7, [r8, #4]
	beq label31
	b label27
.p2align 4
label19:
	ldr r8, [r5, r9, lsl #2]
	sub r9, r9, #1
	cmp r8, #40
	bne label177
	mov r3, r7
	cmp r2, #43
	beq label27
	mov r7, r9
	cmp r2, #45
	beq label37
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r9
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r9, #0
	bgt label108
label79:
	mov r0, #64
	str r0, [r4, r7, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	beq label81
	mov r2, #1
	mov r0, #0
.p2align 4
label82:
	ldr r3, [r4, r2, lsl #2]
	sub r9, r3, #94
	sub r8, r3, #47
	sub r6, r3, #42
	sub r1, r3, #43
	clz r9, r9
	clz r8, r8
	clz r6, r6
	clz r1, r1
	lsr r9, r9, #5
	lsr r8, r8, #5
	lsr r6, r6, #5
	lsr r7, r1, #5
	orr r8, r6, r8
	sub r1, r3, #45
	clz r1, r1
	lsr r5, r1, #5
	orr r1, r7, r5
	orr r1, r1, r8
	sub r8, r3, #37
	clz r8, r8
	lsr r8, r8, #5
	orr r8, r8, r9
	orrs r1, r1, r8
	add r1, r2, #1
	bne label88
	cmp r3, #32
	bne label102
	b label85
.p2align 4
label88:
	ldr r8, [sp, #0]
	cmp r7, #0
	mov r7, #0
	add r2, r8, r0, lsl #2
	ldr r8, [r2, #0]
	ldr r2, [r2, #-4]
	add r9, r8, r2
	movne r7, r9
	cmp r5, #0
	sub r9, r2, r8
	mov r5, r7
	movne r5, r9
	cmp r6, #0
	mul r7, r8, r2
	movne r5, r7
	cmp r3, #47
	beq label100
	cmp r3, #37
	beq label91
	cmp r3, #94
	beq label94
	mov r2, r5
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label387
	b label81
.p2align 4
label100:
	sdiv r5, r2, r8
	cmp r3, #37
	beq label91
	cmp r3, #94
	beq label94
	mov r2, r5
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label387
	b label81
label108:
	subs r0, r3, #4
	bgt label109
label112:
	ldr r0, [r5, r3, lsl #2]
	add r1, r4, r7, lsl #2
	mov r2, #32
	subs r3, r3, #1
	add r7, r7, #2
	str r2, [r1, #0]
	str r0, [r1, #4]
	bgt label112
	b label79
label387:
	mov r2, r1
	b label82
.p2align 4
label94:
	cmp r8, #0
	bne label412
	mov r2, #1
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r2, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label387
	b label81
.p2align 4
label412:
	mov r5, r8
	mov r3, #1
.p2align 4
label95:
	mul r3, r2, r3
	subs r5, r5, #1
	bne label95
	mov r2, r3
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r3, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label387
label81:
	ldr r8, [sp, #0]
	ldr r0, [r8, #4]
	bl putint
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label102:
	add r0, r0, #1
	sub r5, r3, #48
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r3, [r4, r1, lsl #2]
	cmp r3, #32
	bne label437
	mov r3, #1
	add r1, r2, r3
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label387
	b label81
label437:
	mov r3, #1
	b label105
.p2align 4
label91:
	sdiv r5, r2, r8
	mls r5, r5, r8, r2
	cmp r3, #94
	beq label94
	mov r2, r5
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label387
	b label81
.p2align 4
label16:
	add r9, r3, #1
	mov r3, #94
	str r3, [r5, r9, lsl #2]
	cmp r2, #41
	beq label19
	mov r3, r7
	cmp r2, #43
	beq label27
	mov r7, r9
	cmp r2, #45
	beq label37
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r9
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r9, #0
	bgt label108
	b label79
.p2align 4
label13:
	add r3, r3, #1
	mov r8, #40
	str r8, [r5, r3, lsl #2]
	cmp r2, #94
	beq label16
	mov r9, r3
	cmp r2, #41
	beq label19
	mov r3, r7
	cmp r2, #43
	beq label27
	mov r7, r9
	cmp r2, #45
	beq label37
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r9
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r9, #0
	bgt label108
	b label79
.p2align 4
label47:
	ldr r8, [r5, r7, lsl #2]
	sub r11, r8, #94
	sub r10, r8, #47
	sub r9, r8, #42
	clz r11, r11
	clz r10, r10
	clz r9, r9
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r9, r9, r10
	bne label50
	add r7, r7, #1
	mov r8, #42
	str r8, [r5, r7, lsl #2]
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label50:
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	add r3, r3, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	beq label51
	b label47
.p2align 4
label70:
	ldr r8, [r5, r7, lsl #2]
	sub r11, r8, #94
	sub r10, r8, #47
	sub r9, r8, #42
	clz r11, r11
	clz r10, r10
	clz r9, r9
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r9, r9, r10
	bne label76
	add r7, r7, #1
	mov r8, #47
	str r8, [r5, r7, lsl #2]
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label73:
	add r7, r7, #1
	mov r8, #47
	str r8, [r5, r7, lsl #2]
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label76:
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	add r3, r3, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	beq label73
	b label70
.p2align 4
label292:
	mov r2, r3
	mov r3, r7
.p2align 4
label63:
	ldr r7, [r5, r3, lsl #2]
	sub r10, r7, #94
	sub r9, r7, #47
	sub r8, r7, #42
	clz r10, r10
	clz r9, r9
	clz r8, r8
	lsr r10, r10, #5
	lsr r9, r9, #5
	lsr r8, r8, #5
	orr r8, r8, r9
	sub r9, r7, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r10
	orrs r8, r8, r9
	bne label66
	add r7, r3, #1
	mov r3, #37
	str r3, [r5, r7, lsl #2]
	mov r3, r2
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label66:
	add r8, r4, r2, lsl #2
	mov r9, #32
	subs r3, r3, #1
	add r2, r2, #2
	str r9, [r8, #0]
	str r7, [r8, #4]
	beq label67
	b label63
.p2align 4
label37:
	ldr r8, [r5, r7, lsl #2]
	sub r11, r8, #47
	sub r10, r8, #45
	sub r9, r8, #43
	clz r11, r11
	clz r10, r10
	clz r9, r9
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #42
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r8, #94
	orr r9, r9, r10
	clz r11, r11
	sub r10, r8, #37
	lsr r11, r11, #5
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r9, r9, r10
	bne label40
	add r7, r7, #1
	mov r8, #45
	str r8, [r5, r7, lsl #2]
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label40:
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	add r3, r3, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	beq label41
	b label37
.p2align 4
label31:
	add r7, r9, #1
	mov r8, #43
	str r8, [r5, r7, lsl #2]
	cmp r2, #45
	beq label37
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label41:
	add r7, r7, #1
	mov r8, #45
	str r8, [r5, r7, lsl #2]
	cmp r2, #42
	beq label47
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label67:
	add r7, r3, #1
	mov r3, #37
	str r3, [r5, r7, lsl #2]
	mov r3, r2
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label51:
	add r7, r7, #1
	mov r8, #42
	str r8, [r5, r7, lsl #2]
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label292
	mov r2, #32
	str r2, [r4, r3, lsl #2]
	add r2, r3, #1
	mov r3, r7
	mov r7, r2
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
label109:
	add r1, r5, r3, lsl #2
	mov r2, #32
	add r0, r4, r7, lsl #2
	sub r3, r3, #4
	ldr r6, [r1, #0]
	add r7, r7, #8
	cmp r3, #4
	str r2, [r0, #0]
	str r6, [r0, #4]
	ldr r6, [r1, #-4]
	str r2, [r0, #8]
	str r6, [r0, #12]
	ldr r6, [r1, #-8]
	str r2, [r0, #16]
	str r6, [r0, #20]
	ldr r1, [r1, #-12]
	str r2, [r0, #24]
	str r1, [r0, #28]
	bgt label109
	b label112
.p2align 4
label2:
	str r0, [r6, r7, lsl #2]
	bl getch
	add r7, r7, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	bne label2
	mov r0, r7
	mov r3, #0
	mov r7, #1
	mov r1, r3
	cmp r0, r3
	bgt label11
	cmp r3, #0
	bgt label108
	b label79
.p2align 4
label85:
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label387
	b label81
.p2align 4
label105:
	add r6, r2, r3
	add r5, r5, r5, lsl #2
	ldr r6, [r4, r6, lsl #2]
	lsl r5, r5, #1
	ldr r8, [sp, #0]
	sub r5, r5, #48
	add r5, r6, r5
	add r6, r1, r3
	str r5, [r8, r0, lsl #2]
	add r3, r3, #1
	ldr r6, [r4, r6, lsl #2]
	cmp r6, #32
	bne label105
	add r1, r2, r3
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label387
	b label81
