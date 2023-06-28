.data
.text
.globl foo_no_fn_attr
foo_no_fn_attr:
	li $v0, 42
	jr $ra
	nop
