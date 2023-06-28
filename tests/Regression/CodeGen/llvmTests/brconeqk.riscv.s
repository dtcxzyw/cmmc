.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.text
.globl test
test:
pcrel19:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel19)(a0)
	xori a0, a0, 10
	sltu a0, zero, a0
	bne a0, zero, label9
	j label2
label9:
	li a0, 1
pcrel20:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel20)(a1)
label2:
	ret
