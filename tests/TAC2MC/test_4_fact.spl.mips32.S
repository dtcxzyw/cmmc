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
	addiu $sp, $sp, -72
	sw $ra, 16($sp)
	jal read
	nop
	move $t0, $v0
	addiu $t1, $v0, -1
	sw $t0, 32($sp)
	blez $t1, label15
	nop
	li $t0, 1
	lw $t1, 32($sp)
	bne $t1, $t0, label19
	nop
	b label18
	nop
label15:
	li $t0, 1
	sw $t0, 36($sp)
	lw $t0, 36($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 72
	jr $ra
	nop
label18:
	lw $t0, 32($sp)
	move $t1, $t0
	li $t2, 1
	sw $t2, 48($sp)
	sw $t1, 44($sp)
	lw $t0, 44($sp)
	lw $t1, 48($sp)
	mult $t0, $t1
	mflo $t2
	move $t3, $t2
	sw $t3, 36($sp)
	lw $t0, 36($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 72
	jr $ra
	nop
label19:
	lw $t0, 32($sp)
	move $t1, $t0
	li $t2, 1
	sw $t2, 60($sp)
	sw $t1, 52($sp)
	lw $t0, 52($sp)
	addiu $t1, $t0, -1
	lw $t2, 60($sp)
	mult $t0, $t2
	mflo $t3
	li $t4, 1
	sw $t3, 40($sp)
	sw $t1, 56($sp)
	bne $t1, $t4, label26
	nop
	b label53
	nop
label26:
	lw $t0, 56($sp)
	move $t1, $t0
	lw $t2, 40($sp)
	move $t3, $t2
	sw $t3, 60($sp)
	sw $t1, 52($sp)
	lw $t0, 52($sp)
	addiu $t1, $t0, -1
	lw $t2, 60($sp)
	mult $t0, $t2
	mflo $t3
	li $t4, 1
	sw $t3, 40($sp)
	sw $t1, 56($sp)
	bne $t1, $t4, label26
	nop
label53:
	lw $t0, 56($sp)
	move $t1, $t0
	lw $t2, 40($sp)
	move $t3, $t2
	sw $t3, 48($sp)
	sw $t1, 44($sp)
	lw $t0, 44($sp)
	lw $t1, 48($sp)
	mult $t0, $t1
	mflo $t2
	move $t3, $t2
	sw $t3, 36($sp)
	lw $t0, 36($sp)
	move $a0, $t0
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 72
	jr $ra
	nop
