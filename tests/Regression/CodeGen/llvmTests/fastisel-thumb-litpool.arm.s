.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_thumb_ldrlit
test_thumb_ldrlit:
	movw r0, #24910
	movt r0, #188
	bx lr
