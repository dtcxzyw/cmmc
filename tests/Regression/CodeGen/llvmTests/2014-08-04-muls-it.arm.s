.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl function
function:
	cmp r0, r1
	bne label3
	mul r0, r0, r0
label3:
	bx lr
