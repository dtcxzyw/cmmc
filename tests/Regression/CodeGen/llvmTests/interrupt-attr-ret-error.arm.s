.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl isr1_user
isr1_user:
.p2align 4
	mov r0, #0
	bx lr
