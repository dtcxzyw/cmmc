.data
.section .rodata
.bss
.text
.globl test1
test1:
	sll $t0, $a0, 3
	addiu $v0, $t0, 7
	jr $ra
	nop
.globl test2
test2:
	addiu $t0, $a0, -4
	blez $t0, label13
	nop
	addiu $t0, $a0, -5
	srl $t0, $t0, 2
	li $t1, -4
	mult $t0, $t1
	mflo $t0
	addiu $t1, $a0, -4
	addu $v0, $t1, $t0
	b label7
	nop
label13:
	move $v0, $a0
label7:
	jr $ra
	nop
