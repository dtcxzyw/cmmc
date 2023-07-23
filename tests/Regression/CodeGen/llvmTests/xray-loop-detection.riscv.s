.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	mv a1, a0
	beq a0, zero, label9
	mv a0, zero
	li a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	addiw a0, a0, 1
	beq a1, a0, label2
	j label4
label9:
	mv a0, zero
label2:
	ret
label4:
	addiw a0, a0, 1
	beq a1, a0, label2
	j label4
