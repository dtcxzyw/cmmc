.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test1
test1:
	and r1, r0, #255
	and r2, r0, #65280
	lsl r1, r1, #8
	orr r1, r1, r2, lsr #8
	and r2, r0, #16711680
	orr r0, r0, #-16777216
	orr r1, r1, r2, lsl #8
	orr r0, r1, r0, lsr #8
	bx lr
.p2align 4
.globl test2
test2:
	lsr r1, r0, #8
	lsl r0, r0, #8
	and r2, r1, #65280
	and r0, r0, #-16777216
	and r1, r1, #16711680
	orr r1, r2, r1
	orr r0, r1, r0
	bx lr
.p2align 4
.globl test3
test3:
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	lsl r2, r0, #8
	lsr r1, r0, #8
	and r2, r2, #-16777216
	and r0, r0, #65280
	and r1, r1, #16711680
	orr r1, r1, r2
	orr r0, r1, r0
	bx lr
