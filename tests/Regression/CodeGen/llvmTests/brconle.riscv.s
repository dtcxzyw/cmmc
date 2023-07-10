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
pcrel46:
	auipc a0, %pcrel_hi(i)
pcrel47:
	auipc a3, %pcrel_hi(j)
	lw a1, %pcrel_lo(pcrel46)(a0)
	mv a0, a1
	lw a2, %pcrel_lo(pcrel47)(a3)
	ble a2, a1, label3
	li a1, 1
pcrel48:
	auipc a2, %pcrel_hi(result1)
	sw a1, %pcrel_lo(pcrel48)(a2)
pcrel49:
	auipc a1, %pcrel_hi(k)
	lw a2, %pcrel_lo(pcrel49)(a1)
	ble a0, a2, label5
	j label44
label3:
	auipc a1, %pcrel_hi(k)
	lw a2, %pcrel_lo(label3)(a1)
	ble a0, a2, label5
	j label44
label5:
	ret
label44:
	auipc a0, %pcrel_hi(result1)
	sw zero, %pcrel_lo(label44)(a0)
	j label5
