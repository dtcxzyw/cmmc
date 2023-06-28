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
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	lui $t1, %hi(j)
	lw $t1, %lo(j)($t1)
	xor $t0, $t0, $t1
	sltu $t0, $zero, $t0
	li $t2, 1
	li $t1, 3
	movn $t1, $t2, $t0
	lui $t0, %hi(k)
	sw $t1, %lo(k)($t0)
	jr $ra
	nop
