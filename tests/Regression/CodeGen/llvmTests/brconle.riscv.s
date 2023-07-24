.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl i
i:
	.4byte	4294967291
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	4294967291
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
.p2align 2
pcrel41:
	auipc a0, %pcrel_hi(i)
pcrel42:
	auipc a3, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel41)(a0)
	mv a0, a1
	lw a2, %pcrel_lo(pcrel42)(a3)
	bgt a2, a1, label2
label3:
	auipc a2, %pcrel_hi(k)
	lw a1, %pcrel_lo(label3)(a2)
	bgt a0, a1, label4
label5:
	ret
label2:
	li a1, 1
pcrel43:
	auipc a2, %pcrel_hi(result1)
	sw a1, %pcrel_lo(pcrel43)(a2)
	j label3
label4:
	auipc a0, %pcrel_hi(result1)
	sw zero, %pcrel_lo(label4)(a0)
	j label5
