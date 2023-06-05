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
	move $t0, $a2
	sw $zero, 0($a2)
label3:
	addiu $sp, $sp, 8
	jr $ra
	nop
