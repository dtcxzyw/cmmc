.data
.section .rodata
.bss
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
.globl shrink_wrap
shrink_wrap:
	beq a0, zero, label15
	j label10
label15:
	auipc a0, %pcrel_hi(var)
	lw a1, %pcrel_lo(label15)(a0)
	sw a1, %pcrel_lo(label15)(a0)
label10:
	ret
