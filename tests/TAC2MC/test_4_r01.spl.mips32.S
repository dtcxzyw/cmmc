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
	addiu $sp, $sp, -56
	sw $ra, 52($sp)
	move $t0, $a3
	li $t1, 1
	sw $a3, 28($sp)
	sw $a2, 32($sp)
	sw $a1, 36($sp)
	sw $a0, 40($sp)
	bne $a0, $t1, label14
	nop
	move $t0, $a1
	sw $a1, 20($sp)
	b label2
	nop
label14:
	lw $a0, 40($sp)
	move $t0, $a0
	lw $a1, 36($sp)
	lw $a2, 32($sp)
	move $a3, $a2
	sw $a2, 44($sp)
	sw $a1, 48($sp)
	sw $a0, 24($sp)
	b label4
	nop
label2:
	li $t0, 10000
	lw $t1, 20($sp)
	mult $t1, $t0
	mflo $t0
	lw $a2, 28($sp)
	addu $a0, $a2, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 52($sp)
	addiu $sp, $sp, 56
	jr $ra
	nop
label4:
	lw $t0, 24($sp)
	addiu $a0, $t0, -1
	sw $a0, 16($sp)
	lw $t1, 48($sp)
	move $a1, $t1
	lw $t2, 28($sp)
	move $a2, $t2
	lw $t3, 44($sp)
	move $a3, $t3
	jal hanoi
	nop
	li $t4, 10000
	lw $a1, 48($sp)
	mult $a1, $t4
	mflo $t4
	lw $a2, 28($sp)
	addu $t4, $a2, $t4
	move $a0, $t4
	jal write
	nop
	li $t4, 1
	lw $t5, 16($sp)
	bne $t5, $t4, label26
	nop
	lw $a3, 44($sp)
	move $t0, $a3
	sw $a3, 20($sp)
	b label2
	nop
label26:
	lw $a0, 16($sp)
	move $t0, $a0
	lw $a1, 48($sp)
	move $t1, $a1
	lw $a3, 44($sp)
	move $a1, $a3
	move $a3, $t1
	sw $t1, 44($sp)
	sw $a1, 48($sp)
	sw $a0, 24($sp)
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
