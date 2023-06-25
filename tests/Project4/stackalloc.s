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
	addiu $sp, $sp, -424
	sw $ra, 416($sp)
	addiu $t4, $sp, 16
	jal read
	nop
	move $t1, $v0
	blez $v0, label24
	nop
	move $t0, $zero
	sll $t2, $zero, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	b label199
	nop
label24:
	li $t2, 1
	subu $t0, $t2, $t1
	bgez $t0, label14
	nop
	sll $t0, $t2, 2
	addu $t0, $t4, $t0
	lw $t5, 0($t0)
	addiu $t0, $t2, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
label202:
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	b label205
	nop
label47:
	move $t3, $zero
	addiu $t0, $t0, 1
	sll $t0, $t0, 2
	addu $t0, $t4, $t0
	sw $t5, 0($t0)
	addiu $t2, $t2, 1
	subu $t0, $t2, $t1
	bgez $t0, label14
	nop
	sll $t0, $t2, 2
	addu $t0, $t4, $t0
	lw $t5, 0($t0)
	addiu $t0, $t2, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
label208:
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	b label202
	nop
label14:
	blez $t1, label17
	nop
	move $t0, $zero
	sll $t2, $zero, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	b label209
	nop
label205:
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	b label202
	nop
label13:
	addiu $t0, $t0, 1
	sll $t0, $t0, 2
	addu $t0, $t4, $t0
	sw $t5, 0($t0)
	addiu $t2, $t2, 1
	subu $t0, $t2, $t1
	bgez $t0, label14
	nop
	sll $t0, $t2, 2
	addu $t0, $t4, $t0
	lw $t5, 0($t0)
	addiu $t0, $t2, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	b label208
	nop
label34:
	li $t2, 1
	subu $t0, $t2, $t1
	bgez $t0, label14
	nop
	sll $t0, $t2, 2
	addu $t0, $t4, $t0
	lw $t5, 0($t0)
	addiu $t0, $t2, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	sll $t3, $t0, 2
	addu $t3, $t4, $t3
	lw $t3, 0($t3)
	slt $t3, $t5, $t3
	beq $t3, $zero, label13
	nop
	addiu $t3, $t0, 1
	sll $t3, $t3, 2
	addu $t3, $t4, $t3
	sll $t6, $t0, 2
	addu $t6, $t4, $t6
	lw $t6, 0($t6)
	sw $t6, 0($t3)
	addiu $t0, $t0, -1
	addiu $t3, $t0, 1
	blez $t3, label47
	nop
	b label202
	nop
label199:
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label34
	nop
	b label199
	nop
label209:
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
label210:
	sll $t2, $t0, 2
	addu $t2, $t4, $t2
	lw $a0, 0($t2)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t2, $t0, $t1
	bgez $t2, label17
	nop
	b label210
	nop
label17:
	move $v0, $zero
	lw $ra, 416($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
