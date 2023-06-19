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
.globl main
main:
	addiu $sp, $sp, -56
	sw $ra, 48($sp)
	jal read
	nop
	move $t0, $v0
	addiu $t1, $v0, -1
	sw $v0, 40($sp)
	blez $t1, label15
	nop
	li $t0, 1
	move $t1, $v0
	bne $v0, $t0, label19
	nop
	b label18
	nop
label15:
	li $t0, 1
	sw $t0, 16($sp)
	b label9
	nop
label18:
	lw $t0, 40($sp)
	move $t1, $t0
	li $t2, 1
	sw $t2, 44($sp)
	sw $t0, 24($sp)
	move $t1, $t2
	mult $t0, $t2
	mflo $t2
	move $t3, $t2
	sw $t2, 16($sp)
label9:
	lw $t0, 16($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 48($sp)
	addiu $sp, $sp, 56
	jr $ra
	nop
label19:
	lw $t0, 40($sp)
	move $t1, $t0
	li $t2, 1
	sw $t2, 32($sp)
	sw $t0, 28($sp)
	addiu $t1, $t0, -1
	mult $t0, $t2
	mflo $t3
	li $t4, 1
	sw $t3, 20($sp)
	sw $t1, 36($sp)
	bne $t1, $t4, label26
	nop
label25:
	lw $t0, 36($sp)
	move $t1, $t0
	lw $t2, 20($sp)
	move $t3, $t2
	sw $t2, 44($sp)
	sw $t0, 24($sp)
	move $t1, $t2
	mult $t0, $t2
	mflo $t2
	move $t3, $t2
	sw $t2, 16($sp)
	b label9
	nop
label26:
	lw $t0, 36($sp)
	move $t1, $t0
	lw $t2, 20($sp)
	move $t3, $t2
	sw $t2, 32($sp)
	sw $t0, 28($sp)
	addiu $t1, $t0, -1
	mult $t0, $t2
	mflo $t3
	li $t4, 1
	sw $t3, 20($sp)
	sw $t1, 36($sp)
	bne $t1, $t4, label26
	nop
	b label25
	nop
