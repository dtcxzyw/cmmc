.data
.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	0
.text
.globl main
main:
.p2align 2
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
