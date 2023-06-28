.data
.data
.align 4
.globl var
var:
	.4byte	0
.text
.globl big_global
big_global:
	lui $t0, %hi(var)
	lw $v0, %lo(var)($t0)
	jr $ra
	nop
.globl small_global
small_global:
	lui $t0, %hi(var)
	lw $v0, %lo(var)($t0)
	jr $ra
	nop
