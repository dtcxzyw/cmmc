.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl pass_fast_bool
pass_fast_bool:
	cmp r0, #0
	mov r1, #66
	mov r0, #0
	movne r0, r1
	bx lr
.p2align 4
.globl pass_vector_bool
pass_vector_bool:
	cmp r0, #0
	mov r1, #66
	mov r0, #0
	movne r0, r1
	bx lr
.p2align 4
.globl ret_true
ret_true:
	mov r0, #1
	bx lr
