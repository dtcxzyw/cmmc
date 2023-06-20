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
	sw $ra, 456($sp)
	addiu $t0, $sp, 20
	jal read
	nop
	move $t1, $v0
	sw $v0, 444($sp)
	sw $t0, 428($sp)
	blez $v0, label24
	nop
	move $t0, $zero
	sw $zero, 16($sp)
	b label2
	nop
label24:
	li $t0, 1
	sw $t0, 448($sp)
	lw $t1, 444($sp)
	subu $t2, $t0, $t1
	bgez $t2, label14
	nop
	sll $t1, $t0, 2
	lw $t2, 428($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t5, 452($sp)
	sw $t4, 432($sp)
	move $t0, $t5
	addiu $t1, $t5, 1
	blez $t1, label45
	nop
	b label44
	nop
label2:
	lw $t0, 16($sp)
	sll $t1, $t0, 2
	lw $t2, 428($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 444($sp)
	subu $t6, $t4, $t5
	sw $t4, 436($sp)
	bgez $t6, label33
	nop
	move $t0, $t4
	move $t1, $t4
	sw $t4, 16($sp)
	b label2
	nop
label33:
	li $t0, 1
	sw $t0, 448($sp)
	lw $t1, 444($sp)
	subu $t2, $t0, $t1
	bgez $t2, label14
	nop
	b label36
	nop
label123:
	move $t0, $zero
	sw $zero, 420($sp)
	b label15
	nop
label14:
	lw $t0, 444($sp)
	blez $t0, label17
	nop
	b label123
	nop
label36:
	lw $t0, 448($sp)
	sll $t1, $t0, 2
	lw $t2, 428($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t5, 452($sp)
	sw $t4, 432($sp)
	move $t0, $t5
	addiu $t1, $t5, 1
	blez $t1, label45
	nop
	b label44
	nop
label45:
	move $t0, $zero
	sw $zero, 440($sp)
label13:
	lw $t0, 452($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 428($sp)
	addu $t4, $t3, $t2
	lw $t5, 432($sp)
	sw $t5, 0($t4)
	lw $t6, 448($sp)
	addiu $t7, $t6, 1
	move $t6, $t7
	sw $t7, 448($sp)
	move $t0, $t7
	lw $t1, 444($sp)
	subu $t2, $t7, $t1
	bgez $t2, label14
	nop
	b label36
	nop
label44:
	lw $t0, 452($sp)
	sll $t1, $t0, 2
	lw $t2, 428($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 432($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t6, 440($sp)
	move $t0, $t6
	beq $t6, $zero, label13
	nop
	lw $t0, 452($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 428($sp)
	addu $t4, $t3, $t2
	sll $t5, $t0, 2
	addu $t6, $t3, $t5
	lw $t7, 0($t6)
	sw $t7, 0($t4)
	addiu $t8, $t0, -1
	move $t0, $t8
	sw $t8, 452($sp)
	addiu $t1, $t8, 1
	blez $t1, label45
	nop
	b label44
	nop
label15:
	lw $t0, 420($sp)
	sll $t1, $t0, 2
	lw $t2, 428($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 444($sp)
	subu $t7, $t5, $t6
	sw $t5, 424($sp)
	bgez $t7, label17
	nop
	move $t0, $t5
	move $t1, $t5
	sw $t5, 420($sp)
	b label15
	nop
label17:
	move $v0, $zero
	lw $ra, 456($sp)
	addiu $sp, $sp, 464
	jr $ra
	nop
