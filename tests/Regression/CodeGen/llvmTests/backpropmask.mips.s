.data
.data
.align 4
.globl b
b:
	.4byte	918
.align 4
.globl d
d:
	.4byte	8089
.align 4
.globl c
c:
	.4byte	0
.align 4
.globl a
a:
	.4byte	0
.text
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
