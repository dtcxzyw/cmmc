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
	mov r0, #1
	bx lr
.globl foo
foo:
	mov r0, #0
	bx lr
