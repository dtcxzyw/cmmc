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
	addiu $sp, $sp, -24
	sw $ra, 16($sp)
	jal read
	nop
	addiu $t0, $v0, -1
	blez $t0, label10
	nop
	move $t0, $v0
	li $t1, 1
label2:
	mult $t0, $t1
	mflo $t1
	addiu $t0, $t0, -1
	li $t2, 1
	bne $t0, $t2, label2
	nop
	move $a0, $t1
	b label5
	nop
label10:
	li $a0, 1
label5:
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 24
	jr $ra
	nop
