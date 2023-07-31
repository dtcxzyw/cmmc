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
	lw $t2, %lo(g0)($t1)
	lui $t1, %hi(g1)
	addiu $t1, $t1, %lo(g1)
	bne $a0, $zero, label14
	nop
	addiu $t2, $t2, 11
	sw $t2, 0($t0)
	lw $t0, 0($t1)
	addiu $v0, $t0, 23
	b label3
	nop
label14:
	addiu $t2, $t2, 1
	sw $t2, 0($t0)
	lw $t0, 0($t1)
	addiu $v0, $t0, 23
label3:
	sw $v0, 0($t1)
	jr $ra
	nop
