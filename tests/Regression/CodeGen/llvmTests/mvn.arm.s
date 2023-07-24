.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
.p2align 4
	mvn r0, #0
	bx lr
.globl f10
f10:
.p2align 4
	add r0, r0, #2
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl f2
f2:
.p2align 4
	mvn r1, #0
	eor r0, r0, r1
	bx lr
.globl f3
f3:
.p2align 4
	mvn r1, #0
	eor r0, r1, r0, lsl #2
	bx lr
.globl f4
f4:
.p2align 4
	uxtb r1, r1
	mvn r2, #0
	eor r0, r2, r0, lsl r1
	bx lr
.globl f5
f5:
.p2align 4
	mvn r1, #0
	eor r0, r1, r0, lsr #2
	bx lr
.globl f6
f6:
.p2align 4
	uxtb r1, r1
	mvn r2, #0
	eor r0, r2, r0, lsr r1
	bx lr
.globl f7
f7:
.p2align 4
	mvn r1, #0
	eor r0, r1, r0, lsr #2
	bx lr
.globl f8
f8:
.p2align 4
	uxtb r1, r1
	mvn r2, #0
	eor r0, r2, r0, lsr r1
	bx lr
.globl f9
f9:
.p2align 4
	mvn r0, #2
	bx lr
