.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl pass_fast_bool
pass_fast_bool:
.p2align 4
	cmp r0, #0
	mov r1, #66
	mov r0, #0
	movne r0, r1
	bx lr
.globl pass_vector_bool
pass_vector_bool:
.p2align 4
	cmp r0, #0
	mov r1, #66
	mov r0, #0
	movne r0, r1
	bx lr
.globl ret_true
ret_true:
.p2align 4
	mov r0, #1
	bx lr
