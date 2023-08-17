.data
.data
.p2align 2
.globl a
a:
	.4byte	10
.p2align 2
.globl b
b:
	.4byte	0
.p2align 2
.globl c
c:
	.4byte	10
.p2align 2
.globl d
d:
	.4byte	0
.p2align 2
.globl i
i:
	.4byte	10654
.p2align 2
.globl j
j:
	.4byte	0
.p2align 2
.globl m
m:
	.4byte	10
.p2align 2
.globl n
n:
	.4byte	0
.text
.p2align 2
.globl shift_left
shift_left:
	lui $t0, %hi(a)
	lw $t0, %lo(a)($t0)
	sll $t0, $t0, 4
	lui $t1, %hi(b)
	sw $t0, %lo(b)($t1)
	lui $t0, %hi(c)
	lw $t0, %lo(c)($t0)
	sll $t0, $t0, 10
	lui $t1, %hi(d)
	sw $t0, %lo(d)($t1)
	move $v0, $zero
	jr $ra
	nop
.p2align 2
.globl shift_right
shift_right:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	srl $t0, $t0, 4
	lui $t1, %hi(j)
	sw $t0, %lo(j)($t1)
	lui $t0, %hi(m)
	lw $t0, %lo(m)($t0)
	srl $t0, $t0, 10
	lui $t1, %hi(n)
	sw $t0, %lo(n)($t1)
	move $v0, $zero
	jr $ra
	nop
