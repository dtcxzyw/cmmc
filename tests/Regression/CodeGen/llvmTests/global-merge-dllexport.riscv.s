.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl x
x:
	.4byte	0
.align 4
.globl y
y:
	.4byte	0
.text
.globl f1
f1:
pcrel12:
	auipc a2, %pcrel_hi(x)
	sw a0, %pcrel_lo(pcrel12)(a2)
pcrel13:
	auipc a0, %pcrel_hi(y)
	sw a1, %pcrel_lo(pcrel13)(a0)
	ret
