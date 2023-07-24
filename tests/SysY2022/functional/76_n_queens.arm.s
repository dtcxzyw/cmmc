.arch armv7ve
.data
.bss
.align 4
ans:
	.zero	200
.align 4
row:
	.zero	200
.align 4
line1:
	.zero	200
.align 4
line2:
	.zero	400
.text
.syntax unified
.arm
.fpu vfpv4
f:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r6, #1
	sub sp, sp, #20
	mov r11, r2
	movw r4, #:lower16:row
	str r0, [sp, #8]
	mov r10, r0
	movw r5, #:lower16:ans
	str r2, [sp, #4]
	movw r8, #:lower16:line2
	movw r7, #:lower16:line1
	str r1, [sp, #0]
	movt r4, #:upper16:row
	add r0, r0, #1
	movt r5, #:upper16:ans
	movt r8, #:upper16:line2
	str r0, [sp, #12]
	movt r7, #:upper16:line1
label2:
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	cmp r6, r0
	ble label5
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #1
	bne label7
label6:
	add r6, r6, #1
	b label2
label7:
	ldr r10, [sp, #8]
	add r9, r10, r6
	ldr r1, [r7, r9, lsl #2]
	cmp r1, #0
	bne label6
	add r1, r10, r0
	sub r1, r1, r6
	ldr r1, [r8, r1, lsl #2]
	cmp r1, #0
	bne label6
	cmp r10, r0
	str r6, [r5, r10, lsl #2]
	beq label65
	b label18
label10:
	ldr r10, [sp, #8]
	mov r1, #1
	str r1, [r4, r6, lsl #2]
	str r1, [r7, r9, lsl #2]
	add r0, r10, r0
	sub r0, r0, r6
	str r1, [r8, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r11, [sp, #4]
	ldr r0, [sp, #12]
	mov r2, r11
	bl f
	mov r0, #0
	str r0, [r4, r6, lsl #2]
	str r0, [r7, r9, lsl #2]
	ldr r1, [r11, #0]
	add r1, r10, r1
	sub r1, r1, r6
	str r0, [r8, r1, lsl #2]
	b label6
label18:
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	b label10
label65:
	ldr r1, [sp, #0]
	mov r10, #1
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
label13:
	ldr r11, [sp, #4]
	ldr r11, [r11, #0]
	cmp r10, r11
	ble label15
	mov r0, r11
	b label10
label15:
	ldr r0, [r5, r10, lsl #2]
	bl putint
	cmp r10, r11
	bne label17
	mov r0, #10
	bl putch
	b label18
label17:
	mov r0, #32
	bl putch
	add r10, r10, #1
	b label13
.globl main
main:
	push { r4, r5, r6, lr }
	mov r0, #0
	sub sp, sp, #8
	str r0, [sp, #4]
	add r5, sp, #4
	mov r4, sp
	bl getint
	cmp r0, #0
	bgt label126
	mov r0, #0
	b label117
label126:
	mov r6, r0
label114:
	bl getint
	str r0, [sp, #0]
	mov r1, r5
	mov r0, #1
	mov r2, r4
	bl f
	subs r6, r6, #1
	bgt label114
	ldr r0, [sp, #4]
label117:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
