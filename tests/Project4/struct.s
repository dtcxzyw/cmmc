.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.section .rodata
.bss
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
	addiu $sp, $sp, -32
	sw $ra, 24($sp)
	move $t0, $a0
	addiu $a0, $sp, 16
	lw $v0, 0($t0)
	lw $t1, 4($t0)
	move $t0, $t1
	beq $t1, $zero, label3
	nop
	div $zero, $v0, $t1
	mflo $t1
	mult $t0, $t1
	mflo $t1
	subu $t1, $v0, $t1
	sw $t0, 16($sp)
	sw $t1, 4($a0)
	jal gcd
	nop
label3:
	lw $ra, 24($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -32
	sw $ra, 24($sp)
	addiu $t0, $sp, 16
	jal read
	nop
	sw $v0, 16($sp)
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
	lw $ra, 24($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
