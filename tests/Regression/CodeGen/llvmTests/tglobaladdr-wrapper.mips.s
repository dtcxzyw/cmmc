.data
.data
.p2align 2
.globl x
x:
	.4byte	0
.p2align 2
.globl a
a:
	.4byte	0
.p2align 2
.globl b
b:
	.4byte	0
.text
.p2align 2
.globl foo
foo:
	lui $t1, %hi(x)
	lw $t0, %lo(x)($t1)
	bne $t0, $zero, label10
	nop
	lui $t0, %hi(a)
	lw $t0, %lo(a)($t0)
	b label3
	nop
label10:
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
label3:
	sw $t0, %lo(x)($t1)
	jr $ra
	nop
