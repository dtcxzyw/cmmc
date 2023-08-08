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
	addiu $sp, $sp, -424
	sw $ra, 16($sp)
	addiu $t0, $sp, 24
	jal read
	nop
	move $t1, $v0
	blez $v0, label33
	nop
	move $t2, $t0
	move $t3, $zero
label23:
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t3, $t3, 1
	subu $t4, $t1, $t3
	blez $t4, label33
	nop
	addiu $t2, $t2, 4
	b label23
	nop
label33:
	addiu $t3, $t0, 4
	li $t4, 1
	subu $t2, $t1, $t4
	bgtz $t2, label12
	nop
label5:
	blez $t1, label6
	nop
	move $t2, $zero
label8:
	lw $a0, 0($t0)
	jal write
	nop
	addiu $t2, $t2, 1
	subu $t3, $t1, $t2
	blez $t3, label6
	nop
	addiu $t0, $t0, 4
	b label8
	nop
label12:
	lw $t2, 0($t3)
	addiu $t6, $t4, -1
	sll $t5, $t6, 2
	addu $t5, $t0, $t5
	addiu $t7, $t6, 1
	bgtz $t7, label20
	nop
	b label56
	nop
label93:
	move $t8, $zero
	addiu $t7, $t6, 1
	sll $t5, $t7, 2
	addu $t5, $t0, $t5
	sw $t2, 0($t5)
	addiu $t4, $t4, 1
	addiu $t3, $t3, 4
	subu $t2, $t1, $t4
	bgtz $t2, label12
	nop
	b label5
	nop
label18:
	lw $t8, 0($t5)
	sll $t7, $t7, 2
	addu $t7, $t0, $t7
	sw $t8, 0($t7)
	addiu $t6, $t6, -1
	addiu $t5, $t5, -4
	addiu $t7, $t6, 1
	blez $t7, label93
	nop
label20:
	lw $t7, 0($t5)
	slt $t8, $t2, $t7
	addiu $t7, $t6, 1
	bne $t8, $zero, label18
	nop
	sll $t5, $t7, 2
	addu $t5, $t0, $t5
	sw $t2, 0($t5)
	addiu $t4, $t4, 1
	addiu $t3, $t3, 4
	subu $t2, $t1, $t4
	bgtz $t2, label12
	nop
	b label5
	nop
label56:
	move $t8, $zero
	addiu $t7, $t6, 1
	sll $t5, $t7, 2
	addu $t5, $t0, $t5
	sw $t2, 0($t5)
	addiu $t4, $t4, 1
	addiu $t3, $t3, 4
	subu $t2, $t1, $t4
	bgtz $t2, label12
	nop
	b label5
	nop
label6:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
