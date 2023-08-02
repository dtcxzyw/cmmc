.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl function
function:
	mulw a3, a0, a0
	zext.w a4, a3
	mv a2, a4
	beq a0, a1, label11
	mv a2, a0
label11:
	mv a0, a2
	ret
