.data
.bss
.align 4
.globl G
G:
	.zero	4
.text
.globl test1
test1:
	sll $t0, $a0, 2
	lui $t1, %hi(G)
	sw $t0, %lo(G)($t1)
	move $v0, $a0
	jr $ra
	nop
