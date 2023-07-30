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
pcrel36:
	auipc a0, %pcrel_hi(i)
pcrel37:
	auipc a2, %pcrel_hi(j)
pcrel38:
	auipc a4, %pcrel_hi(result1)
	lw a1, %pcrel_lo(pcrel36)(a0)
	mv a0, a1
	lw a3, %pcrel_lo(pcrel37)(a2)
	addi a2, a4, %pcrel_lo(pcrel38)
	bgt a3, a1, label2
label3:
	auipc a1, %pcrel_hi(k)
	lw a3, %pcrel_lo(label3)(a1)
	bgt a0, a3, label4
label5:
	ret
label2:
	li a1, 1
	sw a1, 0(a2)
	j label3
label4:
	sw zero, 0(a2)
	j label5
