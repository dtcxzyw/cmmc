.data
.data
.align 4
.globl x
x:
	.4byte	0
.text
.globl test
test:
.p2align 2
	li $t0, 1
	lui $t1, %hi(x)
	sw $t0, %lo(x)($t1)
	jr $ra
	nop
