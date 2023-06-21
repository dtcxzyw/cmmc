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
gcd:
	addiu $sp, $sp, -48
	sw $ra, 40($sp)
	addiu $t0, $sp, 16
	lw $t1, 0($a0)
	lw $t2, 4($a0)
	move $t3, $t1
	move $t4, $t2
	sw $t2, 32($sp)
	sw $t1, 28($sp)
	sw $t0, 24($sp)
	beq $t2, $zero, label15
	nop
	b label2
	nop
label15:
	lw $t0, 28($sp)
	move $v0, $t0
	sw $t0, 36($sp)
	b label3
	nop
label2:
	lw $t0, 32($sp)
	sw $t0, 16($sp)
	lw $t1, 28($sp)
	div $zero, $t1, $t0
	mflo $t2
	mult $t0, $t2
	mflo $t3
	subu $t4, $t1, $t3
	lw $a0, 24($sp)
	sw $t4, 4($a0)
	jal gcd
	nop
	move $t5, $v0
	sw $v0, 36($sp)
label3:
	lw $t0, 36($sp)
	move $v0, $t0
	lw $ra, 40($sp)
	addiu $sp, $sp, 48
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -32
	sw $ra, 28($sp)
	addiu $a0, $sp, 16
	sw $a0, 24($sp)
	jal read
	nop
	sw $v0, 16($sp)
	jal read
	nop
	move $t0, $v0
	lw $t1, 24($sp)
	sw $v0, 4($t1)
	move $a0, $t1
	jal gcd
	nop
	move $t2, $v0
	move $a0, $v0
	jal write
	nop
	move $v0, $zero
	lw $ra, 28($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
