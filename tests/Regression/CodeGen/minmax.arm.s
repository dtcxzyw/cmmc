.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl smin_lt
smin_lt:
	cmp r0, r1
	movlt r1, r0
	mov r0, r1
	bx lr
.globl smax_lt
smax_lt:
	cmp r0, r1
	movlt r0, r1
	bx lr
.globl smin_le
smin_le:
	cmp r0, r1
	movle r1, r0
	mov r0, r1
	bx lr
.globl smax_le
smax_le:
	cmp r0, r1
	movle r0, r1
	bx lr
.globl smin_gt
smin_gt:
	cmp r0, r1
	movgt r0, r1
	bx lr
.globl smax_gt
smax_gt:
	cmp r0, r1
	movgt r1, r0
	mov r0, r1
	bx lr
.globl smin_ge
smin_ge:
	cmp r0, r1
	movge r0, r1
	bx lr
.globl smax_ge
smax_ge:
	cmp r0, r1
	movge r1, r0
	mov r0, r1
	bx lr
