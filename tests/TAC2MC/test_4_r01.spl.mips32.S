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
	addiu $sp, $sp, -64
	sw $s0, 60($sp)
	sw $s1, 52($sp)
	sw $ra, 44($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	li $t4, 1
	sw $a3, 20($sp)
	sw $a2, 24($sp)
	sw $a1, 28($sp)
	sw $a0, 32($sp)
	bne $a0, $t4, label14
	nop
	move $t0, $a1
	sw $a1, 48($sp)
	b label2
	nop
label14:
	lw $t0, 32($sp)
	move $t1, $t0
	lw $t2, 28($sp)
	move $t3, $t2
	lw $t4, 24($sp)
	move $t5, $t4
	sw $t4, 36($sp)
	sw $t2, 40($sp)
	sw $t0, 16($sp)
	b label4
	nop
label2:
	li $t0, 10000
	lw $t1, 48($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 20($sp)
	addu $t4, $t3, $t2
	move $a0, $t4
	jal write
	nop
	move $v0, $zero
	lw $ra, 44($sp)
	lw $s1, 52($sp)
	lw $s0, 60($sp)
	addiu $sp, $sp, 64
	jr $ra
	nop
label4:
	lw $t0, 16($sp)
	addiu $t1, $t0, -1
	move $a0, $t1
	lw $t2, 40($sp)
	move $a1, $t2
	lw $t3, 20($sp)
	move $a2, $t3
	lw $t4, 36($sp)
	move $a3, $t4
	sw $t1, 56($sp)
	jal hanoi
	nop
	li $t5, 10000
	lw $t6, 40($sp)
	mult $t6, $t5
	mflo $t7
	lw $t8, 20($sp)
	addu $t9, $t8, $t7
	move $a0, $t9
	jal write
	nop
	li $s0, 1
	lw $s1, 56($sp)
	bne $s1, $s0, label26
	nop
	lw $t0, 36($sp)
	move $t1, $t0
	sw $t0, 48($sp)
	b label2
	nop
label26:
	lw $t0, 56($sp)
	move $t1, $t0
	lw $t2, 40($sp)
	move $t3, $t2
	lw $t4, 36($sp)
	move $t2, $t4
	move $t4, $t3
	sw $t3, 36($sp)
	sw $t2, 40($sp)
	sw $t0, 16($sp)
	b label4
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
