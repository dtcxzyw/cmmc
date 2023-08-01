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
merge:
	addiu $sp, $sp, -32
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s1, 16($sp)
	sw $s4, 20($sp)
	sw $s5, 24($sp)
	move $s0, $a0
	move $s2, $a1
	move $s3, $a2
	move $s1, $a3
	addiu $t0, $a2, 1
	subu $t1, $a3, $t0
	blez $t1, label2
	nop
	addu $t1, $a2, $a3
	li $t2, 2
	div $zero, $t1, $t2
	mflo $s4
	subu $t0, $t0, $s4
	bltz $t0, label30
	nop
label4:
	addiu $t0, $s4, 1
	subu $t0, $s1, $t0
	blez $t0, label60
	nop
	addu $t0, $s1, $s4
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s5
	move $a0, $s0
	move $a1, $s2
	move $a2, $s4
	move $a3, $s5
	jal merge
	nop
	move $a0, $s0
	move $a1, $s2
	move $a2, $s5
	move $a3, $s1
	jal merge
	nop
	move $t1, $s5
	move $t0, $s4
	move $t2, $s4
	beq $s1, $s4, label15
	nop
label10:
	xor $t3, $s5, $t0
	sltu $t3, $zero, $t3
	xor $t4, $s1, $t1
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	bne $t4, $zero, label14
	nop
	beq $s5, $t0, label82
	nop
label13:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	bne $s1, $t3, label10
	nop
	b label15
	nop
label14:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t1, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bltz $t4, label13
	nop
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s1, $t3, label10
	nop
	b label15
	nop
label82:
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s1, $t3, label10
	nop
	b label15
	nop
label2:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s1, 16($sp)
	lw $s4, 20($sp)
	lw $s5, 24($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
label60:
	move $t1, $s4
	move $t0, $s3
	move $t2, $s3
	b label18
	nop
label15:
	beq $s1, $s4, label60
	nop
	move $t0, $s4
label16:
	sll $t1, $t0, 2
	addu $t2, $s2, $t1
	lw $t2, 0($t2)
	addu $t1, $s0, $t1
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	bne $s1, $t0, label16
	nop
	b label60
	nop
label18:
	beq $s1, $t2, label22
	nop
label25:
	xor $t3, $s4, $t0
	sltu $t3, $zero, $t3
	xor $t4, $s1, $t1
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	bne $t4, $zero, label29
	nop
	b label137
	nop
label26:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	bne $s1, $t3, label25
	nop
	b label22
	nop
label29:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t1, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bltz $t4, label26
	nop
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s1, $t3, label25
	nop
	b label22
	nop
label137:
	bne $s4, $t0, label26
	nop
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s1, $t3, label25
	nop
label22:
	beq $s3, $s1, label2
	nop
label23:
	sll $t0, $s3, 2
	addu $t1, $s2, $t0
	lw $t1, 0($t1)
	addu $t0, $s0, $t0
	sw $t1, 0($t0)
	addiu $s3, $s3, 1
	bne $s1, $s3, label23
	nop
	b label2
	nop
label30:
	addu $t0, $s3, $s4
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s5
	move $a0, $s0
	move $a1, $s2
	move $a2, $s3
	move $a3, $s5
	jal merge
	nop
	move $a0, $s0
	move $a1, $s2
	move $a2, $s5
	move $a3, $s4
	jal merge
	nop
	move $t1, $s5
	move $t0, $s3
	move $t2, $s3
	beq $s4, $s3, label40
	nop
label35:
	xor $t3, $s5, $t0
	sltu $t3, $zero, $t3
	xor $t4, $s4, $t1
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	bne $t4, $zero, label38
	nop
	bne $s5, $t0, label39
	nop
	b label184
	nop
label38:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t1, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bgez $t4, label194
	nop
label39:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	bne $s4, $t3, label35
	nop
label40:
	beq $s3, $s4, label4
	nop
	move $t0, $s3
label41:
	sll $t1, $t0, 2
	addu $t2, $s2, $t1
	lw $t2, 0($t2)
	addu $t1, $s0, $t1
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	bne $s4, $t0, label41
	nop
	b label4
	nop
label184:
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s4, $t3, label35
	nop
	b label40
	nop
label194:
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s4, $t3, label35
	nop
	b label40
	nop
.globl main
main:
	addiu $sp, $sp, -824
	sw $ra, 16($sp)
	addiu $a1, $sp, 424
	addiu $t7, $sp, 24
	jal read
	nop
	move $t6, $v0
	blez $v0, label301
	nop
	move $t0, $zero
label299:
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t7, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t6, $t0
	bgtz $t1, label299
	nop
label301:
	move $a0, $t7
	move $a2, $zero
	move $a3, $t6
	jal merge
	nop
	blez $t6, label304
	nop
	move $t0, $zero
label302:
	sll $t1, $t0, 2
	addu $t1, $t7, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t6, $t0
	bgtz $t1, label302
	nop
label304:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 824
	jr $ra
	nop
