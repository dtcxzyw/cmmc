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
.p2align 2
pcrel18:
	auipc a1, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel18)(a1)
	beq a0, zero, label2
	li a0, 1
pcrel19:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel19)(a1)
label2:
	ret
