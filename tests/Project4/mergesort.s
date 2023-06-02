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
	addiu $sp, $sp, -200
	sw $ra, 0($sp)
	sw $s0, 152($sp)
	sw $s1, 156($sp)
	sw $s2, 160($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	addiu $t4, $a2, 1
	subu $t5, $t4, $a3
	sw $t3, 168($sp)
	sw $t2, 88($sp)
	sw $t1, 112($sp)
	sw $t0, 120($sp)
	bgez $t5, label28
	nop
	lw $t0, 88($sp)
	lw $t1, 168($sp)
	addu $t2, $t0, $t1
	li $t3, 2
	div $zero, $t2, $t3
	mflo $t4
	lw $t5, 120($sp)
	move $a0, $t5
	lw $t6, 112($sp)
	move $a1, $t6
	move $a2, $t0
	move $a3, $t4
	sw $t4, 80($sp)
	sw $t3, 52($sp)
	sw $t2, 56($sp)
	jal merge
	nop
	lw $t7, 120($sp)
	move $a0, $t7
	lw $t8, 112($sp)
	move $a1, $t8
	lw $t9, 80($sp)
	move $a2, $t9
	lw $s0, 168($sp)
	move $a3, $s0
	jal merge
	nop
	lw $s1, 88($sp)
	beq $s1, $s0, label17
	nop
	lw $t0, 88($sp)
	move $t1, $t0
	move $t2, $t0
	lw $t3, 80($sp)
	move $t4, $t3
	sw $t4, 68($sp)
	sw $t2, 176($sp)
	sw $t1, 184($sp)
	lw $t0, 176($sp)
	lw $t1, 80($sp)
	beq $t0, $t1, label40
	nop
	lw $t0, 68($sp)
	lw $t1, 168($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 96($sp)
	lw $t0, 96($sp)
	beq $t0, $zero, label16
	nop
	b label10
	nop
label40:
	move $t0, $zero
	sw $t0, 96($sp)
	lw $t0, 96($sp)
	beq $t0, $zero, label16
	nop
label10:
	lw $t0, 176($sp)
	sll $t1, $t0, 2
	lw $t2, 120($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 68($sp)
	sll $t6, $t5, 2
	addu $t7, $t2, $t6
	lw $t8, 0($t7)
	subu $t9, $t4, $t8
	bgez $t9, label15
	nop
	b label14
	nop
label60:
	lw $t0, 128($sp)
	move $t1, $t0
	lw $t2, 104($sp)
	move $t3, $t2
	lw $t4, 136($sp)
	move $t5, $t4
	sw $t5, 68($sp)
	sw $t3, 176($sp)
	sw $t1, 184($sp)
	lw $t0, 176($sp)
	lw $t1, 80($sp)
	beq $t0, $t1, label40
	nop
	lw $t0, 68($sp)
	lw $t1, 168($sp)
	xor $t2, $t0, $t1
	sltiu $t3, $t2, 1
	xori $t4, $t3, 1
	move $t5, $t4
	sw $t5, 96($sp)
	lw $t0, 96($sp)
	beq $t0, $zero, label16
	nop
	lw $t0, 96($sp)
	beq $t0, $zero, label16
	nop
	b label10
	nop
label14:
	lw $t0, 184($sp)
	sll $t1, $t0, 2
	lw $t2, 112($sp)
	addu $t3, $t2, $t1
	lw $t4, 176($sp)
	sll $t5, $t4, 2
	lw $t6, 120($sp)
	addu $t7, $t6, $t5
	lw $t8, 0($t7)
	sw $t8, 0($t3)
	addiu $t9, $t4, 1
	lw $s0, 68($sp)
	move $s1, $s0
	move $s2, $t9
	sw $s2, 104($sp)
	sw $s1, 136($sp)
	lw $t0, 184($sp)
	addiu $t1, $t0, 1
	lw $t2, 168($sp)
	sw $t1, 128($sp)
	beq $t1, $t2, label17
	nop
	b label60
	nop
label16:
	lw $t0, 176($sp)
	lw $t1, 80($sp)
	beq $t0, $t1, label15
	nop
	b label14
	nop
label159:
	lw $t0, 88($sp)
	move $t1, $t0
	sw $t1, 76($sp)
	b label18
	nop
label17:
	lw $t0, 88($sp)
	lw $t1, 168($sp)
	beq $t0, $t1, label28
	nop
	b label159
	nop
label18:
	lw $t0, 76($sp)
	sll $t1, $t0, 2
	lw $t2, 120($sp)
	addu $t3, $t2, $t1
	sll $t4, $t0, 2
	lw $t5, 112($sp)
	addu $t6, $t5, $t4
	lw $t7, 0($t6)
	sw $t7, 0($t3)
	addiu $t8, $t0, 1
	lw $t9, 168($sp)
	sw $t8, 72($sp)
	beq $t8, $t9, label28
	nop
	lw $t0, 72($sp)
	move $t1, $t0
	sw $t1, 76($sp)
	b label18
	nop
label15:
	lw $t0, 184($sp)
	sll $t1, $t0, 2
	lw $t2, 112($sp)
	addu $t3, $t2, $t1
	lw $t4, 68($sp)
	sll $t5, $t4, 2
	lw $t6, 120($sp)
	addu $t7, $t6, $t5
	lw $t8, 0($t7)
	sw $t8, 0($t3)
	addiu $t9, $t4, 1
	move $s0, $t9
	lw $s1, 176($sp)
	move $s2, $s1
	sw $s2, 104($sp)
	sw $s0, 136($sp)
	lw $t0, 184($sp)
	addiu $t1, $t0, 1
	lw $t2, 168($sp)
	sw $t1, 128($sp)
	beq $t1, $t2, label17
	nop
	b label60
	nop
label28:
	move $v0, $zero
	lw $s2, 160($sp)
	lw $s1, 156($sp)
	lw $s0, 152($sp)
	lw $ra, 0($sp)
	addiu $sp, $sp, 200
	jr $ra
	nop
.globl main
main:
	addiu $sp, $sp, -880
	sw $ra, 16($sp)
	addiu $t0, $sp, 48
	addiu $t1, $sp, 464
	jal read
	nop
	move $t2, $v0
	sw $t2, 868($sp)
	sw $t1, 864($sp)
	sw $t0, 40($sp)
	blez $v0, label175
	nop
	move $t0, $zero
	sw $t0, 876($sp)
	b label173
	nop
label233:
	move $t0, $zero
	sw $t0, 32($sp)
	b label176
	nop
label173:
	lw $t0, 876($sp)
	sll $t1, $t0, 2
	lw $t2, 864($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 868($sp)
	subu $t6, $t4, $t5
	sw $t4, 28($sp)
	bgez $t6, label175
	nop
	lw $t0, 28($sp)
	move $t1, $t0
	sw $t1, 876($sp)
	b label173
	nop
label175:
	lw $t0, 864($sp)
	move $a0, $t0
	lw $t1, 40($sp)
	move $a1, $t1
	move $a2, $zero
	lw $t2, 868($sp)
	move $a3, $t2
	jal merge
	nop
	lw $t3, 868($sp)
	blez $t3, label201
	nop
	b label233
	nop
label176:
	lw $t0, 32($sp)
	sll $t1, $t0, 2
	lw $t2, 864($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 868($sp)
	subu $t7, $t5, $t6
	sw $t5, 872($sp)
	bgez $t7, label201
	nop
	lw $t0, 872($sp)
	move $t1, $t0
	sw $t1, 32($sp)
	b label176
	nop
label201:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 880
	jr $ra
	nop
