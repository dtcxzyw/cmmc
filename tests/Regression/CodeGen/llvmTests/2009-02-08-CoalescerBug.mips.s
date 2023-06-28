.data
.section .rodata
.bss
.text
.globl foo
foo:
	andi $t0, $a0, 255
	sltiu $t0, $t0, 1
	move $t1, $t0
	andi $t2, $t0, 65535
	beq $t0, $zero, label14
	nop
	div $zero, $t0, $zero
	mflo $t0
	andi $t0, $t0, 65535
	andi $t0, $t0, 255
	sll $t0, $t0, 24
	sra $v0, $t0, 24
	b label3
	nop
label14:
	andi $t0, $t2, 255
	sll $t0, $t0, 24
	sra $v0, $t0, 24
label3:
	jr $ra
	nop
