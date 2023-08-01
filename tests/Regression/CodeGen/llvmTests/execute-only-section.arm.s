.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_ExplicitSectionForGlobal
test_ExplicitSectionForGlobal:
	bx lr
.p2align 4
.globl test_SectionForGlobal
test_SectionForGlobal:
	bx lr
