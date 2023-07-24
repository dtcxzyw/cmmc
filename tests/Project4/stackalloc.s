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
.globl main
main:
.p2align 2
	addiu $sp, $sp, -424
	sw $ra, 416($sp)
	addiu $t1, $sp, 16
	jal read
	nop
	move $t0, $v0
	bgtz $v0, label22
	nop
	li $t2, 1
	subu $t3, $v0, $t2
	bgtz $t3, label6
	nop
	bgtz $v0, label61
	nop
	b label15
	nop
label22:
.p2align 2
	move $t2, $zero
label2:
.p2align 2
	jal read
	nop
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	sw $v0, 0($t3)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label2
	nop
	li $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label6
	nop
	blez $t0, label15
	nop
label61:
	move $t2, $zero
label13:
.p2align 2
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	lw $a0, 0($t3)
	jal write
	nop
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label13
	nop
label15:
	move $v0, $zero
	lw $ra, 416($sp)
	addiu $sp, $sp, 424
	jr $ra
	nop
label6:
.p2align 2
	sll $t3, $t2, 2
	addu $t3, $t1, $t3
	lw $t3, 0($t3)
	addiu $t4, $t2, -1
	addiu $t5, $t4, 1
	bgtz $t5, label9
	nop
	addiu $t4, $t4, 1
	sll $t4, $t4, 2
	addu $t4, $t1, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label6
	nop
	bgtz $t0, label61
	nop
	b label15
	nop
label9:
.p2align 2
	sll $t5, $t4, 2
	addu $t5, $t1, $t5
	lw $t5, 0($t5)
	subu $t6, $t3, $t5
	bltz $t6, label10
	nop
	addiu $t4, $t4, 1
	sll $t4, $t4, 2
	addu $t4, $t1, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label6
	nop
	bgtz $t0, label61
	nop
	b label15
	nop
label10:
.p2align 2
	addiu $t6, $t4, 1
	sll $t6, $t6, 2
	addu $t6, $t1, $t6
	sw $t5, 0($t6)
	addiu $t4, $t4, -1
	addiu $t5, $t4, 1
	bgtz $t5, label9
	nop
	addiu $t4, $t4, 1
	sll $t4, $t4, 2
	addu $t4, $t1, $t4
	sw $t3, 0($t4)
	addiu $t2, $t2, 1
	subu $t3, $t0, $t2
	bgtz $t3, label6
	nop
	bgtz $t0, label61
	nop
	b label15
	nop
