.data
.text
.p2align 2
.globl test1
test1:
	sll $t0, $a0, 3
	addiu $v0, $t0, 7
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	addiu $t0, $a0, -4
	blez $t0, label12
	nop
	addiu $t0, $a0, -5
	srl $t0, $t0, 2
	sll $t0, $t0, 2
	subu $t0, $zero, $t0
	addiu $t1, $a0, -4
	addu $v0, $t0, $t1
	b label7
	nop
label12:
	move $v0, $a0
label7:
	jr $ra
	nop
