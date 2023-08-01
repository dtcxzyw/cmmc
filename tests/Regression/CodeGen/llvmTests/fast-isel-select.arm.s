.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl fastisel_select
fastisel_select:
	subs r1, r0, r1
	mov r0, #0
	movw r1, #56279
	movt r1, #18378
	movne r0, r1
	bx lr
