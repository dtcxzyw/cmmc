.data
.data
.p2align 2
.globl j
j:
	.4byte	5
.p2align 2
.globl result
result:
	.4byte	0
.text
.p2align 2
.globl test
test:
	lui $t0, %hi(j)
	lw $t0, %lo(j)($t0)
	li $t1, 5
	bne $t0, $t1, label3
	nop
	li $t0, 1
	lui $t1, %hi(result)
	sw $t0, %lo(result)($t1)
label3:
	jr $ra
	nop
