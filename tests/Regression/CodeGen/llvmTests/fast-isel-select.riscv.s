.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl fastisel_select
fastisel_select:
	subw a2, a0, a1
	lui a4, 294062
	addiw a3, a4, -1065
	bne a2, zero, label9
	mv a3, zero
label9:
	zext.w a0, a3
	ret
