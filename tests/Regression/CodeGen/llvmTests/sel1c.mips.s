.data
.data
.align 4
.globl i
i:
	.4byte	1
.align 4
.globl j
j:
	.4byte	2
.align 4
.globl k
k:
	.4byte	0
.text
.globl t
t:
.p2align 2
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
