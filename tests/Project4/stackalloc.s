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
	blez $v0, label31
	nop
	move $t2, $t1
	move $t3, $zero
label21:
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t3, $t3, 1
	subu $t4, $t0, $t3
	blez $t4, label31
	nop
	addiu $t2, $t2, 4
	b label21
	nop
label31:
	addiu $t2, $t1, 4
	li $t3, 1
	subu $t4, $t0, $t3
	bgtz $t4, label12
	nop
label5:
	blez $t0, label11
	nop
	move $t2, $zero
label7:
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	blez $t3, label11
	nop
	addiu $t1, $t1, 4
	b label7
	nop
label12:
	lw $t4, 0($t2)
	addiu $t6, $t3, -1
	sll $t5, $t6, 2
	addu $t5, $t1, $t5
	addiu $t7, $t6, 1
	bgtz $t7, label17
	nop
label16:
	sll $t5, $t7, 2
	addu $t5, $t1, $t5
	sw $t4, 0($t5)
	addiu $t3, $t3, 1
	addiu $t2, $t2, 4
	subu $t4, $t0, $t3
	bgtz $t4, label12
	nop
	b label5
	nop
label17:
	lw $t8, 0($t5)
	subu $t9, $t4, $t8
	bgez $t9, label16
	nop
	sll $t7, $t7, 2
	addu $t7, $t1, $t7
	sw $t8, 0($t7)
	addiu $t6, $t6, -1
	addiu $t5, $t5, -4
	addiu $t7, $t6, 1
	bgtz $t7, label17
	nop
	sll $t5, $t7, 2
	addu $t5, $t1, $t5
	sw $t4, 0($t5)
	addiu $t3, $t3, 1
	addiu $t2, $t2, 4
	subu $t4, $t0, $t3
	bgtz $t4, label12
	nop
	b label5
	nop
label11:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
