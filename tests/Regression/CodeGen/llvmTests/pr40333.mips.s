.data
.text
.globl foo
foo:
.p2align 2
	srlv $t0, $a0, $a1
	andi $v0, $t0, 255
	jr $ra
	nop
