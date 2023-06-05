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
	addiu $sp, $sp, -464
	sw $ra, 16($sp)
	addiu $t0, $sp, 28
	jal read
	nop
	move $t1, $v0
	sw $v0, 456($sp)
	sw $t0, 460($sp)
	blez $v0, label24
	nop
	move $t0, $zero
	sw $zero, 24($sp)
	b label2
	nop
label24:
	li $t0, 1
	sw $t0, 432($sp)
	lw $t0, 432($sp)
	lw $t1, 456($sp)
	subu $t2, $t0, $t1
	bgez $t2, label14
	nop
	lw $t0, 432($sp)
	sll $t1, $t0, 2
	lw $t2, 460($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t5, 428($sp)
	sw $t4, 444($sp)
	lw $t0, 428($sp)
	addiu $t1, $t0, 1
	blez $t1, label45
	nop
	b label44
	nop
label2:
	lw $t0, 24($sp)
	sll $t1, $t0, 2
	lw $t2, 460($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 456($sp)
	subu $t6, $t4, $t5
	sw $t4, 448($sp)
	bgez $t6, label33
	nop
	lw $t0, 448($sp)
	move $t1, $t0
	sw $t0, 24($sp)
	b label2
	nop
label33:
	li $t0, 1
	sw $t0, 432($sp)
	lw $t0, 432($sp)
	lw $t1, 456($sp)
	subu $t2, $t0, $t1
	bgez $t2, label14
	nop
	b label36
	nop
label126:
	move $t0, $zero
	sw $zero, 440($sp)
	b label15
	nop
label14:
	lw $t0, 456($sp)
	blez $t0, label17
	nop
	b label126
	nop
label44:
	lw $t0, 428($sp)
	sll $t1, $t0, 2
	lw $t2, 460($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 444($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t6, 452($sp)
	lw $t0, 452($sp)
	beq $t0, $zero, label13
	nop
label12:
	lw $t0, 428($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 460($sp)
	addu $t4, $t3, $t2
	sll $t5, $t0, 2
	addu $t6, $t3, $t5
	lw $t7, 0($t6)
	sw $t7, 0($t4)
	addiu $t8, $t0, -1
	move $t0, $t8
	sw $t8, 428($sp)
	lw $t0, 428($sp)
	addiu $t1, $t0, 1
	blez $t1, label45
	nop
	b label44
	nop
label36:
	lw $t0, 432($sp)
	sll $t1, $t0, 2
	lw $t2, 460($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t5, 428($sp)
	sw $t4, 444($sp)
	lw $t0, 428($sp)
	addiu $t1, $t0, 1
	blez $t1, label45
	nop
	b label44
	nop
label13:
	lw $t0, 428($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 460($sp)
	addu $t4, $t3, $t2
	lw $t5, 444($sp)
	sw $t5, 0($t4)
	lw $t6, 432($sp)
	addiu $t7, $t6, 1
	move $t6, $t7
	sw $t7, 432($sp)
	lw $t0, 432($sp)
	lw $t1, 456($sp)
	subu $t2, $t0, $t1
	bgez $t2, label14
	nop
	b label36
	nop
label45:
	move $t0, $zero
	sw $t0, 452($sp)
	lw $t0, 452($sp)
	beq $t0, $zero, label13
	nop
	b label12
	nop
label15:
	lw $t0, 440($sp)
	sll $t1, $t0, 2
	lw $t2, 460($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 456($sp)
	subu $t7, $t5, $t6
	sw $t5, 436($sp)
	bgez $t7, label17
	nop
	lw $t0, 436($sp)
	move $t1, $t0
	sw $t0, 440($sp)
	b label15
	nop
label17:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 464
	jr $ra
	nop
