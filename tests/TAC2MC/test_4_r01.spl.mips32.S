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
	addiu $sp, $sp, -80
	sw $ra, 16($sp)
	sw $s0, 36($sp)
	sw $s1, 28($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	li $t4, 1
	sw $t3, 32($sp)
	sw $t2, 48($sp)
	sw $t1, 52($sp)
	sw $t0, 56($sp)
	bne $a0, $t4, label4
	nop
	li $t0, 10000
	lw $t1, 52($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 32($sp)
	addu $t4, $t3, $t2
	move $a0, $t4
	jal write
	nop
label3:
	move $v0, $zero
	lw $s1, 28($sp)
	lw $s0, 36($sp)
	lw $ra, 16($sp)
	addiu $sp, $sp, 80
	jr $ra
	nop
label4:
	lw $t0, 56($sp)
	addiu $t1, $t0, -1
	move $a0, $t1
	lw $t2, 52($sp)
	move $a1, $t2
	lw $t3, 32($sp)
	move $a2, $t3
	lw $t4, 48($sp)
	move $a3, $t4
	sw $t1, 72($sp)
	jal hanoi
	nop
	li $t5, 10000
	lw $t6, 52($sp)
	mult $t6, $t5
	mflo $t7
	lw $t8, 32($sp)
	addu $t9, $t8, $t7
	move $a0, $t9
	jal write
	nop
	lw $s0, 72($sp)
	move $a0, $s0
	lw $s1, 48($sp)
	move $a1, $s1
	move $a2, $t6
	move $a3, $t8
	sw $t9, 40($sp)
	sw $t7, 24($sp)
	sw $t5, 76($sp)
	jal hanoi
	nop
	b label3
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
