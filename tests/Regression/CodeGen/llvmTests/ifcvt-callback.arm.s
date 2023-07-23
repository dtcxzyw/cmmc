.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_ifcvt
test_ifcvt:
	cmp r0, #0
	beq label2
	add r0, r1, #1
	b label3
label2:
	sub r0, r1, #1
label3:
	bx lr
