.data
.data
.p2align 2
.globl i
i:
	.4byte	1
.p2align 2
.globl j
j:
	.4byte	2
.p2align 2
.globl k
k:
	.4byte	0
.text
.p2align 2
.globl t
t:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	lui $t1, %hi(j)
	lw $t1, %lo(j)($t1)
	xor $t0, $t0, $t1
	sltiu $t1, $t0, 1
	li $t2, 1
	li $t0, 3
	movn $t0, $t2, $t1
	lui $t1, %hi(k)
	sw $t0, %lo(k)($t1)
	jr $ra
	nop
