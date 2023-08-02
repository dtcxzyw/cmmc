.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test
test:
	subw a3, zero, a0
	zext.w a4, a3
	mv a2, a4
	blt a0, zero, label19
	mv a2, a0
label19:
	subw a3, zero, a1
	zext.w a4, a3
	mv a0, a4
	blt a1, zero, label21
	mv a0, a1
label21:
	addw a1, a2, a0
	zext.w a0, a1
	ret
