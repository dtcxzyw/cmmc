.data
.bss
.align 4
.globl var
var:
	.zero	4
.text
.globl func
func:
	jr $ra
	nop
.globl shrink_wrap
shrink_wrap:
	jr $ra
	nop
