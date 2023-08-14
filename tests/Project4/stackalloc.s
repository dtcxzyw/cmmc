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
	# stack usage: CalleeArg[0] Local[400] RegSpill[0] CalleeSaved[4]
	addiu $sp, $sp, -424
	sw $ra, 16($sp)
	addiu $t1, $sp, 24
	jal read
	nop
	move $t0, $v0
	blez $v0, label7
	nop
	move $t2, $t1
	move $t3, $zero
label3:
	jal read
	nop
	sw $v0, 0($t2)
	addiu $t3, $t3, 1
	subu $t4, $t0, $t3
	blez $t4, label7
	nop
	addiu $t2, $t2, 4
	b label3
	nop
label7:
	addiu $t2, $t0, -1
	blez $t2, label21
	nop
	addiu $t2, $t1, 4
	li $t5, 1
	addiu $t6, $t5, -1
	sll $t3, $t6, 2
	addu $t4, $t1, $t3
	lw $t3, 0($t2)
	addiu $t7, $t6, 1
	bgtz $t7, label15
	nop
	move $t7, $zero
	addiu $t5, $t5, 1
	sw $t3, 4($t4)
	subu $t3, $t0, $t5
	bgtz $t3, label20
	nop
	b label21
	nop
label98:
	move $t7, $zero
	addiu $t5, $t5, 1
	sw $t3, 4($t4)
	subu $t3, $t0, $t5
	blez $t3, label21
	nop
label20:
	addiu $t2, $t2, 4
	addiu $t6, $t5, -1
	sll $t3, $t6, 2
	addu $t4, $t1, $t3
	lw $t3, 0($t2)
	addiu $t7, $t6, 1
	blez $t7, label98
	nop
label15:
	lw $t7, 0($t4)
	slt $t7, $t3, $t7
	beq $t7, $zero, label59
	nop
	lw $t7, 0($t4)
	sw $t7, 4($t4)
	addiu $t6, $t6, -1
	addiu $t4, $t4, -4
	addiu $t7, $t6, 1
	bgtz $t7, label15
	nop
	move $t7, $zero
	addiu $t5, $t5, 1
	sw $t3, 4($t4)
	subu $t3, $t0, $t5
	bgtz $t3, label20
	nop
label21:
	blez $t0, label22
	nop
	move $t2, $zero
	b label24
	nop
label27:
	addiu $t1, $t1, 4
label24:
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label27
	nop
label22:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
label59:
	addiu $t5, $t5, 1
	sw $t3, 4($t4)
	subu $t3, $t0, $t5
	bgtz $t3, label20
	nop
	b label21
	nop
