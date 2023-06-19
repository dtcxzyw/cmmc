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
	sw $s0, 24($sp)
	sw $s1, 32($sp)
	sw $s2, 40($sp)
	sw $s3, 48($sp)
	sw $s4, 56($sp)
	sw $s5, 64($sp)
	sw $ra, 72($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	addiu $t4, $a2, 1
	subu $t5, $t4, $a3
	sw $a3, 20($sp)
	sw $a2, 68($sp)
	sw $a1, 60($sp)
	sw $a0, 52($sp)
	bgez $t5, label2
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
	sw $t4, 4($sp)
	jal merge
	nop
	lw $t7, 52($sp)
	move $a0, $t7
	lw $t8, 60($sp)
	move $a1, $t8
	lw $t9, 4($sp)
	move $a2, $t9
	lw $s0, 20($sp)
	move $a3, $s0
	jal merge
	nop
	lw $s1, 68($sp)
	move $s2, $s1
	lw $s3, 4($sp)
	move $s4, $s3
	move $s5, $s1
	sw $s1, 12($sp)
	sw $s1, 16($sp)
	sw $s3, 0($sp)
	move $t0, $s1
	lw $t1, 20($sp)
	beq $s1, $t1, label37
	nop
	lw $t1, 4($sp)
	beq $s1, $t1, label41
	nop
	move $t0, $s3
	lw $t1, 20($sp)
	xor $t2, $s3, $t1
	sltu $t3, $zero, $t2
	move $t4, $t3
	sw $t3, 44($sp)
	move $t0, $t3
	beq $t3, $zero, label18
	nop
	b label12
	nop
label37:
	lw $t0, 68($sp)
	move $t1, $t0
	sw $t0, 8($sp)
	lw $t1, 20($sp)
	beq $t0, $t1, label2
	nop
label21:
	lw $t0, 8($sp)
	sll $t1, $t0, 2
	lw $t2, 52($sp)
	addu $t3, $t2, $t1
	sll $t4, $t0, 2
	lw $t5, 60($sp)
	addu $t6, $t5, $t4
	lw $t7, 0($t6)
	sw $t7, 0($t3)
	addiu $t8, $t0, 1
	move $t0, $t8
	sw $t8, 8($sp)
	lw $t1, 20($sp)
	beq $t8, $t1, label2
	nop
	b label21
	nop
label41:
	move $t0, $zero
	sw $zero, 44($sp)
	lw $t0, 12($sp)
	lw $t1, 4($sp)
	beq $t0, $t1, label16
	nop
	b label17
	nop
label13:
	lw $t0, 16($sp)
	addiu $t1, $t0, 1
	move $t0, $t1
	lw $t2, 36($sp)
	move $t3, $t2
	lw $t4, 28($sp)
	move $t5, $t4
	sw $t4, 12($sp)
	sw $t2, 0($sp)
	sw $t1, 16($sp)
	lw $t1, 20($sp)
	beq $t0, $t1, label37
	nop
	move $t0, $t4
	lw $t1, 4($sp)
	beq $t4, $t1, label41
	nop
	move $t0, $t2
	lw $t1, 20($sp)
	xor $t2, $t2, $t1
	sltu $t3, $zero, $t2
	move $t4, $t3
	sw $t3, 44($sp)
	move $t0, $t3
	beq $t3, $zero, label18
	nop
	b label12
	nop
label16:
	lw $t0, 16($sp)
	sll $t1, $t0, 2
	lw $t2, 60($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($sp)
	sll $t5, $t4, 2
	lw $t6, 52($sp)
	addu $t7, $t6, $t5
	lw $t8, 0($t7)
	sw $t8, 0($t3)
	addiu $t9, $t4, 1
	move $s0, $t9
	lw $s1, 12($sp)
	move $s2, $s1
	sw $s1, 28($sp)
	sw $t9, 36($sp)
	b label13
	nop
label12:
	lw $t0, 12($sp)
	sll $t1, $t0, 2
	lw $t2, 52($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 0($sp)
	sll $t6, $t5, 2
	addu $t7, $t2, $t6
	lw $t8, 0($t7)
	subu $t9, $t4, $t8
	bgez $t9, label16
	nop
	b label17
	nop
label18:
	lw $t0, 12($sp)
	lw $t1, 4($sp)
	beq $t0, $t1, label16
	nop
label17:
	lw $t0, 16($sp)
	sll $t1, $t0, 2
	lw $t2, 60($sp)
	addu $t3, $t2, $t1
	lw $t4, 12($sp)
	sll $t5, $t4, 2
	lw $t6, 52($sp)
	addu $t7, $t6, $t5
	lw $t8, 0($t7)
	sw $t8, 0($t3)
	addiu $t9, $t4, 1
	lw $s0, 0($sp)
	move $s1, $s0
	move $s2, $t9
	sw $t9, 28($sp)
	sw $s0, 36($sp)
	b label13
	nop
label2:
	move $v0, $zero
	lw $ra, 72($sp)
	lw $s5, 64($sp)
	lw $s4, 56($sp)
	lw $s3, 48($sp)
	lw $s2, 40($sp)
	lw $s1, 32($sp)
	lw $s0, 24($sp)
	addiu $sp, $sp, 80
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -848
	sw $ra, 844($sp)
	addiu $t0, $sp, 440
	addiu $t1, $sp, 36
	jal read
	nop
	move $t2, $v0
	sw $v0, 28($sp)
	sw $t1, 16($sp)
	sw $t0, 24($sp)
	blez $v0, label156
	nop
	move $t0, $zero
	sw $zero, 20($sp)
label160:
	lw $t0, 20($sp)
	sll $t1, $t0, 2
	lw $t2, 16($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 28($sp)
	subu $t6, $t4, $t5
	sw $t4, 840($sp)
	bgez $t6, label156
	nop
	move $t0, $t4
	move $t1, $t4
	sw $t4, 20($sp)
	b label160
	nop
label156:
	lw $t0, 16($sp)
	move $a0, $t0
	lw $t1, 24($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t2, 28($sp)
	move $a3, $t2
	jal merge
	nop
	lw $t3, 28($sp)
	blez $t3, label159
	nop
	move $t0, $zero
	sw $zero, 32($sp)
label157:
	lw $t0, 32($sp)
	sll $t1, $t0, 2
	lw $t2, 16($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 28($sp)
	subu $t7, $t5, $t6
	sw $t5, 436($sp)
	bgez $t7, label159
	nop
	move $t0, $t5
	move $t1, $t5
	sw $t5, 32($sp)
	b label157
	nop
label159:
	move $v0, $zero
	lw $ra, 844($sp)
	addiu $sp, $sp, 848
	jr $ra
	nop
