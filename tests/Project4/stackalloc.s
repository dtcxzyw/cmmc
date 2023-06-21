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
	sw $v0, 444($sp)
	sw $t0, 420($sp)
	blez $v0, label24
	nop
	move $t0, $zero
	sw $zero, 452($sp)
	b label2
	nop
label24:
	li $t0, 1
	sw $t0, 16($sp)
	lw $v0, 444($sp)
	subu $t1, $t0, $v0
	bgez $t1, label14
	nop
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t5, 448($sp)
	sw $t4, 440($sp)
	move $t0, $t5
	addiu $t1, $t5, 1
	blez $t1, label47
	nop
	b label46
	nop
label2:
	lw $t0, 452($sp)
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 444($sp)
	subu $t6, $t4, $t5
	sw $t4, 428($sp)
	bgez $t6, label34
	nop
	move $t0, $t4
	move $t1, $t4
	sw $t4, 452($sp)
	b label2
	nop
label34:
	li $t0, 1
	sw $t0, 16($sp)
	lw $v0, 444($sp)
	subu $t1, $t0, $v0
	bgez $t1, label14
	nop
	b label37
	nop
label131:
	move $t0, $zero
	sw $zero, 436($sp)
	b label15
	nop
label14:
	lw $v0, 444($sp)
	blez $v0, label17
	nop
	b label131
	nop
label37:
	lw $t0, 16($sp)
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t5, 448($sp)
	sw $t4, 440($sp)
	move $t0, $t5
	addiu $t1, $t5, 1
	blez $t1, label47
	nop
	b label46
	nop
label47:
	move $t0, $zero
	sw $zero, 424($sp)
label13:
	lw $t0, 448($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 420($sp)
	addu $t4, $t3, $t2
	lw $t5, 440($sp)
	sw $t5, 0($t4)
	lw $t6, 16($sp)
	addiu $t7, $t6, 1
	move $t6, $t7
	sw $t7, 16($sp)
	move $t0, $t7
	lw $v0, 444($sp)
	subu $t1, $t7, $v0
	bgez $t1, label14
	nop
	b label37
	nop
label46:
	lw $t0, 448($sp)
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 440($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t6, 424($sp)
	move $t0, $t6
	beq $t6, $zero, label13
	nop
	lw $t0, 448($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 420($sp)
	addu $t4, $t3, $t2
	sll $t5, $t0, 2
	addu $t6, $t3, $t5
	lw $t7, 0($t6)
	sw $t7, 0($t4)
	addiu $t8, $t0, -1
	move $t0, $t8
	sw $t8, 448($sp)
	addiu $t1, $t8, 1
	blez $t1, label47
	nop
	b label46
	nop
label15:
	lw $t0, 436($sp)
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t3, $t2, $t1
	lw $a0, 0($t3)
	jal write
	nop
	addiu $t4, $t0, 1
	lw $v0, 444($sp)
	subu $t5, $t4, $v0
	sw $t4, 432($sp)
	bgez $t5, label17
	nop
	move $t0, $t4
	move $t1, $t4
	sw $t4, 436($sp)
	b label15
	nop
label17:
	move $v0, $zero
	lw $ra, 456($sp)
	addiu $sp, $sp, 464
	jr $ra
	nop
