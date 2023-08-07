.arch armv7ve
.data
.bss
.align 8
ans:
	.zero	200
.align 8
row:
	.zero	200
.align 8
line1:
	.zero	200
.align 8
line2:
	.zero	400
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
f:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, r0
	mov r4, r2
	sub sp, sp, #12
	add r0, r0, #1
	str r1, [sp, #0]
	ldr r1, [r2, #0]
	str r0, [sp, #4]
	movw r0, #:lower16:row
	movt r0, #:upper16:row
	cmp r1, #0
	ble label23
	add r6, r0, #4
	mov r7, #1
	ldr r0, [r6, #0]
	cmp r0, #1
	bne label10
	ldr r0, [r2, #0]
	add r7, r7, #1
	cmp r0, r7
	blt label23
.p2align 4
label9:
	add r6, r6, #4
	ldr r0, [r6, #0]
	cmp r0, #1
	bne label10
	ldr r0, [r4, #0]
	add r7, r7, #1
	cmp r0, r7
	bge label9
	b label23
.p2align 4
label10:
	add r8, r5, r7
	movw r1, #:lower16:line1
	movt r1, #:upper16:line1
	ldr r0, [r1, r8, lsl #2]
	cmp r0, #0
	beq label11
	ldr r0, [r4, #0]
	add r7, r7, #1
	cmp r0, r7
	bge label9
	b label23
.p2align 4
label11:
	ldr r0, [r4, #0]
	movw r9, #:lower16:line2
	movt r9, #:upper16:line2
	add r1, r5, r0
	sub r1, r1, r7
	ldr r1, [r9, r1, lsl #2]
	cmp r1, #0
	bne label69
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	cmp r5, r0
	str r7, [r1, r5, lsl #2]
	bne label75
	ldr r1, [sp, #0]
	mov r10, #1
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	add r9, r1, #4
	ldr r11, [r4, #0]
	cmp r10, r11
	bgt label20
.p2align 4
label17:
	ldr r0, [r9, #0]
	bl putint
	cmp r10, r11
	beq label18
	mov r0, #32
	bl putch
	ldr r11, [r4, #0]
	add r9, r9, #4
	add r10, r10, #1
	cmp r10, r11
	ble label17
	b label20
.p2align 4
label75:
	ldr r11, [r4, #0]
.p2align 4
label20:
	add r0, r5, r11
	mov r2, #1
	movw r1, #:lower16:line1
	movt r1, #:upper16:line1
	movw r9, #:lower16:line2
	movt r9, #:upper16:line2
	str r2, [r6, #0]
	sub r0, r0, r7
	add r8, r1, r8, lsl #2
	str r2, [r8, #0]
	str r2, [r9, r0, lsl #2]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0]
	mov r2, r4
	bl f
	mov r1, #0
	str r1, [r6, #0]
	str r1, [r8, #0]
	ldr r0, [r4, #0]
	add r2, r5, r0
	sub r2, r2, r7
	add r7, r7, #1
	str r1, [r9, r2, lsl #2]
	cmp r0, r7
	bge label9
label23:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label69:
	add r7, r7, #1
	cmp r0, r7
	bge label9
	b label23
label18:
	mov r0, #10
	bl putch
	ldr r11, [r4, #0]
	b label20
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r6, #0
	sub sp, sp, #8
	str r6, [sp, #0]
	mov r5, sp
	add r4, sp, #4
	bl getint
	cmp r0, #0
	ble label148
	mov r6, r0
.p2align 4
label137:
	bl getint
	str r0, [sp, #4]
	mov r1, r5
	mov r0, #1
	mov r2, r4
	bl f
	subs r6, r6, #1
	bgt label137
	ldr r0, [sp, #0]
label140:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label148:
	mov r0, r6
	b label140
