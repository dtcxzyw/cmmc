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
merge:
	addiu $sp, $sp, -80
	sw $ra, 0($sp)
	sw $s0, 68($sp)
	sw $s1, 60($sp)
	sw $s2, 52($sp)
	sw $s3, 44($sp)
	sw $s4, 36($sp)
	sw $s5, 28($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	addiu $t4, $a2, 1
	subu $t5, $t4, $a3
	sw $a3, 76($sp)
	sw $a2, 72($sp)
	sw $a1, 64($sp)
	sw $a0, 56($sp)
	bgez $t5, label21
	nop
	move $t0, $a2
	move $t1, $a3
	addu $t2, $a2, $a3
	li $t3, 2
	div $zero, $t2, $t3
	mflo $t4
	move $t5, $a0
	move $t6, $a1
	move $a3, $t4
	sw $t4, 20($sp)
	jal merge
	nop
	lw $t7, 56($sp)
	move $a0, $t7
	lw $t8, 64($sp)
	move $a1, $t8
	lw $t9, 20($sp)
	move $a2, $t9
	lw $s0, 76($sp)
	move $a3, $s0
	jal merge
	nop
	lw $s1, 72($sp)
	move $s2, $s1
	lw $s3, 20($sp)
	move $s4, $s3
	move $s5, $s1
	sw $s3, 24($sp)
	sw $s1, 8($sp)
	sw $s1, 16($sp)
	move $t0, $s1
	lw $t1, 76($sp)
	beq $s1, $t1, label37
	nop
	lw $t1, 20($sp)
	beq $s1, $t1, label41
	nop
	move $t0, $s3
	lw $t1, 76($sp)
	xor $t2, $s3, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t4, 48($sp)
	move $t0, $t4
	beq $t4, $zero, label17
	nop
	b label11
	nop
label37:
	lw $t0, 72($sp)
	move $t1, $t0
	sw $t0, 12($sp)
	lw $t1, 76($sp)
	beq $t0, $t1, label21
	nop
label20:
	lw $t0, 12($sp)
	sll $t1, $t0, 2
	lw $t2, 56($sp)
	addu $t3, $t2, $t1
	sll $t4, $t0, 2
	lw $t5, 64($sp)
	addu $t6, $t5, $t4
	lw $t7, 0($t6)
	sw $t7, 0($t3)
	addiu $t8, $t0, 1
	move $t0, $t8
	sw $t8, 12($sp)
	lw $t1, 76($sp)
	beq $t8, $t1, label21
	nop
	b label20
	nop
label41:
	move $t0, $zero
	sw $zero, 48($sp)
	lw $t0, 16($sp)
	lw $t1, 20($sp)
	beq $t0, $t1, label16
	nop
	b label15
	nop
label12:
	lw $t0, 8($sp)
	addiu $t1, $t0, 1
	move $t0, $t1
	lw $t2, 32($sp)
	move $t3, $t2
	lw $t4, 40($sp)
	move $t5, $t4
	sw $t4, 16($sp)
	sw $t2, 24($sp)
	sw $t1, 8($sp)
	lw $t1, 76($sp)
	beq $t0, $t1, label37
	nop
	move $t0, $t4
	lw $t1, 20($sp)
	beq $t4, $t1, label41
	nop
	move $t0, $t2
	lw $t1, 76($sp)
	xor $t2, $t2, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t4, 48($sp)
	move $t0, $t4
	beq $t4, $zero, label17
	nop
	b label11
	nop
label15:
	lw $t0, 8($sp)
	sll $t1, $t0, 2
	lw $t2, 64($sp)
	addu $t3, $t2, $t1
	lw $t4, 16($sp)
	sll $t5, $t4, 2
	lw $t6, 56($sp)
	addu $t7, $t6, $t5
	lw $t8, 0($t7)
	sw $t8, 0($t3)
	addiu $t9, $t4, 1
	lw $s0, 24($sp)
	move $s1, $s0
	move $s2, $t9
	sw $t9, 40($sp)
	sw $s0, 32($sp)
	b label12
	nop
label11:
	lw $t0, 16($sp)
	sll $t1, $t0, 2
	lw $t2, 56($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 24($sp)
	sll $t6, $t5, 2
	addu $t7, $t2, $t6
	lw $t8, 0($t7)
	subu $t9, $t4, $t8
	bgez $t9, label16
	nop
	b label15
	nop
label17:
	lw $t0, 16($sp)
	lw $t1, 20($sp)
	beq $t0, $t1, label16
	nop
	b label15
	nop
label16:
	lw $t0, 8($sp)
	sll $t1, $t0, 2
	lw $t2, 64($sp)
	addu $t3, $t2, $t1
	lw $t4, 24($sp)
	sll $t5, $t4, 2
	lw $t6, 56($sp)
	addu $t7, $t6, $t5
	lw $t8, 0($t7)
	sw $t8, 0($t3)
	addiu $t9, $t4, 1
	move $s0, $t9
	lw $s1, 16($sp)
	move $s2, $s1
	sw $s1, 40($sp)
	sw $t9, 32($sp)
	b label12
	nop
label21:
	move $v0, $zero
	lw $s5, 28($sp)
	lw $s4, 36($sp)
	lw $s3, 44($sp)
	lw $s2, 52($sp)
	lw $s1, 60($sp)
	lw $s0, 68($sp)
	lw $ra, 0($sp)
	addiu $sp, $sp, 80
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -856
	sw $ra, 16($sp)
	addiu $t0, $sp, 452
	addiu $t1, $sp, 48
	jal read
	nop
	move $t2, $v0
	sw $v0, 44($sp)
	sw $t1, 32($sp)
	sw $t0, 36($sp)
	blez $v0, label159
	nop
	move $t0, $zero
	sw $zero, 24($sp)
label157:
	lw $t0, 24($sp)
	sll $t1, $t0, 2
	lw $t2, 32($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 44($sp)
	subu $t6, $t4, $t5
	sw $t4, 448($sp)
	bgez $t6, label159
	nop
	move $t0, $t4
	move $t1, $t4
	sw $t4, 24($sp)
	b label157
	nop
label215:
	move $t0, $zero
	sw $zero, 40($sp)
	b label160
	nop
label159:
	lw $t0, 32($sp)
	move $a0, $t0
	lw $t1, 36($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t2, 44($sp)
	move $a3, $t2
	jal merge
	nop
	lw $t3, 44($sp)
	blez $t3, label162
	nop
	b label215
	nop
label160:
	lw $t0, 40($sp)
	sll $t1, $t0, 2
	lw $t2, 32($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 44($sp)
	subu $t7, $t5, $t6
	sw $t5, 28($sp)
	bgez $t7, label162
	nop
	move $t0, $t5
	move $t1, $t5
	sw $t5, 40($sp)
	b label160
	nop
label162:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 856
	jr $ra
	nop
