.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
	and r0, r0, r1
	bx lr
.globl f2
f2:
	orr r0, r0, r1
	bx lr
.globl f3
f3:
	eor r0, r0, r1
	bx lr
.globl f4
f4:
	lsl r0, r0, r1
	bx lr
.globl f5
f5:
	lsr r0, r0, r1
	bx lr
