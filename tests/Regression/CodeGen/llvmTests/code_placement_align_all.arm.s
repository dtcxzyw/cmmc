.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	cmp r0, #0
	bne label5
	mov r2, #0
	cmp r1, #0
	mov r0, #5
	moveq r0, r2
label3:
	bx lr
label5:
	add r0, r0, #2
	b label3
