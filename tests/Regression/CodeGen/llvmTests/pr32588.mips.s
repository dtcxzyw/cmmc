.data
.align 4
.globl c
c:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl d
d:
	.zero	4
.text
.globl fn1
fn1:
	lui $t1, %hi(d)
	addiu $t0, $t1, %lo(d)
	lw $t1, %lo(d)($t1)
	sltiu $t1, $t1, 1
	bne $t1, $zero, label10
	nop
	lui $t1, %hi(b)
	lw $t1, %lo(b)($t1)
	sltu $t1, $zero, $t1
	b label3
	nop
label10:
	move $t1, $zero
label3:
	lui $t2, %hi(c)
	lw $t2, %lo(c)($t2)
	sltiu $t2, $t2, 1
	li $t3, 2
	div $zero, $t1, $t3
	mflo $t1
	addu $t1, $t1, $t2
	sw $t1, 0($t0)
	jr $ra
	nop
