.data
.data
.align 4
.globl iiii
iiii:
	.4byte	103
.align 4
.globl jjjj
jjjj:
	.4byte	4294967292
.align 4
.globl kkkk
kkkk:
	.4byte	0
.align 4
.globl llll
llll:
	.4byte	0
.text
.globl test
test:
pcrel28:
	auipc a0, %pcrel_hi(iiii)
	lw a0, %pcrel_lo(pcrel28)(a0)
pcrel29:
	auipc a1, %pcrel_hi(jjjj)
	lw a1, %pcrel_lo(pcrel29)(a1)
	divw a3, a0, a1
	li a2, 4294967295
	and a3, a3, a2
pcrel30:
	auipc a4, %pcrel_hi(kkkk)
	sw a3, %pcrel_lo(pcrel30)(a4)
	remw a0, a0, a1
	and a0, a0, a2
pcrel31:
	auipc a1, %pcrel_hi(llll)
	sw a0, %pcrel_lo(pcrel31)(a1)
	ret