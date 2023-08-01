.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl bar
bar:
	movw r2, #65535
	uxth r1, r1
	and r0, r0, r2
	sdiv r0, r0, r1
	and r0, r0, #1
	bx lr
.p2align 4
.globl foo
foo:
	and r0, r0, #255
	uxtb r1, r1
	sdiv r0, r0, r1
	and r0, r0, #1
	bx lr
