.arch armv7ve
.data
.data
.p2align 2
.globl x
x:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	vldr s0, [r0, #0]
	vmul.f32 s0, s0, s0
	vstr s0, [r0, #0]
	bx lr
