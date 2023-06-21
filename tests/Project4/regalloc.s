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
	addiu $sp, $sp, -40
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
	sw $zero, 32($sp)
	sw $t0, 20($sp)
	addiu $t1, $t0, -1
	move $t2, $zero
	addiu $t3, $zero, 1
	sw $t3, 28($sp)
	sw $t1, 24($sp)
	bne $t1, $zero, label42
	nop
	b label5
	nop
label42:
	lw $t0, 24($sp)
	move $t1, $t0
	lw $t2, 28($sp)
	move $t3, $t2
	sw $t2, 32($sp)
	sw $t0, 20($sp)
	addiu $t1, $t0, -1
	addiu $t3, $t2, 1
	sw $t3, 28($sp)
	sw $t1, 24($sp)
	bne $t1, $zero, label42
	nop
label5:
	lw $t0, 24($sp)
	lw $t1, 28($sp)
	addu $a0, $t0, $t1
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 40
	jr $ra
	nop
