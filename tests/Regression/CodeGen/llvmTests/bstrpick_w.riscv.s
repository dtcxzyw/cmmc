.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl and0xf30_lshr4
and0xf30_lshr4:
	li a3, 243
	slli a2, a3, 4
	and a1, a0, a2
	srliw a0, a1, 4
	ret
.p2align 2
.globl and0xff0_lshr3
and0xff0_lshr3:
	li a3, 255
	slli a2, a3, 4
	and a1, a0, a2
	srliw a0, a1, 3
	ret
.p2align 2
.globl and0xff0_lshr4
and0xff0_lshr4:
	li a3, 255
	slli a2, a3, 4
	and a1, a0, a2
	srliw a0, a1, 4
	ret
.p2align 2
.globl and4080_ashr5
and4080_ashr5:
	li a3, 255
	slli a2, a3, 4
	and a1, a0, a2
	srliw a0, a1, 5
	ret
.p2align 2
.globl and4095
and4095:
	lui a2, 1
	addiw a1, a2, -1
	and a0, a0, a1
	ret
.p2align 2
.globl and8191
and8191:
	lui a2, 2
	addiw a1, a2, -1
	and a0, a0, a1
	ret
.p2align 2
.globl ashr20_and511
ashr20_and511:
	srliw a1, a0, 20
	andi a0, a1, 511
	ret
.p2align 2
.globl lshr10_and255
lshr10_and255:
	srliw a1, a0, 10
	andi a0, a1, 255
	ret
.p2align 2
.globl zext_i16_to_i32
zext_i16_to_i32:
	zext.h a0, a0
	ret
