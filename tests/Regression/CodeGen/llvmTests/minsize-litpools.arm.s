.arch armv7ve
.data
.data
.p2align 2
.globl var
var:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl big_global
big_global:
	movw r0, #:lower16:var
	movt r0, #:upper16:var
	ldr r0, [r0, #0]
	bx lr
.p2align 4
.globl small_global
small_global:
	movw r0, #:lower16:var
	movt r0, #:upper16:var
	ldr r0, [r0, #0]
	bx lr
