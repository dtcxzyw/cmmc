.data
.align 4
.globl var32
var32:
	.4byte	0
.text
.globl select_and
select_and:
	lw $t1, 16($sp)
	lw $v0, 20($sp)
	sltu $t0, $a0, $a1
	xori $t0, $t0, 1
	bne $t0, $zero, label15
	nop
	sltu $t0, $a2, $a3
	b label3
	nop
label15:
	move $t0, $zero
label3:
	movn $v0, $t1, $t0
	jr $ra
	nop
.globl select_noopt
select_noopt:
	lw $v0, 16($sp)
	sltu $t0, $a0, $a1
	sltu $t1, $a1, $a2
	or $t0, $t0, $t1
	lui $t1, %hi(var32)
	sw $t0, %lo(var32)($t1)
	sltu $t0, $zero, $t0
	movn $v0, $a3, $t0
	jr $ra
	nop
.globl select_or
select_or:
	lw $t0, 16($sp)
	lw $v0, 20($sp)
	sltu $t1, $a0, $a1
	sltu $t2, $a2, $a3
	or $t1, $t1, $t2
	sltu $t1, $zero, $t1
	movn $v0, $t0, $t1
	jr $ra
	nop
