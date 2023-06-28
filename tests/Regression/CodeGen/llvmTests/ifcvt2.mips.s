.data
.section .rodata
.bss
.text
.globl t1
t1:
	slti $t0, $a3, 4
	li $t1, 10
	slt $t1, $t1, $a2
	or $t0, $t0, $t1
	addu $v0, $a0, $a1
	beq $t0, $zero, label3
	nop
	addu $t0, $a2, $v0
	subu $v0, $t0, $a3
label3:
	jr $ra
	nop
.globl t2
t2:
	addu $v0, $a0, $a1
	addiu $t0, $a3, -4
	bgez $t0, label27
	nop
	addiu $t0, $a2, -10
	blez $t0, label27
	nop
	addu $t0, $a2, $v0
	subu $v0, $t0, $a3
label27:
	jr $ra
	nop
