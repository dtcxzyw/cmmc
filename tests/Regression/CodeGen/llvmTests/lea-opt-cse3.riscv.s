.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
	addiw a0, a0, 4
	sh1add a2, a1, a0
	sh2add a0, a1, a0
	mulw a0, a2, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl foo1
foo1:
	addiw a0, a0, 4
	sh2add a2, a1, a0
	sh3add a0, a1, a0
	mulw a0, a2, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
	addiw a0, a0, 4
	sh2add a2, a1, a0
	xori a3, a2, 10
	sltiu a3, a3, 1
	bne a3, zero, label38
	sh3add a0, a1, a0
	mulw a0, a0, a2
	li a1, 4294967295
	and a0, a0, a1
	j label29
label38:
	mv a0, zero
label29:
	ret
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	addiw a0, a0, 4
	sh1add a2, a1, a0
	xori a3, a2, 10
	sltiu a3, a3, 1
	bne a3, zero, label59
	sh3add a0, a1, a0
	mulw a0, a0, a2
	li a1, 4294967295
	and a0, a0, a1
	j label50
label59:
	mv a0, zero
label50:
	ret
