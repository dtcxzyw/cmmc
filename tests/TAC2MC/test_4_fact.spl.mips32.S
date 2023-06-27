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
	blez $t0, label15
	nop
	li $t0, 1
	bne $v0, $t0, label19
	nop
	b label35
	nop
label15:
	li $a0, 1
label9:
	jal write
	nop
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 24
	jr $ra
	nop
label35:
	li $t0, 1
	mult $v0, $t0
	mflo $a0
	b label9
	nop
label19:
	li $t0, 1
	mult $v0, $t0
	mflo $t0
	addiu $v0, $v0, -1
	li $t1, 1
	bne $v0, $t1, label6
	nop
	b label36
	nop
label6:
	mult $v0, $t0
	mflo $t0
	addiu $v0, $v0, -1
	li $t1, 1
	bne $v0, $t1, label6
	nop
label36:
	mult $v0, $t0
	mflo $a0
	b label9
	nop
