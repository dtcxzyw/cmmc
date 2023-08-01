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
	bne $t1, $zero, label8
	nop
label2:
	jr $ra
	nop
label8:
	addiu $t1, $t1, 10
	sw $t1, %lo(g)($t0)
	b label2
	nop
