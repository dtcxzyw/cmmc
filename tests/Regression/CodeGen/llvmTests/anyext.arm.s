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
	uxth r0, r0
	uxth r0, r0
	uxth r1, r1
	sdiv r0, r0, r1
	and r0, r0, #1
	bx lr
.globl foo
foo:
	uxtb r0, r0
	uxtb r0, r0
	uxtb r1, r1
	sdiv r0, r0, r1
	and r0, r0, #1
	bx lr
