.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl tailcallee
tailcallee:
	bx lr
.globl tailcaller
tailcaller:
	bx lr
