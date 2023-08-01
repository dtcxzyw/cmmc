.arch armv7ve
.data
.bss
.align 1
.globl u
u:
	.zero	1
.align 1
.globl s
s:
	.zero	1
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	cmp r0, #0
	beq label8
	movw r0, #:lower16:u
	movt r0, #:upper16:u
	ldrsb r1, [r0, #0]
	ldrb r0, [r0, #0]
	b label3
label8:
	movw r0, #:lower16:s
	movt r0, #:upper16:s
	ldrsb r0, [r0, #0]
	sxtb r0, r0
label3:
	bx lr
