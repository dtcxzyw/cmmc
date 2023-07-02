.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl pass_bool
pass_bool:
	cmp r0, #0
	mov r1, #66
	mov r0, #0
	movne r0, r1
	bx lr
.globl ret_true
ret_true:
	mov r0, #1
	bx lr
