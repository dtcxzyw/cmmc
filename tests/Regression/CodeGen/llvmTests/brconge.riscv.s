.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
.p2align 2
.globl test
test:
pcrel41:
	auipc a2, %pcrel_hi(i)
pcrel42:
	auipc a3, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel41)(a2)
	lw a2, %pcrel_lo(pcrel42)(a3)
	mv a0, a1
	bge a1, a2, label3
	li a1, 1
pcrel43:
	auipc a3, %pcrel_hi(result1)
	sw a1, %pcrel_lo(pcrel43)(a3)
label3:
	auipc a2, %pcrel_hi(k)
	lw a1, %pcrel_lo(label3)(a2)
	bge a0, a1, label5
	li a0, 1
pcrel44:
	auipc a1, %pcrel_hi(result1)
	sw a0, %pcrel_lo(pcrel44)(a1)
label5:
	ret
