.data
.align 4
.globl var
var:
	.zero	4
.text
.globl func
func:
pcrel8:
	auipc a0, %pcrel_hi(var)
	lw a1, %pcrel_lo(pcrel8)(a0)
	sw a1, %pcrel_lo(pcrel8)(a0)
	ret
