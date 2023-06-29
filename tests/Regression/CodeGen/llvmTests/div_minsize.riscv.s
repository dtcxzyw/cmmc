.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl testsize1
testsize1:
	slli a1, a0, 1
	srli a1, a1, 59
	add a0, a0, a1
	sraiw a0, a0, 5
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl testsize2
testsize2:
	li a1, 1041204193
	mul a0, a0, a1
	srai a1, a0, 35
	srli a0, a0, 63
	add a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl testsize3
testsize3:
	li a1, 32
	divuw a0, a0, a1
	ret
.globl testsize4
testsize4:
	li a1, 33
	divuw a0, a0, a1
	ret
