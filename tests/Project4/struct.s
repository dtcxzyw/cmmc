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
	# stack usage: CalleeArg[0] Local[8] RegSpill[0] CalleeSaved[4]
	addiu $sp, $sp, -32
	sw $ra, 16($sp)
	move $t0, $a0
	addiu $a0, $sp, 24
	lw $v0, 0($t0)
	lw $t0, 4($t0)
	move $t1, $t0
	beq $t0, $zero, label3
	nop
	div $zero, $v0, $t0
	mflo $t2
	mult $t0, $t2
	mflo $t1
	subu $t1, $v0, $t1
	sw $t0, 24($sp)
	sw $t1, 4($a0)
	jal gcd
	nop
label3:
	lw $ra, 16($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
.globl main
main:
	# stack usage: CalleeArg[0] Local[8] RegSpill[0] CalleeSaved[4]
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
