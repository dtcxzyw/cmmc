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
.p2align 2
.globl test1
test1:
	lui $t1, %hi(g0)
	lw $t0, %lo(g0)($t1)
	beq $a0, $zero, label2
	nop
	addiu $t0, $t0, 1
	sw $t0, %lo(g0)($t1)
	lui $t0, %hi(g1)
	lw $t0, %lo(g1)($t0)
	addiu $v0, $t0, 23
label3:
	lui $t0, %hi(g1)
	sw $v0, %lo(g1)($t0)
	jr $ra
	nop
label2:
	addiu $t0, $t0, 11
	sw $t0, %lo(g0)($t1)
	lui $t0, %hi(g1)
	lw $t0, %lo(g1)($t0)
	addiu $v0, $t0, 23
	b label3
	nop
