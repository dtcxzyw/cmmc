.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	cmp r1, r0
	bls label9
	add r0, r1, #2
	b label3
label9:
	mov r0, #1
label3:
	bx lr
