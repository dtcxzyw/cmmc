.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl Y
Y:
	.4byte	0
.p2align 2
.globl X
X:
	.4byte	0
.text
.p2align 2
.globl fn1
fn1:
pcrel15:
	auipc a3, %pcrel_hi(Y)
pcrel16:
	auipc a0, %pcrel_hi(X)
	lw a2, %pcrel_lo(pcrel15)(a3)
	lw a3, %pcrel_lo(pcrel16)(a0)
	slliw a1, a2, 3
	or a2, a1, a3
	sw a2, %pcrel_lo(pcrel16)(a0)
	ret
.p2align 2
.globl fn2
fn2:
	slliw a2, a1, 3
	or a0, a0, a2
	ret
