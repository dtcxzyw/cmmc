.arch armv7ve
.data
.bss
.p2align 2
.globl gf0
gf0:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_lwc1
test_lwc1:
	movw r0, #:lower16:gf0
	movt r0, #:upper16:gf0
	vldr s0, [r0, #0]
	bx lr
.p2align 4
.globl test_swc1
test_swc1:
	movw r0, #:lower16:gf0
	movt r0, #:upper16:gf0
	vstr s0, [r0, #0]
	bx lr
