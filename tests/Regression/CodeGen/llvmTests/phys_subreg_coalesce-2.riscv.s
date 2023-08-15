.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl binomial
binomial:
	mv a2, a1
	bgeu a0, a1, label4
	mv a0, zero
label2:
	ret
label4:
	beq a2, zero, label16
	li a4, 2
	bltu a2, a4, label2
	mv a1, a0
	li a3, 1
label6:
	subw a5, a0, a3
	addiw a3, a3, 1
	mulw a4, a1, a5
	addiw a5, a2, -1
	divuw a1, a4, a3
	bleu a3, a5, label6
	mv a0, a1
	j label2
label16:
	li a0, 1
	j label2
