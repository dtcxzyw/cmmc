.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test0
test0:
.p2align 4
	sxtb r0, r0
	bx lr
.globl test1
test1:
.p2align 4
	lsr r1, r0, #8
	orr r0, r1, r0, lsl #24
	uxtb r0, r0
	bx lr
.globl test2
test2:
.p2align 4
	lsr r2, r0, #8
	orr r0, r2, r0, lsl #24
	uxtb r0, r0
	sxtb r0, r0
	add r0, r1, r0
	bx lr
.globl test3
test3:
.p2align 4
	lsr r2, r0, #16
	orr r0, r2, r0, lsl #16
	uxtb r0, r0
	sxtb r0, r0
	add r0, r1, r0
	bx lr
.globl test4
test4:
.p2align 4
	lsr r2, r0, #8
	orr r0, r2, r0, lsl #24
	uxth r0, r0
	sxth r0, r0
	add r0, r1, r0
	bx lr
.globl test5
test5:
.p2align 4
	lsr r2, r0, #24
	orr r0, r2, r0, lsl #8
	uxth r0, r0
	sxth r0, r0
	add r0, r1, r0
	bx lr
.globl test6
test6:
.p2align 4
	sxtb r0, r0
	add r0, r1, r0
	bx lr
.globl test7
test7:
.p2align 4
	lsl r0, r0, #24
	add r0, r1, r0, lsr #24
	bx lr
.globl test8
test8:
.p2align 4
	sxth r0, r0
	add r0, r1, r0
	bx lr
.globl test9
test9:
.p2align 4
	lsl r0, r0, #16
	add r0, r1, r0, lsr #16
	bx lr
