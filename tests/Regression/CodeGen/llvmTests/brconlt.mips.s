.data
.data
.p2align 2
.globl i
i:
	.4byte	5
.p2align 2
.globl j
j:
	.4byte	10
.p2align 2
.globl k
k:
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
	lui $t1, %hi(i)
	lw $t1, %lo(i)($t1)
	subu $t0, $t0, $t1
	bgez $t0, label13
	nop
label2:
	jr $ra
	nop
label13:
	li $t0, 1
	lui $t1, %hi(result)
	sw $t0, %lo(result)($t1)
	b label2
	nop
