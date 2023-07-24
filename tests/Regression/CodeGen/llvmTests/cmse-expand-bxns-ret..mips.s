.data
.data
.align 4
.globl counter
counter:
	.4byte	0
.text
.globl foo
foo:
.p2align 2
	li $t0, 5
	lui $t1, %hi(counter)
	sw $t0, %lo(counter)($t1)
	jr $ra
	nop
