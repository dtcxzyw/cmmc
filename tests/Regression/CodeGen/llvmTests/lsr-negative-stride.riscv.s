.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t
t:
	bne a0, a1, label14
label2:
	ret
label14:
	subw t0, zero, a1
	mv a3, a1
	mv a4, zero
label7:
	mulw a5, t0, a4
	addw a2, a0, a5
	bge a3, a2, label10
	subw a5, a2, a1
	addiw a4, a4, 1
	bne a1, a5, label7
	mv a0, a5
	j label2
label10:
	subw a1, a1, a2
	beq a2, a1, label34
	mv a0, a2
	subw t0, zero, a1
	mv a3, a1
	mv a4, zero
	j label7
label34:
	mv a0, a2
	j label2
