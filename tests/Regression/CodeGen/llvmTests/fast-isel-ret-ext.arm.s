.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	uxtb r0, r0
	bx lr
.p2align 4
.globl test2
test2:
	uxtb r0, r0
	bx lr
.p2align 4
.globl test3
test3:
	uxth r0, r0
	bx lr
.p2align 4
.globl test4
test4:
	uxth r0, r0
	bx lr
.p2align 4
.globl test5
test5:
	bx lr
