.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl isr1_user
isr1_user:
	mov r0, #0
	bx lr
