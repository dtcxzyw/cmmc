.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl isr_sw0
isr_sw0:
	mov r0, #0
	bx lr
