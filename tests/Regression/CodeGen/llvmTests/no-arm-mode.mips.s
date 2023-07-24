.data
.text
.globl foo
foo:
.p2align 2
	jr $ra
	nop
.globl no_thumb_mode_feature
no_thumb_mode_feature:
.p2align 2
	jr $ra
	nop
