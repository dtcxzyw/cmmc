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
	add r8, r0, #1
	mov r4, r2
	mov r6, #1
	mov r7, r1
	mov r5, r0
	sub sp, sp, #4
	ldr r0, [r2, #0]
	cmp r6, r0
	bgt label17
.p2align 4
label4:
	movw r1, #:lower16:row
	movt r1, #:upper16:row
	ldr r1, [r1, r6, lsl #2]
	cmp r1, #1
	bne label5
	add r6, r6, #1
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label4
	b label17
.p2align 4
label5:
	add r9, r5, r6
	movw r1, #:lower16:line1
	movt r1, #:upper16:line1
	ldr r1, [r1, r9, lsl #2]
	cmp r1, #0
	bne label47
	add r1, r5, r0
	movw r10, #:lower16:line2
	movt r10, #:upper16:line2
	sub r1, r1, r6
	ldr r1, [r10, r1, lsl #2]
	cmp r1, #0
	beq label7
	add r6, r6, #1
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label4
	b label17
.p2align 4
label7:
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	cmp r5, r0
	str r6, [r1, r5, lsl #2]
	beq label10
.p2align 4
label8:
	add r0, r5, r0
	movw r1, #:lower16:row
	movt r1, #:upper16:row
	mov r2, #1
	movw r10, #:lower16:line2
	movt r10, #:upper16:line2
	add r11, r1, r6, lsl #2
	sub r0, r0, r6
	movw r1, #:lower16:line1
	movt r1, #:upper16:line1
	str r2, [r11, #0]
	add r9, r1, r9, lsl #2
	str r2, [r9, #0]
	str r2, [r10, r0, lsl #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl f
	mov r0, #0
	str r0, [r11, #0]
	str r0, [r9, #0]
	ldr r1, [r4, #0]
	add r1, r5, r1
	sub r1, r1, r6
	str r0, [r10, r1, lsl #2]
	add r6, r6, #1
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label4
	b label17
.p2align 4
label10:
	ldr r0, [r7, #0]
	mov r10, #1
	add r0, r0, #1
	str r0, [r7, #0]
	ldr r11, [r4, #0]
	cmp r10, r11
	ble label13
label82:
	mov r0, r11
	b label8
.p2align 4
label13:
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	ldr r0, [r1, r10, lsl #2]
	bl putint
	cmp r10, r11
	beq label14
	mov r0, #32
	bl putch
	add r10, r10, #1
	ldr r11, [r4, #0]
	cmp r10, r11
	ble label13
	b label82
label17:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label47:
	add r6, r6, #1
	ldr r0, [r4, #0]
	cmp r6, r0
	ble label4
	b label17
label14:
	mov r0, #10
	bl putch
	ldr r0, [r4, #0]
	b label8
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
	ble label136
	mov r6, r0
.p2align 4
label125:
	bl getint
	str r0, [sp, #4]
	mov r1, r5
	mov r0, #1
	mov r2, r4
	bl f
	subs r6, r6, #1
	bgt label125
	ldr r0, [sp, #0]
label128:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label136:
	mov r0, r6
	b label128
