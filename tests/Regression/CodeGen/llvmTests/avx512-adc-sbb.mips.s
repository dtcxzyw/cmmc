.data
.text
.globl PR32316
PR32316:
	andi $t0, $a0, 255
	sltiu $t0, $t0, 1
	sltu $t0, $a1, $t0
	andi $t0, $t0, 255
	andi $t1, $a2, 255
	sltu $t1, $zero, $t1
	andi $t1, $t1, 255
	andi $t0, $t0, 255
	andi $t1, $t1, 255
	addu $t0, $t0, $t1
	andi $v0, $t0, 255
	jr $ra
	nop
