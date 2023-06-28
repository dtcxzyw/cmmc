.data
.align 4
.globl iiii
iiii:
	.4byte	100
.align 4
.globl jjjj
jjjj:
	.4byte	4
.align 4
.globl kkkk
kkkk:
	.4byte	0
.text
.globl test
test:
pcrel17:
	auipc a0, %pcrel_hi(iiii)
	lw a0, %pcrel_lo(pcrel17)(a0)
pcrel18:
	auipc a1, %pcrel_hi(jjjj)
	lw a1, %pcrel_lo(pcrel18)(a1)
	divuw a0, a0, a1
pcrel19:
	auipc a1, %pcrel_hi(kkkk)
	sw a0, %pcrel_lo(pcrel19)(a1)
	ret
