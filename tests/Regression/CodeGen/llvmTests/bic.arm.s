.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
	mvn r2, #0
	eor r1, r1, r2
	and r0, r0, r1
	bx lr
.globl f2
f2:
	mvn r2, #0
	eor r1, r1, r2
	and r0, r0, r1
	bx lr
.globl f3
f3:
	bic r0, r0, #255
	bx lr
