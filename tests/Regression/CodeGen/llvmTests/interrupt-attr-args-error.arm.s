.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl isr_user
isr_user:
	mov r0, #0
	bx lr
