.data
.bss
.align 4
.globl x
x:
	.zero	4
.text
.globl test
test:
pcrel8:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel8)(a0)
	slliw a0, a0, 1
	ret
