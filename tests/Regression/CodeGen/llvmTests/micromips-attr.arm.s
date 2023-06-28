.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar
bar:
	bx lr
.globl foo
foo:
	bx lr
