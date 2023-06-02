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
	addiu $sp, $sp, -608
	sw $ra, 16($sp)
	addiu $t0, $sp, 84
	jal read
	nop
	move $t1, $v0
	sw $t1, 524($sp)
	sw $t0, 76($sp)
	blez $v0, label4
	nop
	move $t0, $zero
	sw $t0, 68($sp)
label2:
	lw $t0, 68($sp)
	sll $t1, $t0, 2
	lw $t2, 76($sp)
	addu $t3, $t2, $t1
	jal read
	nop
	sw $v0, 0($t3)
	addiu $t4, $t0, 1
	lw $t5, 524($sp)
	subu $t6, $t4, $t5
	sw $t4, 592($sp)
	bgez $t6, label4
	nop
	lw $t0, 592($sp)
	move $t1, $t0
	sw $t1, 68($sp)
	b label2
	nop
label4:
	lw $t0, 524($sp)
	addiu $t1, $t0, -1
	blez $t1, label17
	nop
	b label40
	nop
label50:
	move $t0, $zero
	sw $t0, 60($sp)
	lw $t0, 60($sp)
	beq $t0, $zero, label58
	nop
	b label177
	nop
label58:
	lw $t0, 516($sp)
	move $t1, $t0
	sw $t1, 508($sp)
	b label15
	nop
label79:
	lw $t0, 56($sp)
	move $t1, $t0
	sw $t1, 508($sp)
label15:
	lw $t0, 508($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 76($sp)
	addu $t4, $t3, $t2
	lw $t5, 500($sp)
	sw $t5, 0($t4)
	lw $t6, 64($sp)
	addiu $t7, $t6, 1
	lw $t8, 524($sp)
	subu $t9, $t7, $t8
	sw $t7, 556($sp)
	bgez $t9, label17
	nop
	lw $t0, 556($sp)
	move $t1, $t0
	sw $t1, 64($sp)
	lw $t0, 64($sp)
	sll $t1, $t0, 2
	lw $t2, 76($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	addiu $t6, $t5, 1
	sw $t5, 516($sp)
	sw $t4, 500($sp)
	blez $t6, label50
	nop
	b label49
	nop
label17:
	lw $t0, 524($sp)
	blez $t0, label91
	nop
	b label168
	nop
label10:
	lw $t0, 72($sp)
	addiu $t1, $t0, 1
	sll $t2, $t1, 2
	lw $t3, 76($sp)
	addu $t4, $t3, $t2
	sll $t5, $t0, 2
	addu $t6, $t3, $t5
	lw $t7, 0($t6)
	sw $t7, 0($t4)
	addiu $t8, $t0, -1
	addiu $t9, $t8, 1
	sw $t8, 56($sp)
	blez $t9, label71
	nop
	lw $t0, 56($sp)
	sll $t1, $t0, 2
	lw $t2, 76($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 500($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t7, 492($sp)
	lw $t0, 492($sp)
	beq $t0, $zero, label79
	nop
label176:
	lw $t0, 56($sp)
	move $t1, $t0
	sw $t1, 72($sp)
	b label10
	nop
label71:
	move $t0, $zero
	sw $t0, 492($sp)
	lw $t0, 492($sp)
	beq $t0, $zero, label79
	nop
	b label176
	nop
label177:
	lw $t0, 516($sp)
	move $t1, $t0
	sw $t1, 72($sp)
	b label10
	nop
label168:
	move $t0, $zero
	sw $t0, 596($sp)
label18:
	lw $t0, 596($sp)
	sll $t1, $t0, 2
	lw $t2, 76($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	move $a0, $t4
	jal write
	nop
	addiu $t5, $t0, 1
	lw $t6, 524($sp)
	subu $t7, $t5, $t6
	sw $t5, 568($sp)
	bgez $t7, label91
	nop
	lw $t0, 568($sp)
	move $t1, $t0
	sw $t1, 596($sp)
	b label18
	nop
label40:
	li $t0, 1
	sw $t0, 64($sp)
	lw $t0, 64($sp)
	sll $t1, $t0, 2
	lw $t2, 76($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	addiu $t5, $t0, -1
	addiu $t6, $t5, 1
	sw $t5, 516($sp)
	sw $t4, 500($sp)
	blez $t6, label50
	nop
	lw $t0, 516($sp)
	sll $t1, $t0, 2
	lw $t2, 76($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 500($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t7, 60($sp)
	lw $t0, 60($sp)
	beq $t0, $zero, label58
	nop
	b label177
	nop
label49:
	lw $t0, 516($sp)
	sll $t1, $t0, 2
	lw $t2, 76($sp)
	addu $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, 500($sp)
	slt $t6, $t5, $t4
	move $t7, $t6
	sw $t7, 60($sp)
	lw $t0, 60($sp)
	beq $t0, $zero, label58
	nop
	b label177
	nop
label91:
	move $v0, $zero
	lw $ra, 16($sp)
	addiu $sp, $sp, 608
	jr $ra
	nop
