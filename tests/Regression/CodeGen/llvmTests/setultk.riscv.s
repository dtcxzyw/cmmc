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
pcrel15:
	auipc a0, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel15)(a0)
	sltiu a0, a0, 10
	li a1, 4294967295
	and a0, a0, a1
pcrel16:
	auipc a1, %pcrel_hi(r1)
	sw a0, %pcrel_lo(pcrel16)(a1)
	ret
