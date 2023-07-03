.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl binomial
binomial:
	mv a2, a1
	sltu a1, a0, a1
	xori a1, a1, 1
	bne a1, zero, label4
	mv a0, zero
	j label2
label37:
	li a0, 1
label2:
	ret
label4:
	sltu a1, zero, a2
	bne a1, zero, label5
	j label37
label5:
	li a1, 1
	sltu a1, a1, a2
	bne a1, zero, label23
	j label2
label23:
	li a3, 1
	mv a1, a0
	subw a4, a0, a3
	mulw a1, a0, a4
	addiw a4, a3, 1
	divuw a1, a1, a4
	addiw a3, a3, 2
	sltu a3, a2, a3
	xori a3, a3, 1
	bne a3, zero, label32
label38:
	mv a0, a1
	j label2
label32:
	mv a3, a4
	subw a4, a0, a4
	mulw a1, a1, a4
	addiw a4, a3, 1
	divuw a1, a1, a4
	addiw a3, a3, 2
	sltu a3, a2, a3
	xori a3, a3, 1
	bne a3, zero, label32
	j label38
