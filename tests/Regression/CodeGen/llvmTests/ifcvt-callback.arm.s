.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_ifcvt
test_ifcvt:
	cmp r0, #0
	bne label9
	sub r0, r1, #1
	b label3
label9:
	add r0, r1, #1
label3:
	bx lr
