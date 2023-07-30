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
	sw $s1, 24($sp)
	sw $s4, 20($sp)
	sw $s0, 16($sp)
	sw $s3, 12($sp)
	sw $s2, 8($sp)
	sw $s5, 4($sp)
	sw $ra, 0($sp)
	move $s1, $a0
	move $s4, $a1
	move $s0, $a2
	move $s3, $a3
	addiu $t0, $a2, 1
	subu $t1, $a3, $t0
	bgtz $t1, label2
	nop
label42:
	lw $ra, 0($sp)
	lw $s5, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s0, 16($sp)
	lw $s4, 20($sp)
	lw $s1, 24($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
label2:
	addu $t1, $s0, $s3
	li $t2, 2
	div $zero, $t1, $t2
	mflo $s2
	subu $t0, $t0, $s2
	bltz $t0, label29
	nop
	addiu $t0, $s2, 1
	subu $t0, $s3, $t0
	bgtz $t0, label16
	nop
label60:
	move $t0, $s2
	move $t1, $s0
	move $t2, $s0
	bne $s3, $s0, label11
	nop
	beq $s0, $s3, label42
	nop
label9:
	sll $t0, $s0, 2
	addu $t1, $s4, $t0
	lw $t1, 0($t1)
	addu $t0, $s1, $t0
	sw $t1, 0($t0)
	addiu $s0, $s0, 1
	bne $s3, $s0, label9
	nop
	b label42
	nop
label11:
	xor $t3, $s2, $t1
	sltu $t3, $zero, $t3
	xor $t4, $s3, $t0
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	bne $t4, $zero, label15
	nop
	bne $s2, $t1, label12
	nop
	sll $t4, $t0, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s4, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	bne $s3, $t3, label11
	nop
	bne $s0, $s3, label9
	nop
	b label42
	nop
label15:
	sll $t4, $t1, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t5, $t0, 2
	addu $t5, $s1, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bltz $t4, label12
	nop
	sll $t4, $t0, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s4, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	bne $s3, $t3, label11
	nop
	bne $s0, $s3, label9
	nop
	b label42
	nop
label16:
	addu $t0, $s3, $s2
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
	move $t1, $s5
	move $t0, $s2
	move $t2, $s2
label17:
	bne $s3, $t2, label21
	nop
	bne $s3, $s2, label153
	nop
	move $t0, $s2
	move $t1, $s0
	move $t2, $s0
	bne $s3, $s0, label11
	nop
	bne $s0, $s3, label9
	nop
	b label42
	nop
label21:
	xor $t3, $s5, $t0
	sltu $t3, $zero, $t3
	xor $t4, $s3, $t1
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	bne $t4, $zero, label23
	nop
	b label24
	nop
label22:
	sll $t4, $t1, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s4, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	b label17
	nop
label23:
	sll $t4, $t0, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t5, $t1, 2
	addu $t5, $s1, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bltz $t4, label140
	nop
	b label22
	nop
label24:
	bne $s5, $t0, label140
	nop
	b label22
	nop
label153:
	move $t0, $s2
label27:
	sll $t1, $t0, 2
	addu $t2, $s4, $t1
	lw $t2, 0($t2)
	addu $t1, $s1, $t1
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	bne $s3, $t0, label27
	nop
	move $t0, $s2
	move $t1, $s0
	move $t2, $s0
	bne $s3, $s0, label11
	nop
	bne $s0, $s3, label9
	nop
	b label42
	nop
label12:
	sll $t4, $t1, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s4, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s3, $t3, label11
	nop
	bne $s0, $s3, label9
	nop
	b label42
	nop
label140:
	sll $t4, $t0, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s4, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	b label17
	nop
label29:
	addu $t0, $s0, $s2
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s5
	move $a0, $s1
	move $a1, $s4
	move $a2, $s0
	move $a3, $s5
	jal merge
	nop
	move $a0, $s1
	move $a1, $s4
	move $a2, $s5
	move $a3, $s2
	jal merge
	nop
	move $t1, $s5
	move $t0, $s0
	move $t2, $s0
label30:
	bne $s2, $t2, label34
	nop
	bne $s0, $s2, label205
	nop
	addiu $t0, $s2, 1
	subu $t0, $s3, $t0
	bgtz $t0, label16
	nop
	b label60
	nop
label34:
	xor $t3, $s5, $t0
	sltu $t3, $zero, $t3
	xor $t4, $s2, $t1
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	bne $t4, $zero, label37
	nop
	b label36
	nop
label35:
	sll $t4, $t1, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s4, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	b label30
	nop
label36:
	bne $s5, $t0, label185
	nop
	b label35
	nop
label205:
	move $t0, $s0
label40:
	sll $t1, $t0, 2
	addu $t2, $s4, $t1
	lw $t2, 0($t2)
	addu $t1, $s1, $t1
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	bne $s2, $t0, label40
	nop
	addiu $t0, $s2, 1
	subu $t0, $s3, $t0
	bgtz $t0, label16
	nop
	b label60
	nop
label37:
	sll $t4, $t0, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t5, $t1, 2
	addu $t5, $s1, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bgez $t4, label35
	nop
label185:
	sll $t4, $t0, 2
	addu $t4, $s1, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s4, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	b label30
	nop
.globl main
main:
	addiu $sp, $sp, -824
	sw $ra, 816($sp)
	addiu $a1, $sp, 16
	addiu $t7, $sp, 416
	jal read
	nop
	move $t6, $v0
	blez $v0, label308
	nop
	move $t0, $zero
label306:
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t7, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t6, $t0
	bgtz $t1, label306
	nop
label308:
	move $a0, $t7
	move $a2, $zero
	move $a3, $t6
	jal merge
	nop
	blez $t6, label311
	nop
	move $t0, $zero
label309:
	sll $t1, $t0, 2
	addu $t1, $t7, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t6, $t0
	bgtz $t1, label309
	nop
label311:
	move $v0, $zero
	lw $ra, 816($sp)
	addiu $sp, $sp, 824
	jr $ra
	nop
