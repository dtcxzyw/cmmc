.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	and r1, r0, #255
	lsl r1, r1, #8
	and r2, r0, #65280
	orr r1, r1, r2, lsr #8
	and r2, r0, #16711680
	orr r1, r1, r2, lsl #8
	orr r0, r0, #-16777216
	orr r0, r1, r0, lsr #8
	bx lr
.globl test2
test2:
	lsl r1, r0, #8
	and r2, r1, #255
	lsr r0, r0, #8
	and r3, r0, #65280
	orr r2, r2, r3
	and r0, r0, #16711680
	orr r0, r2, r0
	and r1, r1, #-16777216
	orr r0, r0, r1
	bx lr
.globl test3
test3:
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	lsl r1, r0, #8
	and r2, r1, #255
	lsr r3, r0, #8
	and r3, r3, #16711680
	orr r2, r2, r3
	and r1, r1, #-16777216
	orr r1, r2, r1
	and r0, r0, #65280
	orr r0, r1, r0
	bx lr
