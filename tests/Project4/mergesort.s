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
	sw $ra, 48($sp)
	addiu $t0, $a2, 1
	subu $t0, $t0, $a3
	sw $a3, 16($sp)
	sw $a2, 44($sp)
	sw $a1, 20($sp)
	sw $a0, 24($sp)
	bgez $t0, label21
	nop
	addu $t0, $a2, $a3
	li $t1, 2
	div $zero, $t0, $t1
	mflo $t0
	move $t1, $a0
	move $t2, $a1
	move $a3, $t0
	sw $t0, 4($sp)
	jal merge
	nop
	lw $t3, 24($sp)
	move $a0, $t3
	lw $t4, 20($sp)
	move $a1, $t4
	lw $t5, 4($sp)
	move $a2, $t5
	lw $t6, 16($sp)
	move $a3, $t6
	jal merge
	nop
	lw $t7, 44($sp)
	move $t8, $t7
	lw $t9, 4($sp)
	move $v0, $t9
	move $a0, $t7
	sw $t9, 8($sp)
	sw $t7, 12($sp)
	sw $t7, 40($sp)
	move $t0, $t7
	lw $a3, 16($sp)
	beq $t7, $a3, label37
	nop
	lw $a2, 4($sp)
	beq $t7, $a2, label41
	nop
	move $t0, $t9
	lw $a3, 16($sp)
	xor $t1, $t9, $a3
	sltu $t1, $zero, $t1
	sw $t1, 28($sp)
	move $t0, $t1
	beq $t1, $zero, label16
	nop
	b label10
	nop
label37:
	lw $a2, 44($sp)
	move $t0, $a2
	sw $a2, 0($sp)
	lw $a3, 16($sp)
	beq $a2, $a3, label21
	nop
label20:
	lw $t0, 0($sp)
	sll $t1, $t0, 2
	lw $a0, 24($sp)
	addu $t1, $a0, $t1
	sll $t2, $t0, 2
	lw $a1, 20($sp)
	addu $t2, $a1, $t2
	lw $t2, 0($t2)
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	sw $t0, 0($sp)
	lw $a3, 16($sp)
	beq $t0, $a3, label21
	nop
	b label20
	nop
label41:
	move $t0, $zero
	sw $zero, 28($sp)
	b label16
	nop
label10:
	lw $t0, 40($sp)
	sll $t1, $t0, 2
	lw $a0, 24($sp)
	addu $t1, $a0, $t1
	lw $t1, 0($t1)
	lw $t2, 8($sp)
	sll $t3, $t2, 2
	addu $t3, $a0, $t3
	lw $t3, 0($t3)
	subu $t1, $t1, $t3
	bgez $t1, label15
	nop
	b label14
	nop
label16:
	lw $t0, 40($sp)
	lw $a2, 4($sp)
	beq $t0, $a2, label15
	nop
label14:
	lw $t0, 12($sp)
	sll $t1, $t0, 2
	lw $a1, 20($sp)
	addu $t1, $a1, $t1
	lw $t2, 40($sp)
	sll $t3, $t2, 2
	lw $a0, 24($sp)
	addu $t3, $a0, $t3
	lw $t3, 0($t3)
	sw $t3, 0($t1)
	addiu $t1, $t2, 1
	lw $t2, 8($sp)
	sw $t1, 36($sp)
	sw $t2, 32($sp)
	lw $t0, 12($sp)
	addiu $t0, $t0, 1
	move $t1, $t2
	lw $t2, 36($sp)
	sw $t2, 40($sp)
	sw $t1, 8($sp)
	sw $t0, 12($sp)
	lw $a3, 16($sp)
	beq $t0, $a3, label37
	nop
	move $t0, $t2
	lw $a2, 4($sp)
	beq $t2, $a2, label41
	nop
	move $t0, $t1
	lw $a3, 16($sp)
	xor $t1, $t1, $a3
	sltu $t1, $zero, $t1
	sw $t1, 28($sp)
	move $t0, $t1
	beq $t1, $zero, label16
	nop
	b label10
	nop
label15:
	lw $t0, 12($sp)
	sll $t1, $t0, 2
	lw $a1, 20($sp)
	addu $t1, $a1, $t1
	lw $t2, 8($sp)
	sll $t3, $t2, 2
	lw $a0, 24($sp)
	addu $t3, $a0, $t3
	lw $t3, 0($t3)
	sw $t3, 0($t1)
	addiu $t1, $t2, 1
	lw $t2, 40($sp)
	sw $t2, 36($sp)
	sw $t1, 32($sp)
	lw $t0, 12($sp)
	addiu $t0, $t0, 1
	sw $t2, 40($sp)
	sw $t1, 8($sp)
	sw $t0, 12($sp)
	lw $a3, 16($sp)
	beq $t0, $a3, label37
	nop
	move $t0, $t2
	lw $a2, 4($sp)
	beq $t2, $a2, label41
	nop
	move $t0, $t1
	lw $a3, 16($sp)
	xor $t1, $t1, $a3
	sltu $t1, $zero, $t1
	sw $t1, 28($sp)
	move $t0, $t1
	beq $t1, $zero, label16
	nop
	b label10
	nop
label21:
	move $v0, $zero
	lw $ra, 48($sp)
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
	blez $v0, label164
	nop
	move $t0, $zero
	sw $zero, 32($sp)
label162:
	lw $t0, 32($sp)
	sll $t1, $t0, 2
	lw $a0, 840($sp)
	addu $t1, $a0, $t1
	jal read
	nop
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	lw $a3, 20($sp)
	subu $t1, $t0, $a3
	sw $t0, 16($sp)
	bgez $t1, label164
	nop
	sw $t0, 32($sp)
	b label162
	nop
label222:
	move $t0, $zero
	sw $zero, 28($sp)
	b label165
	nop
label164:
	lw $t0, 840($sp)
	move $a0, $t0
	lw $t1, 436($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t1, 20($sp)
	move $a3, $t1
	jal merge
	nop
	lw $a3, 20($sp)
	blez $a3, label167
	nop
	b label222
	nop
label165:
	lw $t0, 28($sp)
	sll $t1, $t0, 2
	lw $a0, 840($sp)
	addu $t1, $a0, $t1
	lw $t1, 0($t1)
	move $a0, $t1
	jal write
	nop
	addiu $t0, $t0, 1
	lw $a3, 20($sp)
	subu $t1, $t0, $a3
	sw $t0, 24($sp)
	bgez $t1, label167
	nop
	sw $t0, 28($sp)
	b label165
	nop
label167:
	move $v0, $zero
	lw $ra, 844($sp)
	addiu $sp, $sp, 848
	jr $ra
	nop
