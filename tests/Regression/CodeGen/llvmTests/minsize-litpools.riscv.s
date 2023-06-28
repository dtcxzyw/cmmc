.data
.align 4
.globl var
var:
	.4byte	0
.section .rodata
.bss
.text
.globl big_global
big_global:
pcrel7:
	auipc a0, %pcrel_hi(var)
	lw a0, %pcrel_lo(pcrel7)(a0)
	ret
.globl small_global
small_global:
pcrel14:
	auipc a0, %pcrel_hi(var)
	lw a0, %pcrel_lo(pcrel14)(a0)
	ret
