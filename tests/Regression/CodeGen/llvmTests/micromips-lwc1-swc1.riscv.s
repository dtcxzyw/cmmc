.data
.bss
.align 4
.globl gf0
gf0:
	.zero	4
.text
.globl test_lwc1
test_lwc1:
pcrel7:
	auipc a0, %pcrel_hi(gf0)
	flw f10, %pcrel_lo(pcrel7)(a0)
	ret
.globl test_swc1
test_swc1:
pcrel14:
	auipc a0, %pcrel_hi(gf0)
	fsw f10, %pcrel_lo(pcrel14)(a0)
	ret
