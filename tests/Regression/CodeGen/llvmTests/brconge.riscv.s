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
.globl test
test:
pcrel43:
	auipc a2, %pcrel_hi(i)
pcrel44:
	auipc a3, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel43)(a2)
	lw a2, %pcrel_lo(pcrel44)(a3)
	mv a0, a1
	blt a1, a2, label2
pcrel45:
	auipc a2, %pcrel_hi(k)
	lw a1, %pcrel_lo(pcrel45)(a2)
	blt a0, a1, label4
label5:
	ret
label2:
	li a1, 1
pcrel46:
	auipc a2, %pcrel_hi(result1)
	sw a1, %pcrel_lo(pcrel46)(a2)
pcrel47:
	auipc a2, %pcrel_hi(k)
	lw a1, %pcrel_lo(pcrel47)(a2)
	bge a0, a1, label5
label4:
	li a0, 1
pcrel48:
	auipc a1, %pcrel_hi(result1)
	sw a0, %pcrel_lo(pcrel48)(a1)
	j label5
