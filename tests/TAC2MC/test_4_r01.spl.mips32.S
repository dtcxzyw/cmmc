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
	addiu $sp, $sp, -96
	sw $ra, 16($sp)
	sw $s0, 56($sp)
	sw $s1, 48($sp)
	sw $s2, 72($sp)
	sw $s3, 40($sp)
	move $t0, $a3
	move $t1, $a2
	move $t2, $a1
	move $t3, $a0
	sw $t3, 60($sp)
	sw $t2, 52($sp)
	sw $t1, 76($sp)
	sw $t0, 44($sp)
	li $t0, 1
	lw $t1, 60($sp)
	bne $t1, $t0, label7
	nop
label6:
	li $t0, 10000
	lw $t1, 52($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 44($sp)
	addu $t4, $t3, $t2
	move $a0, $t4
	jal write
	nop
	move $v0, $zero
	lw $s3, 40($sp)
	lw $s2, 72($sp)
	lw $s1, 48($sp)
	lw $s0, 56($sp)
	lw $ra, 16($sp)
	addiu $sp, $sp, 96
	jr $ra
	nop
label7:
	lw $t0, 60($sp)
	addiu $t1, $t0, -1
	move $a0, $t1
	lw $t2, 52($sp)
	move $a1, $t2
	lw $t3, 44($sp)
	move $a2, $t3
	lw $t4, 76($sp)
	move $a3, $t4
	sw $t1, 32($sp)
	jal hanoi
	nop
	li $t5, 10000
	lw $t6, 52($sp)
	mult $t6, $t5
	mflo $t7
	lw $t8, 44($sp)
	addu $t9, $t8, $t7
	move $a0, $t9
	jal write
	nop
	lw $s0, 76($sp)
	move $s1, $s0
	move $s0, $t6
	move $t6, $s1
	lw $s2, 32($sp)
	move $s3, $s2
	sw $s3, 60($sp)
	sw $t6, 52($sp)
	sw $s0, 76($sp)
	li $t0, 1
	lw $t1, 60($sp)
	bne $t1, $t0, label7
	nop
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
