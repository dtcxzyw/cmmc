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
.globl foo
foo:
	cmp r0, #0
	bne label2
	movw r0, #:lower16:s
	movt r0, #:upper16:s
	ldrsb r0, [r0, #0]
	sxtb r0, r0
	b label3
label2:
	movw r0, #:lower16:u
	movt r0, #:upper16:u
	ldrsb r1, [r0, #0]
	ldrb r0, [r0, #0]
label3:
	bx lr
