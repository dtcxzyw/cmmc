.data
.bss
.p2align 3
.globl g
g:
	.zero	40
.text
.p2align 2
.globl f
f:
	addiu $t0, $a0, 4
	lui $t1, %hi(g)
	addiu $t1, $t1, %lo(g)
	sll $t0, $t0, 2
	addu $t0, $t1, $t0
	sw $a0, 0($t0)
	jr $ra
	nop
