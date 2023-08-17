.data
.data
.p2align 2
.globl i
i:
	.4byte	15
.text
.p2align 2
.globl f
f:
	lui $t0, %hi(i)
	lw $v0, %lo(i)($t0)
	jr $ra
	nop
