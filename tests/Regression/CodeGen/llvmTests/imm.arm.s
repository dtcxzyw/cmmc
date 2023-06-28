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
	add r0, r0, #-268435441
	bx lr
.globl test2
test2:
	movw r0, #65533
	bx lr
.globl test3
test3:
	movw r1, #65533
	orr r0, r0, r1
	bx lr
