.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r5, #6
	mov r6, #8
	sub sp, sp, #44
	mov r2, #4
	mov r1, #3
	mov r3, #9
	str r2, [sp, #0]
	mov r4, #0
	mov r0, sp
	str r1, [sp, #4]
	mov r1, #2
	str r3, [sp, #8]
	str r1, [sp, #12]
	mov r1, #1
	str r4, [sp, #16]
	str r1, [sp, #20]
	str r5, [sp, #24]
	mov r5, #5
	str r5, [sp, #28]
	mov r5, #7
	str r5, [sp, #32]
	str r6, [sp, #36]
	sub r5, r6, #2
	add r7, r6, #1
	mov r6, r2
	cmp r7, #10
	bge label13
.p2align 4
label8:
	cmp r7, #9
	bge label52
	add r8, r0, r7, lsl #2
	ldr r9, [r8, #0]
	ldr r8, [r8, #4]
	cmp r9, r8
	mov r8, #0
	movwlt r8, #1
	add r7, r7, r8
	ldr r8, [r0, r6, lsl #2]
	ldr r9, [r0, r7, lsl #2]
	cmp r8, r9
	bgt label13
	str r9, [r0, r6, lsl #2]
	lsl r6, r7, #1
	str r8, [r0, r7, lsl #2]
	add r8, r6, #1
	cmp r8, #10
	mov r6, r7
	mov r7, r8
	blt label8
.p2align 4
label13:
	sub r2, r2, #1
	cmn r2, #1
	ble label81
	add r7, r5, #1
	sub r5, r5, #2
	cmp r7, #10
	mov r6, r2
	blt label8
	b label13
.p2align 4
label52:
	add r7, r7, r4
	ldr r8, [r0, r6, lsl #2]
	ldr r9, [r0, r7, lsl #2]
	cmp r8, r9
	bgt label13
	str r9, [r0, r6, lsl #2]
	lsl r6, r7, #1
	str r8, [r0, r7, lsl #2]
	add r8, r6, #1
	cmp r8, #10
	mov r6, r7
	mov r7, r8
	blt label8
	b label13
label81:
	add r2, r0, #36
	ldr r5, [sp, #0]
	mov r7, r1
	ldr r6, [r2, #0]
	str r6, [sp, #0]
	mov r6, r4
	str r5, [r2, #0]
	sub r5, r3, #1
	cmp r3, r1
	bgt label29
.p2align 4
label21:
	cmp r5, #0
	ble label93
	sub r2, r2, #4
	mov r3, r5
	mov r7, r1
	cmp r5, r1
	ldr r5, [sp, #0]
	ldr r6, [r2, #0]
	str r6, [sp, #0]
	mov r6, r4
	str r5, [r2, #0]
	sub r5, r3, #1
	ble label21
.p2align 4
label29:
	cmp r5, r7
	bgt label33
	add r7, r7, r4
	ldr r8, [r0, r6, lsl #2]
	ldr r9, [r0, r7, lsl #2]
	cmp r8, r9
	bgt label21
	str r9, [r0, r6, lsl #2]
	lsl r6, r7, #1
	str r8, [r0, r7, lsl #2]
	add r8, r6, #1
	cmp r3, r8
	mov r6, r7
	mov r7, r8
	bgt label29
	b label21
.p2align 4
label33:
	add r8, r0, r7, lsl #2
	ldr r9, [r8, #0]
	ldr r8, [r8, #4]
	cmp r9, r8
	mov r8, #0
	movwlt r8, #1
	add r7, r7, r8
	ldr r8, [r0, r6, lsl #2]
	ldr r9, [r0, r7, lsl #2]
	cmp r8, r9
	bgt label21
	str r9, [r0, r6, lsl #2]
	lsl r6, r7, #1
	str r8, [r0, r7, lsl #2]
	add r8, r6, #1
	cmp r3, r8
	mov r6, r7
	mov r7, r8
	bgt label29
	b label21
label93:
	mov r5, r0
	mov r6, r4
.p2align 4
label24:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label27
	add r5, r5, #4
	b label24
label27:
	mov r0, r4
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, pc }
