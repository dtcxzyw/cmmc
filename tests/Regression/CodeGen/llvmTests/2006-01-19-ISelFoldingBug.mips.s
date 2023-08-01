.data
.bss
.align 4
.globl A
A:
	.zero	4
.text
.p2align 2
.globl test5
test5:
	andi $t0, $a1, 255
	li $t1, 32
	subu $t1, $t1, $t0
	srlv $t2, $a0, $t1
	lui $t1, %hi(A)
	lw $t3, %lo(A)($t1)
	sllv $t0, $t3, $t0
	or $v0, $t2, $t0
	sw $v0, %lo(A)($t1)
	jr $ra
	nop
