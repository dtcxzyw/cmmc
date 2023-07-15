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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	cmp r0, #13
	movw r7, #:lower16:get
	mov r1, #0
	movw r6, #:lower16:chas
	mov r2, #0
	movw r4, #:lower16:get2
	movw r5, #:lower16:ints
	movt r7, #:upper16:get
	movwne r1, #1
	movt r6, #:upper16:chas
	movt r4, #:upper16:get2
	movt r5, #:upper16:ints
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label130
	mov r8, #0
	b label114
label130:
	mov r1, #0
	mov r0, #0
	mov r3, #1
	mov r8, r0
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	b label765
label76:
	cmp r8, #0
	ble label77
	subs r0, r8, #4
	ble label111
	b label110
label10:
	cmp r2, #40
	bne label12
	add r8, r8, #1
	mov r9, #40
	str r9, [r6, r8, lsl #2]
	cmp r2, #94
	bne label14
	add r8, r8, #1
	mov r9, #94
	str r9, [r6, r8, lsl #2]
	cmp r2, #41
	bne label16
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	b label788
label12:
	cmp r2, #94
	bne label14
	add r8, r8, #1
	mov r9, #94
	str r9, [r6, r8, lsl #2]
	cmp r2, #41
	bne label16
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
label788:
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	b label788
label14:
	cmp r2, #41
	bne label16
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	mov r11, #32
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	add r10, r4, r3, lsl #2
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	ldr r9, [r6, r8, lsl #2]
	sub r8, r8, #1
	cmp r9, #40
	beq label16
	b label788
label785:
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	b label765
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
	beq label495
	b label114
label495:
	mov r1, r8
	mov r0, #0
	mov r3, #1
	mov r8, r0
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	b label785
label45:
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
	beq label48
	add r9, r4, r2, lsl #2
	mov r10, #32
	subs r3, r3, #1
	str r10, [r4, r2, lsl #2]
	add r2, r2, #2
	str r8, [r9, #4]
	bne label45
	add r8, r3, #1
	mov r3, #37
	str r3, [r6, r8, lsl #2]
	mov r3, r2
	mov r2, #32
	add r0, r0, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
label765:
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	b label785
label42:
	cmp r2, #37
	bne label52
	b label238
label52:
	mov r2, #32
	add r0, r0, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	b label765
label48:
	add r8, r3, #1
	mov r3, #37
	str r3, [r6, r8, lsl #2]
	mov r3, r2
	mov r2, #32
	add r0, r0, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	ldr r2, [r7, r0, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	bhs label10
	str r2, [r4, r3, lsl #2]
	add r0, r0, #1
	add r3, r3, #1
	cmp r1, r0
	ble label76
	b label785
label16:
	cmp r2, #43
	bne label26
label19:
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
	beq label23
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label19
	add r8, r8, #1
	mov r9, #43
	str r9, [r6, r8, lsl #2]
	cmp r2, #45
	bne label36
	b label29
label23:
	add r8, r8, #1
	mov r9, #43
	str r9, [r6, r8, lsl #2]
	b label26
label29:
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
	beq label32
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label29
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	bne label39
	b label62
label39:
	cmp r2, #47
	bne label42
label55:
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
	beq label58
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label55
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	cmp r2, #37
	bne label52
	b label238
label62:
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
	beq label65
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	bne label62
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	bne label42
	b label55
label238:
	mov r2, r3
	mov r3, r8
	b label45
label36:
	cmp r2, #42
	bne label39
	b label62
label26:
	cmp r2, #45
	bne label36
	b label29
label65:
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	bne label42
	b label55
label58:
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	cmp r2, #37
	bne label52
	b label238
label32:
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	bne label39
	b label62
label110:
	add r2, r6, r8, lsl #2
	mov r7, #32
	add r1, r4, r3, lsl #2
	ldr r8, [r6, r8, lsl #2]
	str r7, [r4, r3, lsl #2]
	add r3, r3, #8
	str r8, [r1, #4]
	ldr r8, [r2, #-4]
	str r7, [r1, #8]
	str r8, [r1, #12]
	ldr r8, [r2, #-8]
	str r7, [r1, #16]
	str r8, [r1, #20]
	mov r8, r0
	ldr r2, [r2, #-12]
	str r7, [r1, #24]
	str r2, [r1, #28]
	subs r0, r0, #4
	ble label111
	b label110
label111:
	ldr r0, [r6, r8, lsl #2]
	add r1, r4, r3, lsl #2
	mov r2, #32
	subs r8, r8, #1
	str r2, [r4, r3, lsl #2]
	add r3, r3, #2
	str r0, [r1, #4]
	ble label77
	b label111
label77:
	mov r0, #64
	str r0, [r4, r3, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	beq label106
	mov r0, #1
	mov r1, #0
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
	beq label85
	b label93
label651:
	mov r3, #1
	b label87
label85:
	cmp r3, #32
	beq label92
	add r1, r1, #1
	sub r6, r3, #48
	add r2, r0, #1
	str r6, [r5, r1, lsl #2]
	ldr r3, [r4, r2, lsl #2]
	cmp r3, #32
	beq label389
	b label651
label93:
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
	bne label95
	sdiv r7, r2, r6
	cmp r3, #37
	bne label97
	mls r7, r7, r6, r2
	cmp r3, #94
	bne label432
	cmp r6, #0
	beq label436
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
label798:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
label780:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	b label799
label436:
	mov r6, #1
	sub r1, r1, #1
	add r0, r0, #1
	str r6, [r5, r1, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label106
	b label79
label799:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
label100:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	b label100
label95:
	cmp r3, #37
	bne label97
	sdiv r7, r2, r6
	mls r7, r7, r6, r2
	cmp r3, #94
	bne label432
	cmp r6, #0
	beq label436
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	b label798
label97:
	cmp r3, #94
	bne label432
	cmp r6, #0
	beq label436
	mov r3, r6
	mov r6, #1
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	b label760
label432:
	mov r6, r7
	sub r1, r1, #1
	add r0, r0, #1
	str r7, [r5, r1, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label106
	b label79
label760:
	mul r6, r2, r6
	subs r3, r3, #1
	beq label103
	b label780
label103:
	sub r1, r1, #1
	add r0, r0, #1
	str r6, [r5, r1, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label106
	b label79
label87:
	add r7, r0, r3
	add r6, r6, r6, lsl #2
	ldr r7, [r4, r7, lsl #2]
	lsl r6, r6, #1
	sub r6, r6, #48
	add r6, r7, r6
	add r7, r2, r3
	str r6, [r5, r1, lsl #2]
	add r3, r3, #1
	ldr r7, [r4, r7, lsl #2]
	cmp r7, #32
	beq label90
	b label87
label106:
	ldr r0, [r5, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label90:
	add r0, r0, r3
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label106
	b label79
label389:
	mov r3, #1
	add r0, r0, r3
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label106
	b label79
label92:
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label106
	b label79
