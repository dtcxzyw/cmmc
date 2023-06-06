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
	sw $ra, 16($sp)
	addiu $t0, $sp, 24
	lw $t1, 0($a0)
	lw $t2, 4($a0)
	sw $t2, 36($sp)
	sw $t1, 40($sp)
	sw $t0, 44($sp)
	beq $t2, $zero, label13
	nop
	b label2
	nop
label13:
	lw $t0, 40($sp)
	move $t1, $t0
	sw $t0, 32($sp)
	b label3
	nop
label2:
	lw $t0, 36($sp)
	sw $t0, 24($sp)
	lw $t1, 40($sp)
	div $zero, $t1, $t0
	mflo $t2
	mult $t0, $t2
	mflo $t3
	subu $t4, $t1, $t3
	lw $t5, 44($sp)
	sw $t4, 4($t5)
	move $a0, $t5
	jal gcd
	nop
	move $t6, $v0
	sw $v0, 32($sp)
label3:
	lw $t0, 32($sp)
	move $v0, $t0
	lw $ra, 16($sp)
	addiu $sp, $sp, 48
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -32
	sw $ra, 16($sp)
	addiu $t0, $sp, 24
	jal read
	nop
	sw $v0, 24($sp)
	jal read
	nop
	sw $v0, 4($t0)
	move $a0, $t0
	jal gcd
	nop
	move $a0, $v0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
