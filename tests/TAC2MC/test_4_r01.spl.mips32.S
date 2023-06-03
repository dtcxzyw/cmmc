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
hanoi:
	addiu $sp, $sp, -144
	sw $ra, 16($sp)
	sw $s0, 32($sp)
	sw $s1, 28($sp)
	sw $s2, 24($sp)
	sw $s3, 92($sp)
	sw $s4, 88($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	li $t4, 1
	sw $t3, 116($sp)
	sw $t2, 120($sp)
	sw $t1, 124($sp)
	sw $t0, 84($sp)
	bne $a0, $t4, label18
	nop
	lw $t0, 124($sp)
	move $t1, $t0
	move $t2, $zero
	move $t3, $zero
	sw $t3, 104($sp)
	sw $t2, 132($sp)
	sw $t1, 108($sp)
	b label2
	nop
label18:
	lw $t0, 84($sp)
	move $t1, $t0
	lw $t2, 124($sp)
	move $t3, $t2
	lw $t4, 120($sp)
	move $t5, $t4
	move $t6, $zero
	move $t7, $zero
	sw $t7, 76($sp)
	sw $t6, 112($sp)
	sw $t5, 80($sp)
	sw $t3, 136($sp)
	sw $t1, 100($sp)
	b label6
	nop
label2:
	li $t0, 10000
	lw $t1, 108($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 116($sp)
	addu $t4, $t3, $t2
	move $a0, $t4
	jal write
	nop
	move $t5, $zero
	lw $t6, 132($sp)
	lw $t7, 104($sp)
	movn $t5, $t6, $t7
	move $v0, $t5
	lw $s4, 88($sp)
	lw $s3, 92($sp)
	lw $s2, 24($sp)
	lw $s1, 28($sp)
	lw $s0, 32($sp)
	lw $ra, 16($sp)
	addiu $sp, $sp, 144
	jr $ra
	nop
label6:
	lw $t0, 100($sp)
	addiu $t1, $t0, -1
	move $a0, $t1
	lw $t2, 136($sp)
	move $a1, $t2
	lw $t3, 116($sp)
	move $a2, $t3
	lw $t4, 80($sp)
	move $a3, $t4
	sw $t1, 96($sp)
	jal hanoi
	nop
	li $t5, 10000
	lw $t6, 136($sp)
	mult $t6, $t5
	mflo $t7
	lw $t8, 116($sp)
	addu $t9, $t8, $t7
	move $a0, $t9
	jal write
	nop
	move $s0, $zero
	lw $s1, 112($sp)
	lw $s2, 76($sp)
	movn $s0, $s1, $s2
	li $s3, 1
	lw $s4, 96($sp)
	sw $s0, 128($sp)
	bne $s4, $s3, label32
	nop
	lw $t0, 80($sp)
	move $t1, $t0
	lw $t2, 128($sp)
	move $t3, $t2
	li $t4, 1
	sw $t4, 104($sp)
	sw $t3, 132($sp)
	sw $t1, 108($sp)
	b label2
	nop
label32:
	lw $t0, 96($sp)
	move $t1, $t0
	lw $t2, 136($sp)
	move $t3, $t2
	lw $t4, 80($sp)
	move $t2, $t4
	move $t4, $t3
	lw $t5, 128($sp)
	move $t6, $t5
	li $t7, 1
	sw $t7, 76($sp)
	sw $t6, 112($sp)
	sw $t4, 80($sp)
	sw $t2, 136($sp)
	sw $t1, 100($sp)
	b label6
	nop
.globl main
main:
	addiu $sp, $sp, -8
	sw $ra, 0($sp)
	li $a0, 3
	li $a1, 1
	li $a2, 2
	li $a3, 3
	jal hanoi
	nop
	move $v0, $zero
	lw $ra, 0($sp)
	addiu $sp, $sp, 8
	jr $ra
	nop
