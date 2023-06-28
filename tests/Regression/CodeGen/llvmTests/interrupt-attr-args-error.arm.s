.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl isr_user
isr_user:
	mov r0, #0
	bx lr
