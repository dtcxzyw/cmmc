.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl aext_divuw_aext_aext
aext_divuw_aext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divuw_aext_sext
aext_divuw_aext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divuw_aext_zext
aext_divuw_aext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divuw_sext_aext
aext_divuw_sext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divuw_sext_sext
aext_divuw_sext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divuw_sext_zext
aext_divuw_sext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divuw_zext_aext
aext_divuw_zext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divuw_zext_sext
aext_divuw_zext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divuw_zext_zext
aext_divuw_zext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl aext_divw_aext_aext
aext_divw_aext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_divw_aext_sext
aext_divw_aext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_divw_aext_zext
aext_divw_aext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_divw_sext_aext
aext_divw_sext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_divw_sext_sext
aext_divw_sext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_divw_sext_zext
aext_divw_sext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_divw_zext_aext
aext_divw_zext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_divw_zext_sext
aext_divw_zext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_divw_zext_zext
aext_divw_zext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_mulw_aext_aext
aext_mulw_aext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_mulw_aext_sext
aext_mulw_aext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_mulw_aext_zext
aext_mulw_aext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_mulw_sext_aext
aext_mulw_sext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_mulw_sext_sext
aext_mulw_sext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_mulw_sext_zext
aext_mulw_sext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_mulw_zext_aext
aext_mulw_zext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_mulw_zext_sext
aext_mulw_zext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_mulw_zext_zext
aext_mulw_zext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_aext_aext
aext_remuw_aext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_aext_sext
aext_remuw_aext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_aext_zext
aext_remuw_aext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_sext_aext
aext_remuw_sext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_sext_sext
aext_remuw_sext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_sext_zext
aext_remuw_sext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_zext_aext
aext_remuw_zext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_zext_sext
aext_remuw_zext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remuw_zext_zext
aext_remuw_zext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl aext_remw_aext_aext
aext_remw_aext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_remw_aext_sext
aext_remw_aext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_remw_aext_zext
aext_remw_aext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_remw_sext_aext
aext_remw_sext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_remw_sext_sext
aext_remw_sext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_remw_sext_zext
aext_remw_sext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_remw_zext_aext
aext_remw_zext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_remw_zext_sext
aext_remw_zext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl aext_remw_zext_zext
aext_remw_zext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divuw_aext_aext
sext_divuw_aext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divuw_aext_sext
sext_divuw_aext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divuw_aext_zext
sext_divuw_aext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divuw_sext_aext
sext_divuw_sext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divuw_sext_sext
sext_divuw_sext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divuw_sext_zext
sext_divuw_sext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divuw_zext_aext
sext_divuw_zext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divuw_zext_sext
sext_divuw_zext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divuw_zext_zext
sext_divuw_zext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl sext_divw_aext_aext
sext_divw_aext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divw_aext_sext
sext_divw_aext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divw_aext_zext
sext_divw_aext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divw_sext_aext
sext_divw_sext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divw_sext_sext
sext_divw_sext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divw_sext_sext_i16
sext_divw_sext_sext_i16:
	sext.h a2, a0
	sext.h a0, a1
	divw a1, a2, a0
	li a2, 65535
	and a0, a1, a2
	ret
.p2align 2
.globl sext_divw_sext_sext_i8
sext_divw_sext_sext_i8:
	sext.b a2, a0
	sext.b a3, a1
	divw a1, a2, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl sext_divw_sext_zext
sext_divw_sext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divw_zext_aext
sext_divw_zext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divw_zext_sext
sext_divw_zext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_divw_zext_zext
sext_divw_zext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_i32_remw_sext_zext_i16
sext_i32_remw_sext_zext_i16:
	sext.h a2, a0
	li a0, 65535
	and a3, a1, a0
	remw a1, a2, a3
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl sext_i32_remw_zext_sext_i16
sext_i32_remw_zext_sext_i16:
	li a3, 65535
	sext.h a2, a1
	and a0, a0, a3
	li a3, 4294967295
	remw a1, a0, a2
	and a0, a1, a3
	ret
.p2align 2
.globl sext_mulw_aext_aext
sext_mulw_aext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_mulw_aext_sext
sext_mulw_aext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_mulw_aext_zext
sext_mulw_aext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_mulw_sext_aext
sext_mulw_sext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_mulw_sext_sext
sext_mulw_sext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_mulw_sext_zext
sext_mulw_sext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_mulw_zext_aext
sext_mulw_zext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_mulw_zext_sext
sext_mulw_zext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_mulw_zext_zext
sext_mulw_zext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_aext_aext
sext_remuw_aext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_aext_sext
sext_remuw_aext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_aext_zext
sext_remuw_aext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_sext_aext
sext_remuw_sext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_sext_sext
sext_remuw_sext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_sext_zext
sext_remuw_sext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_zext_aext
sext_remuw_zext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_zext_sext
sext_remuw_zext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remuw_zext_zext
sext_remuw_zext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl sext_remw_aext_aext
sext_remw_aext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_remw_aext_sext
sext_remw_aext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_remw_aext_zext
sext_remw_aext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_remw_sext_aext
sext_remw_sext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_remw_sext_sext
sext_remw_sext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_remw_sext_sext_i16
sext_remw_sext_sext_i16:
	sext.h a2, a0
	sext.h a0, a1
	remw a1, a2, a0
	li a2, 65535
	and a0, a1, a2
	ret
.p2align 2
.globl sext_remw_sext_sext_i8
sext_remw_sext_sext_i8:
	sext.b a2, a0
	sext.b a3, a1
	remw a1, a2, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl sext_remw_sext_zext
sext_remw_sext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_remw_zext_aext
sext_remw_zext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_remw_zext_sext
sext_remw_zext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl sext_remw_zext_zext
sext_remw_zext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divuw_aext_aext
zext_divuw_aext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_aext_sext
zext_divuw_aext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_aext_zext
zext_divuw_aext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_sext_aext
zext_divuw_sext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_sext_sext
zext_divuw_sext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_sext_zext
zext_divuw_sext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_zext_aext
zext_divuw_zext_aext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_zext_sext
zext_divuw_zext_sext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_zext_zext
zext_divuw_zext_zext:
	divuw a0, a0, a1
	ret
.p2align 2
.globl zext_divuw_zext_zext_i16
zext_divuw_zext_zext_i16:
	li a2, 65535
	and a1, a1, a2
	and a0, a0, a2
	divw a3, a0, a1
	and a0, a3, a2
	ret
.p2align 2
.globl zext_divuw_zext_zext_i8
zext_divuw_zext_zext_i8:
	andi a2, a0, 255
	andi a3, a1, 255
	divw a1, a2, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl zext_divw_aext_aext
zext_divw_aext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divw_aext_sext
zext_divw_aext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divw_aext_zext
zext_divw_aext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divw_sext_aext
zext_divw_sext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divw_sext_sext
zext_divw_sext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divw_sext_zext
zext_divw_sext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divw_zext_aext
zext_divw_zext_aext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divw_zext_sext
zext_divw_zext_sext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_divw_zext_zext
zext_divw_zext_zext:
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_mulw_aext_aext
zext_mulw_aext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_mulw_aext_sext
zext_mulw_aext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_mulw_aext_zext
zext_mulw_aext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_mulw_sext_aext
zext_mulw_sext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_mulw_sext_sext
zext_mulw_sext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_mulw_sext_zext
zext_mulw_sext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_mulw_zext_aext
zext_mulw_zext_aext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_mulw_zext_sext
zext_mulw_zext_sext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_mulw_zext_zext
zext_mulw_zext_zext:
	mulw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_aext_aext
zext_remuw_aext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_aext_sext
zext_remuw_aext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_aext_zext
zext_remuw_aext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_sext_aext
zext_remuw_sext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_sext_sext
zext_remuw_sext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_sext_zext
zext_remuw_sext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_zext_aext
zext_remuw_zext_aext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_zext_sext
zext_remuw_zext_sext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_zext_zext
zext_remuw_zext_zext:
	remuw a0, a0, a1
	ret
.p2align 2
.globl zext_remuw_zext_zext_i16
zext_remuw_zext_zext_i16:
	li a2, 65535
	and a1, a1, a2
	and a0, a0, a2
	remw a3, a0, a1
	and a0, a3, a2
	ret
.p2align 2
.globl zext_remuw_zext_zext_i8
zext_remuw_zext_zext_i8:
	andi a2, a0, 255
	andi a3, a1, 255
	remw a1, a2, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl zext_remw_aext_aext
zext_remw_aext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_remw_aext_sext
zext_remw_aext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_remw_aext_zext
zext_remw_aext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_remw_sext_aext
zext_remw_sext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_remw_sext_sext
zext_remw_sext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_remw_sext_zext
zext_remw_sext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_remw_zext_aext
zext_remw_zext_aext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_remw_zext_sext
zext_remw_zext_sext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.p2align 2
.globl zext_remw_zext_zext
zext_remw_zext_zext:
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
