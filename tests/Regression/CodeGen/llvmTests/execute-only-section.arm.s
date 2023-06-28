.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_ExplicitSectionForGlobal
test_ExplicitSectionForGlobal:
	bx lr
.globl test_SectionForGlobal
test_SectionForGlobal:
	bx lr
