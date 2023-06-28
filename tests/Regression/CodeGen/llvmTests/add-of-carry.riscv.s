.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
	addw a0, a0, a1
	sltu a1, a0, a1
	li a2, 4294967295
	and a1, a1, a2
	addw a0, a0, a1
	ret
.globl test2
test2:
	sltu a0, a1, a0
	addw a0, a0, a2
	li a1, 4294967295
	and a0, a0, a1
	ret
