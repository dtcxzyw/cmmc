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
.globl f1
f1:
.p2align 2
	lui $t0, %hi(x)
	sw $a0, %lo(x)($t0)
	lui $t0, %hi(y)
	sw $a1, %lo(y)($t0)
	jr $ra
	nop
