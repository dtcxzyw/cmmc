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
.globl test
test:
	lui $t0, %hi(i)
	lw $t1, %lo(i)($t0)
	move $t0, $t1
	lui $t2, %hi(j)
	lw $t2, %lo(j)($t2)
	subu $t1, $t1, $t2
	bgez $t1, label3
	nop
	li $t1, 1
	lui $t2, %hi(result1)
	sw $t1, %lo(result1)($t2)
label3:
	lui $t1, %hi(k)
	lw $t1, %lo(k)($t1)
	subu $t0, $t0, $t1
	bgez $t0, label5
	nop
	li $t0, 1
	lui $t1, %hi(result1)
	sw $t0, %lo(result1)($t1)
label5:
	jr $ra
	nop
