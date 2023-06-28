.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl dummy
dummy:
	mla r0, r0, r1, r2
	bx lr
