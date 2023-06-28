.data
.align 4
.globl var
var:
	.zero	4
.text
.globl func
func:
	lui $t0, %hi(var)
	lw $t1, %lo(var)($t0)
	sw $t1, %lo(var)($t0)
	jr $ra
	nop
