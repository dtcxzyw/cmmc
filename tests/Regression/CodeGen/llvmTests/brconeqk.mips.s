.data
.data
.p2align 2
.globl i
i:
	.4byte	5
.p2align 2
.globl result
result:
	.4byte	0
.text
.p2align 2
.globl test
test:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	li $t1, 10
	bne $t0, $t1, label8
	nop
label2:
	jr $ra
	nop
label8:
	li $t0, 1
	lui $t1, %hi(result)
	sw $t0, %lo(result)($t1)
	b label2
	nop
