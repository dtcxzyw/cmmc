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
	mov r4, r2
	mov r5, r0
	mov r7, #1
	sub sp, sp, #12
	add r0, r0, #1
	str r1, [sp, #0]
	str r0, [sp, #4]
	movw r0, #:lower16:row
	movt r0, #:upper16:row
	add r6, r0, #4
	ldr r0, [r2, #0]
	cmp r7, r0
	bgt label19
.p2align 4
label5:
	ldr r1, [r6, #0]
	cmp r1, #1
	bne label6
	add r7, r7, #1
	add r6, r6, #4
	ldr r0, [r4, #0]
	cmp r7, r0
	ble label5
	b label19
.p2align 4
label6:
	add r8, r5, r7
	movw r1, #:lower16:line1
	movt r1, #:upper16:line1
	ldr r1, [r1, r8, lsl #2]
	cmp r1, #0
	bne label48
	add r1, r5, r0
	movw r9, #:lower16:line2
	movt r9, #:upper16:line2
	sub r1, r1, r7
	ldr r1, [r9, r1, lsl #2]
	cmp r1, #0
	beq label8
	add r7, r7, #1
	add r6, r6, #4
	ldr r0, [r4, #0]
	cmp r7, r0
	ble label5
	b label19
.p2align 4
label8:
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	cmp r5, r0
	str r7, [r1, r5, lsl #2]
	beq label11
.p2align 4
label9:
	add r0, r5, r0
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
	mov r0, #0
	str r0, [r6, #0]
	str r0, [r8, #0]
	ldr r1, [r4, #0]
	add r1, r5, r1
	sub r1, r1, r7
	str r0, [r9, r1, lsl #2]
	add r7, r7, #1
	add r6, r6, #4
	ldr r0, [r4, #0]
	cmp r7, r0
	ble label5
	b label19
.p2align 4
label11:
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
	ble label15
label82:
	mov r0, r11
	b label9
.p2align 4
label15:
	ldr r0, [r9, #0]
	bl putint
	cmp r10, r11
	beq label16
	mov r0, #32
	bl putch
	add r9, r9, #4
	add r10, r10, #1
	ldr r11, [r4, #0]
	cmp r10, r11
	ble label15
	b label82
label19:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label48:
	add r7, r7, #1
	add r6, r6, #4
	ldr r0, [r4, #0]
	cmp r7, r0
	ble label5
	b label19
label16:
	mov r0, #10
	bl putch
	ldr r0, [r4, #0]
	b label9
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
	ble label135
	mov r6, r0
.p2align 4
label124:
	bl getint
	str r0, [sp, #4]
	mov r1, r5
	mov r0, #1
	mov r2, r4
	bl f
	subs r6, r6, #1
	bgt label124
	ldr r0, [sp, #0]
label127:
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label135:
	mov r0, r6
	b label127
