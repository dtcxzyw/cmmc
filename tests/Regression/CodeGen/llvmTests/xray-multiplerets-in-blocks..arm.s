.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl bswap_ror_commuted
bswap_ror_commuted:
	lsr r1, r0, #8
	movw r2, #255
	movt r2, #255
	and r1, r1, r2
	lsl r0, r0, #8
	movw r2, #65280
	movt r2, #65280
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
.globl different_constant
different_constant:
	lsl r1, r0, #8
	and r1, r1, #42
	lsr r0, r0, #8
	movw r2, #255
	movt r2, #255
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
.globl different_op
different_op:
	lsl r1, r0, #8
	movw r2, #256
	movt r2, #255
	add r1, r1, r2
	lsr r0, r0, #8
	movw r2, #255
	movt r2, #255
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
.globl different_shift_amount
different_shift_amount:
	lsl r1, r0, #9
	movw r2, #65280
	movt r2, #65280
	and r1, r1, r2
	lsr r0, r0, #8
	movw r2, #255
	movt r2, #255
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
.globl different_vars
different_vars:
	lsl r0, r0, #8
	movw r2, #65280
	movt r2, #65280
	and r0, r0, r2
	lsr r1, r1, #8
	movw r2, #255
	movt r2, #255
	and r1, r1, r2
	orr r0, r0, r1
	bx lr
.globl extra_maskop_uses2
extra_maskop_uses2:
	lsl r1, r0, #8
	movw r2, #65280
	movt r2, #65280
	and r1, r1, r2
	lsr r0, r0, #8
	movw r2, #255
	movt r2, #255
	and r0, r0, r2
	orr r2, r1, r0
	mul r0, r1, r0
	mul r0, r0, r2
	bx lr
.globl f2
f2:
	lsl r1, r0, #8
	lsr r0, r0, #8
	and r2, r1, #65280
	and r3, r0, #255
	and r1, r1, #-16777216
	and r0, r0, #16711680
	orr r2, r2, r3
	orr r1, r2, r1
	orr r0, r1, r0
	bx lr
.globl not_rev16
not_rev16:
	lsr r1, r0, #8
	movw r2, #65280
	movt r2, #65280
	and r1, r1, r2
	lsl r0, r0, #8
	movw r2, #255
	movt r2, #255
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
.globl rev16
rev16:
	lsl r1, r0, #8
	movw r2, #65280
	movt r2, #65280
	and r1, r1, r2
	lsr r0, r0, #8
	movw r2, #255
	movt r2, #255
	and r0, r0, r2
	orr r0, r1, r0
	bx lr
