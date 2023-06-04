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
	sw $ra, 16($sp)
	jal read
	nop
	move $t0, $v0
	addiu $t1, $v0, -1
	sw $t0, 24($sp)
	blez $t1, label15
	nop
	li $t0, 1
	lw $t1, 24($sp)
	bne $t1, $t0, label19
	nop
	b label18
	nop
label15:
	li $t0, 1
	sw $t0, 28($sp)
	b label9
	nop
label18:
	lw $t0, 24($sp)
	move $t1, $t0
	li $t2, 1
	sw $t2, 40($sp)
	sw $t1, 36($sp)
	lw $t0, 36($sp)
	lw $t1, 40($sp)
	mult $t0, $t1
	mflo $t2
	move $t3, $t2
	sw $t3, 28($sp)
label9:
	lw $t0, 28($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 56
	jr $ra
	nop
label19:
	lw $t0, 24($sp)
	move $t1, $t0
	li $t2, 1
	sw $t2, 52($sp)
	sw $t1, 44($sp)
	lw $t0, 44($sp)
	addiu $t1, $t0, -1
	lw $t2, 52($sp)
	mult $t0, $t2
	mflo $t3
	li $t4, 1
	sw $t3, 32($sp)
	sw $t1, 48($sp)
	bne $t1, $t4, label26
	nop
label25:
	lw $t0, 48($sp)
	move $t1, $t0
	lw $t2, 32($sp)
	move $t3, $t2
	sw $t3, 40($sp)
	sw $t1, 36($sp)
	lw $t0, 36($sp)
	lw $t1, 40($sp)
	mult $t0, $t1
	mflo $t2
	move $t3, $t2
	sw $t3, 28($sp)
	b label9
	nop
label26:
	lw $t0, 48($sp)
	move $t1, $t0
	lw $t2, 32($sp)
	move $t3, $t2
	sw $t3, 52($sp)
	sw $t1, 44($sp)
	lw $t0, 44($sp)
	addiu $t1, $t0, -1
	lw $t2, 52($sp)
	mult $t0, $t2
	mflo $t3
	li $t4, 1
	sw $t3, 32($sp)
	sw $t1, 48($sp)
	bne $t1, $t4, label26
	nop
	b label25
	nop
