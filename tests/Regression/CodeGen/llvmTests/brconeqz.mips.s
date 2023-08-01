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
.p2align 2
.globl test
test:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	bne $t0, $zero, label8
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
