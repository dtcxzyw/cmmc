.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.section .rodata
.bss
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
	sw $s2, 20($sp)
	sw $s3, 16($sp)
	sw $s0, 12($sp)
	sw $s4, 8($sp)
	sw $s1, 4($sp)
	sw $ra, 0($sp)
	move $s2, $a0
	move $s3, $a1
	move $s0, $a2
	move $s4, $a3
	addiu $t0, $a2, 1
	subu $t0, $t0, $a3
	bgez $t0, label21
	nop
	addu $t0, $a2, $a3
	li $t1, 2
	div $zero, $t0, $t1
	mflo $s1
	move $a3, $s1
	jal merge
	nop
	move $a0, $s2
	move $a1, $s3
	move $a2, $s1
	move $a3, $s4
	jal merge
	nop
	move $t0, $s0
	move $t1, $s1
	move $t2, $s0
	beq $s0, $s4, label18
	nop
	beq $s0, $s1, label41
	nop
	xor $t3, $s1, $s4
	sltu $t3, $zero, $t3
	beq $t3, $zero, label16
	nop
	sll $t3, $s0, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $s1, 2
	addu $t4, $s2, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label15
	nop
	sll $t3, $s0, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $s0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t2, $s0, 1
	addiu $t0, $s0, 1
	beq $t0, $s4, label18
	nop
	beq $t2, $s1, label41
	nop
	xor $t3, $s1, $s4
	sltu $t3, $zero, $t3
	beq $t3, $zero, label16
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $s1, 2
	addu $t4, $s2, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label15
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s4, label18
	nop
	beq $t2, $s1, label41
	nop
	b label194
	nop
label18:
	beq $s0, $s4, label21
	nop
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
	b label203
	nop
label41:
	move $t3, $zero
	b label16
	nop
label211:
	beq $t2, $s1, label41
	nop
	b label194
	nop
label16:
	beq $t2, $s1, label15
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s4, label18
	nop
	beq $t2, $s1, label41
	nop
	xor $t3, $t1, $s4
	sltu $t3, $zero, $t3
	beq $t3, $zero, label16
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s2, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label15
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s4, label18
	nop
	beq $t2, $s1, label41
	nop
	xor $t3, $t1, $s4
	sltu $t3, $zero, $t3
	beq $t3, $zero, label16
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s2, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label15
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s4, label18
	nop
	beq $t2, $s1, label41
	nop
	b label194
	nop
label203:
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
label217:
	sll $t0, $s0, 2
	addu $t0, $s3, $t0
	lw $t0, 0($t0)
	sll $t1, $s0, 2
	addu $t1, $s2, $t1
	sw $t0, 0($t1)
	addiu $s0, $s0, 1
	beq $s0, $s4, label21
	nop
	b label217
	nop
label194:
	xor $t3, $t1, $s4
	sltu $t3, $zero, $t3
	beq $t3, $zero, label16
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s2, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label15
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s4, label18
	nop
	b label211
	nop
label15:
	sll $t3, $t1, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t1, $t1, 1
	addiu $t0, $t0, 1
	beq $t0, $s4, label18
	nop
	beq $t2, $s1, label41
	nop
	xor $t3, $t1, $s4
	sltu $t3, $zero, $t3
	beq $t3, $zero, label16
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s2, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label15
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s4, label18
	nop
	beq $t2, $s1, label41
	nop
	xor $t3, $t1, $s4
	sltu $t3, $zero, $t3
	beq $t3, $zero, label16
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t1, 2
	addu $t4, $s2, $t4
	lw $t4, 0($t4)
	subu $t3, $t3, $t4
	bgez $t3, label15
	nop
	sll $t3, $t2, 2
	addu $t3, $s2, $t3
	lw $t3, 0($t3)
	sll $t4, $t0, 2
	addu $t4, $s3, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	addiu $t0, $t0, 1
	beq $t0, $s4, label18
	nop
	beq $t2, $s1, label41
	nop
	b label194
	nop
label21:
	move $v0, $zero
	lw $ra, 0($sp)
	lw $s1, 4($sp)
	lw $s4, 8($sp)
	lw $s0, 12($sp)
	lw $s3, 16($sp)
	lw $s2, 20($sp)
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
	blez $v0, label241
	nop
	move $t0, $zero
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
label324:
	jal read
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	sw $v0, 0($t1)
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label241
	nop
	b label324
	nop
label241:
	move $a0, $t6
	move $a2, $zero
	move $a3, $t5
	jal merge
	nop
	blez $t5, label244
	nop
	move $t0, $zero
	sll $t1, $zero, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
label326:
	sll $t1, $t0, 2
	addu $t1, $t6, $t1
	lw $a0, 0($t1)
	jal write
	nop
	addiu $t0, $t0, 1
	subu $t1, $t0, $t5
	bgez $t1, label244
	nop
	b label326
	nop
label244:
	move $v0, $zero
	lw $ra, 816($sp)
	addiu $sp, $sp, 824
	jr $ra
	nop
