.data
.data
.align 4
.globl x
x:
	.4byte	0
.align 4
.globl a
a:
	.4byte	0
.align 4
.globl b
b:
	.4byte	0
.text
.globl foo
foo:
	lui $t0, %hi(x)
	addiu $t1, $t0, %lo(x)
	lw $t0, %lo(x)($t0)
	beq $t0, $zero, label2
	nop
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
	b label3
	nop
label2:
	lui $t0, %hi(a)
	lw $t0, %lo(a)($t0)
label3:
	sw $t0, 0($t1)
	jr $ra
	nop
