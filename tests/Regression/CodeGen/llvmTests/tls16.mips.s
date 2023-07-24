.data
.data
.align 4
.globl a
a:
	.4byte	4
.text
.globl foo
foo:
.p2align 2
	lui $t0, %hi(a)
	lw $v0, %lo(a)($t0)
	jr $ra
	nop
