.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl call
call:
	bx lr
.globl manyargs
manyargs:
	push { r4, r5 }
	ldr r5, [sp, #24]
	ldr r4, [sp, #28]
	sxtb r0, r0
	sxth r1, r1
	add r0, r0, r1
	uxtb r1, r2
	add r0, r0, r1
	uxth r1, r3
	add r0, r0, r1
	uxtb r1, r5
	add r0, r0, r1
	uxth r1, r4
	add r0, r0, r1
	pop { r4, r5 }
	bx lr
