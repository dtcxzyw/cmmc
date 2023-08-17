.data
.data
.p2align 2
.globl b
b:
	.4byte	918
.p2align 2
.globl d
d:
	.4byte	8089
.p2align 2
.globl c
c:
	.4byte	0
.p2align 2
.globl a
a:
	.4byte	0
.text
.p2align 2
.globl PR37060
PR37060:
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
	lui $t1, %hi(c)
	lw $t1, %lo(c)($t1)
	li $t2, -1
	div $zero, $t2, $t1
	mfhi $t1
	xor $t0, $t0, $t1
	andi $t0, $t0, 255
	lui $t1, %hi(a)
	sw $t0, %lo(a)($t1)
	jr $ra
	nop
.p2align 2
.globl PR37667
PR37667:
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
	lui $t1, %hi(d)
	lw $t1, %lo(d)($t1)
	divu $zero, $t0, $t1
	mfhi $t0
	lui $t1, %hi(c)
	lw $t1, %lo(c)($t1)
	or $t0, $t0, $t1
	andi $t0, $t0, 255
	lui $t1, %hi(a)
	sw $t0, %lo(a)($t1)
	jr $ra
	nop
