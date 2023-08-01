.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl shl16sar15
shl16sar15:
	slliw a1, a0, 16
	srliw a0, a1, 15
	ret
.p2align 2
.globl shl16sar17
shl16sar17:
	slliw a1, a0, 16
	srliw a0, a1, 17
	ret
.p2align 2
.globl shl24sar23
shl24sar23:
	slliw a1, a0, 24
	srliw a0, a1, 23
	ret
.p2align 2
.globl shl24sar25
shl24sar25:
	slliw a1, a0, 24
	srliw a0, a1, 25
	ret
