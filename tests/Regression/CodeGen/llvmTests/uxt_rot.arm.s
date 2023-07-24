.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
.p2align 4
	uxtb r0, r0
	bx lr
.globl test10
test10:
.p2align 4
	lsr r2, r0, #24
	orr r0, r2, r0, lsl #8
	movw r2, #65535
	and r0, r0, r2
	add r0, r1, r0
	bx lr
.globl test11
test11:
.p2align 4
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.globl test12
test12:
.p2align 4
	lsr r0, r0, #8
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.globl test13
test13:
.p2align 4
	lsr r0, r0, #16
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.globl test14
test14:
.p2align 4
	movw r2, #65535
	and r0, r0, r2
	add r0, r1, r0
	bx lr
.globl test15
test15:
.p2align 4
	movw r2, #65535
	and r0, r2, r0, lsr #8
	add r0, r1, r0
	bx lr
.globl test16
test16:
.p2align 4
	lsr r2, r0, #24
	orr r0, r2, r0, lsl #8
	movw r2, #65535
	and r0, r0, r2
	add r0, r1, r0
	bx lr
.globl test2
test2:
.p2align 4
	and r1, r1, #255
	add r0, r0, r1
	bx lr
.globl test3
test3:
.p2align 4
	lsr r1, r0, #8
	orr r0, r1, r0, lsl #24
	movw r1, #65535
	and r0, r0, r1
	bx lr
.globl test4
test4:
.p2align 4
	lsr r1, r0, #8
	orr r0, r1, r0, lsl #24
	and r0, r0, #255
	bx lr
.globl test5
test5:
.p2align 4
	uxth r0, r0
	bx lr
.globl test6
test6:
.p2align 4
	movw r2, #65535
	and r1, r1, r2
	add r0, r0, r1
	bx lr
.globl test7
test7:
.p2align 4
	lsr r2, r0, #8
	orr r0, r2, r0, lsl #24
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.globl test8
test8:
.p2align 4
	lsr r2, r0, #16
	orr r0, r2, r0, lsl #16
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.globl test9
test9:
.p2align 4
	lsr r2, r0, #8
	orr r0, r2, r0, lsl #24
	movw r2, #65535
	and r0, r0, r2
	add r0, r1, r0
	bx lr
