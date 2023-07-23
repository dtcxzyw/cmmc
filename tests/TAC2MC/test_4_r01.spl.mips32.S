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
	addiu $sp, $sp, -40
	sw $s2, 32($sp)
	sw $s3, 28($sp)
	sw $s1, 24($sp)
	sw $s0, 20($sp)
	sw $ra, 16($sp)
	move $s2, $a3
	li $t0, 1
	beq $a0, $t0, label2
	nop
	move $s3, $a0
	move $s1, $a1
	move $s0, $a2
label4:
	addiu $s3, $s3, -1
	move $a0, $s3
	move $a1, $s1
	move $a2, $s2
	move $a3, $s0
	jal hanoi
	nop
	li $t0, 10000
	mult $s1, $t0
	mflo $t0
	addu $a0, $s2, $t0
	jal write
	nop
	li $t0, 1
	beq $s3, $t0, label25
	nop
	move $t0, $s1
	move $s1, $s0
	move $s0, $t0
	b label4
	nop
label25:
	move $a1, $s0
label2:
	li $t0, 10000
	mult $a1, $t0
	mflo $t0
	addu $a0, $s2, $t0
	jal write
	nop
	lw $ra, 16($sp)
	lw $s0, 20($sp)
	lw $s1, 24($sp)
	lw $s3, 28($sp)
	lw $s2, 32($sp)
	addiu $sp, $sp, 40
	jr $ra
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
