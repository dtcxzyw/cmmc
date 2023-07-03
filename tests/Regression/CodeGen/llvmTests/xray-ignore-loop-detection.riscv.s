.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	mv a1, a0
	sltu a0, zero, a0
	bne a0, zero, label9
	mv a0, zero
	j label2
label9:
	mv a0, zero
	j label4
label2:
	ret
label4:
	addiw a0, a0, 1
	xor a2, a1, a0
	sltu a2, zero, a2
	bne a2, zero, label4
	j label2
