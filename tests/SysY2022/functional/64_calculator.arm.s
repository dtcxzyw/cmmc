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
	mov r4, #40
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
label712:
	cmp r3, #37
	bne label724
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
	ble label101
.p2align 4
label16:
	ldr r3, [r1, #0]
	add r2, r2, #1
	sub r7, r3, #48
	cmp r7, #10
	bhs label184
	str r3, [r6, #0]
	add r8, r8, #1
	add r1, r1, #4
	cmp r0, r2
	add r6, r6, #4
	bgt label16
label101:
	cmp r5, #0
	ble label119
	subs r0, r5, #3
	ble label399
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r0, r7, r5, lsl #2
.p2align 4
label114:
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
	ble label440
	sub r0, r0, #16
	b label114
.p2align 4
label184:
	cmp r3, #40
	beq label19
	cmp r3, #94
	beq label22
	cmp r3, #41
	beq label25
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label91
	cmp r3, #45
	beq label39
label721:
	mov r6, r9
	cmp r3, #42
	beq label81
label722:
	cmp r3, #47
	beq label71
	b label712
.p2align 4
label22:
	add r5, r5, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	mov r6, #94
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
label692:
	cmp r3, #45
	bne label711
.p2align 4
label39:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r5, r7, r8, lsl #2
	mov r7, r9
.p2align 4
label40:
	ldr r10, [r5, #0]
	sub r9, r10, #45
	sub r11, r10, #47
	sub r6, r10, #43
	clz r9, r9
	clz r11, r11
	clz r6, r6
	lsr r9, r9, #5
	lsr r11, r11, #5
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
	beq label251
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	add r6, r7, #2
	bne label48
	add r8, r8, #1
	mov r5, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #42
	str r5, [r7, r8, lsl #2]
	beq label81
	cmp r3, #47
	beq label71
	cmp r3, #37
	beq label61
label725:
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
label225:
	mov r9, r8
	cmp r3, #43
	mov r8, r6
	bne label692
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
	add r9, r7, #2
	str r10, [r6, #4]
	beq label389
	sub r5, r5, #4
	mov r7, r9
	b label92
.p2align 4
label389:
	add r8, r8, #1
	mov r5, #43
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #45
	str r5, [r7, r8, lsl #2]
	beq label39
	mov r6, r9
	cmp r3, #42
	beq label81
	cmp r3, #47
	bne label712
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
	bne label80
	add r8, r8, #1
	mov r5, #47
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #37
	str r5, [r7, r8, lsl #2]
	beq label61
	mov r5, r8
	mov r3, r6
	add r1, r1, #4
	cmp r0, r2
	add r8, r6, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r9, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	bgt label16
	b label101
label711:
	mov r6, r9
	cmp r3, #42
	bne label693
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
	add r7, r7, #2
	str r9, [r6, #0]
	str r10, [r6, #4]
	bne label87
	mov r6, r7
	add r8, r8, #1
	mov r5, #42
	cmp r3, #47
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r5, [r7, r8, lsl #2]
	beq label71
	cmp r3, #37
	beq label61
	mov r5, r8
	mov r3, r6
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
label19:
	add r5, r5, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r4, [r7, r5, lsl #2]
	cmp r3, #94
	beq label22
	cmp r3, #41
	beq label25
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label91
	cmp r3, #45
	beq label39
	b label721
.p2align 4
label205:
	mov r9, r8
	cmp r3, #43
	mov r8, r5
	beq label91
	cmp r3, #45
	beq label39
	mov r6, r9
	cmp r3, #42
	beq label81
	b label722
label693:
	cmp r3, #47
	beq label71
	b label712
label440:
	mov r1, r8
label103:
	cmp r5, #0
	ble label119
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r0, r7, r5, lsl #2
	b label108
label112:
	sub r0, r0, #4
label108:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r0, #0]
	mov r9, #32
	subs r5, r5, #1
	add r2, r6, r1, lsl #2
	add r1, r1, #2
	str r9, [r2, #0]
	str r3, [r2, #4]
	bgt label112
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
	beq label121
	mov r1, #1
	mov r2, #0
	b label122
.p2align 4
label131:
	cmp r5, #94
	bne label494
.p2align 4
label133:
	cmp r9, #0
	beq label498
	mov r5, r9
	mov r6, #1
.p2align 4
label134:
	mul r6, r3, r6
	subs r5, r5, #1
	bne label134
	str r6, [r4, #-4]
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	beq label121
.p2align 4
label122:
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
	beq label143
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
	bne label487
	sdiv r6, r3, r9
	cmp r5, #37
	bne label131
.p2align 4
label139:
	sdiv r6, r3, r9
	cmp r5, #94
	mls r6, r6, r9, r3
	beq label133
	str r6, [r4, #-4]
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
	b label121
.p2align 4
label487:
	cmp r5, #37
	beq label139
	cmp r5, #94
	beq label133
	str r6, [r4, #-4]
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
	b label121
label143:
	cmp r5, #32
	bne label144
label125:
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
	b label121
label144:
	sub r6, r5, #48
	add r5, r2, #1
	str r6, [r4, #4]
	ldr r7, [r3, #4]
	cmp r7, #32
	beq label527
	add r2, r3, #4
	mov r3, #1
	b label148
.p2align 4
label152:
	add r2, r2, #4
.p2align 4
label148:
	add r6, r6, r6, lsl #2
	ldr r7, [r2, #0]
	add r3, r3, #1
	lsl r6, r6, #1
	sub r6, r6, #48
	add r6, r6, r7
	str r6, [r4, #4]
	ldr r7, [r2, #4]
	cmp r7, #32
	bne label152
label145:
	add r1, r1, r3
	mov r2, r5
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
label121:
	ldr r0, [r0, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label213:
	mov r9, r8
	mov r8, r10
	cmp r3, #43
	beq label91
	cmp r3, #45
	beq label39
label234:
	mov r6, r9
	cmp r3, #42
	beq label81
	b label693
.p2align 4
label494:
	str r6, [r4, #-4]
	sub r2, r2, #1
	add r1, r1, #1
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #64
	bne label122
	b label121
label321:
	mov r6, r7
	add r8, r8, #1
	mov r5, #47
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #37
	str r5, [r7, r8, lsl #2]
	beq label61
	b label725
label347:
	mov r6, r7
	add r8, r8, #1
	mov r5, #42
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r5, [r7, r8, lsl #2]
label52:
	cmp r3, #47
	beq label71
	cmp r3, #37
	beq label61
	b label725
label724:
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
label251:
	mov r6, r7
	add r8, r8, #1
	mov r5, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #42
	str r5, [r7, r8, lsl #2]
	beq label81
	b label52
label377:
	mov r9, r7
	add r8, r8, #1
	mov r5, #43
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #45
	str r5, [r7, r8, lsl #2]
	beq label39
	b label234
.p2align 4
label87:
	sub r5, r5, #4
	b label82
label498:
	mov r6, #1
	sub r2, r2, #1
	str r6, [r4, #-4]
	b label125
.p2align 4
label70:
	sub r3, r3, #4
	b label62
label527:
	mov r3, #1
	b label145
.p2align 4
label48:
	sub r5, r5, #4
	mov r7, r6
	b label40
label399:
	mov r1, r8
	mov r8, #0
	b label103
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
.p2align 4
label80:
	sub r5, r5, #4
	mov r7, r6
	b label72
