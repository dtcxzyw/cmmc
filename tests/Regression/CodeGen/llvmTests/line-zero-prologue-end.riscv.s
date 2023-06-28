.data
.align 4
.globl x
x:
	.4byte	0
.text
.globl test
test:
	li a0, 1
pcrel7:
	auipc a1, %pcrel_hi(x)
	sw a0, %pcrel_lo(pcrel7)(a1)
	ret
