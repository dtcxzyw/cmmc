.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	5
.align 4
.globl result1
result1:
	.4byte	0
.align 4
.globl result2
result2:
	.4byte	1
.text
.globl test
test:
pcrel47:
	auipc a0, %pcrel_hi(i)
	lw a1, %pcrel_lo(pcrel47)(a0)
	mv a0, a1
pcrel48:
	auipc a2, %pcrel_hi(j)
	lw a2, %pcrel_lo(pcrel48)(a2)
	bge a1, a2, label3
	li a1, 1
pcrel49:
	auipc a2, %pcrel_hi(result1)
	sw a1, %pcrel_lo(pcrel49)(a2)
pcrel50:
	auipc a1, %pcrel_hi(k)
	lw a1, %pcrel_lo(pcrel50)(a1)
	bge a0, a1, label5
	j label45
label3:
	auipc a1, %pcrel_hi(k)
	lw a1, %pcrel_lo(label3)(a1)
	bge a0, a1, label5
	j label45
label5:
	ret
label45:
	li a0, 1
pcrel51:
	auipc a1, %pcrel_hi(result1)
	sw a0, %pcrel_lo(pcrel51)(a1)
	j label5
