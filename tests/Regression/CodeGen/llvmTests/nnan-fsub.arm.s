.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	mov r0, #0
	vmov s0, r0
	bx lr
