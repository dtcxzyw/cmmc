.data
.section .rodata
.bss
.text
.globl foo
foo:
	sltu $t0, $zero, $a0
	bne $t0, $zero, label10
	nop
	sltiu $t0, $a1, 1
	li $v0, 5
	movn $v0, $zero, $t0
	b label3
	nop
label10:
	addiu $v0, $a0, 2
label3:
	jr $ra
	nop
