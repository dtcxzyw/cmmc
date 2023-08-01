.data
.bss
.align 4
.globl var
var:
	.zero	4
.text
.p2align 2
.globl func
func:
	jr $ra
	nop
