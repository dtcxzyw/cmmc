.data
.data
.align 1
.globl a
a:
	.byte	1
.align 2
.globl b
b:
	.byte	2
	.byte	0
.align 4
.globl c
c:
	.4byte	4
.text
.p2align 2
.globl t1
t1:
	lui $t0, %hi(a)
	lb $t0, %lo(a)($t0)
	sll $t0, $t0, 24
	sra $t0, $t0, 24
	addiu $t0, $t0, 1
	andi $v0, $t0, 255
	jr $ra
	nop
.p2align 2
.globl t2
t2:
	lui $t0, %hi(b)
	lh $t0, %lo(b)($t0)
	sll $t0, $t0, 16
	sra $t0, $t0, 16
	addiu $t0, $t0, 1
	andi $v0, $t0, 65535
	jr $ra
	nop
.p2align 2
.globl t3
t3:
	lui $t0, %hi(c)
	lw $t0, %lo(c)($t0)
	addiu $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl t4
t4:
	sll $t0, $a0, 24
	sra $t0, $t0, 24
	addiu $t0, $t0, 1
	andi $t0, $t0, 255
	lui $t1, %hi(a)
	sb $t0, %lo(a)($t1)
	jr $ra
	nop
.p2align 2
.globl t5
t5:
	sll $t0, $a0, 16
	sra $t0, $t0, 16
	addiu $t0, $t0, 1
	andi $t0, $t0, 65535
	lui $t1, %hi(b)
	sh $t0, %lo(b)($t1)
	jr $ra
	nop
.p2align 2
.globl t6
t6:
	addiu $t0, $a0, 1
	lui $t1, %hi(c)
	sw $t0, %lo(c)($t1)
	jr $ra
	nop
