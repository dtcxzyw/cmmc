.data
.data
.align 4
.globl x
x:
	.4byte	0
.text
.globl t
t:
.p2align 2
	lui $t0, %hi(x)
	lw $v0, %lo(x)($t0)
	jr $ra
	nop
