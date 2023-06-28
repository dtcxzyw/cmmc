.data
.data
.align 4
.globl i
i:
	.4byte	15
.text
.globl f
f:
pcrel7:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel7)(a0)
	ret
