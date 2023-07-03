.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	sltu a2, zero, a0
	bne a2, zero, label10
	sltiu a1, a1, 1
	mv a0, zero
	bne a1, zero, label21
	li a0, 5
	li a1, 4294967295
	and a0, a0, a1
	j label3
label10:
	addiw a0, a0, 2
	li a1, 4294967295
	and a0, a0, a1
	j label3
label21:
	li a1, 4294967295
	and a0, a0, a1
label3:
	ret
