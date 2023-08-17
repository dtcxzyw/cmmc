.data
.data
.p2align 2
.globl X
X:
	.4byte	0
.text
.p2align 2
.globl _Z3fooi
_Z3fooi:
	andi $t0, $a0, 255
	sll $t0, $t0, 24
	sra $v0, $t0, 24
	lui $t0, %hi(X)
	sw $a0, %lo(X)($t0)
	jr $ra
	nop
