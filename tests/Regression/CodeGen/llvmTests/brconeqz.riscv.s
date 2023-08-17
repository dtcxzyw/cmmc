.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl i
i:
	.4byte	5
.p2align 2
.globl result
result:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel19:
	auipc a1, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel19)(a1)
	bne a0, zero, label8
label2:
	ret
label8:
	li a0, 1
pcrel20:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel20)(a1)
	j label2
