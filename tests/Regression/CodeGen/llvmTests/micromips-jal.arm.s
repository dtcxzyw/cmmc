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
	mov r0, #0
	bx lr
.globl sum
sum:
	add r0, r0, r1
	bx lr
