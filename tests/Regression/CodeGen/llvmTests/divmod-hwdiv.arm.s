.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_i32_srem
test_i32_srem:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.p2align 4
.globl test_i32_urem
test_i32_urem:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
