.data
.section .rodata
.bss
.text
.globl foo
foo:
	beq $a0, $zero, label9
	nop
	li $v0, 1
	b label2
	nop
label9:
	sltu $t0, $zero, $a1
	subu $t0, $zero, $t0
	andi $v0, $t0, 2
label2:
	jr $ra
	nop
