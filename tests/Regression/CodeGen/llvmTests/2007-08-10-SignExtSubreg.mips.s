.data
.align 4
.globl X
X:
	.4byte	0
.text
.globl _Z3fooi
_Z3fooi:
	lui $t0, %hi(X)
	sw $a0, %lo(X)($t0)
	andi $t0, $a0, 255
	sll $t0, $t0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
