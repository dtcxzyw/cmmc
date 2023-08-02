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
	sw $s1, 4($sp)
	sw $s4, 8($sp)
	sw $s2, 12($sp)
	sw $s0, 16($sp)
	sw $s3, 20($sp)
	sw $s5, 24($sp)
	move $s1, $a0
	move $s4, $a1
	move $s2, $a2
	move $s0, $a3
	addiu $t0, $a2, 1
	subu $t1, $a3, $t0
	bgtz $t1, label2
	nop
label63:
	lw $ra, 0($sp)
	lw $s1, 4($sp)
	lw $s4, 8($sp)
	lw $s2, 12($sp)
	lw $s0, 16($sp)
	lw $s3, 20($sp)
	lw $s5, 24($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
label2:
	addu $t1, $s2, $s0
	li $t2, 2
	div $zero, $t1, $t2
	mflo $s3
	subu $t0, $t0, $s3
	bgez $t0, label22
	nop
	addu $t0, $s2, $s3
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s5
	move $a0, $s1
	move $a1, $s4
	move $a2, $s2
	move $a3, $s5
	jal merge
	nop
	move $a0, $s1
	move $a1, $s4
	move $a2, $s5
	move $a3, $s3
	jal merge
	nop
	sll $t0, $s2, 2
	addu $t2, $s1, $t0
	sll $t1, $s5, 2
	addu $t1, $s1, $t1
	addu $t0, $s4, $t0
	move $t4, $s5
	move $t3, $s2
	move $t5, $s2
	beq $s3, $s2, label16
	nop
label11:
	xor $t6, $s5, $t3
	sltu $t6, $zero, $t6
	xor $t7, $s3, $t4
	sltu $t7, $zero, $t7
	and $t6, $t6, $t7
	addiu $t5, $t5, 1
	bne $t6, $zero, label12
	nop
	beq $s5, $t3, label297
	nop
label13:
	lw $t6, 0($t2)
	sw $t6, 0($t0)
	addiu $t3, $t3, 1
	addiu $t2, $t2, 4
	addiu $t0, $t0, 4
	bne $s3, $t5, label11
	nop
label16:
	beq $s2, $s3, label22
	nop
	sll $t0, $s2, 2
	addu $t0, $s4, $t0
	move $t1, $s2
label18:
	lw $t2, 0($t0)
	sll $t3, $t1, 2
	addu $t3, $s1, $t3
	sw $t2, 0($t3)
	addiu $t1, $t1, 1
	beq $s3, $t1, label22
	nop
	addiu $t0, $t0, 4
	b label18
	nop
label12:
	lw $t6, 0($t2)
	lw $t7, 0($t1)
	subu $t6, $t6, $t7
	bltz $t6, label13
	nop
	lw $t6, 0($t1)
	sw $t6, 0($t0)
	addiu $t4, $t4, 1
	addiu $t1, $t1, 4
	addiu $t0, $t0, 4
	bne $s3, $t5, label11
	nop
	b label16
	nop
label22:
	addiu $t0, $s3, 1
	subu $t0, $s0, $t0
	bgtz $t0, label42
	nop
label23:
	sll $t0, $s2, 2
	addu $t2, $s1, $t0
	sll $t1, $s3, 2
	addu $t1, $s1, $t1
	addu $t0, $s4, $t0
	move $t4, $s3
	move $t3, $s2
	move $t5, $s2
	beq $s0, $s2, label36
	nop
label31:
	xor $t6, $s3, $t3
	sltu $t6, $zero, $t6
	xor $t7, $s0, $t4
	sltu $t7, $zero, $t7
	and $t6, $t6, $t7
	addiu $t5, $t5, 1
	beq $t6, $zero, label149
	nop
	lw $t6, 0($t2)
	lw $t7, 0($t1)
	subu $t6, $t6, $t7
	bgez $t6, label159
	nop
label34:
	lw $t6, 0($t2)
	sw $t6, 0($t0)
	addiu $t3, $t3, 1
	addiu $t2, $t2, 4
	addiu $t0, $t0, 4
	bne $s0, $t5, label31
	nop
label36:
	beq $s2, $s0, label63
	nop
	sll $t0, $s2, 2
	addu $t0, $s4, $t0
label38:
	lw $t1, 0($t0)
	sll $t2, $s2, 2
	addu $t2, $s1, $t2
	sw $t1, 0($t2)
	addiu $s2, $s2, 1
	beq $s0, $s2, label63
	nop
	addiu $t0, $t0, 4
	b label38
	nop
label149:
	bne $s3, $t3, label34
	nop
	lw $t6, 0($t1)
	sw $t6, 0($t0)
	addiu $t4, $t4, 1
	addiu $t1, $t1, 4
	addiu $t0, $t0, 4
	bne $s0, $t5, label31
	nop
	b label36
	nop
label42:
	addu $t0, $s0, $s3
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s5
	move $a0, $s1
	move $a1, $s4
	move $a2, $s3
	move $a3, $s5
	jal merge
	nop
	move $a0, $s1
	move $a1, $s4
	move $a2, $s5
	move $a3, $s0
	jal merge
	nop
	sll $t0, $s3, 2
	addu $t2, $s1, $t0
	sll $t1, $s5, 2
	addu $t1, $s1, $t1
	addu $t0, $s4, $t0
	move $t4, $s5
	move $t3, $s3
	move $t5, $s3
	beq $s0, $s3, label55
	nop
label50:
	xor $t6, $s5, $t3
	sltu $t6, $zero, $t6
	xor $t7, $s0, $t4
	sltu $t7, $zero, $t7
	and $t6, $t6, $t7
	addiu $t5, $t5, 1
	bne $t6, $zero, label52
	nop
	bne $s5, $t3, label54
	nop
	b label203
	nop
label52:
	lw $t6, 0($t2)
	lw $t7, 0($t1)
	subu $t6, $t6, $t7
	bgez $t6, label53
	nop
label54:
	lw $t6, 0($t2)
	sw $t6, 0($t0)
	addiu $t3, $t3, 1
	addiu $t2, $t2, 4
	addiu $t0, $t0, 4
	bne $s0, $t5, label50
	nop
label55:
	beq $s0, $s3, label23
	nop
	sll $t0, $s3, 2
	addu $t0, $s4, $t0
	move $t1, $s3
label57:
	lw $t2, 0($t0)
	sll $t3, $t1, 2
	addu $t3, $s1, $t3
	sw $t2, 0($t3)
	addiu $t1, $t1, 1
	beq $s0, $t1, label23
	nop
	addiu $t0, $t0, 4
	b label57
	nop
label53:
	lw $t6, 0($t1)
	sw $t6, 0($t0)
	addiu $t4, $t4, 1
	addiu $t1, $t1, 4
	addiu $t0, $t0, 4
	bne $s0, $t5, label50
	nop
	b label55
	nop
label159:
	lw $t6, 0($t1)
	sw $t6, 0($t0)
	addiu $t4, $t4, 1
	addiu $t1, $t1, 4
	addiu $t0, $t0, 4
	bne $s0, $t5, label31
	nop
	b label36
	nop
label203:
	lw $t6, 0($t1)
	sw $t6, 0($t0)
	addiu $t4, $t4, 1
	addiu $t1, $t1, 4
	addiu $t0, $t0, 4
	bne $s0, $t5, label50
	nop
	b label55
	nop
label297:
	lw $t6, 0($t1)
	sw $t6, 0($t0)
	addiu $t4, $t4, 1
	addiu $t1, $t1, 4
	addiu $t0, $t0, 4
	bne $s3, $t5, label11
	nop
	b label16
	nop
.globl main
main:
	addiu $sp, $sp, -824
	sw $ra, 16($sp)
	addiu $a1, $sp, 424
	addiu $t9, $sp, 24
	jal read
	nop
	move $t8, $v0
	blez $v0, label330
	nop
	move $t0, $t9
	move $t1, $zero
label326:
	jal read
	nop
	sw $v0, 0($t0)
	addiu $t1, $t1, 1
	subu $t2, $t8, $t1
	blez $t2, label330
	nop
	addiu $t0, $t0, 4
	b label326
	nop
label330:
	move $a0, $t9
	move $a2, $zero
	move $a3, $t8
	jal merge
	nop
	blez $t8, label336
	nop
	move $t0, $zero
label332:
	lw $a0, 0($t9)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t8, $t0
	blez $t1, label336
	nop
	addiu $t9, $t9, 4
	b label332
	nop
label336:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 824
	jr $ra
	nop
