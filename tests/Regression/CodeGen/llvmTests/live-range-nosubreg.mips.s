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
	andi $t1, $t0, 65535
	lui $t2, %hi(d)
	addiu $t0, $t2, %lo(d)
	lb $t2, %lo(d)($t2)
	andi $t2, $t2, 255
	subu $t2, $zero, $t2
	beq $t1, $zero, label27
	nop
	lui $t1, %hi(b)
	lw $t1, %lo(b)($t1)
	sltu $t1, $zero, $t1
	b label2
	nop
label27:
	move $t1, $zero
label2:
	andi $t1, $t1, 255
	andi $t2, $t2, 255
	or $t1, $t1, $t2
	andi $t1, $t1, 255
	sb $t1, 0($t0)
	move $v0, $zero
	jr $ra
	nop
