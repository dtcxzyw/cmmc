.data
.text
.globl bar
bar:
.p2align 2
	jr $ra
	nop
.globl foo
foo:
.p2align 2
	jr $ra
	nop
.globl one_inst
one_inst:
.p2align 2
	jr $ra
	nop
