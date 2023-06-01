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
	sw $t1, 520($sp)
	sw $t0, 524($sp)
	blez $v0, label4
	nop
	move $t0, $zero
	sw $t0, 516($sp)
	b label2
	nop
label197:
	li $t0, 1
	sw $t0, 80($sp)
	b label5
	nop
label2:
	li $t0, 4
	lw $t1, 516($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 524($sp)
	addu $t4, $t3, $t2
	jal read
	nop
	sw $v0, 0($t4)
	addiu $t5, $t1, 1
	lw $t6, 520($sp)
	subu $t7, $t5, $t6
	sw $t5, 512($sp)
	bgez $t7, label4
	nop
	lw $t0, 512($sp)
	move $t1, $t0
	sw $t1, 516($sp)
	b label2
	nop
label4:
	lw $t0, 520($sp)
	addiu $t1, $t0, -1
	blez $t1, label17
	nop
	b label197
	nop
label5:
	li $t0, 4
	lw $t1, 80($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 524($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	addiu $t6, $t1, -1
	addiu $t7, $t6, 1
	sw $t6, 488($sp)
	sw $t5, 496($sp)
	blez $t7, label53
	nop
	b label7
	nop
label53:
	move $t0, $zero
	sw $t0, 76($sp)
	lw $t0, 76($sp)
	beq $t0, $zero, label63
	nop
	b label200
	nop
label7:
	li $t0, 4
	lw $t1, 488($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 524($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	lw $t6, 496($sp)
	slt $t7, $t6, $t5
	move $t8, $t7
	sw $t8, 76($sp)
	lw $t0, 76($sp)
	beq $t0, $zero, label63
	nop
	b label200
	nop
label199:
	move $t0, $zero
	sw $t0, 508($sp)
	b label18
	nop
label200:
	lw $t0, 488($sp)
	move $t1, $t0
	sw $t1, 72($sp)
	b label10
	nop
label63:
	lw $t0, 488($sp)
	move $t1, $t0
	sw $t1, 64($sp)
label15:
	lw $t0, 64($sp)
	addiu $t1, $t0, 1
	li $t2, 4
	mult $t1, $t2
	mflo $t3
	lw $t4, 524($sp)
	addu $t5, $t4, $t3
	lw $t6, 496($sp)
	sw $t6, 0($t5)
	lw $t7, 80($sp)
	addiu $t8, $t7, 1
	lw $t9, 520($sp)
	subu $s0, $t8, $t9
	sw $t8, 504($sp)
	bgez $s0, label17
	nop
	lw $t0, 504($sp)
	move $t1, $t0
	sw $t1, 80($sp)
	b label5
	nop
label17:
	lw $t0, 520($sp)
	blez $t0, label103
	nop
	b label199
	nop
label18:
	li $t0, 4
	lw $t1, 508($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 524($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	move $a0, $t5
	jal write
	nop
	addiu $t6, $t1, 1
	lw $t7, 520($sp)
	subu $t8, $t6, $t7
	sw $t6, 500($sp)
	bgez $t8, label103
	nop
	lw $t0, 500($sp)
	move $t1, $t0
	sw $t1, 508($sp)
	b label18
	nop
label10:
	lw $t0, 72($sp)
	addiu $t1, $t0, 1
	li $t2, 4
	mult $t1, $t2
	mflo $t3
	lw $t4, 524($sp)
	addu $t5, $t4, $t3
	li $t6, 4
	mult $t0, $t6
	mflo $t7
	addu $t8, $t4, $t7
	lw $t9, 0($t8)
	sw $t9, 0($t5)
	addiu $s0, $t0, -1
	addiu $s1, $s0, 1
	sw $s0, 68($sp)
	blez $s1, label78
	nop
	b label12
	nop
label78:
	move $t0, $zero
	sw $t0, 60($sp)
	lw $t0, 60($sp)
	beq $t0, $zero, label88
	nop
label202:
	lw $t0, 68($sp)
	move $t1, $t0
	sw $t1, 72($sp)
	b label10
	nop
label12:
	li $t0, 4
	lw $t1, 68($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 524($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	lw $t6, 496($sp)
	slt $t7, $t6, $t5
	move $t8, $t7
	sw $t8, 60($sp)
	lw $t0, 60($sp)
	beq $t0, $zero, label88
	nop
	b label202
	nop
label88:
	lw $t0, 68($sp)
	move $t1, $t0
	sw $t1, 64($sp)
	b label15
	nop
label103:
	move $v0, $zero
	lw $s1, 576($sp)
	lw $s0, 572($sp)
	lw $ra, 16($sp)
	addiu $sp, $sp, 648
	jr $ra
	nop
