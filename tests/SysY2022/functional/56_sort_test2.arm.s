.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	mov r3, #6
	sub sp, sp, #40
	mov r2, #3
	mov r4, #0
	mov r1, #4
	mov r0, sp
	str r1, [sp, #0]
	str r2, [sp, #4]
	add r1, r0, #4
	mov r2, #9
	str r2, [sp, #8]
	mov r2, #2
	str r2, [sp, #12]
	mov r2, #1
	str r4, [sp, #16]
	str r2, [sp, #20]
	str r3, [sp, #24]
	mov r3, #5
	str r3, [sp, #28]
	mov r3, #7
	str r3, [sp, #32]
	mov r3, #8
	str r3, [sp, #36]
	cmp r2, #10
	blt label5
label31:
	mov r5, r0
	mov r6, r4
	b label13
.p2align 4
label5:
	ldr r3, [r1, #0]
	sub r6, r2, #1
	add r5, r0, r6, lsl #2
	add r7, r6, #1
	cmn r6, #1
	bgt label10
.p2align 4
label9:
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #10
	blt label5
	b label31
.p2align 4
label10:
	ldr r8, [r5, #0]
	cmp r3, r8
	bge label9
	str r8, [r0, r7, lsl #2]
	sub r6, r6, #1
	sub r5, r5, #4
	add r7, r6, #1
	cmn r6, #1
	bgt label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #10
	blt label5
	b label31
.p2align 4
label13:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label17
	add r5, r5, #4
	b label13
label17:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, r7, r8, pc }
