.data
.align 4
.globl g
g:
	.4byte	0
.section .rodata
.bss
.align 4
.globl i
i:
	.zero	4
.text
.globl LoadGV
LoadGV:
pcrel7:
	auipc a0, %pcrel_hi(g)
	lw a0, %pcrel_lo(pcrel7)(a0)
	ret
.globl LoadIndirectSymbol
LoadIndirectSymbol:
pcrel14:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel14)(a0)
	ret
