.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_ifcvt
test_ifcvt:
	cmp r0, #0
	bne label5
	sub r0, r1, #1
label3:
	bx lr
label5:
	add r0, r1, #1
	b label3
