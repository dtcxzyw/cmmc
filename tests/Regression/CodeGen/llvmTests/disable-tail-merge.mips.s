.data
.data
.align 4
.globl g0
g0:
	.4byte	0
.align 4
.globl g1
g1:
	.4byte	0
.text
.globl test1
test1:
.p2align 2
	lui $t1, %hi(g0)
	addiu $t0, $t1, %lo(g0)
	lw $t1, %lo(g0)($t1)
	beq $a0, $zero, label2
	nop
	addiu $t1, $t1, 1
	sw $t1, 0($t0)
	lui $t0, %hi(g1)
	lw $t0, %lo(g1)($t0)
	addiu $v0, $t0, 23
	b label3
	nop
label2:
	addiu $t1, $t1, 11
	sw $t1, 0($t0)
	lui $t0, %hi(g1)
	lw $t0, %lo(g1)($t0)
	addiu $v0, $t0, 23
label3:
	lui $t0, %hi(g1)
	sw $v0, %lo(g1)($t0)
	jr $ra
	nop
