.data
.data
.align 4
.globl j
j:
	.4byte	5
.align 4
.globl k
k:
	.4byte	10
.align 4
.globl l
l:
	.4byte	20
.align 4
.globl m
m:
	.4byte	10
.align 4
.globl r1
r1:
	.4byte	0
.align 4
.globl r2
r2:
	.4byte	0
.align 4
.globl r3
r3:
	.4byte	0
.text
.globl test
test:
pcrel35:
	auipc a0, %pcrel_hi(k)
	lw a0, %pcrel_lo(pcrel35)(a0)
pcrel36:
	auipc a1, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel36)(a1)
	sltu a1, a0, a1
	xori a2, a1, 1
	li a1, 4294967295
	and a2, a2, a1
pcrel37:
	auipc a3, %pcrel_hi(r1)
	sw a2, %pcrel_lo(pcrel37)(a3)
pcrel38:
	auipc a2, %pcrel_hi(m)
	lw a2, %pcrel_lo(pcrel38)(a2)
	sltu a0, a0, a2
	xori a0, a0, 1
	and a0, a0, a1
pcrel39:
	auipc a1, %pcrel_hi(r2)
	sw a0, %pcrel_lo(pcrel39)(a1)
	ret