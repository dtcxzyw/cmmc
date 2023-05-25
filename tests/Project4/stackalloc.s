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
	addiu $sp, $sp, -648
	sw $ra, 16($sp)
	sw $s0, 572($sp)
	sw $s1, 576($sp)
	addiu $t0, $sp, 88
	jal read
	nop
	move $t1, $v0
	sw $t1, 72($sp)
	sw $t0, 84($sp)
	blez $v0, label4
	nop
	move $t0, $zero
	sw $t0, 76($sp)
label2:
	li $t0, 4
	lw $t1, 76($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 84($sp)
	addu $t4, $t3, $t2
	jal read
	nop
	sw $v0, 0($t4)
	addiu $t5, $t1, 1
	lw $t6, 72($sp)
	subu $t7, $t5, $t6
	sw $t5, 80($sp)
	bgez $t7, label4
	nop
	lw $t0, 80($sp)
	move $t1, $t0
	sw $t1, 76($sp)
	b label2
	nop
label4:
	lw $t0, 72($sp)
	addiu $t1, $t0, -1
	blez $t1, label17
	nop
	b label185
	nop
label5:
	li $t0, 4
	lw $t1, 492($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 84($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	addiu $t6, $t1, -1
	addiu $t7, $t6, 1
	sw $t6, 500($sp)
	sw $t5, 68($sp)
	blez $t7, label51
	nop
	b label7
	nop
label51:
	move $t0, $zero
	sw $t0, 64($sp)
	lw $t0, 64($sp)
	beq $t0, $zero, label59
	nop
	b label188
	nop
label7:
	li $t0, 4
	lw $t1, 500($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 84($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	lw $t6, 68($sp)
	slt $t7, $t6, $t5
	move $t8, $t7
	sw $t8, 64($sp)
	lw $t0, 64($sp)
	beq $t0, $zero, label59
	nop
	b label188
	nop
label80:
	lw $t0, 520($sp)
	move $t1, $t0
	sw $t1, 524($sp)
label15:
	lw $t0, 524($sp)
	addiu $t1, $t0, 1
	li $t2, 4
	mult $t1, $t2
	mflo $t3
	lw $t4, 84($sp)
	addu $t5, $t4, $t3
	lw $t6, 68($sp)
	sw $t6, 0($t5)
	lw $t7, 492($sp)
	addiu $t8, $t7, 1
	lw $t9, 72($sp)
	subu $s0, $t8, $t9
	sw $t8, 508($sp)
	bgez $s0, label17
	nop
	lw $t0, 508($sp)
	move $t1, $t0
	sw $t1, 492($sp)
	b label5
	nop
label17:
	lw $t0, 72($sp)
	blez $t0, label20
	nop
	b label187
	nop
label188:
	lw $t0, 500($sp)
	move $t1, $t0
	sw $t1, 60($sp)
	b label10
	nop
label59:
	lw $t0, 500($sp)
	move $t1, $t0
	sw $t1, 524($sp)
	b label15
	nop
label10:
	lw $t0, 60($sp)
	addiu $t1, $t0, 1
	li $t2, 4
	mult $t1, $t2
	mflo $t3
	lw $t4, 84($sp)
	addu $t5, $t4, $t3
	li $t6, 4
	mult $t0, $t6
	mflo $t7
	addu $t8, $t4, $t7
	lw $t9, 0($t8)
	sw $t9, 0($t5)
	addiu $s0, $t0, -1
	addiu $s1, $s0, 1
	sw $s0, 520($sp)
	blez $s1, label72
	nop
	b label12
	nop
label72:
	move $t0, $zero
	sw $t0, 516($sp)
	lw $t0, 516($sp)
	beq $t0, $zero, label80
	nop
label190:
	lw $t0, 520($sp)
	move $t1, $t0
	sw $t1, 60($sp)
	b label10
	nop
label12:
	li $t0, 4
	lw $t1, 520($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 84($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	lw $t6, 68($sp)
	slt $t7, $t6, $t5
	move $t8, $t7
	sw $t8, 516($sp)
	lw $t0, 516($sp)
	beq $t0, $zero, label80
	nop
	b label190
	nop
label185:
	li $t0, 1
	sw $t0, 492($sp)
	b label5
	nop
label187:
	move $t0, $zero
	sw $t0, 512($sp)
label18:
	li $t0, 4
	lw $t1, 512($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 84($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	move $a0, $t5
	jal write
	nop
	addiu $t6, $t1, 1
	lw $t7, 72($sp)
	subu $t8, $t6, $t7
	sw $t6, 504($sp)
	bgez $t8, label20
	nop
	lw $t0, 504($sp)
	move $t1, $t0
	sw $t1, 512($sp)
	b label18
	nop
label20:
	move $v0, $zero
	lw $s1, 576($sp)
	lw $s0, 572($sp)
	lw $ra, 16($sp)
	addiu $sp, $sp, 648
	jr $ra
	nop
