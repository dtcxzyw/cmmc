.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
	lsl r0, r0, #12
	lsr r0, r0, #12
	bx lr
.globl f2
f2:
	lsl r0, r0, #12
	lsr r0, r0, #12
	bx lr
.globl f3
f3:
	lsl r0, r0, #24
	lsr r0, r0, #29
	bx lr
.globl f4
f4:
	lsl r0, r0, #24
	lsr r0, r0, #29
	bx lr
.globl f5
f5:
	lsl r0, r0, #3
	lsr r0, r0, #1
	bx lr
.globl f6
f6:
	lsr r0, r0, #23
	uxtb r0, r0
	bx lr
.globl f7
f7:
	lsr r0, r0, #25
	uxtb r0, r0
	bx lr