.data
.bss
.align 4
.globl var
var:
	.zero	4
.text
.globl func
func:
.p2align 2
	jr $ra
	nop
.globl shrink_wrap
shrink_wrap:
.p2align 2
	jr $ra
	nop
