.data
.data
.align 4
.globl i
i:
	.4byte	15
.text
.globl f
f:
.p2align 2
	lui $t0, %hi(i)
	lw $v0, %lo(i)($t0)
	jr $ra
	nop
