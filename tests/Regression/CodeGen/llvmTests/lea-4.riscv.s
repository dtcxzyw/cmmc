.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t1
t1:
	addiw a0, a0, -1
	slliw a1, a0, 1
	li a0, 65535
	and a1, a1, a0
	and a1, a1, a0
	and a0, a1, a0
	ret
.globl t2
t2:
	addiw a0, a0, -1
	slliw a0, a0, 1
	li a1, 65535
	and a0, a0, a1
	ret
