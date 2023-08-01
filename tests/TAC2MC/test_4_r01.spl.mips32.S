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
	addiu $sp, $sp, -48
	sw $ra, 16($sp)
	sw $s3, 20($sp)
	sw $s5, 24($sp)
	sw $s2, 28($sp)
	sw $s6, 32($sp)
	sw $s0, 36($sp)
	sw $s1, 40($sp)
	sw $s4, 44($sp)
	move $s3, $a3
	li $s5, 10000
	mult $a1, $s5
	mflo $t0
	addu $s2, $a3, $t0
	li $s6, 1
	bne $a0, $s6, label16
	nop
	move $a0, $s2
label2:
	jal write
	nop
	lw $ra, 16($sp)
	lw $s3, 20($sp)
	lw $s5, 24($sp)
	lw $s2, 28($sp)
	lw $s6, 32($sp)
	lw $s0, 36($sp)
	lw $s1, 40($sp)
	lw $s4, 44($sp)
	addiu $sp, $sp, 48
	jr $ra
	nop
label16:
	move $s0, $a1
	move $s1, $a2
label4:
	addiu $s4, $a0, -1
	move $a0, $s4
	move $a1, $s0
	move $a2, $s3
	move $a3, $s1
	jal hanoi
	nop
	move $a0, $s2
	jal write
	nop
	mult $s1, $s5
	mflo $t0
	addu $a0, $s3, $t0
	beq $s4, $s6, label2
	nop
	move $s2, $a0
	move $a0, $s4
	move $t0, $s0
	move $s0, $s1
	move $s1, $t0
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
