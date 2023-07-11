.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t
t:
	bne a0, a1, label4
	j label2
label4:
	subw a5, zero, a1
	mv a3, a1
	mv a4, zero
label7:
	mulw t0, a5, a4
	addw a2, a0, t0
	bge a3, a2, label10
	subw a2, a2, a1
	addiw a4, a4, 1
	bne a1, a2, label7
label47:
	mv a0, a2
label2:
	ret
label10:
	subw a1, a1, a2
	bne a2, a1, label35
	j label47
label35:
	mv a0, a2
	subw a5, zero, a1
	mv a3, a1
	mv a4, zero
	mv t0, zero
	sext.w a2, a2
	bge a1, a2, label10
	subw a2, a2, a1
	li a4, 1
	bne a1, a2, label7
	j label47
