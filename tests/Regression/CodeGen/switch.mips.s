.data
.section .rodata
.p2align 3
__cmmc_jumptable10:
	.word	label7-__cmmc_jumptable10
	.word	label6-__cmmc_jumptable10
	.word	label5-__cmmc_jumptable10
	.word	label4-__cmmc_jumptable10
.text
.p2align 2
.globl test
test:
	move $t0, $a1
	li $t1, 3
	sltu $t1, $t1, $a1
	bne $t1, $zero, label11
	nop
	lui $t1, %hi(__cmmc_jumptable10)
	addiu $t1, $t1, %lo(__cmmc_jumptable10)
	sll $t0, $a1, 2
	addu $t0, $t1, $t0
	lw $t0, 0($t0)
	addu $t0, $t1, $t0
	jr $t0 @ __cmmc_jumptable10
	nop
label7:
	addiu $v0, $a0, 100
	b label2
	nop
label11:
	move $v0, $a0
label2:
	jr $ra
	nop
label5:
	li $t0, 100
	mult $a0, $t0
	mflo $v0
	b label2
	nop
label6:
	addiu $v0, $a0, -100
	b label2
	nop
label4:
	li $t0, 100
	div $zero, $a0, $t0
	mflo $v0
	b label2
	nop
