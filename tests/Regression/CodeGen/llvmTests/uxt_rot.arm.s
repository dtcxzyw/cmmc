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
.globl test10
test10:
	lsr r2, r0, #24
	orr r0, r2, r0, lsl #8
	movw r2, #65535
	and r0, r0, r2
	add r0, r1, r0
	bx lr
.p2align 4
.globl test11
test11:
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.p2align 4
.globl test12
test12:
	lsr r0, r0, #8
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.p2align 4
.globl test13
test13:
	lsr r0, r0, #16
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.p2align 4
.globl test14
test14:
	movw r2, #65535
	and r0, r0, r2
	add r0, r1, r0
	bx lr
.p2align 4
.globl test15
test15:
	movw r2, #65535
	and r0, r2, r0, lsr #8
	add r0, r1, r0
	bx lr
.p2align 4
.globl test16
test16:
	lsr r2, r0, #24
	orr r0, r2, r0, lsl #8
	movw r2, #65535
	and r0, r0, r2
	add r0, r1, r0
	bx lr
.p2align 4
.globl test2
test2:
	and r1, r1, #255
	add r0, r0, r1
	bx lr
.p2align 4
.globl test3
test3:
	lsr r1, r0, #8
	orr r0, r1, r0, lsl #24
	movw r1, #65535
	and r0, r0, r1
	bx lr
.p2align 4
.globl test4
test4:
	lsr r1, r0, #8
	orr r0, r1, r0, lsl #24
	and r0, r0, #255
	bx lr
.p2align 4
.globl test5
test5:
	uxth r0, r0
	bx lr
.p2align 4
.globl test6
test6:
	movw r2, #65535
	and r1, r1, r2
	add r0, r0, r1
	bx lr
.p2align 4
.globl test7
test7:
	lsr r2, r0, #8
	orr r0, r2, r0, lsl #24
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.p2align 4
.globl test8
test8:
	lsr r2, r0, #16
	orr r0, r2, r0, lsl #16
	and r0, r0, #255
	add r0, r1, r0
	bx lr
.p2align 4
.globl test9
test9:
	lsr r2, r0, #8
	orr r0, r2, r0, lsl #24
	movw r2, #65535
	and r0, r0, r2
	add r0, r1, r0
	bx lr
