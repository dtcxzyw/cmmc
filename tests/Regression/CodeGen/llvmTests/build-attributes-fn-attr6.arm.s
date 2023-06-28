.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo1
foo1:
	mov r0, #42
	bx lr
.globl foo2
foo2:
	mov r0, #42
	bx lr
