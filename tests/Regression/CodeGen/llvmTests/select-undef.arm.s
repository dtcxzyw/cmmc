.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl func
func:
	cmp r0, #10
	mov r2, #0
	mov r0, r1
	movlt r0, r2
	bx lr
