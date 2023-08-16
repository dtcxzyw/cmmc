.data
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
.p2align 2
.globl main
main:
	lui $t1, %hi(a)
	lh $t0, %lo(a)($t1)
	andi $t2, $t0, 65535
	addiu $t2, $t2, 1
	andi $t2, $t2, 65535
	lui $t3, %hi(c)
	lw $t3, %lo(c)($t3)
	sltiu $t3, $t3, 1
	movn $t0, $t2, $t3
	andi $t0, $t0, 65535
	addiu $t0, $t0, -1
	andi $t2, $t0, 65535
	sh $t2, %lo(a)($t1)
	andi $t0, $t0, 65535
	lui $t1, %hi(d)
	lb $t2, %lo(d)($t1)
	andi $t2, $t2, 255
	subu $t2, $zero, $t2
	bne $t0, $zero, label26
	nop
	move $t0, $zero
	b label2
	nop
label26:
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
	sltu $t0, $zero, $t0
label2:
	andi $t0, $t0, 255
	andi $t2, $t2, 255
	or $t0, $t0, $t2
	andi $t0, $t0, 255
	sb $t0, %lo(d)($t1)
	move $v0, $zero
	jr $ra
	nop
