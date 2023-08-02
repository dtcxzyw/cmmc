.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl sgt
sgt:
	li a2, 32767
	li a1, 7
	bgt a0, a2, label10
	li a1, 5
label10:
	zext.w a0, a1
	ret
.p2align 2
.globl slt
slt:
	slti a1, a0, 7
	li a3, 4
	subw a2, a3, a1
	zext.w a0, a2
	ret
