.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl isr_sw0
isr_sw0:
.p2align 4
	mov r0, #0
	bx lr
