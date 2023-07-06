.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl j
j:
	.4byte	0
.align 4
.globl result
result:
	.4byte	0
.text
.globl test
test:
pcrel18:
	auipc a0, %pcrel_hi(j)
	lw a0, %pcrel_lo(pcrel18)(a0)
	bne a0, zero, label3
pcrel19:
	auipc a1, %pcrel_hi(result)
	li a0, 1
	sw a0, %pcrel_lo(pcrel19)(a1)
label3:
	ret
