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
	addiu $sp, $sp, -304
	sw $ra, 0($sp)
	sw $s0, 180($sp)
	sw $s1, 172($sp)
	sw $s2, 164($sp)
	sw $s3, 156($sp)
	sw $s4, 148($sp)
	sw $s5, 140($sp)
	sw $s6, 132($sp)
	sw $s7, 124($sp)
	addiu $t0, $sp, 228
	addiu $t1, $sp, 236
	move $t2, $a0
	move $t3, $a1
	move $t4, $a2
	move $t5, $a3
	addiu $t6, $a2, 1
	subu $t7, $t6, $a3
	sw $t5, 152($sp)
	sw $t4, 160($sp)
	sw $t3, 168($sp)
	sw $t2, 176($sp)
	sw $t1, 184($sp)
	sw $t0, 208($sp)
	bgez $t7, label16
	nop
	lw $t0, 160($sp)
	lw $t1, 152($sp)
	addu $t2, $t0, $t1
	li $t3, 2
	div $zero, $t2, $t3
	mflo $t4
	lw $t5, 176($sp)
	move $a0, $t5
	lw $t6, 168($sp)
	move $a1, $t6
	move $a2, $t0
	move $a3, $t4
	sw $t4, 200($sp)
	sw $t3, 72($sp)
	sw $t2, 232($sp)
	jal merge
	nop
	lw $t7, 176($sp)
	move $a0, $t7
	lw $t8, 168($sp)
	move $a1, $t8
	lw $t9, 200($sp)
	move $a2, $t9
	lw $s0, 152($sp)
	move $a3, $s0
	jal merge
	nop
	lw $s1, 160($sp)
	sw $s1, 236($sp)
	lw $s2, 200($sp)
	sw $s2, 228($sp)
	beq $s1, $s0, label13
	nop
	lw $t0, 160($sp)
	move $t1, $t0
	move $t2, $t0
	sw $t2, 192($sp)
	sw $t1, 144($sp)
	lw $t0, 192($sp)
	lw $t1, 200($sp)
	beq $t0, $t1, label42
	nop
	lw $t0, 228($sp)
	lw $t1, 152($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 216($sp)
	lw $t0, 216($sp)
	beq $t0, $zero, label12
	nop
	b label9
	nop
label202:
	lw $t0, 160($sp)
	move $t1, $t0
	sw $t1, 128($sp)
	b label14
	nop
label13:
	lw $t0, 160($sp)
	lw $t1, 152($sp)
	beq $t0, $t1, label16
	nop
	b label202
	nop
label14:
	li $t0, 4
	lw $t1, 128($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 176($sp)
	addu $t4, $t3, $t2
	li $t5, 4
	mult $t1, $t5
	mflo $t6
	lw $t7, 168($sp)
	addu $t8, $t7, $t6
	lw $t9, 0($t8)
	sw $t9, 0($t4)
	addiu $s0, $t1, 1
	lw $s1, 152($sp)
	sw $s0, 224($sp)
	beq $s0, $s1, label16
	nop
	lw $t0, 224($sp)
	move $t1, $t0
	sw $t1, 128($sp)
	b label14
	nop
label42:
	move $t0, $zero
	sw $t0, 216($sp)
	lw $t0, 216($sp)
	beq $t0, $zero, label12
	nop
label9:
	lw $t0, 236($sp)
	li $t1, 4
	mult $t0, $t1
	mflo $t2
	lw $t3, 176($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	lw $t6, 228($sp)
	li $t7, 4
	mult $t6, $t7
	mflo $t8
	addu $t9, $t3, $t8
	lw $s0, 0($t9)
	slt $s1, $t5, $s0
	lw $s2, 208($sp)
	move $s3, $s2
	lw $s4, 184($sp)
	movn $s3, $s4, $s1
	li $s5, 4
	lw $s6, 144($sp)
	mult $s6, $s5
	mflo $s7
	sw $t0, 88($sp)
	lw $t0, 168($sp)
	sw $t1, 92($sp)
	addu $t1, $t0, $s7
	sw $t2, 96($sp)
	lw $t2, 0($s3)
	li $t3, 4
	mult $t2, $t3
	sw $t4, 100($sp)
	mflo $t4
	sw $t5, 104($sp)
	lw $t5, 176($sp)
	sw $t6, 108($sp)
	addu $t6, $t5, $t4
	sw $t7, 244($sp)
	lw $t7, 0($t6)
	sw $t7, 0($t1)
	sw $t8, 248($sp)
	addiu $t8, $t2, 1
	sw $t8, 0($s3)
	lw $t0, 144($sp)
	addiu $t1, $t0, 1
	lw $t2, 152($sp)
	sw $t1, 136($sp)
	beq $t1, $t2, label13
	nop
	lw $t0, 236($sp)
	lw $t1, 136($sp)
	move $t2, $t1
	move $t3, $t0
	sw $t3, 192($sp)
	sw $t2, 144($sp)
	lw $t0, 192($sp)
	lw $t1, 200($sp)
	beq $t0, $t1, label42
	nop
	lw $t0, 228($sp)
	lw $t1, 152($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 216($sp)
	lw $t0, 216($sp)
	beq $t0, $zero, label12
	nop
	b label9
	nop
label12:
	lw $t0, 236($sp)
	lw $t1, 200($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	lw $t5, 208($sp)
	move $t6, $t5
	lw $t7, 184($sp)
	movn $t6, $t7, $t4
	li $t8, 4
	lw $t9, 144($sp)
	mult $t9, $t8
	mflo $s0
	lw $s1, 168($sp)
	addu $s2, $s1, $s0
	lw $s3, 0($t6)
	li $s4, 4
	mult $s3, $s4
	mflo $s5
	lw $s6, 176($sp)
	addu $s7, $s6, $s5
	sw $t0, 60($sp)
	lw $t0, 0($s7)
	sw $t0, 0($s2)
	addiu $t1, $s3, 1
	sw $t1, 0($t6)
	lw $t0, 144($sp)
	addiu $t1, $t0, 1
	lw $t2, 152($sp)
	sw $t1, 136($sp)
	beq $t1, $t2, label13
	nop
	lw $t0, 236($sp)
	lw $t1, 136($sp)
	move $t2, $t1
	move $t3, $t0
	sw $t3, 192($sp)
	sw $t2, 144($sp)
	lw $t0, 192($sp)
	lw $t1, 200($sp)
	beq $t0, $t1, label42
	nop
	lw $t0, 192($sp)
	lw $t1, 200($sp)
	beq $t0, $t1, label42
	nop
	lw $t0, 228($sp)
	lw $t1, 152($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 216($sp)
	lw $t0, 216($sp)
	beq $t0, $zero, label12
	nop
	b label9
	nop
label16:
	move $v0, $zero
	lw $s7, 124($sp)
	lw $s6, 132($sp)
	lw $s5, 140($sp)
	lw $s4, 148($sp)
	lw $s3, 156($sp)
	lw $s2, 164($sp)
	lw $s1, 172($sp)
	lw $s0, 180($sp)
	lw $ra, 0($sp)
	addiu $sp, $sp, 304
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -888
	sw $ra, 16($sp)
	addiu $t0, $sp, 76
	addiu $t1, $sp, 484
	jal read
	nop
	move $t2, $v0
	sw $t2, 32($sp)
	sw $t1, 36($sp)
	sw $t0, 52($sp)
	blez $v0, label223
	nop
	move $t0, $zero
	sw $t0, 28($sp)
	b label221
	nop
label289:
	move $t0, $zero
	sw $t0, 24($sp)
	b label224
	nop
label221:
	li $t0, 4
	lw $t1, 28($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 36($sp)
	addu $t4, $t3, $t2
	jal read
	nop
	sw $v0, 0($t4)
	addiu $t5, $t1, 1
	lw $t6, 32($sp)
	subu $t7, $t5, $t6
	sw $t5, 476($sp)
	bgez $t7, label223
	nop
	lw $t0, 476($sp)
	move $t1, $t0
	sw $t1, 28($sp)
	b label221
	nop
label223:
	lw $t0, 36($sp)
	move $a0, $t0
	lw $t1, 52($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t2, 32($sp)
	move $a3, $t2
	jal merge
	nop
	lw $t3, 32($sp)
	blez $t3, label251
	nop
	b label289
	nop
label224:
	li $t0, 4
	lw $t1, 24($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 36($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	move $a0, $t5
	jal write
	nop
	addiu $t6, $t1, 1
	lw $t7, 32($sp)
	subu $t8, $t6, $t7
	sw $t6, 40($sp)
	bgez $t8, label251
	nop
	lw $t0, 40($sp)
	move $t1, $t0
	sw $t1, 24($sp)
	b label224
	nop
label251:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 888
	jr $ra
	nop
