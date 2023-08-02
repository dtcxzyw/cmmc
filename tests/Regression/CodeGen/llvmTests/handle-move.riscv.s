.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f1
f1:
	divuw a3, a1, a0
	addiw a4, a2, 1
	addw a5, a3, a4
	zext.w a0, a5
	ret
.p2align 2
.globl f2
f2:
	remuw a4, a1, a0
	subw a5, a2, a3
	addw t0, a4, a5
	zext.w a0, t0
	ret
.p2align 2
.globl f3
f3:
	addw a2, a0, a1
	subw a3, a0, a1
	mulw a0, a2, a3
	ret
.p2align 2
.globl f4
f4:
	subw a4, a0, a1
	subw t0, a1, a2
	subw t1, a2, a3
	divuw a5, a4, t0
	mulw a0, a5, t1
	ret
