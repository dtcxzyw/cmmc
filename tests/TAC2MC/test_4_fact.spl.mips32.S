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
	addiu $sp, $sp, -64
	sw $ra, 16($sp)
	jal read
	nop
	move $t0, $v0
	addiu $t1, $v0, -1
	sw $t0, 40($sp)
	blez $t1, label13
	nop
	li $t0, 1
	lw $t1, 40($sp)
	move $t2, $t1
	sw $t2, 32($sp)
	sw $t0, 36($sp)
	li $t0, 1
	lw $t1, 32($sp)
	bne $t1, $t0, label6
	nop
label39:
	lw $t0, 36($sp)
	lw $t1, 32($sp)
	mult $t0, $t1
	mflo $t2
	move $t3, $t2
	sw $t3, 28($sp)
	lw $t0, 28($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 64
	jr $ra
	nop
label13:
	li $t0, 1
	sw $t0, 28($sp)
	lw $t0, 28($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 64
	jr $ra
	nop
label6:
	lw $t0, 32($sp)
	addiu $t1, $t0, -1
	lw $t2, 36($sp)
	mult $t2, $t0
	mflo $t3
	move $t2, $t3
	move $t0, $t1
	sw $t0, 32($sp)
	sw $t2, 36($sp)
	li $t0, 1
	lw $t1, 32($sp)
	bne $t1, $t0, label6
	nop
	b label39
	nop
