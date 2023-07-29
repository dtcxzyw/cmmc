.arch armv7ve
.data
.bss
.align 8
cnt:
	.zero	1600080
.align 8
a:
	.zero	400020
.align 8
b:
	.zero	400020
.align 8
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
	sub r1, r0, #48
	cmp r1, #9
	bhi label81
	mov r4, #0
	cmp r1, #10
	blo label94
.p2align 4
label417:
	mov r6, #0
	b label11
label81:
	mov r5, r0
	mov r4, #0
.p2align 4
label2:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label89
	cmp r1, #10
	blo label94
	b label417
label89:
	mov r5, r0
	b label2
label94:
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
	bne label116
	mov r0, #0
	cmp r6, r0
	bgt label120
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label51
	b label456
label116:
	mov r8, #0
	b label64
label456:
	mvn r3, #99
	mov r8, #0
	mov r2, r8
	b label19
label120:
	add r1, r0, #1
	mov r2, r1
	b label59
label17:
	mov r8, #0
	mov r2, r8
.p2align 4
label19:
	cmp r3, r2
	bge label22
	mov r1, #0
	cmp r6, r1
	bgt label31
	cmp r6, #0
	bne label223
	mov r0, #0
	subs r1, r0, r6
	bne label44
	b label474
label51:
	cmp r6, #4
	bgt label265
	mov r2, #0
	mvn r8, #99
	b label52
label265:
	mvn r8, #99
	mov r2, #0
	b label55
label52:
	ldr r9, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r8, r9
	ldr r3, [r1, r9, lsl #2]
	add r3, r3, #1
	str r3, [r1, r9, lsl #2]
	mov r3, r8
	movle r3, r9
	cmp r6, r2
	ble label17
	mov r8, r3
	b label52
label55:
	add r3, r7, r2, lsl #2
	ldr r9, [r7, r2, lsl #2]
	add r2, r2, #4
	cmp r8, r9
	ldr r10, [r1, r9, lsl #2]
	add r10, r10, #1
	str r10, [r1, r9, lsl #2]
	ldr r10, [r3, #4]
	ldr r11, [r1, r10, lsl #2]
	add r11, r11, #1
	str r11, [r1, r10, lsl #2]
	mov r11, r8
	movle r11, r9
	ldr r9, [r3, #8]
	mov r8, r10
	cmp r10, r11
	movle r8, r11
	ldr r10, [r1, r9, lsl #2]
	cmp r8, r9
	movle r8, r9
	add r10, r10, #1
	str r10, [r1, r9, lsl #2]
	ldr r3, [r3, #12]
	ldr r9, [r1, r3, lsl #2]
	cmp r8, r3
	movle r8, r3
	cmp r0, r2
	add r9, r9, #1
	str r9, [r1, r3, lsl #2]
	bgt label55
	b label52
.p2align 4
label59:
	cmp r6, r2
	bgt label61
	mov r0, r1
	cmp r6, r1
	bgt label120
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label51
	b label456
.p2align 4
label61:
	ldr r3, [r4, r0, lsl #2]
	ldr r8, [r4, r2, lsl #2]
	cmp r3, r8
	bgt label62
	add r2, r2, #1
	cmp r6, r2
	bgt label61
	mov r0, r1
	cmp r6, r1
	bgt label120
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label51
	b label456
.p2align 4
label62:
	str r8, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r6, r2
	bgt label61
	mov r0, r1
	cmp r6, r1
	bgt label120
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label51
	b label456
.p2align 4
label64:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label338
	mov r9, #0
	cmp r1, #10
	blo label351
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label64
	mov r0, #0
	cmp r6, r0
	bgt label120
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label51
	b label456
.p2align 4
label338:
	mov r10, r0
	mov r9, #0
.p2align 4
label66:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label346
	cmp r1, #10
	blo label351
	mov r0, #0
	cmp r9, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label64
	mov r0, #0
	cmp r6, r0
	bgt label120
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label51
	b label456
.p2align 4
label346:
	mov r10, r0
	b label66
.p2align 4
label351:
	mov r10, r0
	mov r11, #0
.p2align 4
label74:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label374
	mov r0, r11
	cmp r9, #0
	rsb r1, r11, #0
	movne r0, r1
	str r0, [r4, r8, lsl #2]
	str r0, [r7, r8, lsl #2]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r6, r8
	bne label64
	mov r0, #0
	cmp r6, r0
	bgt label120
	sub r0, r6, #4
	movw r1, #:lower16:cnt
	cmp r6, #0
	movt r1, #:upper16:cnt
	bgt label51
	b label456
.p2align 4
label374:
	mov r10, r0
	b label74
.p2align 4
label22:
	ldr r9, [r1, r2, lsl #2]
	cmp r9, #0
	bne label25
	add r2, r2, #1
	cmp r3, r2
	bge label22
	mov r1, #0
	cmp r6, r1
	bgt label31
	cmp r6, #0
	bne label223
	mov r0, #0
	subs r1, r0, r6
	bne label44
	b label474
.p2align 4
label25:
	str r2, [r7, r8, lsl #2]
	subs r9, r9, #1
	add r8, r8, #1
	bne label25
	add r2, r2, #1
	cmp r3, r2
	bge label22
	mov r1, #0
	cmp r6, r1
	bgt label31
	cmp r6, #0
	bne label223
	mov r0, #0
	subs r1, r0, r6
	bne label44
	b label474
.p2align 4
label31:
	add r2, r1, #1
	cmp r6, r2
	bgt label32
	mov r8, r1
	ldr r3, [r5, r1, lsl #2]
	ldr r9, [r5, r1, lsl #2]
	str r9, [r5, r1, lsl #2]
	mov r1, r2
	str r3, [r5, r8, lsl #2]
	cmp r6, #0
	bne label223
	mov r0, #0
	subs r1, r0, r6
	bne label44
	b label474
.p2align 4
label32:
	add r3, r1, #5
	cmp r6, r3
	bgt label161
	mov r3, r2
	mov r8, r1
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r5, r1, lsl #2]
	cmp r9, r10
	movlt r8, r2
	add r3, r2, #1
	cmp r6, r3
	bgt label36
	ldr r3, [r5, r1, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	str r9, [r5, r1, lsl #2]
	mov r1, r2
	str r3, [r5, r8, lsl #2]
	cmp r6, r2
	bgt label31
	cmp r6, #0
	bne label223
	mov r0, #0
	subs r1, r0, r6
	bne label44
	b label474
.p2align 4
label161:
	mov r8, r1
	mov r3, r2
.p2align 4
label33:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	add r9, r3, #1
	movlt r8, r3
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r3, #2
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	add r9, r3, #3
	add r3, r3, #4
	ldr r10, [r5, r9, lsl #2]
	ldr r11, [r5, r8, lsl #2]
	cmp r10, r11
	movlt r8, r9
	cmp r0, r3
	bgt label33
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	movlt r8, r3
	add r3, r3, #1
	cmp r6, r3
	bgt label36
	ldr r3, [r5, r1, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	str r9, [r5, r1, lsl #2]
	mov r1, r2
	str r3, [r5, r8, lsl #2]
	cmp r6, r2
	bgt label31
	cmp r6, #0
	bne label223
	mov r0, #0
	subs r1, r0, r6
	bne label44
	b label474
.p2align 4
label36:
	ldr r9, [r5, r3, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	cmp r9, r10
	movlt r8, r3
	add r3, r3, #1
	cmp r6, r3
	bgt label36
	ldr r3, [r5, r1, lsl #2]
	ldr r9, [r5, r8, lsl #2]
	str r9, [r5, r1, lsl #2]
	mov r1, r2
	str r3, [r5, r8, lsl #2]
	cmp r6, r2
	bgt label31
	cmp r6, #0
	bne label223
	mov r0, #0
	subs r1, r0, r6
	bne label44
	b label474
label42:
	subs r1, r0, r6
	beq label474
label44:
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label45
	mov r0, #1
	b label47
label45:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	bne label242
	add r0, r0, #1
	b label42
label242:
	mov r0, #2
	b label47
label474:
	mvn r0, #122
	b label47
label223:
	mov r0, #0
	b label49
label47:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label49:
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
	bne label49
	mov r0, #0
	subs r1, r0, r6
	bne label44
	b label474
