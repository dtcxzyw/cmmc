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
	addiu $sp, $sp, -608
	sw $ra, 16($sp)
	addiu $t0, $sp, 200
	jal read
	nop
	move $t1, $v0
	sw $t1, 76($sp)
	sw $t0, 72($sp)
	blez $v0, label4
	nop
	move $t0, $zero
	sw $t0, 80($sp)
label2:
	lw $t0, 80($sp)
	sll $t1, $t0, 2
	lw $t2, 72($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 76($sp)
	subu $t6, $t4, $t5
	sw $t4, 84($sp)
	bgez $t6, label4
	nop
	lw $t0, 84($sp)
	move $t1, $t0
	sw $t1, 80($sp)
	b label2
	nop
label4:
	lw $t0, 76($sp)
	addiu $t1, $t0, -1
	blez $t1, label17
	nop
	b label39
	nop
label48:
	move $t0, $zero
	sw $t0, 184($sp)
	lw $t0, 184($sp)
	beq $t0, $zero, label55
	nop
	b label169
	nop
label55:
	lw $t0, 64($sp)
	move $t1, $t0
	sw $t1, 100($sp)
	b label15
	nop
label73:
	lw $t0, 68($sp)
	move $t1, $t0
	sw $t1, 100($sp)
label15:
	lw $t0, 100($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 72($sp)
	addu $t4, $t3, $t2
	lw $t5, 116($sp)
	sw $t5, 0($t4)
	lw $t6, 108($sp)
	addiu $t7, $t6, 1
	lw $t8, 76($sp)
	subu $t9, $t7, $t8
	sw $t7, 156($sp)
	bgez $t9, label17
	nop
	lw $t0, 156($sp)
	move $t1, $t0
	sw $t1, 108($sp)
	lw $t0, 108($sp)
	sll $t1, $t0, 2
	lw $t2, 72($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	addiu $t6, $t5, 1
	sw $t5, 64($sp)
	sw $t4, 116($sp)
	blez $t6, label48
	nop
	b label47
	nop
label17:
	lw $t0, 76($sp)
	blez $t0, label84
	nop
	b label160
	nop
label10:
	lw $t0, 176($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 72($sp)
	addu $t4, $t3, $t2
	sll $t5, $t0, 2
	addu $t6, $t3, $t5
	lw $t7, 0($t6)
	sw $t7, 0($t4)
	addiu $t8, $t0, -1
	addiu $t9, $t8, 1
	sw $t8, 68($sp)
	blez $t9, label66
	nop
	lw $t0, 68($sp)
	sll $t1, $t0, 2
	lw $t2, 72($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 116($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t7, 92($sp)
	lw $t0, 92($sp)
	beq $t0, $zero, label73
	nop
label168:
	lw $t0, 68($sp)
	move $t1, $t0
	sw $t1, 176($sp)
	b label10
	nop
label66:
	move $t0, $zero
	sw $t0, 92($sp)
	lw $t0, 92($sp)
	beq $t0, $zero, label73
	nop
	b label168
	nop
label169:
	lw $t0, 64($sp)
	move $t1, $t0
	sw $t1, 176($sp)
	b label10
	nop
label160:
	move $t0, $zero
	sw $t0, 144($sp)
label18:
	lw $t0, 144($sp)
	sll $t1, $t0, 2
	lw $t2, 72($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 76($sp)
	subu $t7, $t5, $t6
	sw $t5, 196($sp)
	bgez $t7, label84
	nop
	lw $t0, 196($sp)
	move $t1, $t0
	sw $t1, 144($sp)
	b label18
	nop
label39:
	li $t0, 1
	sw $t0, 108($sp)
	lw $t0, 108($sp)
	sll $t1, $t0, 2
	lw $t2, 72($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	addiu $t6, $t5, 1
	sw $t5, 64($sp)
	sw $t4, 116($sp)
	blez $t6, label48
	nop
	lw $t0, 64($sp)
	sll $t1, $t0, 2
	lw $t2, 72($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 116($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t7, 184($sp)
	lw $t0, 184($sp)
	beq $t0, $zero, label55
	nop
	b label169
	nop
label47:
	lw $t0, 64($sp)
	sll $t1, $t0, 2
	lw $t2, 72($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 116($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t7, 184($sp)
	lw $t0, 184($sp)
	beq $t0, $zero, label55
	nop
	b label169
	nop
label84:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 608
	jr $ra
	nop
