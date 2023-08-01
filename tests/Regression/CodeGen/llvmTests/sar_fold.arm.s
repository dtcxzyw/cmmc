.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl shl16sar15
shl16sar15:
	lsl r0, r0, #16
	lsr r0, r0, #15
	bx lr
.p2align 4
.globl shl16sar17
shl16sar17:
	lsl r0, r0, #16
	lsr r0, r0, #17
	bx lr
.p2align 4
.globl shl24sar23
shl24sar23:
	lsl r0, r0, #24
	lsr r0, r0, #23
	bx lr
.p2align 4
.globl shl24sar25
shl24sar25:
	lsl r0, r0, #24
	lsr r0, r0, #25
	bx lr
