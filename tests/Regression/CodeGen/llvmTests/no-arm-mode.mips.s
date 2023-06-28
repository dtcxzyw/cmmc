.data
.section .rodata
.bss
.text
.globl foo
foo:
	jr $ra
	nop
.globl no_thumb_mode_feature
no_thumb_mode_feature:
	jr $ra
	nop
