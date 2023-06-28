.data
.section .rodata
.bss
.align 4
.globl g
g:
	.zero	4
.text
.globl foo
foo:
	lui $t1, %hi(g)
	addiu $t0, $t1, %lo(g)
	lw $t1, %lo(g)($t1)
	sltu $t2, $zero, $t1
	bne $t2, $zero, label9
	nop
	b label2
	nop
label9:
	addiu $t1, $t1, 10
	sw $t1, 0($t0)
label2:
	jr $ra
	nop
