.data
.bss
.p2align 2
.globl var
var:
	.zero	4
.text
.p2align 2
.globl func
func:
	jr $ra
	nop
.p2align 2
.globl shrink_wrap
shrink_wrap:
	jr $ra
	nop
