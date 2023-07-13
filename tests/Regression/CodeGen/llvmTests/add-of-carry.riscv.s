.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
	addw a4, a0, a1
	li a3, 4294967295
	sltu a2, a4, a1
	and a4, a2, a3
	addw a2, a0, a4
	addw a0, a1, a2
	ret
.globl test2
test2:
	sltu a0, a1, a0
	addw a1, a0, a2
	li a2, 4294967295
	and a0, a1, a2
	ret
