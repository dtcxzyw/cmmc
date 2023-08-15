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
	mov r2, #0
	mov r1, #2
	movw r6, #1352
	mov r0, #49
	sub sp, sp, #4
	cmp r2, #3
	blt label7
	b label10
.p2align 4
label31:
	add r1, r3, r6
	add r0, r0, #9
	mov r2, r4
	cmp r4, #3
	add r0, r0, r0, lsl #1
	add r1, r8, r1
	add r1, r1, r9, lsl #1
	add r6, r1, r0
	mov r1, r5
	mov r0, r5
	bge label10
.p2align 4
label7:
	add r3, r1, #10
	add r5, r0, #1
	add r7, r0, #7
	add r9, r0, #6
	cmp r2, #1
	add r4, r6, r3
	lsl r8, r7, #1
	add r4, r4, r5, lsl #1
	add r5, r0, #3
	add r4, r4, r0, lsl #1
	add r5, r5, r5, lsl #1
	add r6, r4, r5
	add r5, r0, #13
	add r4, r2, #1
	bne label31
	add r2, r6, #10
	add r3, r0, #8
	cmp r4, #3
	add r2, r7, r2
	add r0, r0, #10
	add r2, r8, r2
	add r0, r0, r0, lsl #1
	add r2, r2, r3, lsl #1
	add r6, r2, r0
	mov r2, r4
	mov r0, r5
	blt label7
label10:
	mov r0, r6
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
