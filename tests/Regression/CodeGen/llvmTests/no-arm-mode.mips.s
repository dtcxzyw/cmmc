.data
.text
.p2align 2
.globl foo
foo:
	jr $ra
	nop
.p2align 2
.globl no_thumb_mode_feature
no_thumb_mode_feature:
	jr $ra
	nop
