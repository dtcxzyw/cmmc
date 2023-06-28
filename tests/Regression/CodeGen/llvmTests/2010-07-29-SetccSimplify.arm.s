.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl extend2bit_v2
extend2bit_v2:
	uxtb r0, r0
	sxtb r0, r0
	cmp r0, #3
	mov r0, #0
	movweq r0, #1
	bx lr
