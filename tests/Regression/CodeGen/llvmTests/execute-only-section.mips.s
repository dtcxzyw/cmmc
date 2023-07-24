.data
.text
.globl test_ExplicitSectionForGlobal
test_ExplicitSectionForGlobal:
.p2align 2
	jr $ra
	nop
.globl test_SectionForGlobal
test_SectionForGlobal:
.p2align 2
	jr $ra
	nop
