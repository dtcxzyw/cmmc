.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	mov r2, #0
	mov r1, #2
	movw r5, #1352
	mov r0, #49
	cmp r2, #3
	bge label10
.p2align 4
label7:
	add r3, r1, #10
	add r6, r0, #7
	add r8, r0, #6
	cmp r2, #1
	add r4, r5, r3
	lsl r7, r6, #1
	add r5, r0, #1
	add r4, r4, r5, lsl #1
	add r5, r0, #3
	add r4, r4, r0, lsl #1
	add r5, r5, r5, lsl #1
	add r5, r4, r5
	add r4, r0, #13
	beq label8
	add r1, r3, r5
	add r0, r0, #9
	add r2, r2, #1
	add r1, r7, r1
	add r0, r0, r0, lsl #1
	add r1, r1, r8, lsl #1
	add r5, r1, r0
	mov r1, r4
	mov r0, r4
	cmp r2, #3
	blt label7
	b label10
.p2align 4
label8:
	add r2, r5, #10
	add r3, r0, #8
	add r2, r6, r2
	add r0, r0, #10
	add r2, r7, r2
	add r0, r0, r0, lsl #1
	add r2, r2, r3, lsl #1
	add r5, r2, r0
	mov r2, #2
	mov r0, r4
	cmp r2, #3
	blt label7
label10:
	mov r0, r5
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
