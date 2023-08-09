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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	mov r4, #42
	mov r2, #0
	movw r5, #:lower16:get
	movt r5, #:upper16:get
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label159
	mov r6, r5
	mov r7, #0
.p2align 4
label3:
	str r0, [r6, #0]
	bl getch
	add r7, r7, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label167
	add r6, r6, #4
	b label3
label167:
	mov r0, r7
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r1, r5
	mov r8, #1
	add r6, r6, #4
	mov r5, #0
	mov r2, r5
label10:
	cmp r0, r2
	bgt label16
	b label101
.p2align 4
label17:
	str r3, [r6, #0]
	add r8, r8, #1
	add r1, r1, #4
	cmp r0, r2
	add r6, r6, #4
	ble label101
.p2align 4
label16:
	ldr r3, [r1, #0]
	add r2, r2, #1
	sub r7, r3, #48
	cmp r7, #10
	blo label17
	cmp r3, #40
	bne label687
	add r5, r5, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	mov r6, #40
	str r6, [r7, r5, lsl #2]
	cmp r3, #94
	bne label198
.p2align 4
label22:
	add r5, r5, #1
	mov r6, #94
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r6, [r7, r5, lsl #2]
	cmp r3, #41
	bne label205
.p2align 4
label25:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	sub r10, r5, #1
	ldr r7, [r7, r5, lsl #2]
	cmp r7, #40
	beq label213
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r5, r6, r8, lsl #2
	mov r6, r10
.p2align 4
label27:
	mov r9, #32
	add r8, r8, #2
	str r9, [r5, #0]
	str r7, [r5, #4]
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	ldr r7, [r7, r6, lsl #2]
	sub r6, r6, #1
	cmp r7, #40
	beq label225
	add r5, r5, #8
	b label27
.p2align 4
label225:
	mov r9, r8
	cmp r3, #43
	mov r8, r6
	beq label36
	cmp r3, #45
	bne label708
.p2align 4
label91:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r9
.p2align 4
label92:
	ldr r10, [r5, #0]
	sub r11, r10, #47
	sub r9, r10, #45
	sub r6, r10, #43
	clz r11, r11
	clz r9, r9
	clz r6, r6
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r10, #42
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	sub r11, r10, #94
	orr r6, r6, r9
	clz r11, r11
	sub r9, r10, #37
	lsr r11, r11, #5
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r6, r6, r9
	beq label377
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	beq label389
	sub r5, r5, #4
	mov r7, r6
	b label92
.p2align 4
label36:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r9
.p2align 4
label37:
	ldr r10, [r5, #0]
	sub r11, r10, #47
	sub r9, r10, #45
	sub r6, r10, #43
	clz r11, r11
	clz r9, r9
	clz r6, r6
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r10, #42
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	sub r11, r10, #94
	orr r6, r6, r9
	clz r11, r11
	sub r9, r10, #37
	lsr r11, r11, #5
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r6, r6, r9
	beq label247
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	add r9, r7, #2
	str r10, [r6, #4]
	bne label42
	add r8, r8, #1
	mov r5, #43
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #45
	str r5, [r7, r8, lsl #2]
	beq label91
	mov r6, r9
	cmp r3, #42
	beq label81
	cmp r3, #47
	beq label71
	b label55
.p2align 4
label359:
	add r8, r8, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #47
	str r4, [r7, r8, lsl #2]
	bne label698
.p2align 4
label71:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r6
.p2align 4
label72:
	ldr r10, [r5, #0]
	sub r11, r10, #94
	sub r9, r10, #47
	sub r6, r10, #42
	clz r11, r11
	clz r9, r9
	clz r6, r6
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r10, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r6, r6, r9
	beq label321
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	beq label330
	sub r5, r5, #4
	mov r7, r6
	b label72
.p2align 4
label330:
	add r8, r8, #1
	mov r5, #47
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #37
	str r5, [r7, r8, lsl #2]
	bne label710
.p2align 4
label61:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	mov r5, r6
	add r3, r7, r8, lsl #2
	mov r7, r8
.p2align 4
label62:
	ldr r8, [r3, #0]
	sub r10, r8, #94
	sub r9, r8, #47
	sub r6, r8, #42
	clz r10, r10
	clz r9, r9
	clz r6, r6
	lsr r10, r10, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r8, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r10
	orrs r6, r6, r9
	beq label295
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r7, r7, #1
	add r6, r6, r5, lsl #2
	add r5, r5, #2
	str r9, [r6, #0]
	str r8, [r6, #4]
	bne label70
.p2align 4
label295:
	mov r3, r5
	add r5, r7, #1
	mov r6, #37
	mov r9, #32
	add r8, r3, #1
	add r1, r1, #4
	cmp r0, r2
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r6, [r7, r5, lsl #2]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label389:
	add r8, r8, #1
	mov r5, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #42
	str r5, [r7, r8, lsl #2]
	bne label700
.p2align 4
label81:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r6
.p2align 4
label82:
	ldr r10, [r5, #0]
	sub r11, r10, #94
	sub r9, r10, #47
	sub r6, r10, #42
	clz r11, r11
	clz r9, r9
	clz r6, r6
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r6, r6, #5
	orr r6, r6, r9
	sub r9, r10, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r6, r6, r9
	beq label347
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	beq label359
	sub r5, r5, #4
	mov r7, r6
	b label82
label101:
	cmp r5, #0
	ble label119
	subs r0, r5, #3
	ble label399
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r0, r7, r5, lsl #2
.p2align 4
label104:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r2, [r0, #0]
	mov r9, #32
	sub r5, r5, #4
	add r1, r6, r8, lsl #2
	cmp r5, #3
	add r8, r8, #8
	str r9, [r1, #0]
	str r2, [r1, #4]
	ldr r2, [r0, #-4]
	str r9, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [r0, #-8]
	str r9, [r1, #16]
	str r2, [r1, #20]
	ldr r2, [r0, #-12]
	str r9, [r1, #24]
	str r2, [r1, #28]
	ble label423
	sub r0, r0, #16
	b label104
.p2align 4
label687:
	cmp r3, #94
	beq label22
	cmp r3, #41
	beq label25
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label36
	cmp r3, #45
	beq label91
label730:
	mov r6, r9
	cmp r3, #42
	beq label81
	b label52
label708:
	mov r6, r9
	cmp r3, #42
	beq label81
.p2align 4
label52:
	cmp r3, #47
	beq label71
.p2align 4
label55:
	cmp r3, #37
	beq label61
.p2align 4
label276:
	mov r5, r8
	mov r3, r6
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	add r8, r3, #1
	add r1, r1, #4
	str r9, [r6, r3, lsl #2]
	cmp r0, r2
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label198:
	cmp r3, #41
	beq label25
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label36
	cmp r3, #45
	beq label91
	mov r6, r9
	cmp r3, #42
	beq label81
	b label52
.p2align 4
label205:
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label36
	cmp r3, #45
	beq label91
	mov r6, r9
	cmp r3, #42
	beq label81
	b label52
.p2align 4
label700:
	cmp r3, #47
	beq label71
	cmp r3, #37
	beq label61
	b label276
.p2align 4
label698:
	cmp r3, #37
	beq label61
	mov r5, r8
	mov r3, r6
	mov r9, #32
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
label423:
	mov r1, r8
label109:
	cmp r5, #0
	ble label119
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r0, r7, r5, lsl #2
	b label114
label118:
	sub r0, r0, #4
label114:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r0, #0]
	mov r9, #32
	subs r5, r5, #1
	add r2, r6, r1, lsl #2
	add r1, r1, #2
	str r9, [r2, #0]
	str r3, [r2, #4]
	bgt label118
	mov r8, r1
label119:
	mov r0, #64
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r0, [r6, r8, lsl #2]
	movw r0, #:lower16:ints
	movt r0, #:upper16:ints
	ldr r1, [r6, #4]
	cmp r1, #64
	beq label152
	mov r2, #0
	mov r1, #1
	b label121
.p2align 4
label137:
	cmp r5, #94
	bne label518
.p2align 4
label139:
	cmp r9, #0
	beq label522
	mov r5, r9
	mov r6, #1
.p2align 4
label140:
	mul r6, r3, r6
	subs r5, r5, #1
	bne label140
	str r6, [r4, #-4]
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	beq label152
.p2align 4
label121:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r3, r6, r1, lsl #2
	ldr r5, [r3, #0]
	sub r10, r5, #94
	sub r9, r5, #47
	sub r7, r5, #42
	sub r4, r5, #43
	clz r10, r10
	clz r9, r9
	clz r7, r7
	clz r4, r4
	lsr r10, r10, #5
	lsr r9, r9, #5
	lsr r7, r7, #5
	lsr r8, r4, #5
	orr r9, r7, r9
	sub r4, r5, #45
	clz r4, r4
	lsr r6, r4, #5
	orr r4, r8, r6
	orr r4, r4, r9
	sub r9, r5, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r10
	orrs r4, r4, r9
	add r4, r0, r2, lsl #2
	beq label124
	cmp r8, #0
	mov r8, #0
	ldr r9, [r4, #0]
	ldr r3, [r4, #-4]
	add r10, r9, r3
	movne r8, r10
	cmp r6, #0
	sub r10, r3, r9
	mov r6, r8
	mul r8, r9, r3
	movne r6, r10
	cmp r7, #0
	movne r6, r8
	cmp r5, #47
	bne label135
	sdiv r6, r3, r9
	cmp r5, #37
	beq label145
	cmp r5, #94
	beq label139
	str r6, [r4, #-4]
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label121
	b label152
.p2align 4
label135:
	cmp r5, #37
	bne label137
.p2align 4
label145:
	sdiv r6, r3, r9
	cmp r5, #94
	mls r6, r6, r9, r3
	beq label139
	str r6, [r4, #-4]
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label121
	b label152
label124:
	cmp r5, #32
	bne label125
	add r1, r1, #1
	b label147
.p2align 4
label133:
	add r2, r2, #4
.p2align 4
label129:
	add r6, r6, r6, lsl #2
	ldr r7, [r2, #0]
	add r3, r3, #1
	lsl r6, r6, #1
	sub r6, r6, #48
	add r6, r6, r7
	str r6, [r4, #4]
	ldr r7, [r2, #4]
	cmp r7, #32
	bne label133
label126:
	add r1, r1, r3
	mov r2, r5
label147:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label121
	b label152
label125:
	sub r6, r5, #48
	add r5, r2, #1
	str r6, [r4, #4]
	ldr r7, [r3, #4]
	cmp r7, #32
	beq label483
	add r2, r3, #4
	mov r3, #1
	b label129
label522:
	mov r6, #1
	sub r2, r2, #1
	str r6, [r4, #-4]
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label121
label152:
	ldr r0, [r0, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label213:
	mov r9, r8
	mov r8, r10
	cmp r3, #43
	beq label36
	cmp r3, #45
	beq label91
	mov r6, r9
	cmp r3, #42
	beq label81
	b label52
.p2align 4
label710:
	mov r5, r8
	mov r3, r6
	mov r9, #32
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
.p2align 4
label518:
	str r6, [r4, #-4]
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label121
	b label152
label347:
	mov r6, r7
	add r8, r8, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #47
	str r4, [r7, r8, lsl #2]
	beq label71
	b label55
label247:
	mov r9, r7
	add r8, r8, #1
	mov r5, #43
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r5, [r7, r8, lsl #2]
	cmp r3, #45
	beq label91
	b label730
label377:
	mov r6, r7
	add r8, r8, #1
	mov r5, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #42
	str r5, [r7, r8, lsl #2]
	beq label81
	b label52
label159:
	mov r0, #0
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r1, r5
	mov r8, #1
	add r6, r6, #4
	mov r5, #0
	mov r2, r5
	b label10
label483:
	mov r3, #1
	b label126
label321:
	mov r6, r7
	add r8, r8, #1
	mov r5, #47
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r5, [r7, r8, lsl #2]
	b label55
label399:
	mov r1, r8
	mov r8, #0
	b label109
.p2align 4
label42:
	sub r5, r5, #4
	mov r7, r9
	b label37
.p2align 4
label70:
	sub r3, r3, #4
	b label62
