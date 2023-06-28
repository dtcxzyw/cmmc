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
	mov r0, #21
	bx lr
.globl foo
foo:
	mov r0, #42
	bx lr
