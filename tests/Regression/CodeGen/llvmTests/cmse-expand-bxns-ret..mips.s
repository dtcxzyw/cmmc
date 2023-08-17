.data
.data
.p2align 2
.globl counter
counter:
	.4byte	0
.text
.p2align 2
.globl foo
foo:
	li $t0, 5
	lui $t1, %hi(counter)
	sw $t0, %lo(counter)($t1)
	jr $ra
	nop
