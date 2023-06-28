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
	bx lr
.globl test2
test2:
	bx lr
.globl test3
test3:
	mov r0, #0
	bx lr
