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
	mov r2, #0
	cmp r0, #13
	movw r6, #:lower16:get
	mov r1, #0
	movw r5, #:lower16:chas
	movw r7, #:lower16:ints
	movt r4, #:upper16:get2
	movt r6, #:upper16:get
	movwne r1, #1
	movt r5, #:upper16:chas
	movt r7, #:upper16:ints
	cmp r0, #10
	str r7, [sp, #0]
	movwne r2, #1
	ands r1, r1, r2
	bne label130
	mov r0, #0
	mov r3, #0
	mov r7, #1
	mov r1, r3
	cmp r0, r3
	bgt label11
	cmp r3, #0
	bgt label110
	b label79
label130:
	mov r7, #0
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
	bgt label110
label79:
	mov r0, #64
	str r0, [r4, r7, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	beq label81
	mov r0, #1
	mov r1, #0
	b label82
label110:
	subs r0, r3, #4
	bgt label114
label111:
	ldr r0, [r5, r3, lsl #2]
	add r1, r4, r7, lsl #2
	mov r2, #32
	subs r3, r3, #1
	str r2, [r4, r7, lsl #2]
	add r7, r7, #2
	str r0, [r1, #4]
	bgt label111
	b label79
label81:
	ldr r7, [sp, #0]
	ldr r0, [r7, #4]
	bl putint
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label82:
	ldr r3, [r4, r0, lsl #2]
	sub r9, r3, #94
	sub r7, r3, #47
	sub r6, r3, #42
	sub r2, r3, #43
	clz r9, r9
	clz r7, r7
	clz r6, r6
	clz r2, r2
	lsr r9, r9, #5
	lsr r7, r7, #5
	lsr r6, r6, #5
	lsr r8, r2, #5
	orr r7, r6, r7
	sub r2, r3, #45
	clz r2, r2
	lsr r5, r2, #5
	orr r2, r8, r5
	orr r2, r2, r7
	sub r7, r3, #37
	clz r7, r7
	lsr r7, r7, #5
	orr r7, r7, r9
	orrs r2, r2, r7
	bne label90
	cmp r3, #32
	bne label104
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label82
	b label81
.p2align 4
label90:
	ldr r7, [sp, #0]
	cmp r8, #0
	mov r8, #0
	add r2, r7, r1, lsl #2
	ldr r7, [r7, r1, lsl #2]
	ldr r2, [r2, #-4]
	add r9, r7, r2
	movne r8, r9
	cmp r5, #0
	sub r9, r2, r7
	mov r5, r8
	movne r5, r9
	cmp r6, #0
	mul r8, r7, r2
	movne r5, r8
	cmp r3, #47
	beq label102
	cmp r3, #37
	beq label93
	cmp r3, #94
	beq label96
	mov r2, r5
	sub r1, r1, #1
	ldr r7, [sp, #0]
	str r5, [r7, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label82
	b label81
.p2align 4
label96:
	cmp r7, #0
	bne label415
	mov r2, #1
	sub r1, r1, #1
	ldr r7, [sp, #0]
	str r2, [r7, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label82
	b label81
.p2align 4
label415:
	mov r5, r7
	mov r3, #1
.p2align 4
label97:
	mul r3, r2, r3
	subs r5, r5, #1
	bne label97
	mov r2, r3
	sub r1, r1, #1
	ldr r7, [sp, #0]
	str r3, [r7, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label82
	b label81
.p2align 4
label102:
	sdiv r5, r2, r7
	cmp r3, #37
	beq label93
	cmp r3, #94
	beq label96
	mov r2, r5
	sub r1, r1, #1
	ldr r7, [sp, #0]
	str r5, [r7, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label82
	b label81
.p2align 4
label143:
	cmp r3, #0
	bgt label110
	b label79
.p2align 4
label11:
	ldr r2, [r6, r1, lsl #2]
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
	beq label293
	mov r2, r9
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r9
	cmp r0, r1
	bgt label11
	b label143
.p2align 4
label77:
	str r2, [r4, r7, lsl #2]
	add r1, r1, #1
	add r7, r7, #1
	cmp r0, r1
	bgt label11
	cmp r3, #0
	bgt label110
	b label79
.p2align 4
label19:
	ldr r8, [r5, r9, lsl #2]
	sub r9, r9, #1
	cmp r8, #40
	bne label178
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
	beq label293
	mov r2, r9
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r9
	cmp r0, r1
	bgt label11
	cmp r9, #0
	bgt label110
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
	beq label293
	mov r2, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
.p2align 4
label30:
	add r8, r4, r3, lsl #2
	mov r10, #32
	subs r9, r9, #1
	str r10, [r4, r3, lsl #2]
	add r3, r3, #2
	str r7, [r8, #4]
	beq label31
	b label27
.p2align 4
label178:
	mov r3, r9
	add r9, r4, r7, lsl #2
	mov r10, #32
	str r10, [r4, r7, lsl #2]
	add r7, r7, #2
	str r8, [r9, #4]
	sub r9, r3, #1
	ldr r8, [r5, r3, lsl #2]
	cmp r8, #40
	bne label178
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
	beq label293
	mov r2, r9
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r9
	cmp r0, r1
	bgt label11
	cmp r9, #0
	bgt label110
	b label79
label104:
	add r1, r1, #1
	sub r5, r3, #48
	ldr r7, [sp, #0]
	add r3, r0, #1
	str r5, [r7, r1, lsl #2]
	ldr r2, [r4, r3, lsl #2]
	cmp r2, #32
	bne label441
	mov r2, #1
	add r0, r0, r2
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label82
	b label81
label441:
	mov r2, #1
	b label107
.p2align 4
label93:
	sdiv r5, r2, r7
	mls r5, r5, r7, r2
	cmp r3, #94
	beq label96
	mov r2, r5
	sub r1, r1, #1
	ldr r7, [sp, #0]
	str r5, [r7, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label82
	b label81
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
	beq label293
	mov r2, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
.p2align 4
label73:
	add r7, r7, #1
	mov r8, #47
	str r8, [r5, r7, lsl #2]
	cmp r2, #37
	beq label293
	mov r2, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
.p2align 4
label76:
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	str r10, [r4, r3, lsl #2]
	add r3, r3, #2
	str r8, [r9, #4]
	beq label73
	b label70
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
	beq label293
	mov r2, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
.p2align 4
label50:
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	str r10, [r4, r3, lsl #2]
	add r3, r3, #2
	str r8, [r9, #4]
	beq label51
	b label47
.p2align 4
label293:
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
	bne label69
	mov r7, r2
	add r2, r3, #1
	mov r3, #37
	str r3, [r5, r2, lsl #2]
	mov r3, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
.p2align 4
label665:
	mov r2, r7
	b label63
.p2align 4
label69:
	add r8, r4, r2, lsl #2
	mov r9, #32
	subs r3, r3, #1
	str r9, [r4, r2, lsl #2]
	str r7, [r8, #4]
	add r7, r2, #2
	beq label66
	b label665
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
	beq label293
	mov r2, r9
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r9
	cmp r0, r1
	bgt label11
	cmp r9, #0
	bgt label110
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
	beq label293
	mov r2, r9
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r9
	cmp r0, r1
	bgt label11
	cmp r9, #0
	bgt label110
	b label79
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
	beq label293
	mov r2, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
.p2align 4
label40:
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	str r10, [r4, r3, lsl #2]
	add r3, r3, #2
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
	beq label293
	mov r2, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
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
	beq label293
	mov r2, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
.p2align 4
label66:
	add r2, r3, #1
	mov r3, #37
	str r3, [r5, r2, lsl #2]
	mov r3, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
.p2align 4
label51:
	add r7, r7, #1
	mov r8, #42
	str r8, [r5, r7, lsl #2]
	cmp r2, #47
	beq label70
	cmp r2, #37
	beq label293
	mov r2, r7
	mov r7, #32
	add r1, r1, #1
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label11
	cmp r2, #0
	bgt label110
	b label79
label114:
	add r1, r5, r3, lsl #2
	ldr r6, [r5, r3, lsl #2]
	mov r2, #32
	add r0, r4, r7, lsl #2
	sub r3, r3, #4
	str r2, [r4, r7, lsl #2]
	cmp r3, #4
	add r7, r7, #8
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
	bgt label114
	b label111
.p2align 4
label107:
	add r6, r0, r2
	add r5, r5, r5, lsl #2
	ldr r6, [r4, r6, lsl #2]
	lsl r5, r5, #1
	ldr r7, [sp, #0]
	sub r5, r5, #48
	add r5, r6, r5
	add r6, r3, r2
	str r5, [r7, r1, lsl #2]
	add r2, r2, #1
	ldr r6, [r4, r6, lsl #2]
	cmp r6, #32
	bne label107
	add r0, r0, r2
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label82
	b label81
