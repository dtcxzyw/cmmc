.arch armv7ve
.data
.bss
.align 4
cnt:
	.zero	1600080
.align 4
a:
	.zero	400020
.align 4
b:
	.zero	400020
.align 4
c:
	.zero	400020
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
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label82
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label96
	b label422
label82:
	mov r5, r0
	mov r4, #0
.p2align 4
label2:
	bl getch
	mov r1, #0
	mov r2, #1
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #45
	moveq r4, r2
	cmp r1, #0
	bne label91
	sub r1, r0, #48
	cmp r1, #10
	blo label96
	b label422
label91:
	mov r5, r0
	b label2
label96:
	mov r5, r0
	mov r6, #0
.p2align 4
label8:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label11
	mov r5, r0
	b label8
label11:
	cmp r4, #0
	rsb r0, r6, #0
	movw r7, #:lower16:b
	movw r5, #:lower16:c
	movw r4, #:lower16:a
	movne r6, r0
	movt r7, #:upper16:b
	movt r5, #:upper16:c
	movt r4, #:upper16:a
	cmp r6, #0
	bne label118
	mov r0, #0
	cmp r6, r0
	bgt label166
	movw r0, #:lower16:cnt
	cmp r6, #0
	movt r0, #:upper16:cnt
	bgt label30
	b label460
label118:
	mov r8, #0
	b label13
label460:
	mvn r2, #99
	mov r3, #0
	mov r1, r3
	b label39
label166:
	add r1, r0, #1
	mov r2, r1
	cmp r6, r1
	bgt label74
	mov r0, r1
	movw r0, #:lower16:cnt
	cmp r6, #0
	movt r0, #:upper16:cnt
	bgt label30
	b label460
.p2align 4
label74:
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r2, lsl #2]
	cmp r3, r8
	bgt label76
	add r2, r2, #1
	cmp r6, r2
	bgt label74
	mov r0, r1
	cmp r6, r1
	bgt label166
	movw r0, #:lower16:cnt
	cmp r6, #0
	movt r0, #:upper16:cnt
	bgt label30
	b label460
.p2align 4
label76:
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r6, r2
	bgt label74
	mov r0, r1
	cmp r6, r1
	bgt label166
	movw r0, #:lower16:cnt
	cmp r6, #0
	movt r0, #:upper16:cnt
	bgt label30
	b label460
.p2align 4
label13:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label125
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label139
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label13
	mov r0, #0
	cmp r6, r0
	bgt label166
	movw r0, #:lower16:cnt
	cmp r6, #0
	movt r0, #:upper16:cnt
	bgt label30
	b label460
.p2align 4
label125:
	mov r10, r0
	mov r9, #0
.p2align 4
label15:
	bl getch
	mov r1, #0
	mov r2, #1
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label134
	sub r1, r0, #48
	cmp r1, #10
	blo label139
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label13
	mov r0, #0
	cmp r6, r0
	bgt label166
	movw r0, #:lower16:cnt
	cmp r6, #0
	movt r0, #:upper16:cnt
	bgt label30
	b label460
.p2align 4
label134:
	mov r10, r0
	b label15
.p2align 4
label139:
	mov r10, r0
	mov r11, #0
.p2align 4
label23:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label162
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label13
	mov r0, #0
	cmp r6, r0
	bgt label166
	movw r0, #:lower16:cnt
	cmp r6, #0
	movt r0, #:upper16:cnt
	bgt label30
	b label460
.p2align 4
label162:
	mov r10, r0
	b label23
.p2align 4
label422:
	mov r6, #0
	b label11
label30:
	cmp r6, #4
	bgt label176
	mov r1, #0
	mvn r2, #99
	b label34
label176:
	mvn r3, #99
	mov r1, #0
label31:
	add r2, r7, r1, lsl #2
	ldr r8, [r7, r1, lsl #2]
	cmp r3, r8
	ldr r9, [r0, r8, lsl #2]
	movle r3, r8
	add r9, r9, #1
	str r9, [r0, r8, lsl #2]
	ldr r9, [r2, #4]
	cmp r9, r3
	ldr r10, [r0, r9, lsl #2]
	add r10, r10, #1
	str r10, [r0, r9, lsl #2]
	ldr r8, [r2, #8]
	movle r9, r3
	mov r3, r9
	cmp r9, r8
	movle r3, r8
	ldr r9, [r0, r8, lsl #2]
	add r9, r9, #1
	str r9, [r0, r8, lsl #2]
	ldr r8, [r2, #12]
	mov r2, r3
	cmp r3, r8
	movle r2, r8
	ldr r3, [r0, r8, lsl #2]
	add r3, r3, #1
	str r3, [r0, r8, lsl #2]
	add r3, r1, #8
	cmp r6, r3
	add r1, r1, #4
	ble label34
	mov r3, r2
	b label31
label34:
	ldr r3, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r2, r3
	ldr r8, [r0, r3, lsl #2]
	movle r2, r3
	cmp r6, r1
	add r8, r8, #1
	str r8, [r0, r3, lsl #2]
	bgt label34
	mov r3, #0
	mov r1, r3
.p2align 4
label39:
	cmp r2, r1
	bge label42
	mov r0, #0
	cmp r6, r0
	bgt label51
	cmp r6, #0
	bne label321
	subs r1, r0, r6
	bne label64
label481:
	mvn r0, #122
	b label67
.p2align 4
label42:
	ldr r8, [r0, r1, lsl #2]
	cmp r8, #0
	bne label43
	add r1, r1, #1
	cmp r2, r1
	bge label42
	mov r0, #0
	cmp r6, r0
	bgt label51
	cmp r6, #0
	bne label321
	subs r1, r0, r6
	bne label64
	b label481
label67:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label51:
	add r1, r0, #1
	cmp r6, r1
	bgt label52
	mov r3, r0
	ldr r2, [r5, r0, lsl #2]
	ldr r8, [r5, r0, lsl #2]
	str r8, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r3, lsl #2]
	cmp r6, #0
	bne label321
	mov r0, #0
	subs r1, r0, r6
	bne label64
	b label481
.p2align 4
label53:
	ldr r8, [r5, r2, lsl #2]
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	add r8, r2, #1
	movlt r3, r2
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	cmp r9, r10
	movlt r3, r8
	add r8, r2, #2
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	cmp r9, r10
	movlt r3, r8
	add r8, r2, #3
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	cmp r9, r10
	movlt r3, r8
	add r8, r2, #8
	cmp r6, r8
	add r2, r2, #4
	bgt label53
	ldr r8, [r5, r2, lsl #2]
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	movlt r3, r2
	add r2, r2, #1
	cmp r6, r2
	bgt label56
	ldr r2, [r5, r0, lsl #2]
	ldr r8, [r5, r3, lsl #2]
	str r8, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r3, lsl #2]
	cmp r6, r1
	bgt label51
	cmp r6, #0
	bne label321
	mov r0, #0
	subs r1, r0, r6
	bne label64
	b label481
.p2align 4
label52:
	add r2, r0, #5
	cmp r6, r2
	bgt label258
	mov r2, r1
	mov r3, r0
	ldr r8, [r5, r1, lsl #2]
	ldr r9, [r5, r0, lsl #2]
	cmp r8, r9
	movlt r3, r1
	add r2, r1, #1
	cmp r6, r2
	bgt label56
	ldr r2, [r5, r0, lsl #2]
	ldr r8, [r5, r3, lsl #2]
	str r8, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r3, lsl #2]
	cmp r6, r1
	bgt label51
	cmp r6, #0
	bne label321
	mov r0, #0
	subs r1, r0, r6
	bne label64
	b label481
.p2align 4
label258:
	mov r3, r0
	mov r2, r1
	b label53
.p2align 4
label56:
	ldr r8, [r5, r2, lsl #2]
	ldr r9, [r5, r3, lsl #2]
	cmp r8, r9
	movlt r3, r2
	add r2, r2, #1
	cmp r6, r2
	bgt label56
	ldr r2, [r5, r0, lsl #2]
	ldr r8, [r5, r3, lsl #2]
	str r8, [r5, r0, lsl #2]
	mov r0, r1
	str r2, [r5, r3, lsl #2]
	cmp r6, r1
	bgt label51
	cmp r6, #0
	bne label321
	mov r0, #0
	subs r1, r0, r6
	bne label64
	b label481
.p2align 4
label43:
	str r1, [r7, r3, lsl #2]
	subs r8, r8, #1
	add r3, r3, #1
	bne label43
	add r1, r1, #1
	cmp r2, r1
	bge label42
	mov r0, #0
	cmp r6, r0
	bgt label51
	cmp r6, #0
	bne label321
	subs r1, r0, r6
	bne label64
	b label481
label321:
	mov r0, #0
.p2align 4
label69:
	ldr r2, [r7, r0, lsl #2]
	ldr r1, [r4, r0, lsl #2]
	sub r2, r2, r1
	str r2, [r7, r0, lsl #2]
	ldr r3, [r5, r0, lsl #2]
	sub r2, r3, r2
	sub r1, r2, r1
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	subs r1, r6, r0
	bne label69
	mov r0, #0
	subs r1, r0, r6
	beq label481
label64:
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label65
	mov r0, #1
	b label67
label65:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	beq label339
	mov r0, #2
	b label67
label62:
	subs r1, r0, r6
	bne label64
	b label481
label339:
	add r0, r0, #1
	b label62
