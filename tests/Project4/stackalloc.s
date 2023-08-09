.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.text
_entry:
    jal main
    nop
    move $a0, $v0
    li $v0, 17
    syscall
read:
    li $v0, 4
    la $a0, _prompt
    syscall
    li $v0, 5
    syscall
    jr $ra
    nop
write:
    li $v0, 1
    syscall
    li $v0, 4
    la $a0, _ret
    syscall
    move $v0, $0
    jr $ra
    nop
.globl main
main:
	# stack usage: CalleeArg[0] Local[400] RegSpill[0] CalleeSaved[4]
	addiu $sp, $sp, -424
	sw $ra, 16($sp)
	addiu $t1, $sp, 24
	jal read
	nop
	move $t0, $v0
	blez $v0, label33
	nop
	move $t2, $t1
	move $t3, $zero
label3:
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t3, $t3, 1
	subu $t4, $t0, $t3
	blez $t4, label33
	nop
	addiu $t2, $t2, 4
	b label3
	nop
label33:
	addiu $t2, $t1, 4
	li $t3, 1
	subu $t4, $t0, $t3
	bgtz $t4, label18
	nop
	b label11
	nop
label26:
	lw $t7, 0($t5)
	slt $t7, $t4, $t7
	beq $t7, $zero, label90
	nop
	lw $t7, 0($t5)
	sw $t7, 4($t5)
	addiu $t6, $t6, -1
	addiu $t5, $t5, -4
	addiu $t7, $t6, 1
	bgtz $t7, label26
	nop
	move $t7, $zero
	sw $t4, 4($t5)
	addiu $t3, $t3, 1
	addiu $t2, $t2, 4
	subu $t4, $t0, $t3
	blez $t4, label11
	nop
label18:
	addiu $t6, $t3, -1
	sll $t4, $t6, 2
	addu $t5, $t1, $t4
	lw $t4, 0($t2)
	addiu $t7, $t6, 1
	bgtz $t7, label26
	nop
	move $t7, $zero
	sw $t4, 4($t5)
	addiu $t3, $t3, 1
	addiu $t2, $t2, 4
	subu $t4, $t0, $t3
	bgtz $t4, label18
	nop
label11:
	blez $t0, label12
	nop
	move $t2, $zero
	b label14
	nop
label17:
	addiu $t1, $t1, 4
label14:
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label17
	nop
label12:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
label90:
	sw $t4, 4($t5)
	addiu $t3, $t3, 1
	addiu $t2, $t2, 4
	subu $t4, $t0, $t3
	bgtz $t4, label18
	nop
	b label11
	nop
