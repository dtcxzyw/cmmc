.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	add r0, r0, #1
	bx lr
.globl test2
test2:
	add r0, r0, #4
	bx lr
