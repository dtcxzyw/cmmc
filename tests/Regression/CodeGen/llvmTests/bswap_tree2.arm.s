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
	and r3, r0, #65280
	and r2, r0, #16711680
	orr r0, r0, #-16777216
	orr r1, r1, r3, lsr #8
	orr r1, r1, r2, lsl #8
	orr r0, r1, r0, lsr #8
	bx lr
.globl test2
test2:
	lsl r2, r0, #8
	and r1, r2, #255
	lsr r0, r0, #8
	and r3, r0, #65280
	and r0, r0, #16711680
	and r2, r2, #-16777216
	orr r1, r1, r3
	orr r0, r1, r0
	orr r0, r0, r2
	bx lr
.globl test3
test3:
	vcvt.s32.f32 s0, s0
	vmov r2, s0
	lsl r0, r2, #8
	and r1, r0, #255
	and r3, r2, #65280
	lsr r2, r2, #8
	and r2, r2, #16711680
	and r0, r0, #-16777216
	orr r1, r3, r1
	orr r1, r1, r2
	orr r0, r1, r0
	bx lr
