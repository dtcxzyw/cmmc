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
	addu $t1, $t2, $t1
	lw $t1, 0($t1)
	addiu $t3, $t0, -1
	sw $t3, 448($sp)
	sw $t1, 440($sp)
	move $t0, $t3
	addiu $t1, $t3, 1
	blez $t1, label47
	nop
	sll $t1, $t3, 2
	lw $t2, 420($sp)
	addu $t1, $t2, $t1
	lw $t1, 0($t1)
	lw $t3, 440($sp)
	slt $t1, $t3, $t1
	sw $t1, 424($sp)
	move $t0, $t1
	beq $t1, $zero, label13
	nop
	b label12
	nop
label2:
	lw $t0, 452($sp)
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t1, $t2, $t1
	jal read
	nop
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	lw $v0, 444($sp)
	subu $t1, $t0, $v0
	sw $t0, 428($sp)
	bgez $t1, label34
	nop
	sw $t0, 452($sp)
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
label15:
	lw $t0, 436($sp)
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t1, $t2, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	lw $v0, 444($sp)
	subu $t1, $t0, $v0
	sw $t0, 432($sp)
	bgez $t1, label17
	nop
	sw $t0, 436($sp)
	b label15
	nop
label37:
	lw $t0, 16($sp)
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t1, $t2, $t1
	lw $t1, 0($t1)
	addiu $t3, $t0, -1
	sw $t3, 448($sp)
	sw $t1, 440($sp)
	move $t0, $t3
	addiu $t1, $t3, 1
	blez $t1, label47
	nop
	sll $t1, $t3, 2
	lw $t2, 420($sp)
	addu $t1, $t2, $t1
	lw $t1, 0($t1)
	lw $t3, 440($sp)
	slt $t1, $t3, $t1
	sw $t1, 424($sp)
	move $t0, $t1
	beq $t1, $zero, label13
	nop
	b label12
	nop
label47:
	move $t0, $zero
	sw $zero, 424($sp)
label13:
	lw $t0, 448($sp)
	addiu $t0, $t0, 1
	sll $t0, $t0, 2
	lw $t1, 420($sp)
	addu $t0, $t1, $t0
	lw $t2, 440($sp)
	sw $t2, 0($t0)
	lw $t0, 16($sp)
	addiu $t0, $t0, 1
	sw $t0, 16($sp)
	lw $v0, 444($sp)
	subu $t1, $t0, $v0
	bgez $t1, label14
	nop
	b label37
	nop
label12:
	lw $t0, 448($sp)
	addiu $t1, $t0, 1
	sll $t1, $t1, 2
	lw $t2, 420($sp)
	addu $t1, $t2, $t1
	sll $t3, $t0, 2
	addu $t3, $t2, $t3
	lw $t3, 0($t3)
	sw $t3, 0($t1)
	addiu $t0, $t0, -1
	sw $t0, 448($sp)
	addiu $t1, $t0, 1
	blez $t1, label47
	nop
	sll $t1, $t0, 2
	lw $t2, 420($sp)
	addu $t1, $t2, $t1
	lw $t1, 0($t1)
	lw $t3, 440($sp)
	slt $t1, $t3, $t1
	sw $t1, 424($sp)
	move $t0, $t1
	beq $t1, $zero, label13
	nop
	b label12
	nop
label17:
	move $v0, $zero
	lw $ra, 456($sp)
	addiu $sp, $sp, 464
	jr $ra
	nop
