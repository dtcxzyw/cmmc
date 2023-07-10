.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl sext_16_32
sext_16_32:
	sext.h a1, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl sext_1_16
sext_1_16:
	sext.h a1, a0
	li a2, 65535
	and a0, a1, a2
	ret
.globl sext_1_32
sext_1_32:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl sext_1_8
sext_1_8:
	sext.b a1, a0
	andi a0, a1, 255
	ret
.globl sext_8_16
sext_8_16:
	sext.b a1, a0
	li a2, 65535
	and a0, a1, a2
	ret
.globl sext_8_32
sext_8_32:
	sext.b a1, a0
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl zext_16_32
zext_16_32:
	li a1, 65535
	and a0, a0, a1
	ret
.globl zext_1_16
zext_1_16:
	li a1, 65535
	and a0, a0, a1
	ret
.globl zext_1_32
zext_1_32:
	ret
.globl zext_1_8
zext_1_8:
	andi a0, a0, 255
	ret
.globl zext_8_16
zext_8_16:
	andi a0, a0, 255
	ret
.globl zext_8_32
zext_8_32:
	andi a0, a0, 255
	ret
