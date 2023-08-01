.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl pass_bool
pass_bool:
	cmp r0, #0
	mov r0, #0
	movne r0, #66
	bx lr
.p2align 4
.globl ret_true
ret_true:
	mov r0, #1
	bx lr
