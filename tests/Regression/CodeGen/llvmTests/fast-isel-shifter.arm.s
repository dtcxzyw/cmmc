.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl ashr
ashr:
.p2align 4
	mvn r0, #0
	bx lr
.globl ashr_reg
ashr_reg:
.p2align 4
	lsr r0, r0, r1
	bx lr
.globl lshr
lshr:
.p2align 4
	mvn r0, #0
	bx lr
.globl lshr_reg
lshr_reg:
.p2align 4
	lsr r0, r0, r1
	bx lr
.globl shl
shl:
.p2align 4
	mvn r0, #3
	bx lr
.globl shl_reg
shl_reg:
.p2align 4
	lsl r0, r0, r1
	bx lr
