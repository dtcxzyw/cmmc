.data
.text
.p2align 2
.globl g
g:
	sll $t0, $a1, 1
	addu $t0, $a0, $t0
	mult $a0, $t0
	mflo $t0
	mult $a1, $a1
	mflo $t1
	addu $v0, $t0, $t1
	jr $ra
	nop
