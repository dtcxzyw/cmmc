.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
.p2align 4
	cmp r0, #0
	bne label9
	mov r2, #0
	cmp r1, #0
	mov r0, #5
	moveq r0, r2
	b label3
label9:
	add r0, r0, #2
label3:
	bx lr
