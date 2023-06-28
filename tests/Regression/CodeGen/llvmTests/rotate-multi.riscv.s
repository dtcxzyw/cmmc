.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f0
f0:
	slliw a1, a0, 7
	srliw a2, a0, 25
	or a1, a1, a2
	slliw a2, a0, 9
	or a1, a1, a2
	srliw a0, a0, 23
	or a0, a1, a0
	ret
.globl f1
f1:
	slliw a2, a0, 7
	or a1, a1, a2
	slliw a2, a0, 9
	or a1, a1, a2
	srliw a0, a0, 23
	or a0, a1, a0
	ret
.globl f2
f2:
	slliw a2, a0, 11
	slliw a3, a1, 19
	or a2, a2, a3
	srliw a0, a0, 21
	or a0, a2, a0
	srliw a1, a1, 13
	or a0, a0, a1
	ret
.globl f3
f3:
	slliw a1, a0, 3
	slliw a2, a0, 5
	or a1, a1, a2
	slliw a2, a0, 7
	or a1, a1, a2
	slliw a2, a0, 13
	or a1, a1, a2
	slliw a2, a0, 19
	or a1, a1, a2
	srliw a2, a0, 2
	or a1, a1, a2
	srliw a2, a0, 15
	or a1, a1, a2
	srliw a2, a0, 23
	or a1, a1, a2
	srliw a2, a0, 25
	or a1, a1, a2
	srliw a0, a0, 30
	or a0, a1, a0
	ret
