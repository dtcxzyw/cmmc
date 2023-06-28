.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl call
call:
	bx lr
.globl manyargs
manyargs:
	push { r4, r5, r6 }
	ldr r4, [sp, #28]
	ldr r5, [sp, #32]
	sxtb r0, r0
	sxth r1, r1
	uxtb r6, r2
	uxth r2, r3
	uxtb r3, r4
	uxth r4, r5
	add r0, r0, r1
	add r0, r0, r6
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	pop { r4, r5, r6 }
	bx lr
