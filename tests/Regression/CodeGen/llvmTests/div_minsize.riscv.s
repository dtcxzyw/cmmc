.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl testsize1
testsize1:
	slli a1, a0, 1
	srli a2, a1, 59
	add a3, a0, a2
	sraiw a1, a3, 5
	zext.w a0, a1
	ret
.p2align 2
.globl testsize2
testsize2:
	li a2, 1041204193
	mul a1, a0, a2
	srli a2, a1, 63
	srai a0, a1, 35
	add a1, a2, a0
	zext.w a0, a1
	ret
.p2align 2
.globl testsize3
testsize3:
	li a1, 32
	divuw a0, a0, a1
	ret
.p2align 2
.globl testsize4
testsize4:
	li a1, 33
	divuw a0, a0, a1
	ret
