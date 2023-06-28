.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
	mvn r0, #0
	bx lr
.globl f10
f10:
	mvn r1, #1
	cmp r1, r0
	mov r0, #0
	movweq r0, #1
	bx lr
.globl f2
f2:
	mvn r1, #0
	eor r0, r0, r1
	bx lr
.globl f3
f3:
	mvn r1, #0
	eor r0, r1, r0, lsl #2
	bx lr
.globl f4
f4:
	uxtb r1, r1
	mvn r2, #0
	eor r0, r2, r0, lsl r1
	bx lr
.globl f5
f5:
	mvn r1, #0
	eor r0, r1, r0, lsr #2
	bx lr
.globl f6
f6:
	uxtb r1, r1
	mvn r2, #0
	eor r0, r2, r0, lsr r1
	bx lr
.globl f7
f7:
	mvn r1, #0
	eor r0, r1, r0, lsr #2
	bx lr
.globl f8
f8:
	uxtb r1, r1
	mvn r2, #0
	eor r0, r2, r0, lsr r1
	bx lr
.globl f9
f9:
	mvn r0, #2
	bx lr
