.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	slliw a3, a1, 1
	slliw a1, a1, 2
	addiw a4, a3, 4
	addiw a3, a1, 4
	addw a2, a0, a4
	addw a0, a0, a3
	mulw a1, a2, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl foo1
foo1:
	slliw a3, a1, 2
	slliw a1, a1, 3
	addiw a4, a3, 4
	addiw a3, a1, 4
	addw a2, a0, a4
	addw a0, a0, a3
	mulw a1, a2, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
	addiw a2, a0, 4
	li a3, 10
	sh2add a0, a1, a2
	beq a0, a3, label40
	sh3add a3, a1, a2
	li a2, 4294967295
	mulw a1, a3, a0
	and a0, a1, a2
	j label31
label40:
	mv a0, zero
label31:
	ret
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	addiw a2, a0, 4
	li a3, 10
	sh1add a0, a1, a2
	beq a0, a3, label62
	sh3add a3, a1, a2
	li a2, 4294967295
	mulw a1, a3, a0
	and a0, a1, a2
	j label53
label62:
	mv a0, zero
label53:
	ret
