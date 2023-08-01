.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl compare_i_gt
compare_i_gt:
	cmn r0, #78
	mov r0, #24
	movgt r0, #42
	bx lr
.p2align 4
.globl compare_r_eq
compare_r_eq:
	rsb r1, r1, #0
	cmp r0, r1
	mov r0, #24
	moveq r0, #42
	bx lr
