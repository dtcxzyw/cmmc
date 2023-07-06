.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl binomial
binomial:
	mv a2, a1
	bgeu a0, a1, label4
	mv a0, zero
	j label2
label36:
	li a0, 1
label2:
	ret
label4:
	bne a2, zero, label5
	j label36
label5:
	li a1, 2
	bgeu a2, a1, label21
	j label2
label21:
	li a3, 1
	mv a1, a0
	subw a4, a0, a3
	mulw a1, a0, a4
	addiw a4, a3, 1
	addiw a3, a3, 2
	divuw a1, a1, a4
	bgeu a2, a3, label30
label29:
	mv a0, a1
	j label2
label30:
	mv a3, a4
	subw a4, a0, a4
	mulw a1, a1, a4
	addiw a4, a3, 1
	addiw a3, a3, 2
	divuw a1, a1, a4
	bgeu a2, a3, label30
	j label29
