.data
.data
.align 4
.globl x
x:
	.4byte	0
.align 4
.globl y
y:
	.4byte	0
.text
.p2align 2
.globl f1
f1:
	lui $t0, %hi(x)
	sw $a0, %lo(x)($t0)
	lui $t0, %hi(y)
	sw $a1, %lo(y)($t0)
	jr $ra
	nop
