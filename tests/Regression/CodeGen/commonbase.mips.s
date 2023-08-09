.data
.text
.p2align 2
.globl commonbase
commonbase:
	li $t0, 2000
	mult $a1, $t0
	mflo $t0
	addu $t0, $a0, $t0
	sll $t1, $a2, 2
	addu $t0, $t0, $t1
	lw $t1, -2004($t0)
	lw $t2, -2000($t0)
	addu $t1, $t1, $t2
	lw $t2, -1996($t0)
	addu $t1, $t1, $t2
	lw $t2, -4($t0)
	addu $t1, $t1, $t2
	lw $t2, 0($t0)
	addu $t1, $t1, $t2
	lw $t2, 4($t0)
	addu $t1, $t1, $t2
	lw $t2, 1996($t0)
	addu $t1, $t1, $t2
	lw $t2, 2000($t0)
	addu $t1, $t1, $t2
	lw $t0, 2004($t0)
	addu $v0, $t1, $t0
	jr $ra
	nop
