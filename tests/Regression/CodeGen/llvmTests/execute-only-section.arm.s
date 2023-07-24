.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_ExplicitSectionForGlobal
test_ExplicitSectionForGlobal:
.p2align 4
	bx lr
.globl test_SectionForGlobal
test_SectionForGlobal:
.p2align 4
	bx lr
