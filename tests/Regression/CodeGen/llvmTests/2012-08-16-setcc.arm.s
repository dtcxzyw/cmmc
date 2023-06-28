.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl and_1
and_1:
	uxtb r1, r1
	uxtb r0, r0
	and r0, r1, r0
	cmp r0, #0
	mov r0, #0
	movne r0, r2
	bx lr
.globl and_2
and_2:
	uxtb r1, r1
	uxtb r0, r0
	and r0, r1, r0
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl xor_1
xor_1:
	uxtb r1, r1
	uxtb r0, r0
	eor r0, r1, r0
	cmp r0, #0
	mov r0, #0
	movne r0, r2
	bx lr
.globl xor_2
xor_2:
	uxtb r1, r1
	uxtb r0, r0
	eor r0, r1, r0
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
