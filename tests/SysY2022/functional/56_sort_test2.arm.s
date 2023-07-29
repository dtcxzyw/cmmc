.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	mov r0, #4
	sub sp, sp, #44
	mov r1, #6
	str r0, [sp, #0]
	mov r4, sp
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #12]
	mov r0, #0
	str r0, [r4, #16]
	mov r0, #1
	str r0, [r4, #20]
	str r1, [r4, #24]
	mov r1, #5
	str r1, [r4, #28]
	mov r1, #7
	str r1, [r4, #32]
	mov r1, #8
	str r1, [r4, #36]
	cmp r0, #10
	bge label25
.p2align 4
label4:
	ldr r1, [r4, r0, lsl #2]
	sub r2, r0, #1
	cmn r2, #1
	bgt label7
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #10
	blt label4
	b label25
.p2align 4
label7:
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	blt label8
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #10
	blt label4
.p2align 4
label25:
	mov r5, #0
	b label10
.p2align 4
label8:
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	bgt label7
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #10
	blt label4
	b label25
.p2align 4
label10:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label10
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, pc }
