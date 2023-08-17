.data
.data
.p2align 2
.globl var
var:
	.4byte	0
.text
.p2align 2
.globl big_global
big_global:
	lui $t0, %hi(var)
	lw $v0, %lo(var)($t0)
	jr $ra
	nop
.p2align 2
.globl small_global
small_global:
	lui $t0, %hi(var)
	lw $v0, %lo(var)($t0)
	jr $ra
	nop
