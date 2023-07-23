.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl mulw
mulw:
	mv a2, a0
	mv a3, a1
	blt a0, a1, label2
	li a0, 1
label8:
	ret
label2:
	addiw a1, a0, 1
	bgt a3, a1, label3
label20:
	li a1, 4294967295
	and a0, a0, a1
	j label8
label3:
	mulw a0, a1, a0
	addiw a1, a1, 1
	bgt a3, a1, label3
	j label20
