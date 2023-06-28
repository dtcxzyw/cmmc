.data
.align 4
.globl a
a:
	.4byte	4
.text
.globl foo
foo:
pcrel7:
	auipc a0, %pcrel_hi(a)
	lw a0, %pcrel_lo(pcrel7)(a0)
	ret
