.arch armv7ve
.data
.bss
.align 4
.globl g
g:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
.p2align 4
	movw r0, #:lower16:g
	movt r0, #:upper16:g
	ldr r1, [r0, #0]
	cmp r1, #0
	bne label8
label2:
	bx lr
label8:
	add r1, r1, #10
	str r1, [r0, #0]
	b label2
