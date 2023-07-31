.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
.p2align 2
	bne a0, zero, label8
	mv a0, zero
label2:
	ret
label8:
	mv a1, zero
label4:
	addiw a1, a1, 1
	bne a0, a1, label4
	mv a0, a1
	j label2
