.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	mov r1, #5
	mla r0, r1, r0, r1
	bx lr
