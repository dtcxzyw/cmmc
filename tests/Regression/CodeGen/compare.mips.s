.data
.text
.globl seqz
seqz:
	addiu $sp, $sp, -8
	sltiu $t0, $a0, 1
	move $t1, $t0
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl seqi
seqi:
	addiu $sp, $sp, -16
	li $t0, 1
	xor $t1, $a0, $t0
	sltiu $t2, $t1, 1
	move $t3, $t2
	move $v0, $t3
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl seq
seq:
	addiu $sp, $sp, -16
	xor $t0, $a0, $a1
	sltiu $t1, $t0, 1
	move $t2, $t1
	move $v0, $t2
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl snei
snei:
	addiu $sp, $sp, -24
	li $t0, 1
	xor $t1, $a0, $t0
	sltiu $t2, $t1, 1
	xori $t3, $t2, 1
	move $t4, $t3
	move $v0, $t4
	addiu $sp, $sp, 24
	jr $ra
	nop
.globl sne
sne:
	addiu $sp, $sp, -16
	xor $t0, $a0, $a1
	sltiu $t1, $t0, 1
	xori $t2, $t1, 1
	move $t3, $t2
	move $v0, $t3
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl snez
snez:
	addiu $sp, $sp, -16
	sltiu $t0, $a0, 1
	xori $t1, $t0, 1
	move $t2, $t1
	move $v0, $t2
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl slti
slti:
	addiu $sp, $sp, -16
	li $t0, 1
	slt $t1, $a0, $t0
	move $t2, $t1
	move $v0, $t2
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl slt
slt:
	addiu $sp, $sp, -8
	slt $t0, $a0, $a1
	move $t1, $t0
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl sgti
sgti:
	addiu $sp, $sp, -16
	li $t0, 1
	slt $t1, $t0, $a0
	move $t2, $t1
	move $v0, $t2
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl sgt
sgt:
	addiu $sp, $sp, -8
	slt $t0, $a1, $a0
	move $t1, $t0
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl slei
slei:
	addiu $sp, $sp, -16
	li $t0, 1
	slt $t1, $t0, $a0
	xori $t2, $t1, 1
	move $t3, $t2
	move $v0, $t3
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl sle
sle:
	addiu $sp, $sp, -16
	slt $t0, $a1, $a0
	xori $t1, $t0, 1
	move $t2, $t1
	move $v0, $t2
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl sgei
sgei:
	addiu $sp, $sp, -16
	li $t0, 1
	slt $t1, $a0, $t0
	xori $t2, $t1, 1
	move $t3, $t2
	move $v0, $t3
	addiu $sp, $sp, 16
	jr $ra
	nop
.globl sge
sge:
	addiu $sp, $sp, -16
	slt $t0, $a0, $a1
	xori $t1, $t0, 1
	move $t2, $t1
	move $v0, $t2
	addiu $sp, $sp, 16
	jr $ra
	nop
