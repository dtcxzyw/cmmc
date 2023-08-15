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
.p2align 2
.globl main
main:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	beq $t0, $zero, label2
	nop
label3:
	move $v0, $zero
	jr $ra
	nop
label2:
	li $t0, 10
	lui $t1, %hi(j)
	sw $t0, %lo(j)($t1)
	b label3
	nop
