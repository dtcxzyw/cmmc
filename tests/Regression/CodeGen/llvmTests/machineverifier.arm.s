.arch armv7ve
.data
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
	movw r1, #:lower16:g
	movt r1, #:upper16:g
	mov r0, r1
	ldr r1, [r1, #0]
	cmp r1, #0
	bne label9
	b label2
label9:
	add r1, r1, #10
	str r1, [r0, #0]
label2:
	bx lr
