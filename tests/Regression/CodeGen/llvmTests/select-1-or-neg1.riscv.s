.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl PR28968
PR28968:
	li a2, 1
	li a1, 1
	beq a0, a2, label9
	li a1, -1
label9:
	zext.w a0, a1
	ret
