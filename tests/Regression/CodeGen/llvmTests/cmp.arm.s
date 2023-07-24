.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl f2
f2:
.p2align 4
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl f6
f6:
.p2align 4
	lsl r1, r1, #5
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl f7
f7:
.p2align 4
	lsr r1, r1, #6
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl f8
f8:
.p2align 4
	lsr r1, r1, #7
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl f9
f9:
.p2align 4
	lsl r1, r0, #24
	orr r1, r1, r0, lsr #8
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl swap_cmp_ashr
swap_cmp_ashr:
.p2align 4
	lsr r0, r0, #11
	cmp r0, r1
	mov r0, #0
	movwge r0, #1
	bx lr
.globl swap_cmp_lshr
swap_cmp_lshr:
.p2align 4
	lsr r0, r0, #11
	cmp r1, r0
	mov r0, #0
	movwhi r0, #1
	bx lr
.globl swap_cmp_rotr
swap_cmp_rotr:
.p2align 4
	lsr r2, r0, #11
	orr r0, r2, r0, lsl #21
	cmp r1, r0
	mov r0, #0
	movwls r0, #1
	bx lr
.globl swap_cmp_shl
swap_cmp_shl:
.p2align 4
	lsl r0, r0, #11
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
