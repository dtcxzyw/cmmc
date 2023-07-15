.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	mov r2, #0
	mov r1, #2
	movw r4, #1352
	mov r0, #49
	sub sp, sp, #4
	cmp r2, #3
	bge label10
label7:
	add r3, r1, #10
	add r5, r0, #1
	cmp r2, #1
	add r4, r4, r3
	add r4, r4, r5, lsl #1
	add r5, r0, #3
	add r4, r4, r0, lsl #1
	add r5, r5, r5, lsl #1
	add r4, r4, r5
	add r5, r0, #6
	bne label9
	add r2, r0, #17
	add r3, r0, #8
	add r2, r4, r2
	add r2, r2, r3, lsl #1
	add r3, r0, #7
	add r2, r2, r3, lsl #1
	add r3, r0, #10
	add r0, r0, #13
	add r3, r3, r3, lsl #1
	add r4, r2, r3
	mov r2, #2
	cmp r2, #3
	bge label10
	b label7
label9:
	add r1, r0, #7
	add r3, r3, r4
	add r2, r2, #1
	add r1, r3, r1, lsl #1
	add r3, r0, #9
	add r1, r1, r5, lsl #1
	add r3, r3, r3, lsl #1
	add r4, r1, r3
	add r1, r0, #13
	mov r0, r1
	cmp r2, #3
	bge label10
	b label7
label10:
	mov r0, r4
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, pc }
