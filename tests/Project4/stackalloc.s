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
	addiu $t1, $sp, 16
	jal read
	nop
	move $t0, $v0
	blez $v0, label22
	nop
	move $t2, $zero
	b label2
	nop
label22:
	li $t2, 1
	subu $t3, $t0, $t2
	blez $t3, label12
	nop
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	lw $t3, 0($t3)
	addiu $t4, $t2, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	b label135
	nop
label83:
	move $t2, $zero
	b label13
	nop
label12:
	blez $t0, label15
	nop
	b label83
	nop
label2:
	jal read
	nop
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	sw $v0, 0($t3)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	blez $t3, label31
	nop
	b label2
	nop
label31:
	li $t2, 1
	subu $t3, $t0, $t2
	blez $t3, label12
	nop
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	lw $t3, 0($t3)
	addiu $t4, $t2, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	b label142
	nop
label13:
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	lw $a0, 0($t3)
	jal write
	nop
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	blez $t3, label15
	nop
	b label13
	nop
label11:
	addiu $t4, $t4, 1
	sll $t4, $t4, 2
	addu $t4, $t1, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	blez $t3, label12
	nop
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	lw $t3, 0($t3)
	addiu $t4, $t2, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	b label143
	nop
label142:
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
label143:
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bgez $t6, label11
	nop
label135:
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	blez $t5, label11
	nop
	b label143
	nop
label15:
	move $v0, $zero
	lw $ra, 416($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
