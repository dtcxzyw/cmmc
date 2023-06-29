.data
.text
.globl t1
t1:
	addiu $t0, $a0, -1
	sll $t0, $t0, 1
	andi $t0, $t0, 65535
	andi $v0, $t0, 65535
	jr $ra
	nop
.globl t2
t2:
	addiu $t0, $a0, -1
	sll $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
