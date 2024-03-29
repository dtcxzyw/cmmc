.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl foo
foo:
	addiw a2, a0, 4
	sh2add a4, a1, a2
	sh1add a3, a1, a2
	mulw a5, a3, a4
	zext.w a0, a5
	ret
.p2align 2
.globl foo1
foo1:
	addiw a2, a0, 4
	sh3add a4, a1, a2
	sh2add a3, a1, a2
	mulw a5, a3, a4
	zext.w a0, a5
	ret
.p2align 2
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
	addiw a2, a0, 4
	li a4, 10
	sh2add a3, a1, a2
	beq a3, a4, label35
	sh3add a5, a1, a2
	mulw a4, a5, a3
	zext.w a0, a4
	j label27
label35:
	mv a0, zero
label27:
	ret
.p2align 2
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	addiw a2, a0, 4
	li a4, 10
	sh1add a3, a1, a2
	beq a3, a4, label57
	sh3add a5, a1, a2
	mulw a4, a5, a3
	zext.w a0, a4
	j label49
label57:
	mv a0, zero
label49:
	ret
