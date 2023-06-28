.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl shl16sar15
shl16sar15:
	slliw a0, a0, 16
	srliw a0, a0, 15
	ret
.globl shl16sar17
shl16sar17:
	slliw a0, a0, 16
	srliw a0, a0, 17
	ret
.globl shl24sar23
shl24sar23:
	slliw a0, a0, 24
	srliw a0, a0, 23
	ret
.globl shl24sar25
shl24sar25:
	slliw a0, a0, 24
	srliw a0, a0, 25
	ret
