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
	addiu $sp, $sp, -240
	sw $ra, 0($sp)
	sw $s0, 156($sp)
	sw $s1, 160($sp)
	sw $s2, 164($sp)
	sw $s3, 168($sp)
	sw $s4, 172($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	addiu $t4, $a2, 1
	subu $t5, $t4, $a3
	sw $t3, 92($sp)
	sw $t2, 96($sp)
	sw $t1, 104($sp)
	sw $t0, 108($sp)
	bgez $t5, label28
	nop
	lw $t0, 96($sp)
	lw $t1, 92($sp)
	addu $t2, $t0, $t1
	li $t3, 2
	div $zero, $t2, $t3
	mflo $t4
	lw $t5, 108($sp)
	move $a0, $t5
	lw $t6, 104($sp)
	move $a1, $t6
	move $a2, $t0
	move $a3, $t4
	sw $t4, 80($sp)
	sw $t3, 52($sp)
	sw $t2, 56($sp)
	jal merge
	nop
	lw $t7, 108($sp)
	move $a0, $t7
	lw $t8, 104($sp)
	move $a1, $t8
	lw $t9, 80($sp)
	move $a2, $t9
	lw $s0, 92($sp)
	move $a3, $s0
	jal merge
	nop
	lw $s1, 96($sp)
	beq $s1, $s0, label17
	nop
	lw $t0, 96($sp)
	move $t1, $t0
	move $t2, $t0
	lw $t3, 80($sp)
	move $t4, $t3
	sw $t4, 68($sp)
	sw $t2, 76($sp)
	sw $t1, 88($sp)
	lw $t0, 76($sp)
	lw $t1, 80($sp)
	beq $t0, $t1, label43
	nop
	lw $t0, 68($sp)
	lw $t1, 92($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 100($sp)
	lw $t0, 100($sp)
	beq $t0, $zero, label16
	nop
	b label10
	nop
label43:
	move $t0, $zero
	sw $t0, 100($sp)
	lw $t0, 100($sp)
	beq $t0, $zero, label16
	nop
label10:
	li $t0, 4
	lw $t1, 76($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 108($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	li $t6, 4
	lw $t7, 68($sp)
	mult $t7, $t6
	mflo $t8
	addu $t9, $t3, $t8
	lw $s0, 0($t9)
	subu $s1, $t5, $s0
	bgez $s1, label15
	nop
	b label14
	nop
label65:
	lw $t0, 84($sp)
	move $t1, $t0
	lw $t2, 116($sp)
	move $t3, $t2
	lw $t4, 120($sp)
	move $t5, $t4
	sw $t5, 68($sp)
	sw $t3, 76($sp)
	sw $t1, 88($sp)
	lw $t0, 76($sp)
	lw $t1, 80($sp)
	beq $t0, $t1, label43
	nop
	lw $t0, 68($sp)
	lw $t1, 92($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 100($sp)
	lw $t0, 100($sp)
	beq $t0, $zero, label16
	nop
	lw $t0, 100($sp)
	beq $t0, $zero, label16
	nop
	b label10
	nop
label14:
	li $t0, 4
	lw $t1, 88($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 104($sp)
	addu $t4, $t3, $t2
	li $t5, 4
	lw $t6, 76($sp)
	mult $t6, $t5
	mflo $t7
	lw $t8, 108($sp)
	addu $t9, $t8, $t7
	lw $s0, 0($t9)
	sw $s0, 0($t4)
	addiu $s1, $t6, 1
	lw $s2, 68($sp)
	move $s3, $s2
	move $s4, $s1
	sw $s4, 116($sp)
	sw $s3, 120($sp)
	lw $t0, 88($sp)
	addiu $t1, $t0, 1
	lw $t2, 92($sp)
	sw $t1, 84($sp)
	beq $t1, $t2, label17
	nop
	b label65
	nop
label16:
	lw $t0, 76($sp)
	lw $t1, 80($sp)
	beq $t0, $t1, label15
	nop
	b label14
	nop
label191:
	lw $t0, 96($sp)
	move $t1, $t0
	sw $t1, 72($sp)
	b label18
	nop
label17:
	lw $t0, 96($sp)
	lw $t1, 92($sp)
	beq $t0, $t1, label28
	nop
	b label191
	nop
label18:
	li $t0, 4
	lw $t1, 72($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 108($sp)
	addu $t4, $t3, $t2
	li $t5, 4
	mult $t1, $t5
	mflo $t6
	lw $t7, 104($sp)
	addu $t8, $t7, $t6
	lw $t9, 0($t8)
	sw $t9, 0($t4)
	addiu $s0, $t1, 1
	lw $s1, 92($sp)
	sw $s0, 112($sp)
	beq $s0, $s1, label28
	nop
	lw $t0, 112($sp)
	move $t1, $t0
	sw $t1, 72($sp)
	b label18
	nop
label15:
	li $t0, 4
	lw $t1, 88($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 104($sp)
	addu $t4, $t3, $t2
	li $t5, 4
	lw $t6, 68($sp)
	mult $t6, $t5
	mflo $t7
	lw $t8, 108($sp)
	addu $t9, $t8, $t7
	lw $s0, 0($t9)
	sw $s0, 0($t4)
	addiu $s1, $t6, 1
	move $s2, $s1
	lw $s3, 76($sp)
	move $s4, $s3
	sw $s4, 116($sp)
	sw $s2, 120($sp)
	lw $t0, 88($sp)
	addiu $t1, $t0, 1
	lw $t2, 92($sp)
	sw $t1, 84($sp)
	beq $t1, $t2, label17
	nop
	b label65
	nop
label28:
	move $v0, $zero
	lw $s4, 172($sp)
	lw $s3, 168($sp)
	lw $s2, 164($sp)
	lw $s1, 160($sp)
	lw $s0, 156($sp)
	lw $ra, 0($sp)
	addiu $sp, $sp, 240
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -888
	sw $ra, 16($sp)
	addiu $t0, $sp, 76
	addiu $t1, $sp, 484
	jal read
	nop
	move $t2, $v0
	sw $t2, 32($sp)
	sw $t1, 36($sp)
	sw $t0, 52($sp)
	blez $v0, label207
	nop
	move $t0, $zero
	sw $t0, 28($sp)
	b label205
	nop
label273:
	move $t0, $zero
	sw $t0, 24($sp)
	b label208
	nop
label205:
	li $t0, 4
	lw $t1, 28($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 36($sp)
	addu $t4, $t3, $t2
	jal read
	nop
	sw $v0, 0($t4)
	addiu $t5, $t1, 1
	lw $t6, 32($sp)
	subu $t7, $t5, $t6
	sw $t5, 476($sp)
	bgez $t7, label207
	nop
	lw $t0, 476($sp)
	move $t1, $t0
	sw $t1, 28($sp)
	b label205
	nop
label207:
	lw $t0, 36($sp)
	move $a0, $t0
	lw $t1, 52($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t2, 32($sp)
	move $a3, $t2
	jal merge
	nop
	lw $t3, 32($sp)
	blez $t3, label235
	nop
	b label273
	nop
label208:
	li $t0, 4
	lw $t1, 24($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 36($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	move $a0, $t5
	jal write
	nop
	addiu $t6, $t1, 1
	lw $t7, 32($sp)
	subu $t8, $t6, $t7
	sw $t6, 40($sp)
	bgez $t8, label235
	nop
	lw $t0, 40($sp)
	move $t1, $t0
	sw $t1, 24($sp)
	b label208
	nop
label235:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 888
	jr $ra
	nop
