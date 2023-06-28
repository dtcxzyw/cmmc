.data
.align 4
.globl i
i:
	.4byte	1
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	1
.align 4
.globl r1
r1:
	.4byte	0
.align 4
.globl r2
r2:
	.4byte	0
.text
.globl test
test:
pcrel21:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel21)(a0)
pcrel22:
	auipc a1, %pcrel_hi(k)
	lw a1, %pcrel_lo(pcrel22)(a1)
	xor a0, a0, a1
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
pcrel23:
	auipc a1, %pcrel_hi(r1)
	sw a0, %pcrel_lo(pcrel23)(a1)
	ret
