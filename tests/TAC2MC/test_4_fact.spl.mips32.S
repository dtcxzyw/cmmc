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
fact:
	addiu $sp, $sp, -48
	sw $ra, 16($sp)
	move $t0, $a0
	li $t1, 1
	sw $t0, 28($sp)
	bne $a0, $t1, label4
	nop
	lw $t0, 28($sp)
	move $t1, $t0
	sw $t1, 24($sp)
	lw $t0, 24($sp)
	move $v0, $t0
	lw $ra, 16($sp)
	addiu $sp, $sp, 48
	jr $ra
	nop
label4:
	lw $t0, 28($sp)
	addiu $t1, $t0, -1
	move $a0, $t1
	sw $t1, 36($sp)
	jal fact
	nop
	lw $t2, 28($sp)
	mult $t2, $v0
	mflo $t3
	move $t4, $t3
	sw $t4, 24($sp)
	lw $t0, 24($sp)
	move $v0, $t0
	lw $ra, 16($sp)
	addiu $sp, $sp, 48
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -40
	sw $ra, 16($sp)
	jal read
	nop
	move $t0, $v0
	addiu $t1, $v0, -1
	sw $t0, 24($sp)
	blez $t1, label31
	nop
	lw $t0, 24($sp)
	move $a0, $t0
	jal fact
	nop
	move $t1, $v0
	sw $t1, 28($sp)
	lw $t0, 28($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 40
	jr $ra
	nop
label31:
	li $t0, 1
	sw $t0, 28($sp)
	lw $t0, 28($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 40
	jr $ra
	nop
