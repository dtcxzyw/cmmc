.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl hoge
hoge:
	li a1, -1
	sllw a3, a1, a0
	xori a2, a3, -1
	zext.w a1, a2
	li a2, 15
	slliw a0, a1, 8
	slli a1, a2, 8
	and a0, a0, a1
	ret
