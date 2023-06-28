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
	uxtb r0, r0
	bx lr
.globl test2
test2:
	uxtb r0, r0
	bx lr
.globl test3
test3:
	uxth r0, r0
	bx lr
.globl test4
test4:
	uxth r0, r0
	bx lr
.globl test5
test5:
	bx lr
