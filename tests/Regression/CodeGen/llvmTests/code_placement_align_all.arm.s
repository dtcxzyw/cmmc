.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	cmp r0, #0
	bne label10
	cmp r1, #0
	mov r0, #5
	mov r1, #0
	moveq r0, r1
	b label3
label10:
	add r0, r0, #2
label3:
	bx lr
