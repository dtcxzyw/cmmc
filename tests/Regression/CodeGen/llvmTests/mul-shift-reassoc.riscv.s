.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test
test:
.p2align 2
	slliw a2, a0, 1
	addi a3, a2, 1
	mulw a0, a1, a3
	ret
