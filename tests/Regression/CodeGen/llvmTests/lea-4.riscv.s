.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t1
t1:
	addiw a3, a0, -1
	li a2, 65535
	slliw a1, a3, 1
	and a3, a1, a2
	and a0, a3, a2
	ret
.p2align 2
.globl t2
t2:
	addiw a2, a0, -1
	li a3, 65535
	slliw a1, a2, 1
	and a0, a1, a3
	ret
