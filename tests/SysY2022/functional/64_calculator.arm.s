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
	movw r5, #:lower16:get
	movt r5, #:upper16:get
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	beq label166
	mov r6, r5
	mov r7, #0
	b label155
.p2align 4
label159:
	add r6, r6, #4
.p2align 4
label155:
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
	bne label159
	mov r0, r7
label2:
	cmp r0, #0
	ble label174
	mov r1, r5
	mov r6, #0
	mov r8, #1
	mov r2, r6
	ldr r3, [r5, #0]
	sub r5, r3, #48
	cmp r5, #10
	bhs label180
.p2align 4
label14:
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	add r2, r2, #1
	str r3, [r5, r8, lsl #2]
	cmp r0, r2
	add r8, r8, #1
	ble label98
.p2align 4
label13:
	add r1, r1, #4
	ldr r3, [r1, #0]
	sub r5, r3, #48
	cmp r5, #10
	blo label14
	cmp r3, #40
	beq label16
	cmp r3, #94
	beq label97
	cmp r3, #41
	beq label21
	mov r5, r8
	cmp r3, #43
	mov r8, r6
	beq label87
label764:
	cmp r3, #45
	beq label35
	b label745
label180:
	cmp r3, #40
	bne label721
.p2align 4
label16:
	add r6, r6, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r4, [r7, r6, lsl #2]
	cmp r3, #94
	bne label19
.p2align 4
label97:
	add r6, r6, #1
	mov r5, #94
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #41
	str r5, [r7, r6, lsl #2]
	bne label737
.p2align 4
label21:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	ldr r7, [r7, r6, lsl #2]
	sub r6, r6, #1
	cmp r7, #40
	beq label212
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	add r5, r5, r8, lsl #2
.p2align 4
label23:
	mov r9, #32
	add r8, r8, #2
	str r9, [r5, #0]
	str r7, [r5, #4]
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	ldr r7, [r7, r6, lsl #2]
	sub r6, r6, #1
	cmp r7, #40
	beq label224
	add r5, r5, #8
	b label23
.p2align 4
label224:
	mov r5, r8
	cmp r3, #43
	mov r8, r6
	bne label726
.p2align 4
label87:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r6, r7, r8, lsl #2
	mov r7, r5
.p2align 4
label88:
	ldr r10, [r6, #0]
	sub r9, r10, #45
	sub r11, r10, #47
	sub r5, r10, #43
	clz r9, r9
	clz r11, r11
	clz r5, r5
	lsr r9, r9, #5
	lsr r11, r11, #5
	lsr r5, r5, #5
	orr r5, r5, r9
	sub r9, r10, #42
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	sub r11, r10, #94
	orr r5, r5, r9
	clz r11, r11
	sub r9, r10, #37
	lsr r11, r11, #5
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r5, r5, r9
	beq label373
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r5, r5, r7, lsl #2
	add r7, r7, #2
	str r9, [r5, #0]
	str r10, [r5, #4]
	beq label385
	sub r6, r6, #4
	b label88
.p2align 4
label737:
	mov r5, r8
	cmp r3, #43
	mov r8, r6
	beq label87
	cmp r3, #45
	bne label762
.p2align 4
label35:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r6, r7, r8, lsl #2
	mov r7, r5
.p2align 4
label36:
	ldr r10, [r6, #0]
	sub r11, r10, #47
	sub r9, r10, #45
	sub r5, r10, #43
	clz r11, r11
	clz r9, r9
	clz r5, r5
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r5, r5, #5
	orr r5, r5, r9
	sub r9, r10, #42
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	sub r11, r10, #94
	orr r5, r5, r9
	clz r11, r11
	sub r9, r10, #37
	lsr r11, r11, #5
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r5, r5, r9
	beq label250
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r5, r5, r7, lsl #2
	str r9, [r5, #0]
	str r10, [r5, #4]
	add r5, r7, #2
	bne label44
	add r8, r8, #1
	mov r6, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #42
	str r6, [r7, r8, lsl #2]
	beq label48
	cmp r3, #47
	bne label748
.p2align 4
label77:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r6, r7, r8, lsl #2
	mov r7, r5
.p2align 4
label78:
	ldr r10, [r6, #0]
	sub r11, r10, #94
	sub r9, r10, #47
	sub r5, r10, #42
	clz r11, r11
	clz r9, r9
	clz r5, r5
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r5, r5, #5
	orr r5, r5, r9
	sub r9, r10, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r5, r5, r9
	beq label343
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r5, r5, r7, lsl #2
	add r7, r7, #2
	str r9, [r5, #0]
	str r10, [r5, #4]
	beq label355
	sub r6, r6, #4
	b label78
.p2align 4
label355:
	mov r6, r7
	add r8, r8, #1
	mov r5, #47
	cmp r3, #37
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r5, [r7, r8, lsl #2]
	bne label734
.p2align 4
label67:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r3, r7, r8, lsl #2
	mov r7, r8
.p2align 4
label68:
	ldr r8, [r3, #0]
	sub r10, r8, #94
	sub r9, r8, #47
	sub r5, r8, #42
	clz r10, r10
	clz r9, r9
	clz r5, r5
	lsr r10, r10, #5
	lsr r9, r9, #5
	lsr r5, r5, #5
	orr r5, r5, r9
	sub r9, r8, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r10
	orrs r5, r5, r9
	beq label72
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r9, #32
	subs r7, r7, #1
	add r5, r5, r6, lsl #2
	add r6, r6, #2
	str r9, [r5, #0]
	str r8, [r5, #4]
	bne label76
.p2align 4
label72:
	add r3, r7, #1
	mov r5, #37
	mov r9, #32
	add r8, r6, #1
	add r2, r2, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r0, r2
	str r5, [r7, r3, lsl #2]
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	str r9, [r5, r6, lsl #2]
	mov r6, r3
	bgt label13
	b label98
.p2align 4
label385:
	mov r5, r7
	add r8, r8, #1
	mov r6, #43
	cmp r3, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r6, [r7, r8, lsl #2]
	beq label35
	cmp r3, #42
	bne label750
.p2align 4
label48:
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r6, r7, r8, lsl #2
	mov r7, r5
.p2align 4
label49:
	ldr r10, [r6, #0]
	sub r11, r10, #94
	sub r9, r10, #47
	sub r5, r10, #42
	clz r11, r11
	clz r9, r9
	clz r5, r5
	lsr r11, r11, #5
	lsr r9, r9, #5
	lsr r5, r5, #5
	orr r5, r5, r9
	sub r9, r10, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r11
	orrs r5, r5, r9
	beq label280
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r9, #32
	subs r8, r8, #1
	add r5, r5, r7, lsl #2
	str r9, [r5, #0]
	str r10, [r5, #4]
	add r5, r7, #2
	bne label54
	add r8, r8, #1
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	mov r6, #42
	cmp r3, #47
	str r6, [r7, r8, lsl #2]
	beq label77
	mov r6, r5
	cmp r3, #37
	beq label67
	mov r3, r8
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	add r2, r2, #1
	add r8, r6, #1
	str r9, [r5, r6, lsl #2]
	cmp r0, r2
	mov r6, r3
	bgt label13
label98:
	cmp r6, #0
	ble label101
	subs r0, r6, #3
	ble label515
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	mov r1, r8
	mov r2, r6
	add r0, r7, r6, lsl #2
.p2align 4
label139:
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	ldr r4, [r0, #0]
	mov r9, #32
	sub r2, r2, #4
	add r3, r5, r1, lsl #2
	cmp r2, #3
	add r1, r1, #8
	str r9, [r3, #0]
	str r4, [r3, #4]
	ldr r4, [r0, #-4]
	str r9, [r3, #8]
	str r4, [r3, #12]
	ldr r4, [r0, #-8]
	str r9, [r3, #16]
	str r4, [r3, #20]
	ldr r4, [r0, #-12]
	str r9, [r3, #24]
	str r4, [r3, #28]
	ble label539
	sub r0, r0, #16
	b label139
.p2align 4
label19:
	cmp r3, #41
	beq label21
	mov r5, r8
	cmp r3, #43
	mov r8, r6
	beq label87
	cmp r3, #45
	beq label35
label745:
	cmp r3, #42
	beq label48
	b label757
.p2align 4
label726:
	cmp r3, #45
	beq label35
	cmp r3, #42
	beq label48
label727:
	cmp r3, #47
	beq label77
	b label747
label748:
	mov r6, r5
	cmp r3, #37
	beq label67
label769:
	mov r3, r8
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r9, #32
	add r8, r6, #1
	add r2, r2, #1
	str r9, [r5, r6, lsl #2]
	cmp r0, r2
	mov r6, r3
	bgt label13
	b label98
label750:
	cmp r3, #47
	beq label77
label747:
	mov r6, r5
	cmp r3, #37
	beq label67
	mov r3, r8
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r9, #32
	add r2, r2, #1
	add r8, r6, #1
	str r9, [r5, r6, lsl #2]
	cmp r0, r2
	mov r6, r3
	bgt label13
	b label98
label762:
	cmp r3, #42
	beq label48
label757:
	cmp r3, #47
	beq label77
	b label747
label539:
	mov r8, r1
label144:
	cmp r2, #0
	ble label544
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	add r0, r7, r2, lsl #2
	b label149
label153:
	sub r0, r0, #4
label149:
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	ldr r3, [r0, #0]
	mov r9, #32
	subs r2, r2, #1
	add r1, r5, r8, lsl #2
	add r8, r8, #2
	str r9, [r1, #0]
	str r3, [r1, #4]
	bgt label153
label101:
	mov r0, #64
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	str r0, [r5, r8, lsl #2]
	movw r0, #:lower16:ints
	movt r0, #:upper16:ints
	ldr r1, [r5, #4]
	cmp r1, #64
	beq label103
	cmp r1, #43
	bne label409
	mov r1, #1
	mov r3, #0
	b label105
.p2align 4
label119:
	sdiv r7, r2, r6
	cmp r5, #94
	mls r7, r7, r6, r2
	bne label741
.p2align 4
label115:
	cmp r6, #0
	beq label445
	mov r5, r6
	mov r6, #1
.p2align 4
label116:
	mul r6, r2, r6
	subs r5, r5, #1
	bne label116
	mov r7, r6
	str r6, [r4, #-4]
	sub r3, r3, #1
	add r1, r1, #1
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	ldr r2, [r5, r1, lsl #2]
	cmp r2, #64
	beq label103
.p2align 4
label136:
	cmp r2, #43
	bne label120
.p2align 4
label105:
	add r4, r0, r3, lsl #2
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r8, #0
	ldr r6, [r4, #0]
	ldr r2, [r4, #-4]
	ldr r5, [r5, r1, lsl #2]
	add r7, r6, r2
	sub r9, r2, r6
	cmp r5, #43
	moveq r8, r7
	cmp r5, #45
	mov r7, r8
	mul r8, r6, r2
	moveq r7, r9
	cmp r5, #42
	moveq r7, r8
	cmp r5, #47
	bne label430
	sdiv r7, r2, r6
	cmp r5, #37
	beq label119
	cmp r5, #94
	beq label115
.p2align 4
label113:
	str r7, [r4, #-4]
	sub r3, r3, #1
	add r1, r1, #1
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	ldr r2, [r5, r1, lsl #2]
	cmp r2, #64
	bne label136
	b label103
.p2align 4
label120:
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	add r2, r5, r1, lsl #2
	ldr r4, [r2, #0]
	sub r7, r4, #37
	sub r6, r4, #42
	sub r5, r4, #45
	clz r7, r7
	clz r6, r6
	clz r5, r5
	lsr r7, r7, #5
	lsr r6, r6, #5
	lsr r5, r5, #5
	orr r5, r5, r6
	sub r6, r4, #47
	clz r6, r6
	lsr r6, r6, #5
	orr r6, r6, r7
	orr r5, r5, r6
	sub r6, r4, #94
	clz r6, r6
	lsr r6, r6, #5
	orrs r5, r5, r6
	bne label105
	cmp r4, #32
	beq label133
	add r3, r3, #1
	sub r5, r4, #48
	str r5, [r0, r3, lsl #2]
	ldr r4, [r2, #4]
	cmp r4, #32
	beq label481
	add r2, r2, #4
	mov r4, #1
.p2align 4
label128:
	add r5, r5, r5, lsl #2
	ldr r6, [r2, #0]
	add r4, r4, #1
	lsl r5, r5, #1
	sub r5, r5, #48
	add r5, r5, r6
	str r5, [r0, r3, lsl #2]
	ldr r6, [r2, #4]
	cmp r6, #32
	beq label125
	add r2, r2, #4
	b label128
.p2align 4
label430:
	cmp r5, #37
	beq label119
	cmp r5, #94
	beq label115
	str r7, [r4, #-4]
	sub r3, r3, #1
	add r1, r1, #1
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	ldr r2, [r5, r1, lsl #2]
	cmp r2, #64
	bne label136
	b label103
label125:
	sub r1, r1, #1
	add r1, r4, r1
label133:
	add r1, r1, #1
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	ldr r2, [r5, r1, lsl #2]
	cmp r2, #64
	bne label136
label103:
	ldr r0, [r0, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label212:
	mov r5, r8
	mov r8, r6
	cmp r3, #43
	beq label87
	cmp r3, #45
	beq label35
label233:
	cmp r3, #42
	beq label48
	b label727
.p2align 4
label741:
	str r7, [r4, #-4]
	sub r3, r3, #1
	add r1, r1, #1
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	ldr r2, [r5, r1, lsl #2]
	cmp r2, #64
	bne label136
	b label103
label721:
	cmp r3, #94
	beq label97
	cmp r3, #41
	beq label21
	mov r5, r8
	cmp r3, #43
	mov r8, r6
	beq label87
	b label764
.p2align 4
label734:
	mov r3, r8
	movw r5, #:lower16:get2
	movt r5, #:upper16:get2
	mov r9, #32
	add r2, r2, #1
	add r8, r6, #1
	str r9, [r5, r6, lsl #2]
	cmp r0, r2
	mov r6, r3
	bgt label13
	b label98
label343:
	mov r6, r7
	add r8, r8, #1
	mov r5, #47
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #37
	str r5, [r7, r8, lsl #2]
	beq label67
	b label769
label280:
	mov r5, r7
	add r8, r8, #1
	mov r6, #42
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	str r6, [r7, r8, lsl #2]
	cmp r3, #47
	beq label77
	mov r6, r5
	cmp r3, #37
	beq label67
	b label769
label250:
	mov r5, r7
	add r8, r8, #1
	mov r6, #45
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #42
	str r6, [r7, r8, lsl #2]
	beq label48
	cmp r3, #47
	beq label77
	mov r6, r5
	cmp r3, #37
	beq label67
	b label769
label373:
	mov r5, r7
	add r8, r8, #1
	mov r6, #43
	movw r7, #:lower16:chas
	movt r7, #:upper16:chas
	cmp r3, #45
	str r6, [r7, r8, lsl #2]
	beq label35
	b label233
label445:
	mov r7, #1
	b label113
label174:
	mov r8, #1
	mov r6, #0
	b label98
label481:
	mov r4, #1
	b label125
.p2align 4
label44:
	sub r6, r6, #4
	mov r7, r5
	b label36
label166:
	mov r0, #0
	b label2
label544:
	mov r8, r1
	b label101
label409:
	mov r3, #0
	mov r1, #1
	b label120
label515:
	mov r2, r6
	mov r1, #0
	b label144
.p2align 4
label76:
	sub r3, r3, #4
	b label68
.p2align 4
label54:
	sub r6, r6, #4
	mov r7, r5
	b label49
