.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl Y
Y:
	.4byte	0
.align 4
.globl X
X:
	.4byte	0
.text
.globl fn1
fn1:
pcrel15:
	auipc a0, %pcrel_hi(Y)
	lw a0, %pcrel_lo(pcrel15)(a0)
	slliw a1, a0, 3
pcrel16:
	auipc a0, %pcrel_hi(X)
	lw a2, %pcrel_lo(pcrel16)(a0)
	or a1, a1, a2
	sw a1, %pcrel_lo(pcrel16)(a0)
	ret
.globl fn2
fn2:
	slliw a1, a1, 3
	or a0, a0, a1
	ret
