.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	slli a1, a0, 1
	srli a2, a1, 60
	add a3, a0, a2
	sraiw a1, a3, 4
	zext.w a0, a1
	ret
.p2align 2
.globl test2
test2:
	slli a1, a0, 1
	srli a2, a1, 60
	add a3, a0, a2
	sraiw a1, a3, 4
	zext.w a0, a1
	ret
.p2align 2
.globl test3
test3:
	slli a1, a0, 1
	srli a2, a1, 60
	add a3, a0, a2
	sraiw a1, a3, 4
	zext.w a0, a1
	ret
