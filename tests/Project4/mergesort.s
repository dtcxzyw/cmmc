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
	addiu $sp, $sp, -24
	sw $s0, 20($sp)
	sw $s2, 16($sp)
	sw $s3, 12($sp)
	sw $s1, 8($sp)
	sw $s4, 4($sp)
	sw $ra, 0($sp)
	move $s0, $a0
	move $s2, $a1
	move $s3, $a2
	move $s1, $a3
	addiu $t0, $a2, 1
	subu $t0, $t0, $a3
	bgez $t0, label18
	nop
	addu $t0, $a2, $a3
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s4
	move $a3, $s4
	jal merge
	nop
	move $a0, $s0
	move $a1, $s2
	move $a2, $s4
	move $a3, $s1
	jal merge
	nop
	move $t0, $s3
	move $t1, $s4
	move $t2, $s3
	beq $s3, $s1, label15
	nop
	xor $t3, $s3, $s4
	sltu $t3, $zero, $t3
	xor $t4, $s4, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $s3, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $s4, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $s3, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $s3, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $s3, 1
	addiu $t0, $s3, 1
	beq $t0, $s1, label15
	nop
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $s4, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $s4, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $s4, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $s4, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	b label166
	nop
label15:
	beq $s3, $s1, label18
	nop
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
	b label183
	nop
label166:
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $t1, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	b label166
	nop
label14:
	beq $t2, $s4, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $t1, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $t1, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $t1, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	b label193
	nop
label183:
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
label195:
	sll $t0, $s3, 2
	addu $t0, $s2, $t0
	lw $t0, 0($t0)
	sll $t1, $s3, 2
	addu $t1, $s0, $t1
	sw $t0, 0($t1)
	addiu $s3, $s3, 1
	beq $s3, $s1, label18
	nop
	b label195
	nop
label13:
	sll $t3, $t1, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t1, $t1, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $t1, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $t1, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	xor $t3, $t2, $s4
	sltu $t3, $zero, $t3
	xor $t4, $t1, $s1
	sltu $t4, $zero, $t4
	and $t3, $t3, $t4
	beq $t3, $zero, label14
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s0, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label13
	nop
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	b label166
	nop
label193:
	sll $t3, $t2, 2
	addu $t3, $s0, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s2, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s1, label15
	nop
	b label166
	nop
label18:
	move $v0, $zero
	lw $ra, 0($sp)
	lw $s4, 4($sp)
	lw $s1, 8($sp)
	lw $s3, 12($sp)
	lw $s2, 16($sp)
	lw $s0, 20($sp)
	addiu $sp, $sp, 24
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -824
	sw $ra, 816($sp)
	addiu $a1, $sp, 16
	addiu $t6, $sp, 416
	jal read
	nop
	move $t5, $v0
	blez $v0, label214
	nop
	move $t0, $zero
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
label297:
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label214
	nop
	b label297
	nop
label214:
	move $a0, $t6
	move $a2, $zero
	move $a3, $t5
	jal merge
	nop
	blez $t5, label217
	nop
	move $t0, $zero
	sll $t1, $zero, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
label299:
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label217
	nop
	b label299
	nop
label217:
	move $v0, $zero
	lw $ra, 816($sp)
	addiu $sp, $sp, 824
	jr $ra
	nop
