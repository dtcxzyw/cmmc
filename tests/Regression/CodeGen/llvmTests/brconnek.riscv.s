.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl j
j:
	.4byte	5
.p2align 2
.globl result
result:
	.4byte	0
.text
.p2align 2
.globl test
test:
pcrel21:
	auipc a1, %pcrel_hi(j)
	li a2, 5
	lw a0, %pcrel_lo(pcrel21)(a1)
	bne a0, a2, label3
	li a0, 1
pcrel22:
	auipc a1, %pcrel_hi(result)
	sw a0, %pcrel_lo(pcrel22)(a1)
label3:
	ret
