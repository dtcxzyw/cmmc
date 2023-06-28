.data
.data
.align 4
.globl iiii
iiii:
	.4byte	100
.align 4
.globl jjjj
jjjj:
	.4byte	4294967292
.align 4
.globl kkkk
kkkk:
	.4byte	0
.text
.globl test
test:
pcrel21:
	auipc a0, %pcrel_hi(iiii)
	lw a0, %pcrel_lo(pcrel21)(a0)
pcrel22:
	auipc a1, %pcrel_hi(jjjj)
	lw a1, %pcrel_lo(pcrel22)(a1)
	divw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
pcrel23:
	auipc a1, %pcrel_hi(kkkk)
	sw a0, %pcrel_lo(pcrel23)(a1)
	ret
