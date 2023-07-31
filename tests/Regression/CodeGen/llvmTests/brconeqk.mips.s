.data
.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.text
.globl test
test:
.p2align 2
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
