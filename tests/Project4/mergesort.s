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
	addiu $sp, $sp, -216
	sw $ra, 0($sp)
	sw $s0, 140($sp)
	sw $s1, 144($sp)
	sw $s2, 148($sp)
	sw $s3, 152($sp)
	sw $s4, 156($sp)
	sw $s5, 160($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	addiu $t4, $a2, 1
	subu $t5, $t4, $a3
	sw $t3, 92($sp)
	sw $t2, 184($sp)
	sw $t1, 176($sp)
	sw $t0, 168($sp)
	bgez $t5, label29
	nop
	lw $t0, 184($sp)
	lw $t1, 92($sp)
	addu $t2, $t0, $t1
	li $t3, 2
	div $zero, $t2, $t3
	mflo $t4
	lw $t5, 168($sp)
	move $a0, $t5
	lw $t6, 176($sp)
	move $a1, $t6
	move $a2, $t0
	move $a3, $t4
	sw $t4, 84($sp)
	sw $t3, 60($sp)
	sw $t2, 64($sp)
	jal merge
	nop
	lw $t7, 168($sp)
	move $a0, $t7
	lw $t8, 176($sp)
	move $a1, $t8
	lw $t9, 84($sp)
	move $a2, $t9
	lw $s0, 92($sp)
	move $a3, $s0
	jal merge
	nop
	lw $s1, 184($sp)
	move $s2, $s1
	lw $s3, 84($sp)
	move $s4, $s3
	move $s5, $s1
	sw $s4, 88($sp)
	sw $s2, 72($sp)
	sw $s5, 80($sp)
	lw $t0, 72($sp)
	lw $t1, 92($sp)
	beq $t0, $t1, label37
	nop
	lw $t0, 80($sp)
	lw $t1, 84($sp)
	beq $t0, $t1, label41
	nop
	lw $t0, 88($sp)
	lw $t1, 92($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 100($sp)
	lw $t0, 100($sp)
	beq $t0, $zero, label17
	nop
	b label11
	nop
label37:
	lw $t0, 184($sp)
	move $t1, $t0
	sw $t1, 76($sp)
	lw $t0, 76($sp)
	lw $t1, 92($sp)
	beq $t0, $t1, label29
	nop
label20:
	lw $t0, 76($sp)
	sll $t1, $t0, 2
	lw $t2, 168($sp)
	addu $t3, $t2, $t1
	sll $t4, $t0, 2
	lw $t5, 176($sp)
	addu $t6, $t5, $t4
	lw $t7, 0($t6)
	sw $t7, 0($t3)
	addiu $t8, $t0, 1
	move $t0, $t8
	sw $t0, 76($sp)
	lw $t0, 76($sp)
	lw $t1, 92($sp)
	beq $t0, $t1, label29
	nop
	b label20
	nop
label41:
	move $t0, $zero
	sw $t0, 100($sp)
	lw $t0, 100($sp)
	beq $t0, $zero, label17
	nop
label11:
	lw $t0, 80($sp)
	sll $t1, $t0, 2
	lw $t2, 168($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 88($sp)
	sll $t6, $t5, 2
	addu $t7, $t2, $t6
	lw $t8, 0($t7)
	subu $t9, $t4, $t8
	bgez $t9, label16
	nop
	b label15
	nop
label12:
	lw $t0, 72($sp)
	addiu $t1, $t0, 1
	move $t0, $t1
	lw $t2, 116($sp)
	move $t3, $t2
	lw $t4, 108($sp)
	move $t5, $t4
	sw $t5, 80($sp)
	sw $t3, 88($sp)
	sw $t0, 72($sp)
	lw $t0, 72($sp)
	lw $t1, 92($sp)
	beq $t0, $t1, label37
	nop
	lw $t0, 80($sp)
	lw $t1, 84($sp)
	beq $t0, $t1, label41
	nop
	lw $t0, 88($sp)
	lw $t1, 92($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 100($sp)
	lw $t0, 100($sp)
	beq $t0, $zero, label17
	nop
	b label11
	nop
label15:
	lw $t0, 72($sp)
	sll $t1, $t0, 2
	lw $t2, 176($sp)
	addu $t3, $t2, $t1
	lw $t4, 80($sp)
	sll $t5, $t4, 2
	lw $t6, 168($sp)
	addu $t7, $t6, $t5
	lw $t8, 0($t7)
	sw $t8, 0($t3)
	addiu $t9, $t4, 1
	lw $s0, 88($sp)
	move $s1, $s0
	move $s2, $t9
	sw $s2, 108($sp)
	sw $s1, 116($sp)
	b label12
	nop
label17:
	lw $t0, 80($sp)
	lw $t1, 84($sp)
	beq $t0, $t1, label16
	nop
	b label15
	nop
label16:
	lw $t0, 72($sp)
	sll $t1, $t0, 2
	lw $t2, 176($sp)
	addu $t3, $t2, $t1
	lw $t4, 88($sp)
	sll $t5, $t4, 2
	lw $t6, 168($sp)
	addu $t7, $t6, $t5
	lw $t8, 0($t7)
	sw $t8, 0($t3)
	addiu $t9, $t4, 1
	move $s0, $t9
	lw $s1, 80($sp)
	move $s2, $s1
	sw $s2, 108($sp)
	sw $s0, 116($sp)
	b label12
	nop
label29:
	move $v0, $zero
	lw $s5, 160($sp)
	lw $s4, 156($sp)
	lw $s3, 152($sp)
	lw $s2, 148($sp)
	lw $s1, 144($sp)
	lw $s0, 140($sp)
	lw $ra, 0($sp)
	addiu $sp, $sp, 216
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -880
	sw $ra, 16($sp)
	addiu $t0, $sp, 64
	addiu $t1, $sp, 468
	jal read
	nop
	move $t2, $v0
	sw $t2, 868($sp)
	sw $t1, 876($sp)
	sw $t0, 40($sp)
	blez $v0, label162
	nop
	move $t0, $zero
	sw $t0, 28($sp)
	b label160
	nop
label218:
	move $t0, $zero
	sw $t0, 872($sp)
	b label163
	nop
label160:
	lw $t0, 28($sp)
	sll $t1, $t0, 2
	lw $t2, 876($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 868($sp)
	subu $t6, $t4, $t5
	sw $t4, 464($sp)
	bgez $t6, label162
	nop
	lw $t0, 464($sp)
	move $t1, $t0
	sw $t1, 28($sp)
	b label160
	nop
label162:
	lw $t0, 876($sp)
	move $a0, $t0
	lw $t1, 40($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t2, 868($sp)
	move $a3, $t2
	jal merge
	nop
	lw $t3, 868($sp)
	blez $t3, label187
	nop
	b label218
	nop
label163:
	lw $t0, 872($sp)
	sll $t1, $t0, 2
	lw $t2, 876($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 868($sp)
	subu $t7, $t5, $t6
	sw $t5, 32($sp)
	bgez $t7, label187
	nop
	lw $t0, 32($sp)
	move $t1, $t0
	sw $t1, 872($sp)
	b label163
	nop
label187:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 880
	jr $ra
	nop
