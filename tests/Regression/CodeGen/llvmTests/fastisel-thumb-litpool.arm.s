.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_thumb_ldrlit
test_thumb_ldrlit:
	movw r0, #24910
	movt r0, #188
	bx lr
