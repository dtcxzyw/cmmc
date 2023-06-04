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
	addiu $sp, $sp, -576
	sw $ra, 16($sp)
	addiu $t0, $sp, 152
	jal read
	nop
	move $t1, $v0
	sw $t1, 136($sp)
	sw $t0, 108($sp)
	blez $v0, label24
	nop
	move $t0, $zero
	sw $t0, 556($sp)
	b label2
	nop
label24:
	li $t0, 1
	sw $t0, 128($sp)
	lw $t0, 128($sp)
	lw $t1, 136($sp)
	subu $t2, $t0, $t1
	bgez $t2, label14
	nop
	lw $t0, 128($sp)
	sll $t1, $t0, 2
	lw $t2, 108($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t6, 148($sp)
	sw $t4, 96($sp)
	lw $t0, 148($sp)
	addiu $t1, $t0, 1
	blez $t1, label45
	nop
	b label44
	nop
label2:
	lw $t0, 556($sp)
	sll $t1, $t0, 2
	lw $t2, 108($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 136($sp)
	subu $t6, $t4, $t5
	sw $t4, 104($sp)
	bgez $t6, label33
	nop
	lw $t0, 104($sp)
	move $t1, $t0
	sw $t1, 556($sp)
	b label2
	nop
label33:
	li $t0, 1
	sw $t0, 128($sp)
	lw $t0, 128($sp)
	lw $t1, 136($sp)
	subu $t2, $t0, $t1
	bgez $t2, label14
	nop
	lw $t0, 128($sp)
	sll $t1, $t0, 2
	lw $t2, 108($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t6, 148($sp)
	sw $t4, 96($sp)
	lw $t0, 148($sp)
	addiu $t1, $t0, 1
	blez $t1, label45
	nop
label44:
	lw $t0, 148($sp)
	sll $t1, $t0, 2
	lw $t2, 108($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 96($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t7, 120($sp)
	lw $t0, 120($sp)
	beq $t0, $zero, label13
	nop
label12:
	lw $t0, 148($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 108($sp)
	addu $t4, $t3, $t2
	sll $t5, $t0, 2
	addu $t6, $t3, $t5
	lw $t7, 0($t6)
	sw $t7, 0($t4)
	addiu $t8, $t0, -1
	move $t0, $t8
	sw $t0, 148($sp)
	lw $t0, 148($sp)
	addiu $t1, $t0, 1
	blez $t1, label45
	nop
	b label44
	nop
label45:
	move $t0, $zero
	sw $t0, 120($sp)
	lw $t0, 120($sp)
	beq $t0, $zero, label13
	nop
	b label12
	nop
label13:
	lw $t0, 148($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 108($sp)
	addu $t4, $t3, $t2
	lw $t5, 96($sp)
	sw $t5, 0($t4)
	lw $t6, 128($sp)
	addiu $t7, $t6, 1
	move $t6, $t7
	sw $t6, 128($sp)
	lw $t0, 128($sp)
	lw $t1, 136($sp)
	subu $t2, $t0, $t1
	bgez $t2, label14
	nop
	lw $t0, 128($sp)
	sll $t1, $t0, 2
	lw $t2, 108($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	move $t6, $t5
	sw $t6, 148($sp)
	sw $t4, 96($sp)
	lw $t0, 148($sp)
	addiu $t1, $t0, 1
	blez $t1, label45
	nop
	b label44
	nop
label127:
	move $t0, $zero
	sw $t0, 88($sp)
	b label15
	nop
label14:
	lw $t0, 136($sp)
	blez $t0, label66
	nop
	b label127
	nop
label15:
	lw $t0, 88($sp)
	sll $t1, $t0, 2
	lw $t2, 108($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 136($sp)
	subu $t7, $t5, $t6
	sw $t5, 80($sp)
	bgez $t7, label66
	nop
	lw $t0, 80($sp)
	move $t1, $t0
	sw $t1, 88($sp)
	b label15
	nop
label66:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 576
	jr $ra
	nop
