.data
.text
.globl blt
blt:
	addiu $sp, $sp, -8
	move $t0, $a2
	subu $t1, $a0, $a1
	sw $a2, 0($sp)
	bgez $t1, label3
	nop
	lw $t0, 0($sp)
	sw $zero, 0($t0)
label3:
	addiu $sp, $sp, 8
	jr $ra
	nop
