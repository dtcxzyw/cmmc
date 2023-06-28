.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	cmp r0, #0
	beq label9
	mov r0, #1
	b label2
label9:
	cmp r1, #0
	mov r1, #2
	mov r0, #0
	movne r0, r1
label2:
	bx lr
