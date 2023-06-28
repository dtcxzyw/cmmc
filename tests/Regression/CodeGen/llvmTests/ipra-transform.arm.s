.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl bar1
bar1:
	bx lr
.globl bar2
bar2:
	bx lr
.globl foo
foo:
	bx lr
