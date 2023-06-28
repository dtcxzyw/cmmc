.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	uxtb r0, r0
	bx lr
.globl test10
test10:
	lsr r2, r0, #24
	orr r0, r2, r0, lsl #8
	uxth r0, r0
	uxth r0, r0
	add r0, r1, r0
	bx lr
.globl test11
test11:
	and r0, r0, #255
	add r0, r0, r1
	bx lr
.globl test12
test12:
	lsr r0, r0, #8
	and r0, r0, #255
	add r0, r0, r1
	bx lr
.globl test13
test13:
	lsr r0, r0, #16
	and r0, r0, #255
	add r0, r0, r1
	bx lr
.globl test14
test14:
	movw r2, #65535
	and r0, r0, r2
	add r0, r0, r1
	bx lr
.globl test15
test15:
	lsr r0, r0, #8
	movw r2, #65535
	and r0, r0, r2
	add r0, r0, r1
	bx lr
.globl test16
test16:
	lsr r2, r0, #24
	orr r0, r2, r0, lsl #8
	movw r2, #65535
	and r0, r0, r2
	add r0, r0, r1
	bx lr
.globl test2
test2:
	uxtb r1, r1
	uxtb r1, r1
	add r0, r0, r1
	bx lr
.globl test3
test3:
	lsr r1, r0, #8
	orr r0, r1, r0, lsl #24
	uxth r0, r0
	uxth r0, r0
	bx lr
.globl test4
test4:
	lsr r1, r0, #8
	orr r0, r1, r0, lsl #24
	uxtb r0, r0
	uxtb r0, r0
	bx lr
.globl test5
test5:
	uxth r0, r0
	bx lr
.globl test6
test6:
	uxth r1, r1
	uxth r1, r1
	add r0, r0, r1
	bx lr
.globl test7
test7:
	lsr r2, r0, #8
	orr r0, r2, r0, lsl #24
	uxtb r0, r0
	uxtb r0, r0
	add r0, r1, r0
	bx lr
.globl test8
test8:
	lsr r2, r0, #16
	orr r0, r2, r0, lsl #16
	uxtb r0, r0
	uxtb r0, r0
	add r0, r1, r0
	bx lr
.globl test9
test9:
	lsr r2, r0, #8
	orr r0, r2, r0, lsl #24
	uxth r0, r0
	uxth r0, r0
	add r0, r1, r0
	bx lr
