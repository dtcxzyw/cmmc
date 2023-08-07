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
	movw r4, #:lower16:chas
	movt r4, #:upper16:chas
	movw r5, #:lower16:get
	movt r5, #:upper16:get
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label157
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
	beq label165
	add r6, r6, #4
	b label3
label165:
	mov r0, r7
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r1, r5
	mov r2, #0
	mov r8, #1
	add r6, r6, #4
	mov r5, r2
label10:
	cmp r0, r2
	ble label16
.p2align 4
label60:
	ldr r3, [r1, #0]
	add r2, r2, #1
	sub r7, r3, #48
	cmp r7, #10
	bhs label331
	str r3, [r6, #0]
	add r8, r8, #1
	add r1, r1, #4
	cmp r0, r2
	add r6, r6, #4
	bgt label60
	b label16
.p2align 4
label395:
	mov r6, r7
	mov r7, r8
	cmp r3, #37
	bne label399
.p2align 4
label93:
	add r3, r4, r7, lsl #2
	mov r5, r6
.p2align 4
label94:
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
	beq label412
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r7, r7, #1
	add r6, r6, r5, lsl #2
	add r5, r5, #2
	str r9, [r6, #0]
	str r8, [r6, #4]
	bne label424
	mov r3, r5
	mov r6, #37
	add r1, r1, #4
	cmp r0, r2
	add r8, r5, #1
	add r5, r7, #1
	mov r7, #32
	str r6, [r4, r5, lsl #2]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label60
	b label16
.p2align 4
label331:
	cmp r3, #40
	bne label691
	add r5, r5, #1
	mov r6, #40
	str r6, [r4, r5, lsl #2]
	cmp r3, #94
	beq label144
	b label66
.p2align 4
label136:
	ldr r9, [r4, r5, lsl #2]
	sub r7, r5, #1
	cmp r9, #40
	beq label521
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r5, r6, r8, lsl #2
	mov r6, r9
	b label138
.p2align 4
label144:
	add r5, r5, #1
	mov r6, #94
	cmp r3, #41
	str r6, [r4, r5, lsl #2]
	beq label136
	mov r6, r8
	cmp r3, #43
	mov r8, r5
	beq label126
	mov r7, r6
	cmp r3, #45
	beq label74
	b label357
.p2align 4
label138:
	mov r9, #32
	add r8, r8, #2
	str r9, [r5, #0]
	str r6, [r5, #4]
	ldr r6, [r4, r7, lsl #2]
	sub r7, r7, #1
	cmp r6, #40
	beq label533
	add r5, r5, #8
	b label138
.p2align 4
label74:
	add r5, r4, r8, lsl #2
.p2align 4
label75:
	ldr r9, [r5, #0]
	sub r11, r9, #47
	sub r10, r9, #45
	sub r6, r9, #43
	clz r11, r11
	clz r10, r10
	clz r6, r6
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r6, r6, #5
	orr r6, r6, r10
	sub r10, r9, #42
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #94
	orr r6, r6, r10
	clz r11, r11
	sub r10, r9, #37
	lsr r11, r11, #5
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r6, r6, r10
	beq label374
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	beq label374
	sub r5, r5, #4
	b label75
.p2align 4
label126:
	add r5, r4, r8, lsl #2
	mov r7, r6
.p2align 4
label127:
	ldr r9, [r5, #0]
	sub r10, r9, #45
	sub r11, r9, #47
	sub r6, r9, #43
	clz r10, r10
	clz r11, r11
	clz r6, r6
	lsr r10, r10, #5
	lsr r11, r11, #5
	lsr r6, r6, #5
	orr r6, r6, r10
	sub r10, r9, #42
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #94
	orr r6, r6, r10
	clz r11, r11
	sub r10, r9, #37
	lsr r11, r11, #5
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r6, r6, r10
	beq label500
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	bne label132
	add r8, r8, #1
	mov r5, #43
	cmp r3, #45
	str r5, [r4, r8, lsl #2]
	beq label74
	cmp r3, #42
	beq label116
	b label710
.p2align 4
label533:
	mov r6, r8
	cmp r3, #43
	mov r8, r7
	beq label126
	mov r7, r6
	cmp r3, #45
	beq label74
	cmp r3, #42
	beq label116
	b label694
.p2align 4
label374:
	add r8, r8, #1
	mov r5, #45
	str r5, [r4, r8, lsl #2]
	cmp r3, #42
	bne label87
.p2align 4
label116:
	add r5, r4, r8, lsl #2
.p2align 4
label117:
	ldr r9, [r5, #0]
	sub r11, r9, #94
	sub r10, r9, #47
	sub r6, r9, #42
	clz r11, r11
	clz r10, r10
	clz r6, r6
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r6, r6, #5
	orr r6, r6, r10
	sub r10, r9, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r6, r6, r10
	beq label470
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	bne label122
	add r8, r8, #1
	mov r5, #42
	cmp r3, #47
	str r5, [r4, r8, lsl #2]
	beq label106
	mov r6, r7
	cmp r3, #37
	mov r7, r8
	beq label93
	mov r5, r8
	mov r3, r6
	add r1, r1, #4
	cmp r0, r2
	mov r7, #32
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label60
	b label16
.p2align 4
label87:
	cmp r3, #47
	bne label395
.p2align 4
label106:
	add r5, r4, r8, lsl #2
.p2align 4
label107:
	ldr r9, [r5, #0]
	sub r11, r9, #94
	sub r10, r9, #47
	sub r6, r9, #42
	clz r11, r11
	clz r10, r10
	clz r6, r6
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r6, r6, #5
	orr r6, r6, r10
	sub r10, r9, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r6, r6, r10
	bne label114
	b label444
.p2align 4
label111:
	add r7, r8, #1
	mov r5, #47
	cmp r3, #37
	str r5, [r4, r7, lsl #2]
	beq label93
	b label696
.p2align 4
label114:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	add r6, r7, #2
	beq label111
	sub r5, r5, #4
	mov r7, r6
	b label107
.p2align 4
label132:
	sub r5, r5, #4
	b label127
.p2align 4
label122:
	sub r5, r5, #4
	b label117
label16:
	cmp r5, #0
	ble label31
	subs r0, r5, #4
	ble label180
	add r0, r4, r5, lsl #2
.p2align 4
label19:
	ldr r3, [r0, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r2, #32
	sub r5, r5, #4
	add r1, r6, r8, lsl #2
	cmp r5, #4
	add r8, r8, #8
	str r2, [r1, #0]
	str r3, [r1, #4]
	ldr r3, [r0, #-4]
	str r2, [r1, #8]
	str r3, [r1, #12]
	ldr r3, [r0, #-8]
	str r2, [r1, #16]
	str r3, [r1, #20]
	ldr r3, [r0, #-12]
	str r2, [r1, #24]
	str r3, [r1, #28]
	ble label180
	sub r0, r0, #16
	b label19
.p2align 4
label691:
	cmp r3, #94
	beq label144
	cmp r3, #41
	beq label136
	mov r6, r8
	cmp r3, #43
	mov r8, r5
	beq label126
.p2align 4
label721:
	mov r7, r6
	b label71
.p2align 4
label66:
	cmp r3, #41
	beq label136
	mov r6, r8
	mov r8, r5
.p2align 4
label68:
	cmp r3, #43
	beq label126
	b label721
.p2align 4
label71:
	cmp r3, #45
	beq label74
.p2align 4
label357:
	cmp r3, #42
	beq label116
.p2align 4
label694:
	cmp r3, #47
	beq label106
.p2align 4
label706:
	mov r6, r7
	cmp r3, #37
	mov r7, r8
	beq label93
.p2align 4
label399:
	mov r5, r7
	mov r3, r6
	add r1, r1, #4
	cmp r0, r2
	mov r7, #32
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label60
	b label16
label180:
	add r0, r4, r5, lsl #2
label25:
	ldr r1, [r0, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r3, #32
	subs r5, r5, #1
	add r2, r6, r8, lsl #2
	add r8, r8, #2
	str r3, [r2, #0]
	str r1, [r2, #4]
	ble label31
	sub r0, r0, #4
	b label25
label710:
	cmp r3, #47
	beq label106
	b label706
label31:
	mov r0, #64
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r0, [r6, r8, lsl #2]
	ldr r0, [r6, #4]
	cmp r0, #64
	beq label59
	mov r2, #1
	mov r0, #0
.p2align 4
label33:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r2, lsl #2]
	sub r8, r3, #94
	sub r7, r3, #47
	sub r5, r3, #42
	sub r1, r3, #43
	clz r8, r8
	clz r7, r7
	clz r5, r5
	clz r1, r1
	lsr r8, r8, #5
	lsr r7, r7, #5
	lsr r5, r5, #5
	lsr r6, r1, #5
	orr r7, r5, r7
	sub r1, r3, #45
	clz r1, r1
	lsr r4, r1, #5
	orr r1, r6, r4
	orr r1, r1, r7
	sub r7, r3, #37
	clz r7, r7
	lsr r7, r7, #5
	orr r7, r7, r8
	orrs r1, r1, r7
	add r1, r2, #1
	beq label49
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	cmp r6, #0
	add r2, r7, r0, lsl #2
	mov r6, #0
	ldr r7, [r2, #0]
	ldr r2, [r2, #-4]
	add r8, r7, r2
	movne r6, r8
	cmp r4, #0
	sub r8, r2, r7
	mov r4, r6
	mul r6, r7, r2
	movne r4, r8
	cmp r5, #0
	movne r4, r6
	cmp r3, #47
	beq label37
	cmp r3, #37
	beq label48
	cmp r3, #94
	bne label701
.p2align 4
label42:
	cmp r7, #0
	beq label271
	mov r3, r7
	mov r4, #1
.p2align 4
label43:
	mul r4, r2, r4
	subs r3, r3, #1
	bne label43
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	beq label59
.p2align 4
label323:
	mov r2, r1
	b label33
.p2align 4
label37:
	sdiv r4, r2, r7
	cmp r3, #37
	beq label48
	cmp r3, #94
	beq label42
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label323
	b label59
.p2align 4
label48:
	sdiv r4, r2, r7
	cmp r3, #94
	mls r4, r4, r7, r2
	beq label42
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label323
	b label59
label49:
	cmp r3, #32
	bne label50
label56:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label323
	b label59
label50:
	add r0, r0, #1
	sub r4, r3, #48
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #32
	beq label296
	mov r3, #1
.p2align 4
label51:
	add r5, r2, r3
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r4, r4, r4, lsl #2
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	ldr r5, [r6, r5, lsl #2]
	lsl r4, r4, #1
	sub r4, r4, #48
	add r4, r5, r4
	add r5, r1, r3
	str r4, [r7, r0, lsl #2]
	add r3, r3, #1
	ldr r5, [r6, r5, lsl #2]
	cmp r5, #32
	bne label51
	add r1, r2, r3
	b label56
label59:
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	ldr r0, [r7, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label696:
	mov r5, r7
	mov r3, r6
	add r1, r1, #4
	cmp r0, r2
	mov r7, #32
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label60
	b label16
.p2align 4
label701:
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label323
	b label59
label412:
	mov r3, r5
	add r5, r7, #1
	mov r6, #37
	add r8, r3, #1
	add r1, r1, #4
	str r6, [r4, r5, lsl #2]
	mov r7, #32
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	b label10
label444:
	mov r6, r7
	b label111
label157:
	mov r0, #0
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r1, r5
	mov r2, #0
	mov r8, #1
	add r6, r6, #4
	mov r5, r2
	b label10
.p2align 4
label424:
	sub r3, r3, #4
	b label94
label271:
	mov r4, #1
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	str r4, [r7, r0, lsl #2]
	b label56
label470:
	add r8, r8, #1
	mov r5, #42
	str r5, [r4, r8, lsl #2]
	b label87
label500:
	add r8, r8, #1
	mov r5, #43
	str r5, [r4, r8, lsl #2]
	b label71
label296:
	mov r3, #1
	add r1, r2, r3
	b label56
label521:
	mov r6, r8
	mov r8, r7
	b label68
