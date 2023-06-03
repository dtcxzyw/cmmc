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
	addiu $sp, $sp, -48
	sw $ra, 16($sp)
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	jal read
	nop
	li $t0, 10
	move $t1, $zero
	sw $t1, 28($sp)
	sw $t0, 40($sp)
	lw $t0, 40($sp)
	addiu $t1, $t0, -1
	lw $t2, 28($sp)
	addiu $t3, $t2, 1
	sw $t3, 32($sp)
	sw $t1, 36($sp)
	bne $t1, $zero, label42
	nop
label52:
	lw $t0, 36($sp)
	lw $t1, 32($sp)
	addu $t2, $t0, $t1
	move $a0, $t2
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 48
	jr $ra
	nop
label42:
	lw $t0, 36($sp)
	move $t1, $t0
	lw $t2, 32($sp)
	move $t3, $t2
	sw $t3, 28($sp)
	sw $t1, 40($sp)
	lw $t0, 40($sp)
	addiu $t1, $t0, -1
	lw $t2, 28($sp)
	addiu $t3, $t2, 1
	sw $t3, 32($sp)
	sw $t1, 36($sp)
	bne $t1, $zero, label42
	nop
	b label52
	nop
