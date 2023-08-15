.data
.bss
.align 4
.globl g
g:
	.zero	4
.text
.p2align 2
.globl foo
foo:
	lui $t0, %hi(g)
	lw $t1, %lo(g)($t0)
	beq $t1, $zero, label2
	nop
	addiu $t1, $t1, 10
	sw $t1, %lo(g)($t0)
label2:
	jr $ra
	nop
