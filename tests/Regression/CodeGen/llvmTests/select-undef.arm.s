.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl func
func:
	cmp r0, #10
	mov r0, r1
	movlt r0, #0
	bx lr
