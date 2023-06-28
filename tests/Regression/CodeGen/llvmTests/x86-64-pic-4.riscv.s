.data
.data
.align 4
.globl a
a:
	.4byte	0
.text
.globl get_a
get_a:
pcrel7:
	auipc a0, %pcrel_hi(a)
	lw a0, %pcrel_lo(pcrel7)(a0)
	ret
