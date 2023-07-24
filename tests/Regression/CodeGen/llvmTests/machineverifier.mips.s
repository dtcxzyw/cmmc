.data
.bss
.align 4
.globl g
g:
	.zero	4
.text
.globl foo
foo:
.p2align 2
	lui $t1, %hi(g)
	addiu $t0, $t1, %lo(g)
	lw $t1, %lo(g)($t1)
	beq $t1, $zero, label2
	nop
	addiu $t1, $t1, 10
	sw $t1, 0($t0)
label2:
	jr $ra
	nop
