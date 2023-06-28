.data
.section .rodata
.bss
.text
.globl rot0
rot0:
	li $t0, 32
	subu $t0, $t0, $a1
	srlv $t0, $a0, $t0
	sllv $t1, $a0, $a1
	or $v0, $t0, $t1
	jr $ra
	nop
.globl rot1
rot1:
	sll $t0, $a0, 10
	srl $t1, $a0, 22
	or $v0, $t0, $t1
	jr $ra
	nop
.globl rot2
rot2:
	li $t0, 32
	subu $t0, $t0, $a1
	sllv $t0, $a0, $t0
	srlv $t1, $a0, $a1
	or $v0, $t0, $t1
	jr $ra
	nop
.globl rot3
rot3:
	srl $t0, $a0, 10
	sll $t1, $a0, 22
	or $v0, $t0, $t1
	jr $ra
	nop
