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
	mov r7, #1
	sub sp, sp, #20
	mov r5, r0
	mov r6, r1
	mov r4, r2
	movw r10, #:lower16:line2
	add r8, r0, #1
	movw r1, #:lower16:ans
	str r1, [sp, #8]
	movt r1, #:upper16:ans
	str r1, [sp, #8]
	movw r1, #:lower16:row
	str r1, [sp, #0]
	movt r1, #:upper16:row
	str r1, [sp, #0]
	movw r1, #:lower16:line1
	str r1, [sp, #4]
	movt r1, #:upper16:line1
	str r1, [sp, #4]
	str r10, [sp, #12]
	movt r10, #:upper16:line2
	str r10, [sp, #12]
	ldr r0, [r2, #0]
	cmp r7, r0
	bgt label4
.p2align 4
label5:
	ldr r1, [sp, #0]
	ldr r1, [r1, r7, lsl #2]
	cmp r1, #1
	bne label7
	add r7, r7, #1
	ldr r0, [r4, #0]
	cmp r7, r0
	ble label5
	b label4
.p2align 4
label7:
	add r9, r5, r7
	ldr r1, [sp, #4]
	ldr r1, [r1, r9, lsl #2]
	cmp r1, #0
	bne label49
	add r1, r5, r0
	ldr r10, [sp, #12]
	sub r1, r1, r7
	ldr r1, [r10, r1, lsl #2]
	cmp r1, #0
	beq label9
	add r7, r7, #1
	ldr r0, [r4, #0]
	cmp r7, r0
	ble label5
	b label4
.p2align 4
label9:
	ldr r1, [sp, #8]
	cmp r5, r0
	str r7, [r1, r5, lsl #2]
	beq label10
	ldr r11, [r4, #0]
.p2align 4
label16:
	add r0, r5, r11
	ldr r1, [sp, #0]
	mov r2, #1
	sub r0, r0, r7
	add r11, r1, r7, lsl #2
	str r2, [r11, #0]
	ldr r1, [sp, #4]
	add r9, r1, r9, lsl #2
	str r2, [r9, #0]
	ldr r10, [sp, #12]
	str r2, [r10, r0, lsl #2]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl f
	mov r0, #0
	str r0, [r11, #0]
	str r0, [r9, #0]
	ldr r1, [r4, #0]
	add r1, r5, r1
	sub r1, r1, r7
	str r0, [r10, r1, lsl #2]
	add r7, r7, #1
	ldr r0, [r4, #0]
	cmp r7, r0
	ble label5
	b label4
.p2align 4
label10:
	ldr r0, [r6, #0]
	mov r10, #1
	add r0, r0, #1
	str r0, [r6, #0]
	ldr r11, [r4, #0]
	cmp r10, r11
	bgt label16
.p2align 4
label13:
	ldr r1, [sp, #8]
	ldr r0, [r1, r10, lsl #2]
	bl putint
	cmp r10, r11
	beq label15
	mov r0, #32
	bl putch
	add r10, r10, #1
	ldr r11, [r4, #0]
	cmp r10, r11
	ble label13
	b label16
label4:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label49:
	add r7, r7, #1
	ldr r0, [r4, #0]
	cmp r7, r0
	ble label5
	b label4
label15:
	mov r0, #10
	bl putch
	ldr r11, [r4, #0]
	b label16
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
	ble label141
	mov r6, r0
.p2align 4
label130:
	bl getint
	str r0, [sp, #4]
	mov r1, r5
	mov r0, #1
	mov r2, r4
	bl f
	subs r6, r6, #1
	bgt label130
	ldr r0, [sp, #0]
label133:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label141:
	mov r0, r6
	b label133
