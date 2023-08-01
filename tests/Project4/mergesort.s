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
	sw $s4, 12($sp)
	sw $s1, 16($sp)
	sw $s3, 20($sp)
	sw $s5, 24($sp)
	move $s0, $a0
	move $s2, $a1
	move $s4, $a2
	move $s1, $a3
	addiu $t0, $a2, 1
	subu $t1, $a3, $t0
	bgtz $t1, label2
	nop
label42:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	lw $s2, 8($sp)
	lw $s4, 12($sp)
	lw $s1, 16($sp)
	lw $s3, 20($sp)
	lw $s5, 24($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
label2:
	addu $t1, $s4, $s1
	li $t2, 2
	div $zero, $t1, $t2
	mflo $s3
	subu $t0, $t0, $s3
	bgez $t0, label3
	nop
	addu $t0, $s4, $s3
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
	move $a3, $s3
	jal merge
	nop
	move $t1, $s5
	move $t0, $s4
	move $t2, $s4
	beq $s3, $s4, label39
	nop
label34:
	xor $t3, $s5, $t0
	sltu $t3, $zero, $t3
	xor $t4, $s3, $t1
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	beq $t4, $zero, label175
	nop
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t1, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bgez $t4, label194
	nop
label38:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	bne $s3, $t3, label34
	nop
label39:
	beq $s4, $s3, label3
	nop
	move $t0, $s4
label40:
	sll $t1, $t0, 2
	addu $t2, $s2, $t1
	lw $t2, 0($t2)
	addu $t1, $s0, $t1
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	bne $s3, $t0, label40
	nop
	b label3
	nop
label175:
	bne $s5, $t0, label38
	nop
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s3, $t3, label34
	nop
	b label39
	nop
label3:
	addiu $t0, $s3, 1
	subu $t0, $s1, $t0
	blez $t0, label60
	nop
	addu $t0, $s1, $s3
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
	move $a3, $s1
	jal merge
	nop
	move $t1, $s5
	move $t0, $s3
	move $t2, $s3
	bne $s1, $s3, label21
	nop
	b label26
	nop
label60:
	move $t1, $s3
	move $t0, $s4
	move $t2, $s4
	bne $s1, $s4, label11
	nop
	b label8
	nop
label21:
	xor $t3, $s5, $t0
	sltu $t3, $zero, $t3
	xor $t4, $s1, $t1
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	beq $t4, $zero, label123
	nop
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t1, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bgez $t4, label139
	nop
label25:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	bne $s1, $t3, label21
	nop
label26:
	beq $s1, $s3, label60
	nop
	move $t0, $s3
label27:
	sll $t1, $t0, 2
	addu $t2, $s2, $t1
	lw $t2, 0($t2)
	addu $t1, $s0, $t1
	sw $t2, 0($t1)
	addiu $t0, $t0, 1
	bne $s1, $t0, label27
	nop
	b label60
	nop
label11:
	xor $t3, $s3, $t0
	sltu $t3, $zero, $t3
	xor $t4, $s1, $t1
	sltu $t4, $zero, $t4
	and $t4, $t3, $t4
	addiu $t3, $t2, 1
	bne $t4, $zero, label15
	nop
	beq $s3, $t0, label272
	nop
label12:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t0, $t0, 1
	move $t2, $t3
	bne $s1, $t3, label11
	nop
	b label8
	nop
label15:
	sll $t4, $t0, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t1, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bltz $t4, label12
	nop
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s1, $t3, label11
	nop
	b label8
	nop
label123:
	bne $s5, $t0, label25
	nop
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s1, $t3, label21
	nop
	b label26
	nop
label8:
	beq $s4, $s1, label42
	nop
label9:
	sll $t0, $s4, 2
	addu $t1, $s2, $t0
	lw $t1, 0($t1)
	addu $t0, $s0, $t0
	sw $t1, 0($t0)
	addiu $s4, $s4, 1
	bne $s1, $s4, label9
	nop
	b label42
	nop
label272:
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s1, $t3, label11
	nop
	b label8
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
	bne $s3, $t3, label34
	nop
	b label39
	nop
label139:
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t2, $t2, 2
	addu $t2, $s2, $t2
	sw $t4, 0($t2)
	addiu $t1, $t1, 1
	move $t2, $t3
	bne $s1, $t3, label21
	nop
	b label26
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
	blez $v0, label303
	nop
	move $t0, $zero
label301:
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t7, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t6, $t0
	bgtz $t1, label301
	nop
label303:
	move $a0, $t7
	move $a2, $zero
	move $a3, $t6
	jal merge
	nop
	blez $t6, label306
	nop
	move $t0, $zero
label304:
	sll $t1, $t0, 2
	addu $t1, $t7, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t6, $t0
	bgtz $t1, label304
	nop
label306:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 824
	jr $ra
	nop
