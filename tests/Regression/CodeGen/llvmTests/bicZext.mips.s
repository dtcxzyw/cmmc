.data
.text
.globl foo16
foo16:
.p2align 2
	andi $t0, $a0, 65535
	li $t1, -4
	and $t0, $t0, $t1
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl foo32
foo32:
.p2align 2
	li $t0, -4
	and $v0, $a0, $t0
	jr $ra
	nop
