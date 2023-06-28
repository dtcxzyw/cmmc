.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl h
h:
	movw r0, #39322
	movt r0, #16473
	vmov s0, r0
	bx lr
