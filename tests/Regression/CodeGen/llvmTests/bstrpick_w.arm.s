.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl and0xf30_lshr4
and0xf30_lshr4:
.p2align 4
	and r0, r0, #3888
	lsr r0, r0, #4
	bx lr
.globl and0xff0_lshr3
and0xff0_lshr3:
.p2align 4
	and r0, r0, #4080
	lsr r0, r0, #3
	bx lr
.globl and0xff0_lshr4
and0xff0_lshr4:
.p2align 4
	and r0, r0, #4080
	lsr r0, r0, #4
	bx lr
.globl and4080_ashr5
and4080_ashr5:
.p2align 4
	and r0, r0, #4080
	lsr r0, r0, #5
	bx lr
.globl and4095
and4095:
.p2align 4
	movw r1, #4095
	and r0, r0, r1
	bx lr
.globl and8191
and8191:
.p2align 4
	movw r1, #8191
	and r0, r0, r1
	bx lr
.globl ashr20_and511
ashr20_and511:
.p2align 4
	movw r1, #511
	and r0, r1, r0, lsr #20
	bx lr
.globl lshr10_and255
lshr10_and255:
.p2align 4
	lsr r0, r0, #10
	and r0, r0, #255
	bx lr
.globl zext_i16_to_i32
zext_i16_to_i32:
.p2align 4
	uxth r0, r0
	bx lr
