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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r6, #1
	sub sp, sp, #20
	mov r10, r0
	mov r11, r2
	str r0, [sp, #8]
	movw r4, #:lower16:row
	movw r5, #:lower16:ans
	str r2, [sp, #4]
	movw r8, #:lower16:line2
	movw r7, #:lower16:line1
	str r1, [sp, #0]
	add r0, r0, #1
	movt r4, #:upper16:row
	movt r5, #:upper16:ans
	movt r8, #:upper16:line2
	str r0, [sp, #12]
	movt r7, #:upper16:line1
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label5
label4:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label5:
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #1
	bne label7
	add r6, r6, #1
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	cmp r6, r0
	ble label5
	b label4
.p2align 4
label7:
	ldr r10, [sp, #8]
	add r9, r10, r6
	ldr r1, [r7, r9, lsl #2]
	cmp r1, #0
	beq label8
	add r6, r6, #1
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	cmp r6, r0
	ble label5
	b label4
.p2align 4
label6:
	add r6, r6, #1
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	cmp r6, r0
	ble label5
	b label4
.p2align 4
label8:
	ldr r10, [sp, #8]
	add r1, r10, r0
	sub r1, r1, r6
	ldr r1, [r8, r1, lsl #2]
	cmp r1, #0
	bne label6
	cmp r10, r0
	str r6, [r5, r10, lsl #2]
	bne label64
	ldr r1, [sp, #0]
	mov r10, #1
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
label11:
	ldr r11, [sp, #4]
	ldr r11, [r11, #0]
	cmp r10, r11
	ble label13
	mov r0, r11
label16:
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
label13:
	ldr r0, [r5, r10, lsl #2]
	bl putint
	cmp r10, r11
	beq label15
	mov r0, #32
	bl putch
	add r10, r10, #1
	b label11
label64:
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	b label16
label15:
	mov r0, #10
	bl putch
	ldr r11, [sp, #4]
	ldr r0, [r11, #0]
	b label16
.globl main
main:
.p2align 4
	push { r4, r5, r6, lr }
	mov r0, #0
	sub sp, sp, #8
	str r0, [sp, #4]
	add r5, sp, #4
	mov r4, sp
	bl getint
	cmp r0, #0
	bgt label140
	mov r0, #0
	b label131
label140:
	mov r6, r0
.p2align 4
label128:
	bl getint
	str r0, [sp, #0]
	mov r1, r5
	mov r0, #1
	mov r2, r4
	bl f
	subs r6, r6, #1
	bgt label128
	ldr r0, [sp, #4]
label131:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
