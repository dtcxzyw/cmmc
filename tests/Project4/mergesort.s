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
	addiu $sp, $sp, -392
	sw $ra, 0($sp)
	sw $s0, 292($sp)
	sw $s1, 288($sp)
	sw $s2, 284($sp)
	sw $s3, 280($sp)
	sw $s4, 276($sp)
	sw $s5, 272($sp)
	sw $s6, 268($sp)
	sw $s7, 264($sp)
	addiu $t0, $sp, 352
	addiu $t1, $sp, 212
	move $t2, $a0
	move $t3, $a1
	move $t4, $a2
	move $t5, $a3
	sw $a2, 256($sp)
	sw $a3, 132($sp)
	addiu $t6, $a2, 1
	subu $t7, $t6, $a3
	sw $t5, 136($sp)
	sw $t4, 236($sp)
	sw $t3, 248($sp)
	sw $t2, 148($sp)
	sw $t1, 224($sp)
	sw $t0, 348($sp)
	bgez $t7, label26
	nop
	lw $t0, 236($sp)
	lw $t1, 136($sp)
	addu $t2, $t0, $t1
	li $t3, 2
	div $zero, $t2, $t3
	mflo $t4
	sw $t4, 144($sp)
	lw $t5, 148($sp)
	move $a0, $t5
	lw $t6, 248($sp)
	move $a1, $t6
	move $a2, $t0
	move $a3, $t4
	sw $t4, 260($sp)
	sw $t3, 104($sp)
	sw $t2, 108($sp)
	jal merge
	nop
	lw $t7, 148($sp)
	move $a0, $t7
	lw $t8, 248($sp)
	move $a1, $t8
	lw $t9, 260($sp)
	move $a2, $t9
	lw $s0, 136($sp)
	move $a3, $s0
	jal merge
	nop
	lw $s1, 236($sp)
	sw $s1, 212($sp)
	lw $s2, 260($sp)
	sw $s2, 352($sp)
	sw $s1, 372($sp)
	beq $s1, $s0, label54
	nop
	lw $t0, 136($sp)
	move $t1, $t0
	lw $t2, 260($sp)
	move $t3, $t2
	lw $t4, 236($sp)
	move $t5, $t4
	move $t6, $t2
	move $t7, $t4
	sw $t7, 332($sp)
	sw $t6, 368($sp)
	sw $t5, 192($sp)
	sw $t3, 316($sp)
	sw $t1, 216($sp)
	lw $t0, 192($sp)
	lw $t1, 316($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	sw $t4, 164($sp)
	beq $t0, $t1, label58
	nop
	lw $t0, 368($sp)
	lw $t1, 216($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 308($sp)
	lw $t0, 308($sp)
	beq $t0, $zero, label20
	nop
	b label12
	nop
label54:
	lw $t0, 136($sp)
	move $t1, $t0
	lw $t2, 236($sp)
	move $t3, $t2
	sw $t3, 176($sp)
	sw $t1, 128($sp)
	lw $t0, 176($sp)
	lw $t1, 128($sp)
	beq $t0, $t1, label26
	nop
label238:
	lw $t0, 176($sp)
	move $t1, $t0
	sw $t1, 340($sp)
label24:
	li $t0, 4
	lw $t1, 340($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 148($sp)
	addu $t4, $t3, $t2
	li $t5, 4
	mult $t1, $t5
	mflo $t6
	lw $t7, 248($sp)
	addu $t8, $t7, $t6
	lw $t9, 0($t8)
	sw $t9, 0($t4)
	addiu $s0, $t1, 1
	lw $s1, 128($sp)
	sw $s0, 356($sp)
	beq $s0, $s1, label26
	nop
	lw $t0, 356($sp)
	move $t1, $t0
	sw $t1, 340($sp)
	b label24
	nop
label58:
	move $t0, $zero
	sw $t0, 308($sp)
	lw $t0, 308($sp)
	beq $t0, $zero, label20
	nop
label12:
	li $t0, 4
	lw $t1, 192($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 148($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	li $t6, 4
	lw $t7, 368($sp)
	mult $t7, $t6
	mflo $t8
	addu $t9, $t3, $t8
	lw $s0, 0($t9)
	slt $s1, $t5, $s0
	lw $s2, 348($sp)
	move $s3, $s2
	lw $s4, 224($sp)
	movn $s3, $s4, $s1
	li $s5, 4
	lw $s6, 332($sp)
	mult $s6, $s5
	mflo $s7
	sw $t0, 80($sp)
	lw $t0, 248($sp)
	addu $t1, $t0, $s7
	sw $t2, 76($sp)
	lw $t2, 0($s3)
	li $t3, 4
	mult $t2, $t3
	sw $t4, 72($sp)
	mflo $t4
	sw $t5, 68($sp)
	lw $t5, 148($sp)
	sw $t6, 64($sp)
	addu $t6, $t5, $t4
	lw $t7, 0($t6)
	sw $t7, 0($t1)
	sw $t8, 60($sp)
	addiu $t8, $t2, 1
	sw $t8, 0($s3)
	sw $t9, 56($sp)
	lw $t9, 256($sp)
	sw $s0, 52($sp)
	lw $s0, 132($sp)
	sw $s1, 48($sp)
	lw $s1, 144($sp)
	lw $s2, 212($sp)
	sw $s3, 44($sp)
	lw $s3, 352($sp)
	lw $s4, 372($sp)
	sw $s5, 40($sp)
	move $s5, $t9
	move $s6, $s0
	sw $s7, 36($sp)
	move $s7, $s1
	move $t0, $s2
	sw $t1, 32($sp)
	move $t1, $s3
	sw $t2, 28($sp)
	move $t2, $s4
	sw $t2, 300($sp)
	sw $t1, 124($sp)
	sw $t0, 324($sp)
	sw $s7, 152($sp)
	sw $s6, 120($sp)
	sw $s5, 140($sp)
	lw $t0, 300($sp)
	addiu $t1, $t0, 1
	sw $t1, 372($sp)
	lw $t2, 120($sp)
	sw $t1, 204($sp)
	beq $t1, $t2, label92
	nop
label91:
	lw $t0, 120($sp)
	move $t1, $t0
	lw $t2, 152($sp)
	move $t3, $t2
	lw $t4, 324($sp)
	move $t5, $t4
	lw $t6, 124($sp)
	move $t7, $t6
	lw $t8, 204($sp)
	move $t9, $t8
	sw $t9, 332($sp)
	sw $t7, 368($sp)
	sw $t5, 192($sp)
	sw $t3, 316($sp)
	sw $t1, 216($sp)
	lw $t0, 192($sp)
	lw $t1, 316($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	sw $t4, 164($sp)
	beq $t0, $t1, label58
	nop
	lw $t0, 368($sp)
	lw $t1, 216($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 308($sp)
	lw $t0, 308($sp)
	beq $t0, $zero, label20
	nop
	lw $t0, 308($sp)
	beq $t0, $zero, label20
	nop
	b label12
	nop
label20:
	lw $t0, 348($sp)
	move $t1, $t0
	lw $t2, 224($sp)
	lw $t3, 164($sp)
	movn $t1, $t2, $t3
	li $t4, 4
	lw $t5, 332($sp)
	mult $t5, $t4
	mflo $t6
	lw $t7, 248($sp)
	addu $t8, $t7, $t6
	lw $t9, 0($t1)
	li $s0, 4
	mult $t9, $s0
	mflo $s1
	lw $s2, 148($sp)
	addu $s3, $s2, $s1
	lw $s4, 0($s3)
	sw $s4, 0($t8)
	addiu $s5, $t9, 1
	sw $s5, 0($t1)
	lw $s6, 256($sp)
	lw $s7, 132($sp)
	lw $t0, 144($sp)
	sw $t1, 344($sp)
	lw $t1, 212($sp)
	lw $t2, 352($sp)
	lw $t3, 372($sp)
	sw $t4, 336($sp)
	move $t4, $s6
	move $t5, $s7
	sw $t6, 156($sp)
	move $t6, $t0
	move $t7, $t1
	sw $t8, 160($sp)
	move $t8, $t2
	sw $t9, 168($sp)
	move $t9, $t3
	sw $t9, 300($sp)
	sw $t8, 124($sp)
	sw $t7, 324($sp)
	sw $t6, 152($sp)
	sw $t5, 120($sp)
	sw $t4, 140($sp)
	lw $t0, 300($sp)
	addiu $t1, $t0, 1
	sw $t1, 372($sp)
	lw $t2, 120($sp)
	sw $t1, 204($sp)
	beq $t1, $t2, label92
	nop
	b label91
	nop
label26:
	move $v0, $zero
	lw $s7, 264($sp)
	lw $s6, 268($sp)
	lw $s5, 272($sp)
	lw $s4, 276($sp)
	lw $s3, 280($sp)
	lw $s2, 284($sp)
	lw $s1, 288($sp)
	lw $s0, 292($sp)
	lw $ra, 0($sp)
	addiu $sp, $sp, 392
	jr $ra
	nop
label92:
	lw $t0, 120($sp)
	move $t1, $t0
	lw $t2, 140($sp)
	move $t3, $t2
	sw $t3, 176($sp)
	sw $t1, 128($sp)
	lw $t0, 176($sp)
	lw $t1, 128($sp)
	beq $t0, $t1, label26
	nop
	b label238
	nop
.globl main
main:
	addiu $sp, $sp, -888
	sw $ra, 16($sp)
	addiu $t0, $sp, 480
	addiu $t1, $sp, 72
	jal read
	nop
	move $t2, $v0
	sw $t2, 40($sp)
	sw $t1, 48($sp)
	sw $t0, 884($sp)
	blez $v0, label253
	nop
	move $t0, $zero
	sw $t0, 36($sp)
	b label251
	nop
label317:
	move $t0, $zero
	sw $t0, 32($sp)
	b label254
	nop
label251:
	li $t0, 4
	lw $t1, 36($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 48($sp)
	addu $t4, $t3, $t2
	jal read
	nop
	sw $v0, 0($t4)
	addiu $t5, $t1, 1
	lw $t6, 40($sp)
	subu $t7, $t5, $t6
	sw $t5, 28($sp)
	bgez $t7, label253
	nop
	lw $t0, 28($sp)
	move $t1, $t0
	sw $t1, 36($sp)
	b label251
	nop
label253:
	lw $t0, 48($sp)
	move $a0, $t0
	lw $t1, 884($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t2, 40($sp)
	move $a3, $t2
	jal merge
	nop
	lw $t3, 40($sp)
	blez $t3, label280
	nop
	b label317
	nop
label254:
	li $t0, 4
	lw $t1, 32($sp)
	mult $t1, $t0
	mflo $t2
	lw $t3, 48($sp)
	addu $t4, $t3, $t2
	lw $t5, 0($t4)
	move $a0, $t5
	jal write
	nop
	addiu $t6, $t1, 1
	lw $t7, 40($sp)
	subu $t8, $t6, $t7
	sw $t6, 56($sp)
	bgez $t8, label280
	nop
	lw $t0, 56($sp)
	move $t1, $t0
	sw $t1, 32($sp)
	b label254
	nop
label280:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 888
	jr $ra
	nop
