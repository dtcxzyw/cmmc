.data
.align 2
.globl a
a:
	.byte	0
	.byte	0
.align 4
.globl c
c:
	.4byte	0
.align 1
.globl d
d:
	.byte	0
.align 4
.globl b
b:
	.4byte	0
.text
.globl main
main:
	lui $t0, %hi(a)
	addiu $t1, $t0, %lo(a)
	lh $t0, %lo(a)($t0)
	lui $t2, %hi(c)
	lw $t2, %lo(c)($t2)
	sltu $t2, $zero, $t2
	bne $t2, $zero, label3
	nop
	andi $t0, $t0, 65535
	addiu $t0, $t0, 1
	andi $t0, $t0, 65535
label3:
	andi $t0, $t0, 65535
	addiu $t0, $t0, -1
	andi $t0, $t0, 65535
	andi $t2, $t0, 65535
	sh $t0, 0($t1)
	lui $t1, %hi(d)
	addiu $t0, $t1, %lo(d)
	lb $t1, %lo(d)($t1)
	andi $t1, $t1, 255
	subu $t1, $zero, $t1
	andi $t3, $t1, 255
	bne $t2, $zero, label33
	nop
	move $t1, $zero
	b label5
	nop
label33:
	lui $t1, %hi(b)
	lw $t1, %lo(b)($t1)
	sltu $t1, $zero, $t1
label5:
	andi $t1, $t1, 255
	andi $t1, $t1, 255
	andi $t2, $t3, 255
	or $t1, $t1, $t2
	andi $t1, $t1, 255
	sb $t1, 0($t0)
	move $v0, $zero
	jr $ra
	nop
