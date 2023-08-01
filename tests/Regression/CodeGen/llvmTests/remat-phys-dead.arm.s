.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_remat
test_remat:
	mov r0, #0
	bx lr
.p2align 4
.globl test_remat32
test_remat32:
	mov r0, #0
	bx lr
