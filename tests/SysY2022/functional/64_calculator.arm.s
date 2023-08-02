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
	mov r1, #0
	mov r2, #0
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
	mov r8, #1
	add r6, r6, #4
	mov r5, #0
	mov r2, r5
label10:
	cmp r0, r2
	ble label101
.p2align 4
label16:
	ldr r3, [r1, #0]
	add r2, r2, #1
	sub r7, r3, #48
	cmp r7, #10
	bhs label178
	str r3, [r6, #0]
	add r8, r8, #1
	add r1, r1, #4
	add r6, r6, #4
	cmp r0, r2
	bgt label16
	b label101
.p2align 4
label721:
	mov r5, r8
	mov r3, r6
	b label57
.p2align 4
label694:
	cmp r3, #47
	beq label70
	cmp r3, #37
	beq label60
	b label721
.p2align 4
label57:
	mov r7, #32
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r8, r3, #1
	add r1, r1, #4
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	cmp r0, r2
	bgt label16
	b label101
label242:
	mov r6, r7
.p2align 4
label43:
	add r8, r8, #1
	mov r5, #45
	str r5, [r4, r8, lsl #2]
	cmp r3, #42
	beq label80
	b label694
.p2align 4
label70:
	add r5, r4, r8, lsl #2
	mov r7, r6
.p2align 4
label71:
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
	beq label312
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	add r6, r7, #2
	bne label76
	add r8, r8, #1
	mov r5, #47
	str r5, [r4, r8, lsl #2]
	cmp r3, #37
	beq label60
	mov r5, r8
	mov r3, r6
	mov r7, #32
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r8, r3, #1
	add r1, r1, #4
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	cmp r0, r2
	bgt label16
	b label101
.p2align 4
label80:
	add r5, r4, r8, lsl #2
	mov r7, r6
.p2align 4
label81:
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
	beq label338
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	add r7, r7, #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	bne label350
	mov r6, r7
	add r8, r8, #1
	mov r5, #42
	str r5, [r4, r8, lsl #2]
	cmp r3, #47
	beq label70
	cmp r3, #37
	beq label60
	mov r5, r8
	mov r3, r7
	mov r7, #32
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r8, r3, #1
	add r1, r1, #4
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	cmp r0, r2
	bgt label16
	b label101
.p2align 4
label706:
	cmp r3, #41
	beq label24
	mov r6, r8
	mov r8, r5
	cmp r3, #43
	beq label90
.p2align 4
label707:
	cmp r3, #45
	beq label38
.p2align 4
label708:
	cmp r3, #42
	beq label80
.p2align 4
label693:
	cmp r3, #47
	beq label70
.p2align 4
label710:
	cmp r3, #37
	bne label721
.p2align 4
label60:
	add r3, r4, r8, lsl #2
	mov r5, r6
	mov r7, r8
.p2align 4
label61:
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
	bne label68
.p2align 4
label286:
	mov r3, r5
	add r5, r7, #1
	mov r6, #37
	str r6, [r4, r5, lsl #2]
	mov r7, #32
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r8, r3, #1
	add r1, r1, #4
	str r7, [r6, r3, lsl #2]
	add r6, r6, r8, lsl #2
	cmp r0, r2
	bgt label16
	b label101
.p2align 4
label68:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r9, #32
	subs r7, r7, #1
	add r6, r6, r5, lsl #2
	add r5, r5, #2
	str r9, [r6, #0]
	str r8, [r6, #4]
	beq label286
	sub r3, r3, #4
	b label61
.p2align 4
label38:
	add r5, r4, r8, lsl #2
	mov r7, r6
.p2align 4
label39:
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
	beq label242
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	add r6, r7, #2
	beq label43
	sub r5, r5, #4
	mov r7, r6
	b label39
.p2align 4
label97:
	add r8, r8, #1
	mov r5, #43
	str r5, [r4, r8, lsl #2]
	cmp r3, #45
	beq label38
	cmp r3, #42
	beq label80
	cmp r3, #47
	beq label70
	b label710
.p2align 4
label216:
	mov r6, r8
	mov r8, r7
	cmp r3, #43
	bne label692
.p2align 4
label90:
	add r5, r4, r8, lsl #2
	mov r7, r6
.p2align 4
label91:
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
	beq label368
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r10, #32
	subs r8, r8, #1
	add r6, r6, r7, lsl #2
	str r10, [r6, #0]
	str r9, [r6, #4]
	add r6, r7, #2
	beq label97
	sub r5, r5, #4
	mov r7, r6
	b label91
.p2align 4
label178:
	cmp r3, #40
	bne label688
	add r5, r5, #1
	mov r6, #40
	str r6, [r4, r5, lsl #2]
	cmp r3, #94
	beq label21
	cmp r3, #41
	beq label24
	mov r6, r8
	mov r8, r5
	cmp r3, #43
	beq label90
	b label707
.p2align 4
label688:
	cmp r3, #94
	bne label706
.p2align 4
label21:
	add r5, r5, #1
	mov r6, #94
	str r6, [r4, r5, lsl #2]
	cmp r3, #41
	bne label196
.p2align 4
label24:
	ldr r9, [r4, r5, lsl #2]
	sub r7, r5, #1
	cmp r9, #40
	beq label204
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	add r5, r6, r8, lsl #2
	mov r6, r9
.p2align 4
label26:
	mov r9, #32
	add r8, r8, #2
	str r9, [r5, #0]
	str r6, [r5, #4]
	ldr r6, [r4, r7, lsl #2]
	sub r7, r7, #1
	cmp r6, #40
	beq label216
	add r5, r5, #8
	b label26
.p2align 4
label76:
	sub r5, r5, #4
	mov r7, r6
	b label71
label101:
	cmp r5, #0
	ble label116
	subs r0, r5, #4
	ble label393
	add r0, r4, r5, lsl #2
.p2align 4
label109:
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
	ble label393
	sub r0, r0, #16
	b label109
.p2align 4
label196:
	mov r6, r8
	mov r8, r5
	cmp r3, #43
	beq label90
	cmp r3, #45
	beq label38
	b label708
.p2align 4
label692:
	cmp r3, #45
	beq label38
	cmp r3, #42
	beq label80
	b label693
label393:
	add r0, r4, r5, lsl #2
label103:
	ldr r1, [r0, #0]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r3, #32
	subs r5, r5, #1
	add r2, r6, r8, lsl #2
	add r8, r8, #2
	str r3, [r2, #0]
	str r1, [r2, #4]
	ble label116
	sub r0, r0, #4
	b label103
label116:
	mov r0, #64
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r0, [r6, r8, lsl #2]
	ldr r0, [r6, #4]
	cmp r0, #64
	beq label118
	mov r2, #1
	mov r0, #0
	b label119
label118:
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	ldr r0, [r7, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label119:
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
	bne label132
	b label122
.p2align 4
label503:
	mov r2, r1
	b label119
.p2align 4
label139:
	cmp r7, #0
	beq label529
	mov r3, r7
	mov r4, #1
.p2align 4
label140:
	mul r4, r2, r4
	subs r3, r3, #1
	bne label140
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	str r4, [r7, r0, lsl #2]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label503
	b label118
.p2align 4
label132:
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
	movne r4, r8
	cmp r5, #0
	mul r6, r7, r2
	movne r4, r6
	cmp r3, #47
	beq label144
	cmp r3, #37
	bne label135
.p2align 4
label143:
	sdiv r4, r2, r7
	mls r4, r4, r7, r2
	cmp r3, #94
	beq label139
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	str r4, [r7, r0, lsl #2]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label503
	b label118
.p2align 4
label144:
	sdiv r4, r2, r7
	cmp r3, #37
	beq label143
	cmp r3, #94
	beq label139
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	str r4, [r7, r0, lsl #2]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label503
	b label118
.p2align 4
label135:
	cmp r3, #94
	beq label139
.p2align 4
label137:
	sub r0, r0, #1
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	str r4, [r7, r0, lsl #2]
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label503
	b label118
label122:
	cmp r3, #32
	bne label123
label129:
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #64
	bne label503
	b label118
label123:
	add r0, r0, #1
	sub r4, r3, #48
	movw r7, #:lower16:ints
	movt r7, #:upper16:ints
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	str r4, [r7, r0, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	cmp r3, #32
	beq label476
	mov r3, #1
.p2align 4
label126:
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
	bne label126
	add r1, r2, r3
	b label129
label204:
	mov r6, r8
	mov r8, r7
	cmp r3, #43
	beq label90
label35:
	cmp r3, #45
	beq label38
	cmp r3, #42
	beq label80
	b label693
label54:
	cmp r3, #37
	beq label60
	b label721
label312:
	mov r6, r7
	add r8, r8, #1
	mov r5, #47
	str r5, [r4, r8, lsl #2]
	b label54
label338:
	mov r6, r7
	add r8, r8, #1
	mov r5, #42
	str r5, [r4, r8, lsl #2]
	cmp r3, #47
	beq label70
	b label54
.p2align 4
label350:
	sub r5, r5, #4
	b label81
label476:
	mov r3, #1
	add r1, r2, r3
	b label129
label529:
	mov r4, #1
	b label137
label157:
	mov r0, #0
	movw r6, #:lower16:get2
	movt r6, #:upper16:get2
	mov r1, r5
	mov r8, #1
	add r6, r6, #4
	mov r5, #0
	mov r2, r5
	b label10
label368:
	mov r6, r7
	add r8, r8, #1
	mov r5, #43
	str r5, [r4, r8, lsl #2]
	b label35
