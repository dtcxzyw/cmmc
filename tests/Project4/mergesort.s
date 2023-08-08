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
	sw $s4, 8($sp)
	sw $s2, 12($sp)
	sw $s1, 16($sp)
	sw $s3, 20($sp)
	sw $s5, 24($sp)
	move $s0, $a0
	move $s4, $a1
	move $s2, $a2
	move $s1, $a3
	addiu $t0, $a2, 1
	subu $t1, $a3, $t0
	bgtz $t1, label2
	nop
label64:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	lw $s4, 8($sp)
	lw $s2, 12($sp)
	lw $s1, 16($sp)
	lw $s3, 20($sp)
	lw $s5, 24($sp)
	addiu $sp, $sp, 32
	jr $ra
	nop
label2:
	addu $t1, $s2, $s1
	li $t2, 2
	div $zero, $t1, $t2
	mflo $s3
	subu $t0, $t0, $s3
	bgez $t0, label3
	nop
	addu $t0, $s2, $s3
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s5
	move $a0, $s0
	move $a1, $s4
	move $a2, $s2
	move $a3, $s5
	jal merge
	nop
	move $a0, $s0
	move $a1, $s4
	move $a2, $s5
	move $a3, $s3
	jal merge
	nop
	beq $s2, $s3, label3
	nop
	sll $t0, $s2, 2
	addu $t0, $s4, $t0
	move $t1, $s2
	move $t2, $s2
	move $t3, $s5
	xor $t4, $s5, $s2
	sltu $t4, $zero, $t4
	xor $t5, $s3, $s5
	sltu $t5, $zero, $t5
	and $t4, $t4, $t5
	bne $t4, $zero, label51
	nop
	bne $s5, $s2, label52
	nop
	b label306
	nop
label51:
	sll $t4, $t2, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t3, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bgez $t4, label208
	nop
label52:
	sll $t4, $t2, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t2, $t2, 1
	addiu $t1, $t1, 1
	beq $s3, $t1, label314
	nop
label56:
	addiu $t0, $t0, 4
	xor $t4, $s5, $t2
	sltu $t4, $zero, $t4
	xor $t5, $s3, $t3
	sltu $t5, $zero, $t5
	and $t4, $t4, $t5
	bne $t4, $zero, label51
	nop
	bne $s5, $t2, label52
	nop
	sll $t4, $t3, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $t3, 1
	addiu $t1, $t1, 1
	bne $s3, $t1, label56
	nop
	b label314
	nop
label3:
	addiu $t0, $s3, 1
	subu $t0, $s1, $t0
	bgtz $t0, label24
	nop
label4:
	beq $s2, $s1, label64
	nop
	sll $t0, $s2, 2
	addu $t0, $s4, $t0
	move $t1, $s2
	move $t2, $s2
	move $t3, $s3
	xor $t4, $s3, $s2
	sltu $t4, $zero, $t4
	xor $t5, $s1, $s3
	sltu $t5, $zero, $t5
	and $t4, $t4, $t5
	bne $t4, $zero, label22
	nop
	b label94
	nop
label14:
	addiu $t0, $t0, 4
	xor $t4, $s3, $t2
	sltu $t4, $zero, $t4
	xor $t5, $s1, $t3
	sltu $t5, $zero, $t5
	and $t4, $t4, $t5
	bne $t4, $zero, label22
	nop
	beq $s3, $t2, label311
	nop
label21:
	sll $t4, $t2, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t2, $t2, 1
	addiu $t1, $t1, 1
	bne $s1, $t1, label14
	nop
	b label310
	nop
label22:
	sll $t4, $t2, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t3, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bltz $t4, label21
	nop
	sll $t4, $t3, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $t3, 1
	addiu $t1, $t1, 1
	bne $s1, $t1, label14
	nop
	b label310
	nop
label24:
	addu $t0, $s1, $s3
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s5
	move $a0, $s0
	move $a1, $s4
	move $a2, $s3
	move $a3, $s5
	jal merge
	nop
	move $a0, $s0
	move $a1, $s4
	move $a2, $s5
	move $a3, $s1
	jal merge
	nop
	beq $s1, $s3, label4
	nop
	sll $t0, $s3, 2
	addu $t0, $s4, $t0
	move $t1, $s3
	move $t2, $s3
	move $t3, $s5
	xor $t4, $s5, $s3
	sltu $t4, $zero, $t4
	xor $t5, $s1, $s5
	sltu $t5, $zero, $t5
	and $t4, $t4, $t5
	bne $t4, $zero, label32
	nop
	bne $s5, $s3, label43
	nop
	sll $t4, $s5, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $s5, 1
	addiu $t1, $s3, 1
	bne $s1, $t1, label42
	nop
label312:
	sll $t0, $s3, 2
	addu $t0, $s4, $t0
	move $t1, $s3
	b label38
	nop
label32:
	sll $t4, $t2, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sll $t5, $t3, 2
	addu $t5, $s0, $t5
	lw $t5, 0($t5)
	subu $t4, $t4, $t5
	bltz $t4, label43
	nop
	b label160
	nop
label42:
	addiu $t0, $t0, 4
	xor $t4, $s5, $t2
	sltu $t4, $zero, $t4
	xor $t5, $s1, $t3
	sltu $t5, $zero, $t5
	and $t4, $t4, $t5
	bne $t4, $zero, label32
	nop
	beq $s5, $t2, label313
	nop
label43:
	sll $t4, $t2, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t2, $t2, 1
	addiu $t1, $t1, 1
	bne $s1, $t1, label42
	nop
	b label312
	nop
label38:
	lw $t2, 0($t0)
	sll $t3, $t1, 2
	addu $t3, $s0, $t3
	sw $t2, 0($t3)
	addiu $t1, $t1, 1
	beq $s1, $t1, label4
	nop
	addiu $t0, $t0, 4
	b label38
	nop
label310:
	sll $t0, $s2, 2
	addu $t0, $s4, $t0
label16:
	lw $t1, 0($t0)
	sll $t2, $s2, 2
	addu $t2, $s0, $t2
	sw $t1, 0($t2)
	addiu $s2, $s2, 1
	beq $s1, $s2, label64
	nop
	addiu $t0, $t0, 4
	b label16
	nop
label314:
	sll $t0, $s2, 2
	addu $t0, $s4, $t0
	move $t1, $s2
label58:
	lw $t2, 0($t0)
	sll $t3, $t1, 2
	addu $t3, $s0, $t3
	sw $t2, 0($t3)
	addiu $t1, $t1, 1
	beq $s3, $t1, label3
	nop
	addiu $t0, $t0, 4
	b label58
	nop
label94:
	bne $s3, $t2, label21
	nop
	sll $t4, $t3, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $t3, 1
	addiu $t1, $t1, 1
	bne $s1, $t1, label14
	nop
	b label310
	nop
label311:
	sll $t4, $t3, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $t3, 1
	addiu $t1, $t1, 1
	bne $s1, $t1, label14
	nop
	b label310
	nop
label208:
	sll $t4, $t3, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $t3, 1
	addiu $t1, $t1, 1
	bne $s3, $t1, label56
	nop
	b label314
	nop
label160:
	sll $t4, $t3, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $t3, 1
	addiu $t1, $t1, 1
	bne $s1, $t1, label42
	nop
	b label312
	nop
label313:
	sll $t4, $t3, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $t3, 1
	addiu $t1, $t1, 1
	bne $s1, $t1, label42
	nop
	b label312
	nop
label306:
	sll $t4, $t3, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	sw $t4, 0($t0)
	addiu $t3, $t3, 1
	addiu $t1, $t1, 1
	bne $s3, $t1, label56
	nop
	b label314
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
	blez $v0, label343
	nop
	move $t0, $t7
	move $t1, $zero
label339:
	jal read
	nop
	sw $v0, 0($t0)
	addiu $t1, $t1, 1
	subu $t2, $t6, $t1
	blez $t2, label343
	nop
	addiu $t0, $t0, 4
	b label339
	nop
label343:
	move $a0, $t7
	move $a2, $zero
	move $a3, $t6
	jal merge
	nop
	blez $t6, label349
	nop
	move $t0, $zero
label345:
	lw $a0, 0($t7)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t6, $t0
	blez $t1, label349
	nop
	addiu $t7, $t7, 4
	b label345
	nop
label349:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 824
	jr $ra
	nop
