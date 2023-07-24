.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl func
func:
.p2align 4
	cmp r0, #10
	mov r2, #0
	mov r0, r1
	movlt r0, r2
	bx lr
