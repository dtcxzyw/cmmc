.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test5
test5:
	uxth r0, r0
	lsl r0, r0, #2
	asr r0, r0, #8
	uxth r0, r0
	bx lr
