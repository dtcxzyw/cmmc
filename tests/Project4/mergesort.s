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
	addiu $sp, $sp, -56
	sw $s0, 4($sp)
	sw $ra, 12($sp)
	addiu $t0, $a2, 1
	subu $t1, $t0, $a3
	sw $a3, 40($sp)
	sw $a2, 16($sp)
	sw $a1, 8($sp)
	sw $a0, 36($sp)
	bgez $t1, label21
	nop
	addu $t0, $a2, $a3
	li $t1, 2
	div $zero, $t0, $t1
	mflo $t2
	move $t3, $a0
	move $t4, $a1
	move $a3, $t2
	sw $t2, 52($sp)
	jal merge
	nop
	lw $t5, 36($sp)
	move $a0, $t5
	lw $t6, 8($sp)
	move $a1, $t6
	lw $t7, 52($sp)
	move $a2, $t7
	lw $t8, 40($sp)
	move $a3, $t8
	jal merge
	nop
	lw $t9, 16($sp)
	move $v0, $t9
	lw $a0, 52($sp)
	move $a1, $a0
	move $s0, $t9
	sw $a0, 48($sp)
	sw $t9, 44($sp)
	sw $t9, 20($sp)
	move $t0, $t9
	lw $a3, 40($sp)
	beq $t9, $a3, label37
	nop
	lw $a2, 52($sp)
	beq $t9, $a2, label41
	nop
	move $t0, $a0
	lw $a3, 40($sp)
	xor $t1, $a0, $a3
	sltu $t2, $zero, $t1
	move $t3, $t2
	sw $t2, 32($sp)
	move $t0, $t2
	beq $t2, $zero, label16
	nop
	b label10
	nop
label37:
	lw $a2, 16($sp)
	move $t0, $a2
	sw $a2, 0($sp)
	lw $a3, 40($sp)
	beq $a2, $a3, label21
	nop
label20:
	lw $t0, 0($sp)
	sll $t1, $t0, 2
	lw $a0, 36($sp)
	addu $t2, $a0, $t1
	sll $t3, $t0, 2
	lw $a1, 8($sp)
	addu $t4, $a1, $t3
	lw $t5, 0($t4)
	sw $t5, 0($t2)
	addiu $t6, $t0, 1
	move $t0, $t6
	sw $t6, 0($sp)
	lw $a3, 40($sp)
	beq $t6, $a3, label21
	nop
	b label20
	nop
label41:
	move $t0, $zero
	sw $zero, 32($sp)
	b label16
	nop
label10:
	lw $t0, 20($sp)
	sll $t1, $t0, 2
	lw $a0, 36($sp)
	addu $t2, $a0, $t1
	lw $t3, 0($t2)
	lw $t4, 48($sp)
	sll $t5, $t4, 2
	addu $t6, $a0, $t5
	lw $t7, 0($t6)
	subu $t8, $t3, $t7
	bgez $t8, label15
	nop
	b label14
	nop
label11:
	lw $t0, 44($sp)
	addiu $t1, $t0, 1
	move $t0, $t1
	lw $t2, 28($sp)
	move $t3, $t2
	lw $t4, 24($sp)
	move $t5, $t4
	sw $t4, 20($sp)
	sw $t2, 48($sp)
	sw $t1, 44($sp)
	lw $a3, 40($sp)
	beq $t1, $a3, label37
	nop
	move $t0, $t4
	lw $a2, 52($sp)
	beq $t4, $a2, label41
	nop
	move $t0, $t2
	lw $a3, 40($sp)
	xor $t1, $t2, $a3
	sltu $t2, $zero, $t1
	move $t3, $t2
	sw $t2, 32($sp)
	move $t0, $t2
	beq $t2, $zero, label16
	nop
	b label10
	nop
label14:
	lw $t0, 44($sp)
	sll $t1, $t0, 2
	lw $a1, 8($sp)
	addu $t2, $a1, $t1
	lw $t3, 20($sp)
	sll $t4, $t3, 2
	lw $a0, 36($sp)
	addu $t5, $a0, $t4
	lw $t6, 0($t5)
	sw $t6, 0($t2)
	addiu $t7, $t3, 1
	lw $t8, 48($sp)
	move $t9, $t8
	move $v0, $t7
	sw $t7, 24($sp)
	sw $t8, 28($sp)
	b label11
	nop
label16:
	lw $t0, 20($sp)
	lw $a2, 52($sp)
	beq $t0, $a2, label15
	nop
	b label14
	nop
label15:
	lw $t0, 44($sp)
	sll $t1, $t0, 2
	lw $a1, 8($sp)
	addu $t2, $a1, $t1
	lw $t3, 48($sp)
	sll $t4, $t3, 2
	lw $a0, 36($sp)
	addu $t5, $a0, $t4
	lw $t6, 0($t5)
	sw $t6, 0($t2)
	addiu $t7, $t3, 1
	move $t8, $t7
	lw $t9, 20($sp)
	move $v0, $t9
	sw $t9, 24($sp)
	sw $t7, 28($sp)
	b label11
	nop
label21:
	move $v0, $zero
	lw $ra, 12($sp)
	lw $s0, 4($sp)
	addiu $sp, $sp, 56
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -848
	sw $ra, 844($sp)
	addiu $a1, $sp, 440
	addiu $a0, $sp, 36
	sw $a0, 840($sp)
	jal read
	nop
	move $a3, $v0
	sw $v0, 20($sp)
	sw $a1, 436($sp)
	blez $v0, label159
	nop
	move $t0, $zero
	sw $zero, 32($sp)
label157:
	lw $t0, 32($sp)
	sll $t1, $t0, 2
	lw $a0, 840($sp)
	addu $t2, $a0, $t1
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t3, $t0, 1
	lw $a3, 20($sp)
	subu $t4, $t3, $a3
	sw $t3, 16($sp)
	bgez $t4, label159
	nop
	move $t0, $t3
	move $t1, $t3
	sw $t3, 32($sp)
	b label157
	nop
label217:
	move $t0, $zero
	sw $zero, 28($sp)
	b label160
	nop
label159:
	lw $t0, 840($sp)
	move $a0, $t0
	lw $t1, 436($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t2, 20($sp)
	move $a3, $t2
	jal merge
	nop
	lw $a3, 20($sp)
	blez $a3, label162
	nop
	b label217
	nop
label160:
	lw $t0, 28($sp)
	sll $t1, $t0, 2
	lw $a0, 840($sp)
	addu $t2, $a0, $t1
	lw $t3, 0($t2)
	move $a0, $t3
	jal write
	nop
	addiu $t4, $t0, 1
	lw $a3, 20($sp)
	subu $t5, $t4, $a3
	sw $t4, 24($sp)
	bgez $t5, label162
	nop
	move $t0, $t4
	move $t1, $t4
	sw $t4, 28($sp)
	b label160
	nop
label162:
	move $v0, $zero
	lw $ra, 844($sp)
	addiu $sp, $sp, 848
	jr $ra
	nop
