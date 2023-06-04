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
	move $t0, $v0
	sw $t0, 28($sp)
	blez $v0, label9
	nop
	li $a0, 1
	jal write
	nop
	b label3
	nop
label9:
	lw $t0, 28($sp)
	slt $t1, $t0, $zero
	move $t2, $t1
	subu $t3, $zero, $t2
	move $a0, $t3
	jal write
	nop
label3:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 40
	jr $ra
	nop
