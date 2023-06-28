.data
.section .rodata
.bss
.text
.globl fn
fn:
	xori $t0, $a1, 1
	sltiu $t0, $t0, 1
	sltu $t0, $zero, $t0
	subu $t0, $zero, $t0
	andi $t0, $t0, 2
	xori $t1, $a0, 1
	sltu $t1, $zero, $t1
	sllv $v0, $t1, $t0
	jr $ra
	nop
