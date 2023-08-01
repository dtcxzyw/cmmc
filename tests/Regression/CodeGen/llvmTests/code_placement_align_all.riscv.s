.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	bne a0, zero, label9
	mv a0, zero
	beq a1, zero, label21
	li a0, 5
label21:
	li a1, 4294967295
	and a0, a0, a1
	j label3
label9:
	addiw a1, a0, 2
	li a2, 4294967295
	and a0, a1, a2
label3:
	ret
