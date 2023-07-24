.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl binomial
binomial:
.p2align 2
	mv a2, a1
	bgeu a0, a1, label4
	mv a0, zero
label2:
	ret
label4:
	bne a2, zero, label5
	li a0, 1
	j label2
label5:
	li a3, 2
	bltu a2, a3, label2
	mv a1, a0
	li a3, 1
label6:
	subw t0, a0, a3
	addiw a4, a3, 1
	mulw a5, a1, t0
	addiw a3, a3, 2
	divuw a1, a5, a4
	bgeu a2, a3, label30
	mv a0, a1
	j label2
label30:
	mv a3, a4
	j label6
