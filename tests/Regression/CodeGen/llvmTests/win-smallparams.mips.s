.data
.text
.globl call
call:
	jr $ra
	nop
.globl manyargs
manyargs:
	lw $t1, 16($sp)
	lw $t0, 20($sp)
	sll $t2, $a0, 24
	sra $t2, $t2, 24
	sll $t3, $a1, 16
	sra $t4, $t3, 16
	andi $t3, $a2, 255
	andi $t5, $a3, 65535
	andi $t1, $t1, 255
	andi $t0, $t0, 65535
	addu $t2, $t2, $t4
	addu $t2, $t2, $t3
	addu $t2, $t2, $t5
	addu $t1, $t2, $t1
	addu $v0, $t1, $t0
	jr $ra
	nop
