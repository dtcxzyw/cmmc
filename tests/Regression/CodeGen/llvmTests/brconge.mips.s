.data
.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	5
.align 4
.globl result1
result1:
	.4byte	0
.align 4
.globl result2
result2:
	.4byte	1
.text
.p2align 2
.globl test
test:
	lui $t0, %hi(i)
	lw $t2, %lo(i)($t0)
	move $t0, $t2
	lui $t1, %hi(j)
	lw $t3, %lo(j)($t1)
	lui $t1, %hi(result1)
	addiu $t1, $t1, %lo(result1)
	subu $t2, $t2, $t3
	bgez $t2, label3
	nop
	li $t2, 1
	sw $t2, 0($t1)
label3:
	lui $t2, %hi(k)
	lw $t2, %lo(k)($t2)
	subu $t0, $t0, $t2
	bgez $t0, label5
	nop
	li $t0, 1
	sw $t0, 0($t1)
label5:
	jr $ra
	nop
