.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl ashr
ashr:
	mvn r0, #0
	bx lr
.p2align 4
.globl ashr_reg
ashr_reg:
	lsr r0, r0, r1
	bx lr
.p2align 4
.globl lshr
lshr:
	mvn r0, #0
	bx lr
.p2align 4
.globl lshr_reg
lshr_reg:
	lsr r0, r0, r1
	bx lr
.p2align 4
.globl shl
shl:
	mvn r0, #3
	bx lr
.p2align 4
.globl shl_reg
shl_reg:
	lsl r0, r0, r1
	bx lr
