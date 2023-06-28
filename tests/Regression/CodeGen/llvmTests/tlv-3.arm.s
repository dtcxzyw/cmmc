.arch armv7ve
.data
.align 1
.globl foo
foo:
	.byte	1
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	mov r0, #0
	bx lr
