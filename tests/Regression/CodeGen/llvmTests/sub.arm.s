.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test1
test1:
	eor r0, r0, #31
	rsb r0, r0, #32
	bx lr
