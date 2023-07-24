.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl testsize1
testsize1:
.p2align 2
	slli a1, a0, 1
	srli a2, a1, 59
	add a0, a0, a2
	li a2, 4294967295
	sraiw a1, a0, 5
	and a0, a1, a2
	ret
.globl testsize2
testsize2:
.p2align 2
	li a2, 1041204193
	li a3, 4294967295
	mul a1, a0, a2
	srli a2, a1, 63
	srai a0, a1, 35
	add a1, a2, a0
	and a0, a1, a3
	ret
.globl testsize3
testsize3:
.p2align 2
	li a1, 32
	divuw a0, a0, a1
	ret
.globl testsize4
testsize4:
.p2align 2
	li a1, 33
	divuw a0, a0, a1
	ret
