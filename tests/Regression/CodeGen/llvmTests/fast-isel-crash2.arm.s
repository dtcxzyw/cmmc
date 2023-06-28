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
	uxtb r0, r0
	sxtb r0, r0
	bx lr
