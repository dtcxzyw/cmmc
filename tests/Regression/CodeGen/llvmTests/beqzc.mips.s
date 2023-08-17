.data
.data
.p2align 2
.globl i
i:
	.4byte	0
.p2align 2
.globl j
j:
	.4byte	0
.text
.p2align 2
.globl main
main:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	sltiu $t1, $t0, 1
	li $t2, 10
	li $t0, 55
	movn $t0, $t2, $t1
	lui $t1, %hi(j)
	sw $t0, %lo(j)($t1)
	move $v0, $zero
	jr $ra
	nop
