.data
.data
.p2align 2
.globl x
x:
	.4byte	0
.text
.p2align 2
.globl t
t:
	lui $t0, %hi(x)
	lw $v0, %lo(x)($t0)
	jr $ra
	nop
