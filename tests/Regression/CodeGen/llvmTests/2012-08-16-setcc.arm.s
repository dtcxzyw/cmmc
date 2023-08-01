.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl and_1
and_1:
	uxtb r0, r0
	uxtb r1, r1
	ands r1, r0, r1
	mov r0, #0
	movne r0, r2
	bx lr
.p2align 4
.globl and_2
and_2:
	uxtb r0, r0
	uxtb r1, r1
	ands r1, r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.p2align 4
.globl xor_1
xor_1:
	uxtb r0, r0
	uxtb r1, r1
	eors r1, r0, r1
	mov r0, #0
	movne r0, r2
	bx lr
.p2align 4
.globl xor_2
xor_2:
	uxtb r0, r0
	uxtb r1, r1
	eors r1, r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
