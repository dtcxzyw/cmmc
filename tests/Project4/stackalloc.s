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
	addiu $t1, $sp, 24
	jal read
	nop
	move $t0, $v0
	blez $v0, label21
	nop
	move $t2, $zero
	b label14
	nop
label13:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
label14:
	jal read
	nop
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	sw $v0, 0($t3)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label14
	nop
	li $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label4
	nop
	bgtz $t0, label51
	nop
	b label13
	nop
label21:
	li $t2, 1
	subu $t3, $t0, $t2
	blez $t3, label84
	nop
label4:
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	lw $t3, 0($t3)
	addiu $t4, $t2, -1
	addiu $t5, $t4, 1
	blez $t5, label34
	nop
label7:
	sll $t6, $t4, 2
	addu $t6, $t1, $t6
	lw $t6, 0($t6)
	subu $t7, $t3, $t6
	bgez $t7, label41
	nop
	sll $t5, $t5, 2
	addu $t5, $t1, $t5
	sw $t6, 0($t5)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	bgtz $t5, label7
	nop
	sll $t4, $t5, 2
	addu $t4, $t1, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label4
	nop
	bgtz $t0, label51
	nop
	b label13
	nop
label41:
	sll $t4, $t5, 2
	addu $t4, $t1, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label4
	nop
	blez $t0, label13
	nop
label51:
	move $t2, $zero
label11:
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	lw $a0, 0($t3)
	jal write
	nop
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label11
	nop
	b label13
	nop
label84:
	bgtz $t0, label51
	nop
	b label13
	nop
label34:
	sll $t4, $t5, 2
	addu $t4, $t1, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label4
	nop
	bgtz $t0, label51
	nop
	b label13
	nop
