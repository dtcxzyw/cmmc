.data
.data
.align 4
.globl j
j:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.text
.globl test
test:
.p2align 2
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
