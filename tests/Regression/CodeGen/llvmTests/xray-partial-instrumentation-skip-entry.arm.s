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
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl foo
foo:
	mov r0, #0
	bx lr
