.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t
t:
	mv a2, a1
	bne a0, a1, label15
	j label2
label15:
	mv a1, a0
	mv a0, a2
	subw a5, zero, a2
	mv a3, a2
	mv a4, zero
	mulw a2, a5, zero
	addw a2, a1, a2
	bge a3, a2, label10
	subw a2, a2, a0
	addiw a4, zero, 1
	bne a0, a2, label7
label47:
	mv a0, a2
label2:
	ret
label7:
	mulw a2, a5, a4
	addw a2, a1, a2
	bge a3, a2, label10
	subw a2, a2, a0
	addiw a4, a4, 1
	bne a0, a2, label7
	j label47
label10:
	subw a0, a0, a2
	bne a2, a0, label35
	j label47
label35:
	mv a1, a2
	subw a5, zero, a0
	mv a3, a0
	mv a4, zero
	mulw a2, a5, zero
	addw a2, a1, a2
	bge a0, a2, label10
	subw a2, a2, a0
	addiw a4, zero, 1
	bne a0, a2, label7
	j label47
