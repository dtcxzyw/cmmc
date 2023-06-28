.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	uxtb r0, r0
	cmp r0, #0
	mov r1, #0
	movweq r1, #1
	mov r0, r1
	uxth r2, r1
	cmp r1, #0
	beq label14
	mov r1, #0
	sdiv r0, r0, r1
	uxth r0, r0
	uxtb r0, r0
	sxtb r0, r0
	b label3
label14:
	uxtb r0, r2
	sxtb r0, r0
label3:
	bx lr
