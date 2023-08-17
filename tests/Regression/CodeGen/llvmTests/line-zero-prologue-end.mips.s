.data
.data
.p2align 2
.globl x
x:
	.4byte	0
.text
.p2align 2
.globl test
test:
	li $t0, 1
	lui $t1, %hi(x)
	sw $t0, %lo(x)($t1)
	jr $ra
	nop
