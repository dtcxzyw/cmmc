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
	addiu $sp, $sp, -104
	sw $ra, 16($sp)
	sw $s0, 32($sp)
	sw $s1, 28($sp)
	sw $s2, 24($sp)
	sw $s3, 56($sp)
	sw $s4, 48($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	li $t4, 1
	sw $a3, 80($sp)
	sw $a2, 44($sp)
	sw $a1, 84($sp)
	sw $a0, 52($sp)
	bne $a0, $t4, label18
	nop
	move $t0, $a1
	move $t2, $zero
	move $t3, $zero
	sw $zero, 64($sp)
	sw $zero, 68($sp)
	sw $a1, 72($sp)
	b label2
	nop
label18:
	lw $t0, 52($sp)
	move $t1, $t0
	lw $t2, 84($sp)
	move $t3, $t2
	lw $t4, 44($sp)
	move $t5, $t4
	move $t6, $zero
	move $t7, $zero
	sw $zero, 92($sp)
	sw $zero, 76($sp)
	sw $t4, 36($sp)
	sw $t2, 40($sp)
	sw $t0, 96($sp)
	b label6
	nop
label2:
	li $t0, 10000
	lw $t1, 72($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 80($sp)
	addu $t4, $t3, $t2
	move $a0, $t4
	jal write
	nop
	move $t5, $zero
	lw $t6, 68($sp)
	lw $t7, 64($sp)
	movn $t5, $t6, $t7
	move $v0, $t5
	lw $s4, 48($sp)
	lw $s3, 56($sp)
	lw $s2, 24($sp)
	lw $s1, 28($sp)
	lw $s0, 32($sp)
	lw $ra, 16($sp)
	addiu $sp, $sp, 104
	jr $ra
	nop
label6:
	lw $t0, 96($sp)
	addiu $t1, $t0, -1
	move $a0, $t1
	lw $t2, 40($sp)
	move $a1, $t2
	lw $t3, 80($sp)
	move $a2, $t3
	lw $t4, 36($sp)
	move $a3, $t4
	sw $t1, 60($sp)
	jal hanoi
	nop
	li $t5, 10000
	lw $t6, 40($sp)
	mult $t6, $t5
	mflo $t7
	lw $t8, 80($sp)
	addu $t9, $t8, $t7
	move $a0, $t9
	jal write
	nop
	move $s0, $zero
	lw $s1, 76($sp)
	lw $s2, 92($sp)
	movn $s0, $s1, $s2
	li $s3, 1
	lw $s4, 60($sp)
	sw $s0, 88($sp)
	bne $s4, $s3, label32
	nop
	lw $t0, 36($sp)
	move $t1, $t0
	move $t2, $s0
	move $t3, $s0
	li $t4, 1
	sw $t4, 64($sp)
	sw $s0, 68($sp)
	sw $t0, 72($sp)
	b label2
	nop
label32:
	lw $t0, 60($sp)
	move $t1, $t0
	lw $t2, 40($sp)
	move $t3, $t2
	lw $t4, 36($sp)
	move $t2, $t4
	move $t4, $t3
	lw $t5, 88($sp)
	move $t6, $t5
	li $t7, 1
	sw $t7, 92($sp)
	sw $t5, 76($sp)
	sw $t3, 36($sp)
	sw $t2, 40($sp)
	sw $t0, 96($sp)
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
