.data
.align 4
.globl counter
counter:
	.4byte	0
.text
.globl foo
foo:
	li a0, 5
pcrel7:
	auipc a1, %pcrel_hi(counter)
	sw a0, %pcrel_lo(pcrel7)(a1)
	ret
