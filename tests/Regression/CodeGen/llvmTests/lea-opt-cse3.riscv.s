.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo
foo:
.p2align 2
	addiw a2, a0, 4
	sh2add a3, a1, a2
	sh1add a0, a1, a2
	li a2, 4294967295
	mulw a1, a0, a3
	and a0, a1, a2
	ret
.globl foo1
foo1:
.p2align 2
	addiw a2, a0, 4
	sh3add a3, a1, a2
	sh2add a0, a1, a2
	li a2, 4294967295
	mulw a1, a0, a3
	and a0, a1, a2
	ret
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
.p2align 2
	addiw a2, a0, 4
	li a3, 10
	sh2add a0, a1, a2
	bne a0, a3, label28
	mv a0, zero
label29:
	ret
label28:
	sh3add a3, a1, a2
	li a2, 4294967295
	mulw a1, a3, a0
	and a0, a1, a2
	j label29
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
.p2align 2
	addiw a2, a0, 4
	li a3, 10
	sh1add a0, a1, a2
	bne a0, a3, label50
	mv a0, zero
label51:
	ret
label50:
	sh3add a3, a1, a2
	li a2, 4294967295
	mulw a1, a3, a0
	and a0, a1, a2
	j label51
