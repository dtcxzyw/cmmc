.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo1
foo1:
	mov r0, #14
	bx lr
