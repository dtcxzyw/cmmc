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
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	xori $t0, $t0, 10
	sltu $t0, $zero, $t0
	bne $t0, $zero, label9
	nop
	b label2
	nop
label9:
	li $t0, 1
	lui $t1, %hi(result)
	sw $t0, %lo(result)($t1)
label2:
	jr $ra
	nop
